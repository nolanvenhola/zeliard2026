00000000  65250000          gs and ax,0x0
00000004  2EA25B33          mov [cs:0x335b],al
00000008  8CCA              mov dx,cs
0000000A  8EDA              mov ds,dx
0000000C  81C20010          add dx,0x1000
00000010  8EC2              mov es,dx
00000012  FC                cld
00000013  BF0000            mov di,0x0
00000016  B98026            mov cx,0x2680
00000019  33C0              xor ax,ax
0000001B  F3AB              rep stosw
0000001D  8CCA              mov dx,cs
0000001F  81C20010          add dx,0x1000
00000023  8EC2              mov es,dx
00000025  BEE738            mov si,0x38e7
00000028  BF0000            mov di,0x0
0000002B  E83200            call 0x60
0000002E  BE5947            mov si,0x4759
00000031  BF4013            mov di,0x1340
00000034  E82900            call 0x60
00000037  E84800            call 0x82
0000003A  8CCA              mov dx,cs
0000003C  81C20010          add dx,0x1000
00000040  8EC2              mov es,dx
00000042  BF0000            mov di,0x0
00000045  BE9E55            mov si,0x559e
00000048  B91000            mov cx,0x10
0000004B  E84302            call 0x291
0000004E  E2FB              loop 0x4b
00000050  BEF156            mov si,0x56f1
00000053  B91000            mov cx,0x10
00000056  E83802            call 0x291
00000059  E2FB              loop 0x56
0000005B  E85502            call 0x2b3
0000005E  CB                retf
0000005F  0033              add [bp+di],dh
00000061  C9                leave
00000062  AC                lodsb
00000063  3C06              cmp al,0x6
00000065  B401              mov ah,0x1
00000067  7501              jnz 0x6a
00000069  AD                lodsw
0000006A  AA                stosb
0000006B  FEC5              inc ch
0000006D  80FD38            cmp ch,0x38
00000070  750A              jnz 0x7c
00000072  32ED              xor ch,ch
00000074  FEC1              inc cl
00000076  80F958            cmp cl,0x58
00000079  7501              jnz 0x7c
0000007B  C3                ret
0000007C  FECC              dec ah
0000007E  75EA              jnz 0x6a
00000080  EBE0              jmp 0x62
00000082  33DB              xor bx,bx
00000084  8A1E5B33          mov bl,[0x335b]
00000088  03DB              add bx,bx
0000008A  FFA78A33          jmp word near [bx+0x338a]
0000008E  96                xchg ax,si
0000008F  33D1              xor dx,cx
00000091  33D1              xor dx,cx
00000093  334234            xor ax,[bp+si+0x34]
00000096  B83410            mov ax,0x1034
00000099  351E8C            xor ax,0x8c1e
0000009C  CA81C2            retf word 0xc281
0000009F  0010              add [bx+si],dl
000000A1  8EDA              mov ds,dx
000000A3  BE0000            mov si,0x0
000000A6  B800A0            mov ax,0xa000
000000A9  8EC0              mov es,ax
000000AB  BAC403            mov dx,0x3c4
000000AE  B002              mov al,0x2
000000B0  EE                out dx,al
000000B1  42                inc dx
000000B2  B001              mov al,0x1
000000B4  EE                out dx,al
000000B5  E80800            call 0xc0
000000B8  B004              mov al,0x4
000000BA  EE                out dx,al
000000BB  E80200            call 0xc0
000000BE  1F                pop ds
000000BF  C3                ret
000000C0  BF6C04            mov di,0x46c
000000C3  B95800            mov cx,0x58
000000C6  51                push cx
000000C7  57                push di
000000C8  B93800            mov cx,0x38
000000CB  F3A4              rep movsb
000000CD  5F                pop di
000000CE  83C750            add di,0x50
000000D1  59                pop cx
000000D2  E2F2              loop 0xc6
000000D4  C3                ret
000000D5  1E                push ds
000000D6  8CCA              mov dx,cs
000000D8  81C20010          add dx,0x1000
000000DC  8EDA              mov ds,dx
000000DE  BE0000            mov si,0x0
000000E1  B800B8            mov ax,0xb800
000000E4  8EC0              mov es,ax
000000E6  BF3C02            mov di,0x23c
000000E9  B95800            mov cx,0x58
000000EC  51                push cx
000000ED  57                push di
000000EE  B93800            mov cx,0x38
000000F1  51                push cx
000000F2  8AA44013          mov ah,[si+0x1340]
000000F6  AC                lodsb
000000F7  32D2              xor dl,dl
000000F9  B90400            mov cx,0x4
000000FC  02E4              add ah,ah
000000FE  12DB              adc bl,bl
00000100  02C0              add al,al
00000102  12DB              adc bl,bl
00000104  02E4              add ah,ah
00000106  12DB              adc bl,bl
00000108  02C0              add al,al
0000010A  12DB              adc bl,bl
0000010C  80E30F            and bl,0xf
0000010F  32FF              xor bh,bh
00000111  02D2              add dl,dl
00000113  02D2              add dl,dl
00000115  2E0A973234        or dl,[cs:bx+0x3432]
0000011A  E2E0              loop 0xfc
0000011C  8AC2              mov al,dl
0000011E  AA                stosb
0000011F  59                pop cx
00000120  E2CF              loop 0xf1
00000122  5F                pop di
00000123  81C70020          add di,0x2000
00000127  81FF0040          cmp di,0x4000
0000012B  7204              jc 0x131
0000012D  81C750C0          add di,0xc050
00000131  59                pop cx
00000132  E2B8              loop 0xec
00000134  1F                pop ds
00000135  C3                ret
00000136  0003              add [bp+di],al
00000138  0102              add [bp+si],ax
0000013A  0003              add [bp+di],al
0000013C  0102              add [bp+si],ax
0000013E  0003              add [bp+di],al
00000140  0102              add [bp+si],ax
00000142  0003              add [bp+di],al
00000144  0102              add [bp+si],ax
00000146  1E                push ds
00000147  8CCA              mov dx,cs
00000149  81C20010          add dx,0x1000
0000014D  8EDA              mov ds,dx
0000014F  BE0000            mov si,0x0
00000152  B800B0            mov ax,0xb000
00000155  8EC0              mov es,ax
00000157  BFFD04            mov di,0x4fd
0000015A  B95800            mov cx,0x58
0000015D  51                push cx
0000015E  57                push di
0000015F  B93800            mov cx,0x38
00000162  51                push cx
00000163  8AA44013          mov ah,[si+0x1340]
00000167  AC                lodsb
00000168  32D2              xor dl,dl
0000016A  B90400            mov cx,0x4
0000016D  02E4              add ah,ah
0000016F  12DB              adc bl,bl
00000171  02C0              add al,al
00000173  12DB              adc bl,bl
00000175  02E4              add ah,ah
00000177  12DB              adc bl,bl
00000179  02C0              add al,al
0000017B  12DB              adc bl,bl
0000017D  80E30F            and bl,0xf
00000180  32FF              xor bh,bh
00000182  02D2              add dl,dl
00000184  02D2              add dl,dl
00000186  2E0A973234        or dl,[cs:bx+0x3432]
0000018B  E2E0              loop 0x16d
0000018D  8AC2              mov al,dl
0000018F  AA                stosb
00000190  59                pop cx
00000191  E2CF              loop 0x162
00000193  5F                pop di
00000194  81C70020          add di,0x2000
00000198  81FF0060          cmp di,0x6000
0000019C  7219              jc 0x1b7
0000019E  1E                push ds
0000019F  56                push si
000001A0  51                push cx
000001A1  57                push di
000001A2  06                push es
000001A3  1F                pop ds
000001A4  8BF7              mov si,di
000001A6  81EE0020          sub si,0x2000
000001AA  B93800            mov cx,0x38
000001AD  F3A4              rep movsb
000001AF  5F                pop di
000001B0  59                pop cx
000001B1  5E                pop si
000001B2  1F                pop ds
000001B3  81C75AA0          add di,0xa05a
000001B7  59                pop cx
000001B8  E2A3              loop 0x15d
000001BA  1F                pop ds
000001BB  C3                ret
000001BC  1E                push ds
000001BD  8CCA              mov dx,cs
000001BF  81C20010          add dx,0x1000
000001C3  8EDA              mov ds,dx
000001C5  BE0000            mov si,0x0
000001C8  B800A0            mov ax,0xa000
000001CB  8EC0              mov es,ax
000001CD  BFB011            mov di,0x11b0
000001D0  B95800            mov cx,0x58
000001D3  51                push cx
000001D4  57                push di
000001D5  B93800            mov cx,0x38
000001D8  51                push cx
000001D9  8AB44013          mov dh,[si+0x1340]
000001DD  8A14              mov dl,[si]
000001DF  46                inc si
000001E0  E81A00            call 0x1fd
000001E3  AA                stosb
000001E4  E81600            call 0x1fd
000001E7  AA                stosb
000001E8  E81200            call 0x1fd
000001EB  AA                stosb
000001EC  E80E00            call 0x1fd
000001EF  AA                stosb
000001F0  59                pop cx
000001F1  E2E5              loop 0x1d8
000001F3  5F                pop di
000001F4  81C74001          add di,0x140
000001F8  59                pop cx
000001F9  E2D8              loop 0x1d3
000001FB  1F                pop ds
000001FC  C3                ret
000001FD  32C0              xor al,al
000001FF  02F6              add dh,dh
00000201  12C0              adc al,al
00000203  02C0              add al,al
00000205  02D2              add dl,dl
00000207  12C0              adc al,al
00000209  02F6              add dh,dh
0000020B  12C0              adc al,al
0000020D  02C0              add al,al
0000020F  02D2              add dl,dl
00000211  12C0              adc al,al
00000213  C3                ret
00000214  1E                push ds
00000215  8CCA              mov dx,cs
00000217  81C20010          add dx,0x1000
0000021B  8EDA              mov ds,dx
0000021D  BE0000            mov si,0x0
00000220  B800B8            mov ax,0xb800
00000223  8EC0              mov es,ax
00000225  BFF841            mov di,0x41f8
00000228  B95800            mov cx,0x58
0000022B  51                push cx
0000022C  57                push di
0000022D  B93800            mov cx,0x38
00000230  51                push cx
00000231  8AB44013          mov dh,[si+0x1340]
00000235  8A14              mov dl,[si]
00000237  46                inc si
00000238  E81C00            call 0x257
0000023B  AA                stosb
0000023C  E81800            call 0x257
0000023F  AA                stosb
00000240  59                pop cx
00000241  E2ED              loop 0x230
00000243  5F                pop di
00000244  81C70020          add di,0x2000
00000248  81FF0080          cmp di,0x8000
0000024C  7204              jc 0x252
0000024E  81C7A080          add di,0x80a0
00000252  59                pop cx
00000253  E2D6              loop 0x22b
00000255  1F                pop ds
00000256  C3                ret
00000257  32C0              xor al,al
00000259  B90200            mov cx,0x2
0000025C  02F6              add dh,dh
0000025E  12DB              adc bl,bl
00000260  02D2              add dl,dl
00000262  12DB              adc bl,bl
00000264  02F6              add dh,dh
00000266  12DB              adc bl,bl
00000268  02D2              add dl,dl
0000026A  12DB              adc bl,bl
0000026C  80E30F            and bl,0xf
0000026F  32FF              xor bh,bh
00000271  02C0              add al,al
00000273  02C0              add al,al
00000275  02C0              add al,al
00000277  02C0              add al,al
00000279  2E0A877D35        or al,[cs:bx+0x357d]
0000027E  E2DC              loop 0x25c
00000280  C3                ret
00000281  0007              add [bx],al
00000283  0901              or [bx+di],ax
00000285  07                pop es
00000286  0F0B              ud2
00000288  07                pop es
00000289  090B              or [bp+di],cx
0000028B  0B03              or ax,[bp+di]
0000028D  0107              add [bx],ax
0000028F  0309              add cx,[bx+di]
00000291  32DB              xor bl,bl
00000293  AC                lodsb
00000294  8AE0              mov ah,al
00000296  80E4F0            and ah,0xf0
00000299  80FC60            cmp ah,0x60
0000029C  B401              mov ah,0x1
0000029E  7506              jnz 0x2a6
000002A0  240F              and al,0xf
000002A2  8AE0              mov ah,al
000002A4  32C0              xor al,al
000002A6  AA                stosb
000002A7  FEC3              inc bl
000002A9  FECC              dec ah
000002AB  75F9              jnz 0x2a6
000002AD  80FB1C            cmp bl,0x1c
000002B0  75E1              jnz 0x293
000002B2  C3                ret
000002B3  33DB              xor bx,bx
000002B5  8A1E5B33          mov bl,[0x335b]
000002B9  03DB              add bx,bx
000002BB  FFA7BB35          jmp word near [bx+0x35bb]
000002BF  C7                db 0xc7
000002C0  354336            xor ax,0x3643
000002C3  43                inc bx
000002C4  36                ss
000002C5  C6                db 0xc6
000002C6  364E              ss dec si
000002C8  37                aaa
000002C9  0038              add [bx+si],bh
000002CB  1E                push ds
000002CC  8CCA              mov dx,cs
000002CE  81C20010          add dx,0x1000
000002D2  8EDA              mov ds,dx
000002D4  BE0000            mov si,0x0
000002D7  B800A0            mov ax,0xa000
000002DA  8EC0              mov es,ax
000002DC  BF6C2C            mov di,0x2c6c
000002DF  BAC403            mov dx,0x3c4
000002E2  B002              mov al,0x2
000002E4  EE                out dx,al
000002E5  42                inc dx
000002E6  B90800            mov cx,0x8
000002E9  B004              mov al,0x4
000002EB  EE                out dx,al
000002EC  E84E00            call 0x33d
000002EF  B002              mov al,0x2
000002F1  EE                out dx,al
000002F2  E84800            call 0x33d
000002F5  83C750            add di,0x50
000002F8  E2EF              loop 0x2e9
000002FA  BFEC2E            mov di,0x2eec
000002FD  B90800            mov cx,0x8
00000300  B001              mov al,0x1
00000302  EE                out dx,al
00000303  E83700            call 0x33d
00000306  B002              mov al,0x2
00000308  EE                out dx,al
00000309  E83100            call 0x33d
0000030C  83C750            add di,0x50
0000030F  E2EF              loop 0x300
00000311  B007              mov al,0x7
00000313  EE                out dx,al
00000314  BACE03            mov dx,0x3ce
00000317  B80501            mov ax,0x105
0000031A  EF                out dx,ax
0000031B  06                push es
0000031C  1F                pop ds
0000031D  BE6C2C            mov si,0x2c6c
00000320  BF882C            mov di,0x2c88
00000323  B410              mov ah,0x10
00000325  B91C00            mov cx,0x1c
00000328  F3A4              rep movsb
0000032A  83C734            add di,0x34
0000032D  83C634            add si,0x34
00000330  FECC              dec ah
00000332  75F1              jnz 0x325
00000334  BACE03            mov dx,0x3ce
00000337  B80500            mov ax,0x5
0000033A  EF                out dx,ax
0000033B  1F                pop ds
0000033C  C3                ret
0000033D  57                push di
0000033E  51                push cx
0000033F  B91C00            mov cx,0x1c
00000342  F3A4              rep movsb
00000344  59                pop cx
00000345  5F                pop di
00000346  C3                ret
00000347  1E                push ds
00000348  8CCA              mov dx,cs
0000034A  81C20010          add dx,0x1000
0000034E  8EDA              mov ds,dx
00000350  BE0000            mov si,0x0
00000353  B800B8            mov ax,0xb800
00000356  8EC0              mov es,ax
00000358  BF3C16            mov di,0x163c
0000035B  B91000            mov cx,0x10
0000035E  51                push cx
0000035F  57                push di
00000360  B91C00            mov cx,0x1c
00000363  51                push cx
00000364  8A641C            mov ah,[si+0x1c]
00000367  AC                lodsb
00000368  32D2              xor dl,dl
0000036A  B90400            mov cx,0x4
0000036D  02E4              add ah,ah
0000036F  12DB              adc bl,bl
00000371  02C0              add al,al
00000373  12DB              adc bl,bl
00000375  02E4              add ah,ah
00000377  12DB              adc bl,bl
00000379  02C0              add al,al
0000037B  12DB              adc bl,bl
0000037D  80E30F            and bl,0xf
00000380  32FF              xor bh,bh
00000382  02D2              add dl,dl
00000384  02D2              add dl,dl
00000386  2E0A97B636        or dl,[cs:bx+0x36b6]
0000038B  E2E0              loop 0x36d
0000038D  8AC2              mov al,dl
0000038F  AA                stosb
00000390  59                pop cx
00000391  E2D0              loop 0x363
00000393  1E                push ds
00000394  56                push si
00000395  06                push es
00000396  1F                pop ds
00000397  8BF7              mov si,di
00000399  83EE1C            sub si,0x1c
0000039C  B90E00            mov cx,0xe
0000039F  F3A5              rep movsw
000003A1  5E                pop si
000003A2  1F                pop ds
000003A3  83C61C            add si,0x1c
000003A6  5F                pop di
000003A7  81C70020          add di,0x2000
000003AB  81FF0040          cmp di,0x4000
000003AF  7204              jc 0x3b5
000003B1  81C750C0          add di,0xc050
000003B5  59                pop cx
000003B6  E2A6              loop 0x35e
000003B8  1F                pop ds
000003B9  C3                ret
000003BA  0003              add [bp+di],al
000003BC  0201              add al,[bx+di]
000003BE  0103              add [bp+di],ax
000003C0  0303              add ax,[bp+di]
000003C2  0203              add al,[bp+di]
000003C4  0102              add [bp+si],ax
000003C6  0203              add al,[bp+di]
000003C8  0303              add ax,[bp+di]
000003CA  1E                push ds
000003CB  8CCA              mov dx,cs
000003CD  81C20010          add dx,0x1000
000003D1  8EDA              mov ds,dx
000003D3  BE0000            mov si,0x0
000003D6  B800B0            mov ax,0xb000
000003D9  8EC0              mov es,ax
000003DB  BFC153            mov di,0x53c1
000003DE  B91000            mov cx,0x10
000003E1  51                push cx
000003E2  57                push di
000003E3  B91C00            mov cx,0x1c
000003E6  51                push cx
000003E7  8A641C            mov ah,[si+0x1c]
000003EA  AC                lodsb
000003EB  32D2              xor dl,dl
000003ED  B90400            mov cx,0x4
000003F0  02E4              add ah,ah
000003F2  12DB              adc bl,bl
000003F4  02C0              add al,al
000003F6  12DB              adc bl,bl
000003F8  02E4              add ah,ah
000003FA  12DB              adc bl,bl
000003FC  02C0              add al,al
000003FE  12DB              adc bl,bl
00000400  80E30F            and bl,0xf
00000403  32FF              xor bh,bh
00000405  02D2              add dl,dl
00000407  02D2              add dl,dl
00000409  2E0A97B636        or dl,[cs:bx+0x36b6]
0000040E  E2E0              loop 0x3f0
00000410  8AC2              mov al,dl
00000412  AA                stosb
00000413  59                pop cx
00000414  E2D0              loop 0x3e6
00000416  1E                push ds
00000417  56                push si
00000418  06                push es
00000419  1F                pop ds
0000041A  8BF7              mov si,di
0000041C  83EE1C            sub si,0x1c
0000041F  B90E00            mov cx,0xe
00000422  F3A5              rep movsw
00000424  5E                pop si
00000425  1F                pop ds
00000426  83C61C            add si,0x1c
00000429  5F                pop di
0000042A  81C70020          add di,0x2000
0000042E  81FF0060          cmp di,0x6000
00000432  7219              jc 0x44d
00000434  1E                push ds
00000435  56                push si
00000436  51                push cx
00000437  57                push di
00000438  06                push es
00000439  1F                pop ds
0000043A  8BF7              mov si,di
0000043C  81EE0020          sub si,0x2000
00000440  B93800            mov cx,0x38
00000443  F3A4              rep movsb
00000445  5F                pop di
00000446  59                pop cx
00000447  5E                pop si
00000448  1F                pop ds
00000449  81C75AA0          add di,0xa05a
0000044D  59                pop cx
0000044E  E291              loop 0x3e1
00000450  1F                pop ds
00000451  C3                ret
00000452  1E                push ds
00000453  8CCA              mov dx,cs
00000455  81C20010          add dx,0x1000
00000459  8EDA              mov ds,dx
0000045B  BE0000            mov si,0x0
0000045E  B800A0            mov ax,0xa000
00000461  8EC0              mov es,ax
00000463  BFB0B1            mov di,0xb1b0
00000466  B90800            mov cx,0x8
00000469  51                push cx
0000046A  56                push si
0000046B  57                push di
0000046C  B90E00            mov cx,0xe
0000046F  51                push cx
00000470  8B14              mov dx,[si]
00000472  8B5C1C            mov bx,[si+0x1c]
00000475  86D6              xchg dl,dh
00000477  86DF              xchg bl,bh
00000479  B90800            mov cx,0x8
0000047C  32C0              xor al,al
0000047E  03D2              add dx,dx
00000480  12C0              adc al,al
00000482  03DB              add bx,bx
00000484  12C0              adc al,al
00000486  02C0              add al,al
00000488  03D2              add dx,dx
0000048A  12C0              adc al,al
0000048C  03DB              add bx,bx
0000048E  12C0              adc al,al
00000490  02C0              add al,al
00000492  AA                stosb
00000493  E2E7              loop 0x47c
00000495  46                inc si
00000496  46                inc si
00000497  59                pop cx
00000498  E2D5              loop 0x46f
0000049A  5F                pop di
0000049B  81C74001          add di,0x140
0000049F  5E                pop si
000004A0  83C638            add si,0x38
000004A3  59                pop cx
000004A4  E2C3              loop 0x469
000004A6  BFB0BB            mov di,0xbbb0
000004A9  B90800            mov cx,0x8
000004AC  51                push cx
000004AD  56                push si
000004AE  57                push di
000004AF  B90E00            mov cx,0xe
000004B2  51                push cx
000004B3  8B1C              mov bx,[si]
000004B5  8B541C            mov dx,[si+0x1c]
000004B8  86D6              xchg dl,dh
000004BA  86DF              xchg bl,bh
000004BC  B90800            mov cx,0x8
000004BF  32C0              xor al,al
000004C1  03D2              add dx,dx
000004C3  12C0              adc al,al
000004C5  03DB              add bx,bx
000004C7  12C0              adc al,al
000004C9  02C0              add al,al
000004CB  03D2              add dx,dx
000004CD  12C0              adc al,al
000004CF  03DB              add bx,bx
000004D1  12C0              adc al,al
000004D3  AA                stosb
000004D4  E2E9              loop 0x4bf
000004D6  46                inc si
000004D7  46                inc si
000004D8  59                pop cx
000004D9  E2D7              loop 0x4b2
000004DB  5F                pop di
000004DC  81C74001          add di,0x140
000004E0  5E                pop si
000004E1  83C638            add si,0x38
000004E4  59                pop cx
000004E5  E2C5              loop 0x4ac
000004E7  06                push es
000004E8  1F                pop ds
000004E9  BEB0B1            mov si,0xb1b0
000004EC  BF20B2            mov di,0xb220
000004EF  B410              mov ah,0x10
000004F1  B93800            mov cx,0x38
000004F4  F3A5              rep movsw
000004F6  81C7D000          add di,0xd0
000004FA  81C6D000          add si,0xd0
000004FE  FECC              dec ah
00000500  75EF              jnz 0x4f1
00000502  1F                pop ds
00000503  C3                ret
00000504  1E                push ds
00000505  8CCA              mov dx,cs
00000507  81C20010          add dx,0x1000
0000050B  8EDA              mov ds,dx
0000050D  BE0000            mov si,0x0
00000510  B800B8            mov ax,0xb800
00000513  8EC0              mov es,ax
00000515  BFF855            mov di,0x55f8
00000518  B90800            mov cx,0x8
0000051B  51                push cx
0000051C  57                push di
0000051D  B91C00            mov cx,0x1c
00000520  51                push cx
00000521  8A741C            mov dh,[si+0x1c]
00000524  8A14              mov dl,[si]
00000526  46                inc si
00000527  BDC738            mov bp,0x38c7
0000052A  E87400            call 0x5a1
0000052D  AA                stosb
0000052E  E87000            call 0x5a1
00000531  AA                stosb
00000532  59                pop cx
00000533  E2EB              loop 0x520
00000535  1E                push ds
00000536  56                push si
00000537  06                push es
00000538  1F                pop ds
00000539  8BF7              mov si,di
0000053B  83EE38            sub si,0x38
0000053E  B91C00            mov cx,0x1c
00000541  F3A5              rep movsw
00000543  5E                pop si
00000544  1F                pop ds
00000545  83C61C            add si,0x1c
00000548  5F                pop di
00000549  81C70020          add di,0x2000
0000054D  81FF0080          cmp di,0x8000
00000551  7204              jc 0x557
00000553  81C7A080          add di,0x80a0
00000557  59                pop cx
00000558  E2C1              loop 0x51b
0000055A  BF3857            mov di,0x5738
0000055D  B90800            mov cx,0x8
00000560  51                push cx
00000561  57                push di
00000562  B91C00            mov cx,0x1c
00000565  51                push cx
00000566  8A741C            mov dh,[si+0x1c]
00000569  8A14              mov dl,[si]
0000056B  46                inc si
0000056C  BDD738            mov bp,0x38d7
0000056F  E82F00            call 0x5a1
00000572  AA                stosb
00000573  E82B00            call 0x5a1
00000576  AA                stosb
00000577  59                pop cx
00000578  E2EB              loop 0x565
0000057A  1E                push ds
0000057B  56                push si
0000057C  06                push es
0000057D  1F                pop ds
0000057E  8BF7              mov si,di
00000580  83EE38            sub si,0x38
00000583  B91C00            mov cx,0x1c
00000586  F3A5              rep movsw
00000588  5E                pop si
00000589  1F                pop ds
0000058A  83C61C            add si,0x1c
0000058D  5F                pop di
0000058E  81C70020          add di,0x2000
00000592  81FF0080          cmp di,0x8000
00000596  7204              jc 0x59c
00000598  81C7A080          add di,0x80a0
0000059C  59                pop cx
0000059D  E2C1              loop 0x560
0000059F  1F                pop ds
000005A0  C3                ret
000005A1  32C0              xor al,al
000005A3  B90200            mov cx,0x2
000005A6  02F6              add dh,dh
000005A8  12DB              adc bl,bl
000005AA  02D2              add dl,dl
000005AC  12DB              adc bl,bl
000005AE  02F6              add dh,dh
000005B0  12DB              adc bl,bl
000005B2  02D2              add dl,dl
000005B4  12DB              adc bl,bl
000005B6  80E30F            and bl,0xf
000005B9  32FF              xor bh,bh
000005BB  02C0              add al,al
000005BD  02C0              add al,al
000005BF  02C0              add al,al
000005C1  02C0              add al,al
000005C3  03DD              add bx,bp
000005C5  2E0A07            or al,[cs:bx]
000005C8  E2DC              loop 0x5a6
000005CA  C3                ret
000005CB  0003              add [bp+di],al
000005CD  0407              add al,0x7
000005CF  030B              add cx,[bp+di]
000005D1  050A04            add ax,0x40a
000005D4  050C06            add ax,0x60c
000005D7  07                pop es
000005D8  0A060E00          or al,[0xe]
000005DC  07                pop es
000005DD  0402              add al,0x2
000005DF  07                pop es
000005E0  0F                db 0x0f
000005E1  0C0E              or al,0xe
000005E3  040C              add al,0xc
000005E5  0C02              or al,0x2
000005E7  020E020A          add cl,[0xa02]
000005EB  06                push es
000005EC  AA                stosb
000005ED  70BB              jo 0x5aa
000005EF  FB                sti
000005F0  BFBBBF            mov di,0xbfbb
000005F3  BBBBFF            mov bx,0xffbb
000005F6  BBBBBF            mov bx,0xbfbb
000005F9  06                push es
000005FA  BB08FB            mov bx,0xfb08
000005FD  FF                db 0xff
000005FE  FF                db 0xff
000005FF  BBBFFB            mov bx,0xfbbf
00000602  06                push es
00000603  BB10FF            mov bx,0xff10
00000606  FF                db 0xff
00000607  FB                sti
00000608  06                push es
00000609  BB0CFE            mov bx,0xfe0c
0000060C  FE                db 0xfe
0000060D  FE                db 0xfe
0000060E  FF                db 0xff
0000060F  FE                db 0xfe
00000610  EF                out dx,ax
00000611  FF                db 0xff
00000612  FF                db 0xff
00000613  FF                db 0xff
00000614  EF                out dx,ax
00000615  FF                db 0xff
00000616  FF                db 0xff
00000617  EE                out dx,al
00000618  EE                out dx,al
00000619  EF                out dx,ax
0000061A  FE                db 0xfe
0000061B  EF                out dx,ax
0000061C  FF                db 0xff
0000061D  FF                db 0xff
0000061E  FE                db 0xfe
0000061F  FF                db 0xff
00000620  EE                out dx,al
00000621  EF                out dx,ax
00000622  FF                db 0xff
00000623  FF                db 0xff
00000624  FF                db 0xff
00000625  EE                out dx,al
00000626  EF                out dx,ax
00000627  EE                out dx,al
00000628  EF                out dx,ax
00000629  FE                db 0xfe
0000062A  FF                db 0xff
0000062B  EF                out dx,ax
0000062C  FE                db 0xfe
0000062D  EF                out dx,ax
0000062E  EF                out dx,ax
0000062F  FF                db 0xff
00000630  FE                db 0xfe
00000631  FF                db 0xff
00000632  EF                out dx,ax
00000633  FF                db 0xff
00000634  FF                db 0xff
00000635  FE                db 0xfe
00000636  FF                db 0xff
00000637  EE                out dx,al
00000638  06                push es
00000639  EF                out dx,ax
0000063A  04FE              add al,0xfe
0000063C  FF                db 0xff
0000063D  FF                db 0xff
0000063E  FE                db 0xfe
0000063F  EE                out dx,al
00000640  EE                out dx,al
00000641  EE                out dx,al
00000642  06                push es
00000643  FF32              push word [bp+si]
00000645  EF                out dx,ax
00000646  FB                sti
00000647  06                push es
00000648  FF77BB            push word [bx-0x45]
0000064B  BBBB06            mov bx,0x6bb
0000064E  FF0D              dec word [di]
00000650  FE                db 0xfe
00000651  EABBFFFFFE        jmp word 0xfeff:word 0xffbb
00000656  EAEFFFFFEE        jmp word 0xeeff:word 0xffef
0000065B  EE                out dx,al
0000065C  EE                out dx,al
0000065D  06                push es
0000065E  FF10              call word near [bx+si]
00000660  FE                db 0xfe
00000661  EE                out dx,al
00000662  EE                out dx,al
00000663  06                push es
00000664  FF05              inc word [di]
00000666  BBFBAE            mov bx,0xaefb
00000669  06                push es
0000066A  EE                out dx,al
0000066B  04EF              add al,0xef
0000066D  FF                db 0xff
0000066E  FF                db 0xff
0000066F  FB                sti
00000670  BABEBE            mov dx,0xbebe
00000673  EF                out dx,ax
00000674  FB                sti
00000675  FB                sti
00000676  BB06FF            mov bx,0xff06
00000679  0E                push cs
0000067A  06                push es
0000067B  BB0BBF            mov bx,0xbf0b
0000067E  FF                db 0xff
0000067F  FF                db 0xff
00000680  BBBBBB            mov bx,0xbbbb
00000683  FB                sti
00000684  BBBBBF            mov bx,0xbfbb
00000687  BFFFBB            mov di,0xbbff
0000068A  EE                out dx,al
0000068B  EE                out dx,al
0000068C  EAAAAAAAEE        jmp word 0xeeaa:word 0xaaaa
00000691  FE                db 0xfe
00000692  EE                out dx,al
00000693  EE                out dx,al
00000694  EF                out dx,ax
00000695  FF                db 0xff
00000696  EAEAABAABF        jmp word 0xbfaa:word 0xabea
0000069B  EE                out dx,al
0000069C  EE                out dx,al
0000069D  AA                stosb
0000069E  06                push es
0000069F  BB04BF            mov bx,0xbf04
000006A2  FF                db 0xff
000006A3  FE06EE07          inc byte [0x7ee]
000006A7  FE                db 0xfe
000006A8  AA                stosb
000006A9  AE                scasb
000006AA  EE                out dx,al
000006AB  AA                stosb
000006AC  AA                stosb
000006AD  AE                scasb
000006AE  EE                out dx,al
000006AF  FF                db 0xff
000006B0  FF                db 0xff
000006B1  FF06EE04          inc word [0x4ee]
000006B5  EF                out dx,ax
000006B6  EE                out dx,al
000006B7  FF                db 0xff
000006B8  FF                db 0xff
000006B9  FF                db 0xff
000006BA  EE                out dx,al
000006BB  FF                db 0xff
000006BC  BBBBBB            mov bx,0xbbbb
000006BF  BAABAB            mov dx,0xabab
000006C2  06                push es
000006C3  BB05BA            mov bx,0xba05
000006C6  AB                stosw
000006C7  AA                stosb
000006C8  AA                stosb
000006C9  AB                stosw
000006CA  AB                stosw
000006CB  BB06AA            mov bx,0xaa06
000006CE  06                push es
000006CF  AB                stosw
000006D0  06                push es
000006D1  BB07AA            mov bx,0xaa07
000006D4  AB                stosw
000006D5  06                push es
000006D6  BB13BF            mov bx,0xbf13
000006D9  FF                db 0xff
000006DA  BF06EE            mov di,0xee06
000006DD  0806AA0D          or [0xdaa],al
000006E1  EE                out dx,al
000006E2  AE                scasb
000006E3  AA                stosb
000006E4  EE                out dx,al
000006E5  EE                out dx,al
000006E6  EAAAEEAAAA        jmp word 0xaaaa:word 0xeeaa
000006EB  EAEEEAAAEE        jmp word 0xeeaa:word 0xeaee
000006F0  EE                out dx,al
000006F1  FE                db 0xfe
000006F2  AA                stosb
000006F3  EAAAAEEEEA        jmp word 0xeaee:word 0xaeaa
000006F8  AA                stosb
000006F9  EE                out dx,al
000006FA  AA                stosb
000006FB  EAAE06EE06        jmp word 0x6ee:word 0x6ae
00000700  EF                out dx,ax
00000701  FB                sti
00000702  06                push es
00000703  AA                stosb
00000704  2DBBAA            sub ax,0xaabb
00000707  BAAAAB            mov dx,0xabaa
0000070A  06                push es
0000070B  BB05EA            mov bx,0xea05
0000070E  EE                out dx,al
0000070F  06                push es
00000710  AA                stosb
00000711  35EEAB            xor ax,0xabee
00000714  AA                stosb
00000715  AA                stosb
00000716  AA                stosb
00000717  EAEEEAAEAB        jmp word 0xabae:word 0xeaee
0000071C  06                push es
0000071D  AA                stosb
0000071E  2F                das
0000071F  EA06AA08AB        jmp word 0xab08:word 0xaa06
00000724  AA                stosb
00000725  BAEA06            mov dx,0x6ea
00000728  AA                stosb
00000729  B6AF              mov dh,0xaf
0000072B  FE                db 0xfe
0000072C  EF                out dx,ax
0000072D  06                push es
0000072E  AA                stosb
0000072F  04BF              add al,0xbf
00000731  EE                out dx,al
00000732  EF                out dx,ax
00000733  FA                cli
00000734  06                push es
00000735  AA                stosb
00000736  2DBEAF            sub ax,0xafbe
00000739  FE                db 0xfe
0000073A  EE                out dx,al
0000073B  BBFAAA            mov bx,0xaafa
0000073E  BAFBBA            mov dx,0xbafb
00000741  06                push es
00000742  AA                stosb
00000743  1F                pop ds
00000744  3F                aas
00000745  FE                db 0xfe
00000746  EE                out dx,al
00000747  EABB06AA09        jmp word 0x9aa:word 0x6bb
0000074C  AB                stosw
0000074D  FE                db 0xfe
0000074E  AE                scasb
0000074F  EA06AA04FA        jmp word 0xfa04:word 0xaa06
00000754  BE06AA            mov si,0xaa06
00000757  203EEA06          and [0x6ea],bh
0000075B  AA                stosb
0000075C  0CAF              or al,0xaf
0000075E  FE                db 0xfe
0000075F  AB                stosw
00000760  BBBAAA            mov bx,0xaaba
00000763  AA                stosb
00000764  AA                stosb
00000765  FA                cli
00000766  BA06AA            mov dx,0xaa06
00000769  1F                pop ds
0000076A  AB                stosw
0000076B  BA06AA            mov dx,0xaa06
0000076E  0DAFFA            or ax,0xfaaf
00000771  AA                stosb
00000772  EAAAAAAAAB        jmp word 0xabaa:word 0xaaaa
00000777  FB                sti
00000778  EE                out dx,al
00000779  06                push es
0000077A  AA                stosb
0000077B  10BFFFFF          adc [bx-0x1],bh
0000077F  EF                out dx,ax
00000780  06                push es
00000781  AA                stosb
00000782  0BAFAEEE          or bp,[bx-0x1152]
00000786  EF                out dx,ax
00000787  FE                db 0xfe
00000788  BAAAEE            mov dx,0xeeaa
0000078B  EE                out dx,al
0000078C  FF                db 0xff
0000078D  FB                sti
0000078E  BBAAAA            mov bx,0xaaaa
00000791  AA                stosb
00000792  FF                db 0xff
00000793  EAAAEAAAAA        jmp word 0xaaaa:word 0xeaaa
00000798  AA                stosb
00000799  AB                stosw
0000079A  EE                out dx,al
0000079B  BAAAAA            mov dx,0xaaaa
0000079E  AB                stosw
0000079F  FF                db 0xff
000007A0  FB                sti
000007A1  FF                db 0xff
000007A2  BBBBAA            mov bx,0xaabb
000007A5  EE                out dx,al
000007A6  06                push es
000007A7  AA                stosb
000007A8  05BFEE            add ax,0xeebf
000007AB  AB                stosw
000007AC  FF                db 0xff
000007AD  BA06AA            mov dx,0xaa06
000007B0  07                pop es
000007B1  FF                db 0xff
000007B2  FE                db 0xfe
000007B3  EE                out dx,al
000007B4  AA                stosb
000007B5  AF                scasw
000007B6  AF                scasw
000007B7  BBBBAA            mov bx,0xaabb
000007BA  AA                stosb
000007BB  AE                scasb
000007BC  EE                out dx,al
000007BD  06                push es
000007BE  AA                stosb
000007BF  04AE              add al,0xae
000007C1  EE                out dx,al
000007C2  EF                out dx,ax
000007C3  BFEA06            mov di,0x6ea
000007C6  AA                stosb
000007C7  05AFEC            add ax,0xecaf
000007CA  BAAAAA            mov dx,0xaaaa
000007CD  AF                scasw
000007CE  FF                db 0xff
000007CF  FF                db 0xff
000007D0  BBFFEA            mov bx,0xeaff
000007D3  06                push es
000007D4  AA                stosb
000007D5  06                push es
000007D6  BFFFEE            mov di,0xeeff
000007D9  AA                stosb
000007DA  AB                stosw
000007DB  AA                stosb
000007DC  BFBFEB            mov di,0xebbf
000007DF  FB                sti
000007E0  BBBBBB            mov bx,0xbbbb
000007E3  06                push es
000007E4  AA                stosb
000007E5  04AF              add al,0xaf
000007E7  2BFA              sub di,dx
000007E9  AA                stosb
000007EA  AA                stosb
000007EB  AA                stosb
000007EC  06                push es
000007ED  BB04AA            mov bx,0xaa04
000007F0  AE                scasb
000007F1  EAAAFABFEA        jmp word 0xeabf:word 0xfaaa
000007F6  AA                stosb
000007F7  BBBFFB            mov bx,0xfbbf
000007FA  BBBFE8            mov bx,0xe8bf
000007FD  BAAAAA            mov dx,0xaaaa
00000800  AF                scasw
00000801  FE                db 0xfe
00000802  AB                stosw
00000803  EF                out dx,ax
00000804  FE                db 0xfe
00000805  FF                db 0xff
00000806  FE                db 0xfe
00000807  EAAAAF06FF        jmp word 0xff06:word 0xafaa
0000080C  04EE              add al,0xee
0000080E  AA                stosb
0000080F  AA                stosb
00000810  AA                stosb
00000811  FFAEEEFF          jmp word far [bp-0x12]
00000815  EAAEEEFBBA        jmp word 0xbafb:word 0xeeae
0000081A  FF                db 0xff
0000081B  FF                db 0xff
0000081C  EE                out dx,al
0000081D  EABEEEEEEE        jmp word 0xeeee:word 0xeebe
00000822  BFFFEB            mov di,0xebff
00000825  FF                db 0xff
00000826  FE                db 0xfe
00000827  BAEAAB            mov dx,0xabea
0000082A  EBFF              jmp 0x82b
0000082C  06                push es
0000082D  AA                stosb
0000082E  06                push es
0000082F  FE                db 0xfe
00000830  EC                in al,dx
00000831  8EAAAABF          mov gs,word [bp+si-0x4056]
00000835  FE                db 0xfe
00000836  AF                scasw
00000837  BA06FF            mov dx,0xff06
0000083A  05FABF            add ax,0xbffa
0000083D  BEFFFF            mov si,0xffff
00000840  EE                out dx,al
00000841  AA                stosb
00000842  AA                stosb
00000843  AA                stosb
00000844  06                push es
00000845  FF05              inc word [di]
00000847  AB                stosw
00000848  06                push es
00000849  FF04              inc word [si]
0000084B  FE                db 0xfe
0000084C  BFAAAF            mov di,0xafaa
0000084F  06                push es
00000850  FF08              dec word [bx+si]
00000852  FB                sti
00000853  FF                db 0xff
00000854  EF                out dx,ax
00000855  AF                scasw
00000856  FFAAA8BF          jmp word far [bp+si-0x4058]
0000085A  FF                db 0xff
0000085B  FB                sti
0000085C  FF                db 0xff
0000085D  BEEE2E            mov si,0x2eee
00000860  FF                db 0xff
00000861  FF                db 0xff
00000862  BFFEAF            mov di,0xaffe
00000865  BBFEAA            mov bx,0xaafe
00000868  EE                out dx,al
00000869  BEFBAA            mov si,0xaafb
0000086C  BFEBBF            mov di,0xbfeb
0000086F  FF                db 0xff
00000870  EE                out dx,al
00000871  06                push es
00000872  AA                stosb
00000873  07                pop es
00000874  AF                scasw
00000875  AB                stosw
00000876  EAAAAAAAA8        jmp word 0xa8aa:word 0xaaaa
0000087B  BFAAAE            mov di,0xaeaa
0000087E  EE                out dx,al
0000087F  EBAA              jmp 0x82b
00000881  AE                scasb
00000882  EE                out dx,al
00000883  AB                stosw
00000884  BBAFAF            mov bx,0xafaf
00000887  EABFAFFEAA        jmp word 0xaafe:word 0xafbf
0000088C  A8AA              test al,0xaa
0000088E  AA                stosb
0000088F  AF                scasw
00000890  EE                out dx,al
00000891  EAEE22AAAA        jmp word 0xaaaa:word 0x22ee
00000896  FF                db 0xff
00000897  FE                db 0xfe
00000898  EBBA              jmp 0x854
0000089A  BEAAEE            mov si,0xeeaa
0000089D  FE                db 0xfe
0000089E  FB                sti
0000089F  BAAFAA            mov dx,0xaaaf
000008A2  BFFFEE            mov di,0xeeff
000008A5  AA                stosb
000008A6  AA                stosb
000008A7  AA                stosb
000008A8  FF                db 0xff
000008A9  FF                db 0xff
000008AA  FF                db 0xff
000008AB  EBFA              jmp 0x8a7
000008AD  AA                stosb
000008AE  FF                db 0xff
000008AF  FF                db 0xff
000008B0  FF                db 0xff
000008B1  FE                db 0xfe
000008B2  A2FDE8            mov [0xe8fd],al
000008B5  AF                scasw
000008B6  FE                db 0xfe
000008B7  AB                stosw
000008B8  06                push es
000008B9  FF06EFBF          inc word [0xbfef]
000008BD  BEEFFA            mov si,0xfaef
000008C0  AA                stosb
000008C1  A82B              test al,0x2b
000008C3  FF                db 0xff
000008C4  EF                out dx,ax
000008C5  FF                db 0xff
000008C6  EBBE              jmp 0x886
000008C8  8ABFFEFF          mov bh,[bx-0x2]
000008CC  FE                db 0xfe
000008CD  EBBE              jmp 0x88d
000008CF  BAAAFA            mov dx,0xfaaa
000008D2  BEFBBA            mov si,0xbafb
000008D5  BEEABF            mov si,0xbfea
000008D8  FFAEAAAA          jmp word far [bp-0x5556]
000008DC  AA                stosb
000008DD  AE                scasb
000008DE  BAAAFA            mov dx,0xfaaa
000008E1  AA                stosb
000008E2  BBFEAA            mov bx,0xaafe
000008E5  BFFA82            mov di,0x82fa
000008E8  FB                sti
000008E9  E8ABFE            call 0x797
000008EC  AB                stosw
000008ED  FF                db 0xff
000008EE  EB06              jmp 0x8f6
000008F0  FF04              inc word [si]
000008F2  EF                out dx,ax
000008F3  BFBFAF            mov di,0xafbf
000008F6  FA                cli
000008F7  AA                stosb
000008F8  AA                stosb
000008F9  0BFF              or di,di
000008FB  EE                out dx,al
000008FC  FFABBAA8          jmp word far [bp+di-0x5746]
00000900  BFFBFF            mov di,0xfffb
00000903  FB                sti
00000904  AB                stosw
00000905  FE                db 0xfe
00000906  BAAAFA            mov dx,0xfaaa
00000909  FE                db 0xfe
0000090A  FB                sti
0000090B  BABBAA            mov dx,0xaabb
0000090E  BFFFBA            mov di,0xbaff
00000911  AA                stosb
00000912  AA                stosb
00000913  AA                stosb
00000914  BEBFEF            mov si,0xefbf
00000917  AA                stosb
00000918  AA                stosb
00000919  AF                scasw
0000091A  FFAAFFFA          jmp word far [bp+si-0x501]
0000091E  22FF              and bh,bh
00000920  E8AAFA            call 0x3cd
00000923  AB                stosw
00000924  FFAB06FF          jmp word far [bp+di-0xfa]
00000928  04BE              add al,0xbe
0000092A  FF                db 0xff
0000092B  BEAFEA            mov si,0xeaaf
0000092E  AA                stosb
0000092F  AA                stosb
00000930  8AFF              mov bh,bh
00000932  BFFAAE            mov di,0xaefa
00000935  AE                scasb
00000936  88ABFBFF          mov [bp+di-0x5],ch
0000093A  EBAA              jmp 0x8e6
0000093C  FA                cli
0000093D  BAAAFA            mov dx,0xfaaa
00000940  EE                out dx,al
00000941  FB                sti
00000942  AA                stosb
00000943  BEAABF            mov si,0xbfaa
00000946  FF                db 0xff
00000947  BA06AA            mov dx,0xaa06
0000094A  04BE              add al,0xbe
0000094C  AA                stosb
0000094D  AA                stosb
0000094E  AA                stosb
0000094F  AE                scasb
00000950  FF                db 0xff
00000951  EAFEFACBFF        jmp word 0xffcb:word 0xfafe
00000956  A88A              test al,0x8a
00000958  AA                stosb
00000959  AE                scasb
0000095A  EE                out dx,al
0000095B  AB                stosw
0000095C  FF                db 0xff
0000095D  FF                db 0xff
0000095E  FF                db 0xff
0000095F  FE                db 0xfe
00000960  FFAEFFBF          jmp word far [bp-0x4001]
00000964  EAAAAA0AFE        jmp word 0xfe0a:word 0xaaaa
00000969  FB                sti
0000096A  BAEEFE            mov dx,0xfeee
0000096D  80AAFFFFEB        sub byte [bp+si-0x1],0xeb
00000972  AA                stosb
00000973  EAAEAAEBBE        jmp word 0xbeeb:word 0xaaae
00000978  EE                out dx,al
00000979  BABEAA            mov dx,0xaabe
0000097C  BFFFFA            mov di,0xfaff
0000097F  06                push es
00000980  AA                stosb
00000981  04FE              add al,0xfe
00000983  AA                stosb
00000984  AE                scasb
00000985  AA                stosb
00000986  AF                scasw
00000987  BFABFF            mov di,0xffab
0000098A  E8C3FF            call 0x950
0000098D  98                cbw
0000098E  0AAAABFA          or ch,[bp+si-0x555]
00000992  BBFFFF            mov bx,0xffff
00000995  FF                db 0xff
00000996  FE                db 0xfe
00000997  FFABFABE          jmp word far [bp+di-0x4106]
0000099B  EAAAAA82BE        jmp word 0xbe82:word 0xaaaa
000009A0  EF                out dx,ax
000009A1  EBBB              jmp 0x95e
000009A3  EE                out dx,al
000009A4  82                db 0x82
000009A5  2AFF              sub bh,bh
000009A7  FFAFAAEA          jmp word far [bx-0x1556]
000009AB  AA                stosb
000009AC  AB                stosw
000009AD  BBFEEE            mov bx,0xeefe
000009B0  BABAAA            mov dx,0xaaba
000009B3  BFFFAE            mov di,0xaeff
000009B6  06                push es
000009B7  AA                stosb
000009B8  04BE              add al,0xbe
000009BA  AA                stosb
000009BB  BAAAAB            mov dx,0xabaa
000009BE  FE                db 0xfe
000009BF  BBAFFB            mov bx,0xfbaf
000009C2  CF                iret
000009C3  FE                db 0xfe
000009C4  98                cbw
000009C5  0888AAFA          or [bx+si-0x556],cl
000009C9  AF                scasw
000009CA  FE                db 0xfe
000009CB  FF                db 0xff
000009CC  FF                db 0xff
000009CD  FE                db 0xfe
000009CE  FE                db 0xfe
000009CF  AB                stosw
000009D0  EE                out dx,al
000009D1  FE                db 0xfe
000009D2  EAAAAA88AB        jmp word 0xab88:word 0xaaaa
000009D7  FF                db 0xff
000009D8  EAAFBA8223        jmp word 0x2382:word 0xbaaf
000009DD  FF                db 0xff
000009DE  FFAEAABB          jmp word far [bp-0x4456]
000009E2  AE                scasb
000009E3  AB                stosw
000009E4  EBFF              jmp 0x9e5
000009E6  AE                scasb
000009E7  BAAEAA            mov dx,0xaaae
000009EA  BFFFEE            mov di,0xeeff
000009ED  AA                stosb
000009EE  AA                stosb
000009EF  AA                stosb
000009F0  2AFA              sub bh,dl
000009F2  AA                stosb
000009F3  EAAAABFAFB        jmp word 0xfbfa:word 0xabaa
000009F8  FF                db 0xff
000009F9  EF                out dx,ax
000009FA  CF                iret
000009FB  F9                stc
000009FC  A820              test al,0x20
000009FE  A22AEA            mov [0xea2a],al
00000A01  BFFFFF            mov di,0xffff
00000A04  FF                db 0xff
00000A05  EBFF              jmp 0xa06
00000A07  AF                scasw
00000A08  BAFBAA            mov dx,0xaafb
00000A0B  AA                stosb
00000A0C  AA                stosb
00000A0D  A2ABBE            mov [0xbeab],al
00000A10  EF                out dx,ax
00000A11  BFBE88            mov di,0x88be
00000A14  83FFFF            cmp di,0xffffffffffffffff
00000A17  BAAAFB            mov dx,0xfbaa
00000A1A  BAAEEE            mov dx,0xeeae
00000A1D  FFAEEABA          jmp word far [bp-0x4516]
00000A21  AA                stosb
00000A22  BFFFEE            mov di,0xeeff
00000A25  AA                stosb
00000A26  AA                stosb
00000A27  AA                stosb
00000A28  2BFA              sub di,dx
00000A2A  AB                stosw
00000A2B  AA                stosb
00000A2C  AA                stosb
00000A2D  BBFEEF            mov bx,0xeffe
00000A30  BBEFBF            mov bx,0xbfef
00000A33  F9                stc
00000A34  AA                stosb
00000A35  0828              or [bx+si],ch
00000A37  AA                stosb
00000A38  AB                stosw
00000A39  BFFFFF            mov di,0xffff
00000A3C  FF                db 0xff
00000A3D  FE                db 0xfe
00000A3E  FA                cli
00000A3F  EF                out dx,ax
00000A40  EBFB              jmp 0xa3d
00000A42  AA                stosb
00000A43  AA                stosb
00000A44  AA                stosb
00000A45  82                db 0x82
00000A46  AA                stosb
00000A47  FFAEBEBA          jmp word far [bp-0x4542]
00000A4B  808FFFFFBA        or byte [bx-0x1],0xba
00000A50  AA                stosb
00000A51  EBAA              jmp 0x9fd
00000A53  FB                sti
00000A54  AB                stosw
00000A55  BFAEEA            mov di,0xeaae
00000A58  BAAABF            mov dx,0xbfaa
00000A5B  FFAEAAAA          jmp word far [bp-0x5556]
00000A5F  AA                stosb
00000A60  EBFA              jmp 0xa5c
00000A62  AF                scasw
00000A63  AA                stosb
00000A64  AA                stosb
00000A65  BEEAFB            mov si,0xfbea
00000A68  BAFF3F            mov dx,0x3fff
00000A6B  FA                cli
00000A6C  AA                stosb
00000A6D  0A8800BF          or cl,[bx+si-0x4100]
00000A71  06                push es
00000A72  FF04              inc word [si]
00000A74  FB                sti
00000A75  EF                out dx,ax
00000A76  AB                stosw
00000A77  AB                stosw
00000A78  EBAA              jmp 0xa24
00000A7A  AA                stosb
00000A7B  AA                stosb
00000A7C  A0AAFB            mov al,[0xfbaa]
00000A7F  BEEAFA            mov si,0xfaea
00000A82  A00FFF            mov al,[0xff0f]
00000A85  FE                db 0xfe
00000A86  BAAAEF            mov dx,0xefaa
00000A89  BBAEAE            mov bx,0xaeae
00000A8C  EE                out dx,al
00000A8D  EE                out dx,al
00000A8E  EAAEAAEFFF        jmp word 0xffef:word 0xaaae
00000A93  AE                scasb
00000A94  AA                stosb
00000A95  AA                stosb
00000A96  AA                stosb
00000A97  0BEA              or bp,dx
00000A99  BBAAAA            mov bx,0xaaaa
00000A9C  BFFBAE            mov di,0xaefb
00000A9F  FF                db 0xff
00000AA0  BCFFFA            mov sp,0xfaff
00000AA3  AA                stosb
00000AA4  82                db 0x82
00000AA5  A00F06            mov al,[0x60f]
00000AA8  FF05              inc word [di]
00000AAA  EF                out dx,ax
00000AAB  AB                stosw
00000AAC  AE                scasb
00000AAD  AF                scasw
00000AAE  EBAA              jmp 0xa5a
00000AB0  AA                stosb
00000AB1  AA                stosb
00000AB2  A82A              test al,0x2a
00000AB4  BEBBBA            mov si,0xbabb
00000AB7  FA                cli
00000AB8  A23FFF            mov [0xff3f],al
00000ABB  EF                out dx,ax
00000ABC  BAAAEF            mov dx,0xefaa
00000ABF  AE                scasb
00000AC0  BAABEF            mov dx,0xefab
00000AC3  AE                scasb
00000AC4  EAAEAABFFF        jmp word 0xffbf:word 0xaaae
00000AC9  06                push es
00000ACA  AA                stosb
00000ACB  04CF              add al,0xcf
00000ACD  BAAEAA            mov dx,0xaaae
00000AD0  AA                stosb
00000AD1  EF                out dx,ax
00000AD2  AB                stosw
00000AD3  BABEBF            mov dx,0xbfbe
00000AD6  FF                db 0xff
00000AD7  FA                cli
00000AD8  6A82              push word 0xffffffffffffff82
00000ADA  8006FF06AF        add byte [0x6ff],0xaf
00000ADF  BABEBF            mov dx,0xbfbe
00000AE2  AE                scasb
00000AE3  AA                stosb
00000AE4  AA                stosb
00000AE5  AA                stosb
00000AE6  A20AAE            mov [0xae0a],al
00000AE9  AF                scasw
00000AEA  AA                stosb
00000AEB  EE                out dx,al
00000AEC  A03FFB            mov al,[0xfb3f]
00000AEF  EBEA              jmp 0xadb
00000AF1  AA                stosb
00000AF2  BBAEBA            mov bx,0xbaae
00000AF5  AF                scasw
00000AF6  EF                out dx,ax
00000AF7  EE                out dx,al
00000AF8  EAAEAAAFFF        jmp word 0xffaf:word 0xaaae
00000AFD  AE                scasb
00000AFE  AA                stosb
00000AFF  AA                stosb
00000B00  AA                stosb
00000B01  8F                db 0x8f
00000B02  EABAAAABBF        jmp word 0xbfab:word 0xaaba
00000B07  AA                stosb
00000B08  BAFEBF            mov dx,0xbffe
00000B0B  FF                db 0xff
00000B0C  EAAAA88306        jmp word 0x683:word 0xa8aa
00000B11  FF05              inc word [di]
00000B13  FE                db 0xfe
00000B14  AF                scasw
00000B15  BAFAFE            mov dx,0xfefa
00000B18  AE                scasb
00000B19  AA                stosb
00000B1A  AA                stosb
00000B1B  AA                stosb
00000B1C  A80A              test al,0xa
00000B1E  AA                stosb
00000B1F  BFABEE            mov di,0xeeab
00000B22  A23FEF            mov [0xef3f],al
00000B25  AF                scasw
00000B26  EAAAAFFAEA        jmp word 0xeafa:word 0xafaa
00000B2B  BFFFEE            mov di,0xeeff
00000B2E  EAAEAAAFFE        jmp word 0xfeaf:word 0xaaae
00000B33  AE                scasb
00000B34  AA                stosb
00000B35  AA                stosb
00000B36  AA                stosb
00000B37  CE                into
00000B38  EBEA              jmp 0xb24
00000B3A  AA                stosb
00000B3B  AB                stosw
00000B3C  FA                cli
00000B3D  AA                stosb
00000B3E  EAEEB3FFA9        jmp word 0xa9ff:word 0xb3ee
00000B43  AA                stosb
00000B44  228706FF          and al,[bx-0xfa]
00000B48  05FEFF            add ax,0xfffe
00000B4B  BABBFE            mov dx,0xfebb
00000B4E  AE                scasb
00000B4F  AA                stosb
00000B50  AA                stosb
00000B51  AA                stosb
00000B52  A882              test al,0x82
00000B54  AA                stosb
00000B55  FFAFEE88          jmp word far [bx-0x7712]
00000B59  3F                aas
00000B5A  EE                out dx,al
00000B5B  BEFAAA            mov si,0xaafa
00000B5E  BFAFAA            mov di,0xaaaf
00000B61  BFBFAA            mov di,0xaabf
00000B64  EAAAAAAFFE        jmp word 0xfeaf:word 0xaaaa
00000B69  AE                scasb
00000B6A  AA                stosb
00000B6B  AA                stosb
00000B6C  AA                stosb
00000B6D  83AEEAAAAF        sub word [bp-0x5516],0xffffffffffffffaf
00000B72  AA                stosb
00000B73  EF                out dx,ax
00000B74  AA                stosb
00000B75  AE                scasb
00000B76  F3FFA9AA0A        rep jmp word far [bx+di+0xaaa]
00000B7B  057FFF            add ax,0xff7f
00000B7E  5F                pop di
00000B7F  FF                db 0xff
00000B80  FF                db 0xff
00000B81  FB                sti
00000B82  EE                out dx,al
00000B83  FA                cli
00000B84  EBFE              jmp 0xb84
00000B86  BA06AA            mov dx,0xaa06
00000B89  0400              add al,0x0
00000B8B  AA                stosb
00000B8C  FE                db 0xfe
00000B8D  BFBEA0            mov di,0xa0be
00000B90  FFAEEFBA          jmp word far [bp-0x4511]
00000B94  AA                stosb
00000B95  FF                db 0xff
00000B96  BAAABF            mov dx,0xbfaa
00000B99  BEBABA            mov si,0xbaba
00000B9C  AE                scasb
00000B9D  AA                stosb
00000B9E  AF                scasw
00000B9F  FE                db 0xfe
00000BA0  BAAAAA            mov dx,0xaaaa
00000BA3  AA                stosb
00000BA4  82                db 0x82
00000BA5  AF                scasw
00000BA6  AA                stosb
00000BA7  AA                stosb
00000BA8  BEAAEF            mov si,0xefaa
00000BAB  AA                stosb
00000BAC  AA                stosb
00000BAD  FF                db 0xff
00000BAE  FFA6AA0A          jmp word near [bp+0xaaa]
00000BB2  07                pop es
00000BB3  D57D              aad byte 0x7d
00000BB5  FF                db 0xff
00000BB6  FF                db 0xff
00000BB7  FF                db 0xff
00000BB8  FE                db 0xfe
00000BB9  FB                sti
00000BBA  EBAF              jmp 0xb6b
00000BBC  FE                db 0xfe
00000BBD  BA06AA            mov dx,0xaa06
00000BC0  0400              add al,0x0
00000BC2  AA                stosb
00000BC3  FA                cli
00000BC4  EF                out dx,ax
00000BC5  EE                out dx,al
00000BC6  88FF              mov bh,bh
00000BC8  AA                stosb
00000BC9  BEBAAA            mov si,0xaaba
00000BCC  FE                db 0xfe
00000BCD  EAAAFEBEBA        jmp word 0xbabe:word 0xfeaa
00000BD2  BAABAA            mov dx,0xaaab
00000BD5  AB                stosw
00000BD6  FE                db 0xfe
00000BD7  BAAAAA            mov dx,0xaaaa
00000BDA  AA                stosb
00000BDB  C3                ret
00000BDC  BAEAAA            mov dx,0xaaea
00000BDF  FE                db 0xfe
00000BE0  AA                stosb
00000BE1  BFAAAB            mov di,0xabaa
00000BE4  FF                db 0xff
00000BE5  FE                db 0xfe
00000BE6  A6                cmpsb
00000BE7  8A0A              mov cl,[bp+si]
00000BE9  8775D7            xchg si,[di-0x29]
00000BEC  5F                pop di
00000BED  FF                db 0xff
00000BEE  FF                db 0xff
00000BEF  EBEF              jmp 0xbe0
00000BF1  AA                stosb
00000BF2  AF                scasw
00000BF3  FA                cli
00000BF4  BA06AA            mov dx,0xaa06
00000BF7  0408              add al,0x8
00000BF9  2BBEEFBF          sub di,[bp-0x4011]
00000BFD  A8FF              test al,0xff
00000BFF  BAEFFA            mov dx,0xfaef
00000C02  AA                stosb
00000C03  FB                sti
00000C04  AA                stosb
00000C05  AE                scasb
00000C06  FE                db 0xfe
00000C07  BEBABA            mov si,0xbaba
00000C0A  AB                stosw
00000C0B  EAABFEBAAA        jmp word 0xaaba:word 0xfeab
00000C10  AA                stosb
00000C11  AA                stosb
00000C12  CE                into
00000C13  AF                scasw
00000C14  AA                stosb
00000C15  AE                scasb
00000C16  FA                cli
00000C17  AA                stosb
00000C18  BBEBAB            mov bx,0xabeb
00000C1B  FF                db 0xff
00000C1C  FA                cli
00000C1D  AA                stosb
00000C1E  8A0A              mov cl,[bp+si]
00000C20  07                pop es
00000C21  7FFD              jg 0xc20
00000C23  FF                db 0xff
00000C24  FF                db 0xff
00000C25  FE                db 0xfe
00000C26  AE                scasb
00000C27  FB                sti
00000C28  AB                stosw
00000C29  BFFAEA            mov di,0xeafa
00000C2C  06                push es
00000C2D  AA                stosb
00000C2E  040A              add al,0xa
00000C30  AF                scasw
00000C31  EF                out dx,ax
00000C32  AB                stosw
00000C33  FFA8FEAE          jmp word far [bx+si-0x5102]
00000C37  EE                out dx,al
00000C38  FA                cli
00000C39  AA                stosb
00000C3A  FB                sti
00000C3B  AA                stosb
00000C3C  AE                scasb
00000C3D  FE                db 0xfe
00000C3E  BABABA            mov dx,0xbaba
00000C41  AB                stosw
00000C42  EAABFEBAAA        jmp word 0xaaba:word 0xfeab
00000C47  AA                stosb
00000C48  AA                stosb
00000C49  20BEAABB          and [bp-0x4456],bh
00000C4D  FA                cli
00000C4E  AA                stosb
00000C4F  BFEBBB            mov di,0xbbeb
00000C52  FE                db 0xfe
00000C53  AA                stosb
00000C54  AA                stosb
00000C55  8A20              mov ah,[bx+si]
00000C57  0F7FFF            movq mm7,mm7
00000C5A  FF                db 0xff
00000C5B  FF                db 0xff
00000C5C  FE                db 0xfe
00000C5D  BBAFAE            mov bx,0xaeaf
00000C60  FF                db 0xff
00000C61  EA06AA058B        jmp word 0x8b05:word 0xaa06
00000C66  AF                scasw
00000C67  EAEFEFA0FE        jmp word 0xfea0:word 0xefef
00000C6C  EAFBEAABEE        jmp word 0xeeab:word 0xeafb
00000C71  AA                stosb
00000C72  BAEEBE            mov dx,0xbeee
00000C75  BABAAB            mov dx,0xabba
00000C78  EAABFEFAAA        jmp word 0xaafa:word 0xfeab
00000C7D  AA                stosb
00000C7E  AA                stosb
00000C7F  00FA              add dl,bh
00000C81  AA                stosb
00000C82  EF                out dx,ax
00000C83  FA                cli
00000C84  AB                stosw
00000C85  EE                out dx,al
00000C86  EF                out dx,ax
00000C87  2F                das
00000C88  FE                db 0xfe
00000C89  A6                cmpsb
00000C8A  9A2A0A3DFF        call word 0xff3d:word 0xa2a
00000C8F  DD                db 0xdd
00000C90  FF                db 0xff
00000C91  FF                db 0xff
00000C92  FE                db 0xfe
00000C93  AF                scasw
00000C94  AE                scasb
00000C95  AA                stosb
00000C96  FF                db 0xff
00000C97  EA06AA052B        jmp word 0x2b05:word 0xaa06
00000C9C  FF                db 0xff
00000C9D  EABBEFA2FE        jmp word 0xfea2:word 0xefbb
00000CA2  FB                sti
00000CA3  FB                sti
00000CA4  AA                stosb
00000CA5  AB                stosw
00000CA6  FB                sti
00000CA7  AA                stosb
00000CA8  BAFEEE            mov dx,0xeefe
00000CAB  BABAAB            mov dx,0xabba
00000CAE  BAABFE            mov dx,0xfeab
00000CB1  EE                out dx,al
00000CB2  AA                stosb
00000CB3  AA                stosb
00000CB4  AA                stosb
00000CB5  02BAAFBF          add bh,[bp+si-0x4051]
00000CB9  EAABFEEC3F        jmp word 0x3fec:word 0xfeab
00000CBE  FE                db 0xfe
00000CBF  6AAA              push word 0xffffffffffffffaa
00000CC1  2A20              sub ah,[bx+si]
00000CC3  1DFFF7            sbb ax,0xf7ff
00000CC6  DFF7              fcomip st7
00000CC8  FA                cli
00000CC9  EF                out dx,ax
00000CCA  BAAFFF            mov dx,0xffaf
00000CCD  06                push es
00000CCE  AA                stosb
00000CCF  06                push es
00000CD0  2ABFAAAF          sub bh,[bx-0x5056]
00000CD4  BAA2FB            mov dx,0xfba2
00000CD7  EF                out dx,ax
00000CD8  AF                scasw
00000CD9  EAABFBAEEE        jmp word 0xeeae:word 0xfbab
00000CDE  FA                cli
00000CDF  FA                cli
00000CE0  AE                scasb
00000CE1  AE                scasb
00000CE2  BBEAAB            mov bx,0xabea
00000CE5  FE                db 0xfe
00000CE6  EE                out dx,al
00000CE7  AA                stosb
00000CE8  AA                stosb
00000CE9  AA                stosb
00000CEA  08AAFAFB          or [bp+si-0x406],ch
00000CEE  BAAFEF            mov dx,0xefaf
00000CF1  BCFFFA            mov sp,0xfaff
00000CF4  69AA28A0F5F7      imul bp,[bp+si-0x5fd8],0xf7f5
00000CFA  DF                db 0xdf
00000CFB  DF5FEB            fistp word [bx-0x15]
00000CFE  BEFEAE            mov si,0xaefe
00000D01  FE06AA06          inc byte [0x6aa]
00000D05  0FFFAAABEE        ud0 bp,[bp+si-0x1155]
00000D0A  BBFBAF            mov bx,0xaffb
00000D0D  EF                out dx,ax
00000D0E  BAAFEB            mov dx,0xebaf
00000D11  AA                stosb
00000D12  BBBEEE            mov bx,0xeebe
00000D15  AE                scasb
00000D16  AE                scasb
00000D17  BBAAAB            mov bx,0xabaa
00000D1A  FE                db 0xfe
00000D1B  EE                out dx,al
00000D1C  AA                stosb
00000D1D  AA                stosb
00000D1E  AA                stosb
00000D1F  C0AFEBFEEA        shr byte [bx-0x115],byte 0xea
00000D24  AF                scasw
00000D25  FF                db 0xff
00000D26  BCFFEA            mov sp,0xeaff
00000D29  A96A28            test ax,0x286a
00000D2C  88D5              mov ch,dl
00000D2E  775F              ja 0xd8f
00000D30  DD5FEB            fstp qword [bx-0x15]
00000D33  FB                sti
00000D34  FA                cli
00000D35  EF                out dx,ax
00000D36  FE06AA06          inc byte [0x6aa]
00000D3A  3F                aas
00000D3B  FE                db 0xfe
00000D3C  BAABEB            mov dx,0xebab
00000D3F  AB                stosw
00000D40  EF                out dx,ax
00000D41  AB                stosw
00000D42  FF                db 0xff
00000D43  BABFEE            mov dx,0xeebf
00000D46  AE                scasb
00000D47  BEBEEE            mov si,0xeebe
00000D4A  AE                scasb
00000D4B  AE                scasb
00000D4C  AE                scasb
00000D4D  FE                db 0xfe
00000D4E  AA                stosb
00000D4F  FB                sti
00000D50  06                push es
00000D51  AA                stosb
00000D52  0408              add al,0x8
00000D54  3BBFEBEA          cmp di,[bx-0x1515]
00000D58  AF                scasw
00000D59  EE                out dx,al
00000D5A  F3                rep
00000D5B  FF                db 0xff
00000D5C  E9A5AA            jmp 0xb804
00000D5F  A8A1              test al,0xa1
00000D61  F7F7              div di
00000D63  DF557F            fist word [di+0x7f]
00000D66  AE                scasb
00000D67  BEEABF            mov si,0xbfea
00000D6A  FE06AA06          inc byte [0x6aa]
00000D6E  3F                aas
00000D6F  EAEAAABBEB        jmp word 0xebbb:word 0xaaea
00000D74  BAAEFF            mov dx,0xffae
00000D77  EAAFEEAEBA        jmp word 0xbaae:word 0xeeaf
00000D7C  EE                out dx,al
00000D7D  FA                cli
00000D7E  AE                scasb
00000D7F  AE                scasb
00000D80  AB                stosw
00000D81  EBAA              jmp 0xd2d
00000D83  FB                sti
00000D84  AE                scasb
00000D85  AA                stosb
00000D86  AA                stosb
00000D87  AA                stosb
00000D88  300F              xor [bx],cl
00000D8A  FFAEAABF          jmp word far [bp-0x4056]
00000D8E  FE                db 0xfe
00000D8F  FF                db 0xff
00000D90  FF                db 0xff
00000D91  F9                stc
00000D92  A5                movsw
00000D93  A8A0              test al,0xa0
00000D95  8977DF            mov [bx-0x21],si
00000D98  DD55FA            fst qword [di-0x6]
00000D9B  BFBAEA            mov di,0xeaba
00000D9E  FF                db 0xff
00000D9F  FA                cli
00000DA0  06                push es
00000DA1  AA                stosb
00000DA2  05A8FF            add ax,0xffa8
00000DA5  AE                scasb
00000DA6  EAAAAABFFE        jmp word 0xfebf:word 0xaaaa
00000DAB  AA                stosb
00000DAC  FE                db 0xfe
00000DAD  EABEEEAEAE        jmp word 0xaeae:word 0xeebe
00000DB2  FA                cli
00000DB3  EE                out dx,al
00000DB4  AA                stosb
00000DB5  AB                stosw
00000DB6  AA                stosb
00000DB7  EF                out dx,ax
00000DB8  AE                scasb
00000DB9  FB                sti
00000DBA  AE                scasb
00000DBB  AA                stosb
00000DBC  AA                stosb
00000DBD  AA                stosb
00000DBE  300B              xor [bp+di],cl
00000DC0  FE                db 0xfe
00000DC1  FA                cli
00000DC2  AA                stosb
00000DC3  FF                db 0xff
00000DC4  FB                sti
00000DC5  FC                cld
00000DC6  FF                db 0xff
00000DC7  F9                stc
00000DC8  A6                cmpsb
00000DC9  A888              test al,0x88
00000DCB  817D5FFD5F        cmp word [di+0x5f],0x5ffd
00000DD0  FA                cli
00000DD1  FE                db 0xfe
00000DD2  AB                stosw
00000DD3  EBBF              jmp 0xd94
00000DD5  06                push es
00000DD6  AA                stosb
00000DD7  07                pop es
00000DD8  FFABAAAA          jmp word far [bp+di-0x5556]
00000DDC  AA                stosb
00000DDD  AB                stosw
00000DDE  FF                db 0xff
00000DDF  EAFBAABEEB        jmp word 0xebbe:word 0xaafb
00000DE4  AB                stosw
00000DE5  BBBAFA            mov bx,0xfaba
00000DE8  AB                stosw
00000DE9  AB                stosw
00000DEA  AA                stosb
00000DEB  EF                out dx,ax
00000DEC  AB                stosw
00000DED  FB                sti
00000DEE  AE                scasb
00000DEF  AA                stosb
00000DF0  AA                stosb
00000DF1  AA                stosb
00000DF2  3383FFEE          xor ax,[bp+di-0x1101]
00000DF6  EF                out dx,ax
00000DF7  FF                db 0xff
00000DF8  FB                sti
00000DF9  FF                db 0xff
00000DFA  FF                db 0xff
00000DFB  FA                cli
00000DFC  AA                stosb
00000DFD  A28A8D            mov [0x8d8a],al
00000E00  5F                pop di
00000E01  5F                pop di
00000E02  F5                cmc
00000E03  5F                pop di
00000E04  FA                cli
00000E05  EE                out dx,al
00000E06  EBAA              jmp 0xdb2
00000E08  FA                cli
00000E09  06                push es
00000E0A  AA                stosb
00000E0B  04AE              add al,0xae
00000E0D  AA                stosb
00000E0E  BFFFBA            mov di,0xbaff
00000E11  AA                stosb
00000E12  AA                stosb
00000E13  A8AA              test al,0xaa
00000E15  AF                scasw
00000E16  FA                cli
00000E17  EE                out dx,al
00000E18  FA                cli
00000E19  AE                scasb
00000E1A  FB                sti
00000E1B  AA                stosb
00000E1C  FE                db 0xfe
00000E1D  FE                db 0xfe
00000E1E  EAAFABAAEA        jmp word 0xeaaa:word 0xabaf
00000E23  AE                scasb
00000E24  FB                sti
00000E25  AE                scasb
00000E26  AA                stosb
00000E27  AA                stosb
00000E28  AA                stosb
00000E29  3023              xor [bp+di],ah
00000E2B  FF                db 0xff
00000E2C  FB                sti
00000E2D  FF                db 0xff
00000E2E  FF                db 0xff
00000E2F  EF                out dx,ax
00000E30  FF                db 0xff
00000E31  FF                db 0xff
00000E32  FA                cli
00000E33  AA                stosb
00000E34  A2888F            mov [0x8f88],al
00000E37  75FF              jnz 0xe38
00000E39  D57F              aad byte 0x7f
00000E3B  BBABAF            mov bx,0xafab
00000E3E  AB                stosw
00000E3F  EA06AA04BF        jmp word 0xbf04:word 0xaa06
00000E44  FF                db 0xff
00000E45  EF                out dx,ax
00000E46  FE                db 0xfe
00000E47  FA                cli
00000E48  AA                stosb
00000E49  AA                stosb
00000E4A  A88A              test al,0x8a
00000E4C  AB                stosw
00000E4D  FE                db 0xfe
00000E4E  BFFEAE            mov di,0xaefe
00000E51  FB                sti
00000E52  AB                stosw
00000E53  EF                out dx,ax
00000E54  EE                out dx,al
00000E55  FA                cli
00000E56  AF                scasw
00000E57  AB                stosw
00000E58  AA                stosb
00000E59  EBAF              jmp 0xe0a
00000E5B  FE                db 0xfe
00000E5C  AE                scasb
00000E5D  EAAAAA88C0        jmp word 0xc088:word 0xaaaa
00000E62  06                push es
00000E63  FF04              inc word [si]
00000E65  E3FF              jcxz 0xe66
00000E67  FF                db 0xff
00000E68  E6AA              out byte 0xaa,al
00000E6A  AA                stosb
00000E6B  2A0F              sub cl,[bx]
00000E6D  FF                db 0xff
00000E6E  FF                db 0xff
00000E6F  D5FF              aad byte 0xff
00000E71  EF                out dx,ax
00000E72  AA                stosb
00000E73  BEAFEA            mov si,0xeaaf
00000E76  AA                stosb
00000E77  AA                stosb
00000E78  AA                stosb
00000E79  AB                stosw
00000E7A  BFFFAF            mov di,0xafff
00000E7D  FA                cli
00000E7E  EAAAAAAA22        jmp word 0x22aa:word 0xaaaa
00000E83  AA                stosb
00000E84  BFEFBA            mov di,0xbaef
00000E87  AB                stosw
00000E88  EE                out dx,al
00000E89  AF                scasw
00000E8A  BBEEFA            mov bx,0xfaee
00000E8D  9F                lahf
00000E8E  AB                stosw
00000E8F  AA                stosb
00000E90  EBBB              jmp 0xe4d
00000E92  FE                db 0xfe
00000E93  BAAAAA            mov dx,0xaaaa
00000E96  AA                stosb
00000E97  8A38              mov bh,[bx+si]
00000E99  3F                aas
00000E9A  FF                db 0xff
00000E9B  FF                db 0xff
00000E9C  FF                db 0xff
00000E9D  EC                in al,dx
00000E9E  FF                db 0xff
00000E9F  FF                db 0xff
00000EA0  E6AA              out byte 0xaa,al
00000EA2  AA                stosb
00000EA3  A80F              test al,0xf
00000EA5  FF                db 0xff
00000EA6  FF57FF            call word near [bx-0x1]
00000EA9  BBAAEA            mov bx,0xeaaa
00000EAC  AF                scasw
00000EAD  BAAAAA            mov dx,0xaaaa
00000EB0  AA                stosb
00000EB1  AB                stosw
00000EB2  FF                db 0xff
00000EB3  FA                cli
00000EB4  BFABEA            mov di,0xeaab
00000EB7  AA                stosb
00000EB8  AA                stosb
00000EB9  AA                stosb
00000EBA  22AAABFB          and ch,[bp+si-0x455]
00000EBE  EE                out dx,al
00000EBF  FB                sti
00000EC0  AA                stosb
00000EC1  FB                sti
00000EC2  FE                db 0xfe
00000EC3  FA                cli
00000EC4  FA                cli
00000EC5  AB                stosw
00000EC6  EBAA              jmp 0xe72
00000EC8  BBBFFE            mov bx,0xfebf
00000ECB  BBAAAA            mov bx,0xaaaa
00000ECE  AA                stosb
00000ECF  B338              mov bl,0x38
00000ED1  2F                das
00000ED2  FE                db 0xfe
00000ED3  FF                db 0xff
00000ED4  FB                sti
00000ED5  E3FF              jcxz 0xed6
00000ED7  FFAAAAA8          jmp word far [bp+si-0x5756]
00000EDB  A02FFF            mov al,[0xff2f]
00000EDE  FD                std
00000EDF  5F                pop di
00000EE0  FA                cli
00000EE1  AE                scasb
00000EE2  AA                stosb
00000EE3  FA                cli
00000EE4  AF                scasw
00000EE5  EAAAAAAAAF        jmp word 0xafaa:word 0xaaaa
00000EEA  FE                db 0xfe
00000EEB  AB                stosw
00000EEC  FFAB06AA          jmp word far [bp+di-0x55fa]
00000EF0  0428              add al,0x28
00000EF2  2AAABBFB          sub ch,[bp+si-0x445]
00000EF6  BEFFBE            mov si,0xbeff
00000EF9  FB                sti
00000EFA  BAEA7B            mov dx,0x7bea
00000EFD  EAEABBBFBA        jmp word 0xbabf:word 0xbbea
00000F02  BEAAAA            mov si,0xaaaa
00000F05  AA                stosb
00000F06  FC                cld
00000F07  8E0A              mov cs,word [bp+si]
00000F09  FB                sti
00000F0A  FF                db 0xff
00000F0B  FE                db 0xfe
00000F0C  EC                in al,dx
00000F0D  FF                db 0xff
00000F0E  FFAAAA88          jmp word far [bp+si-0x7756]
00000F12  897FFF            mov [bx-0x1],di
00000F15  F5                cmc
00000F16  5F                pop di
00000F17  EBBA              jmp 0xed3
00000F19  AB                stosw
00000F1A  EABEFAAAAA        jmp word 0xaaaa:word 0xfabe
00000F1F  AA                stosb
00000F20  AB                stosw
00000F21  FA                cli
00000F22  EE                out dx,al
00000F23  FE                db 0xfe
00000F24  AF                scasw
00000F25  06                push es
00000F26  AA                stosb
00000F27  040A              add al,0xa
00000F29  00AAAEFF          add [bp+si-0x52],ch
00000F2D  EBAF              jmp 0xede
00000F2F  FA                cli
00000F30  FF                db 0xff
00000F31  BBBA7B            mov bx,0x7bba
00000F34  EAEABAAFFA        jmp word 0xfaaf:word 0xbaea
00000F39  BEAAAA            mov si,0xaaaa
00000F3C  AA                stosb
00000F3D  BCA203            mov sp,0x3a2
00000F40  FF                db 0xff
00000F41  FF                db 0xff
00000F42  FA                cli
00000F43  F3                rep
00000F44  FF                db 0xff
00000F45  FE                db 0xfe
00000F46  9A6A8217FF        call word 0xff17:word 0x826a
00000F4B  FFF5              push bp
00000F4D  7FAF              jg 0xefe
00000F4F  EE                out dx,al
00000F50  AB                stosw
00000F51  EAFBEA06AA        jmp word 0xaa06:word 0xeafb
00000F56  04FB              add al,0xfb
00000F58  BBFEAE            mov bx,0xaefe
00000F5B  AA                stosb
00000F5C  EAAAAA0A80        jmp word 0x800a:word 0xaaaa
00000F61  00ABBEBF          add [bp+di-0x4042],ch
00000F65  AF                scasw
00000F66  EBBB              jmp 0xf23
00000F68  BBEAAF            mov bx,0xafea
00000F6B  EAEABBAFEE        jmp word 0xeeaf:word 0xbbea
00000F70  BAAAAA            mov dx,0xaaaa
00000F73  AA                stosb
00000F74  FA                cli
00000F75  2C83              sub al,0x83
00000F77  FF                db 0xff
00000F78  FFAEF3FF          jmp word far [bp-0xd]
00000F7C  FE                db 0xfe
00000F7D  6A6A              push word 0x6a
00000F7F  285FFF            sub [bx-0x1],bl
00000F82  FF                db 0xff
00000F83  D5FB              aad byte 0xfb
00000F85  BEEEAB            mov si,0xabee
00000F88  AB                stosw
00000F89  BFBA06            mov di,0x6ba
00000F8C  AA                stosb
00000F8D  04EA              add al,0xea
00000F8F  EF                out dx,ax
00000F90  FE                db 0xfe
00000F91  BEABFA            mov si,0xfaab
00000F94  AA                stosb
00000F95  A880              test al,0x80
00000F97  AA                stosb
00000F98  802AAB            sub byte [bp+si],0xab
00000F9B  FA                cli
00000F9C  FE                db 0xfe
00000F9D  BBFEEB            mov bx,0xebfe
00000FA0  EA6FEAEABB        jmp word 0xbbea:word 0xea6f
00000FA5  AB                stosw
00000FA6  EE                out dx,al
00000FA7  BEAAAA            mov si,0xaaaa
00000FAA  AA                stosb
00000FAB  FE8AE0EA          dec byte [bp+si-0x1520]
00000FAF  EAEB8FFFFE        jmp word 0xfeff:word 0x8feb
00000FB4  6AAA              push word 0xffffffffffffffaa
00000FB6  2857FF            sub [bx-0x1],dl
00000FB9  FF                db 0xff
00000FBA  D5EE              aad byte 0xee
00000FBC  BABAAF            mov dx,0xafba
00000FBF  AA                stosb
00000FC0  FB                sti
00000FC1  EA06AA04AB        jmp word 0xab04:word 0xaa06
00000FC6  AF                scasw
00000FC7  FA                cli
00000FC8  BAAFFA            mov dx,0xfaaf
00000FCB  AA                stosb
00000FCC  AA                stosb
00000FCD  2202              and al,[bp+si]
00000FCF  AA                stosb
00000FD0  8AAFFEEB          mov ch,[bx-0x1402]
00000FD4  EBBA              jmp 0xf90
00000FD6  EBA9              jmp 0xf81
00000FD8  AF                scasw
00000FD9  EAEAAFAEEE        jmp word 0xeeae:word 0xafea
00000FDE  EE                out dx,al
00000FDF  AA                stosb
00000FE0  AA                stosb
00000FE1  AA                stosb
00000FE2  AF                scasw
00000FE3  F0                lock
00000FE4  B802AA            mov ax,0xaa02
00000FE7  EA8FFFFEAA        jmp word 0xaafe:word 0xff8f
00000FEC  A8A0              test al,0xa0
00000FEE  57                push di
00000FEF  FF                db 0xff
00000FF0  FF57EF            call word near [bx-0x11]
00000FF3  AB                stosw
00000FF4  EAEFABFFBA        jmp word 0xbaff:word 0xabef
00000FF9  AA                stosb
00000FFA  AA                stosb
00000FFB  AA                stosb
00000FFC  FA                cli
00000FFD  AB                stosw
00000FFE  BFFABA            mov di,0xbafa
00001001  AF                scasw
00001002  AE                scasb
00001003  AA                stosb
00001004  AA                stosb
00001005  A820              test al,0x20
00001007  0A2A              or ch,[bp+si]
00001009  8F                db 0x8f
0000100A  FA                cli
0000100B  AF                scasw
0000100C  AE                scasb
0000100D  FE                db 0xfe
0000100E  AE                scasb
0000100F  AA                stosb
00001010  BBEAEA            mov bx,0xeaea
00001013  AF                scasw
00001014  AB                stosw
00001015  FA                cli
00001016  FA                cli
00001017  06                push es
00001018  AA                stosb
00001019  04BF              add al,0xbf
0000101B  0A20              or ah,[bx+si]
0000101D  3BABCFFB          cmp bp,[bp+di-0x431]
00001021  FE                db 0xfe
00001022  AA                stosb
00001023  68A175            push word 0x75a1
00001026  FF                db 0xff
00001027  FD                std
00001028  76BF              jna 0xfe9
0000102A  AF                scasw
0000102B  AB                stosw
0000102C  FFAFFFEA          jmp word far [bx-0x1501]
00001030  AA                stosb
00001031  AA                stosb
00001032  AA                stosb
00001033  EF                out dx,ax
00001034  AE                scasb
00001035  FE                db 0xfe
00001036  EABEBFABAA        jmp word 0xaaab:word 0xbfbe
0000103B  AA                stosb
0000103C  0A00              or al,[bx+si]
0000103E  202A              and [bp+si],ch
00001040  8F                db 0x8f
00001041  EE                out dx,al
00001042  AE                scasb
00001043  AF                scasw
00001044  BAAEA9            mov dx,0xa9ae
00001047  BBEAEA            mov bx,0xeaea
0000104A  AF                scasw
0000104B  AB                stosw
0000104C  FA                cli
0000104D  EE                out dx,al
0000104E  AA                stosb
0000104F  AA                stosb
00001050  AA                stosb
00001051  2AAAE02C          sub ch,[bp+si+0x2ce0]
00001055  0AAF3FFB          or ch,[bx-0x4c1]
00001059  FE                db 0xfe
0000105A  AA                stosb
0000105B  98                cbw
0000105C  01F7              add di,si
0000105E  FF                db 0xff
0000105F  FD                std
00001060  DA                db 0xda
00001061  EE                out dx,al
00001062  BAAEFE            mov dx,0xfeae
00001065  AF                scasw
00001066  FF                db 0xff
00001067  EAAAAAABFF        jmp word 0xffab:word 0xaaaa
0000106C  AF                scasw
0000106D  FFABFAFE          jmp word far [bp+di-0x106]
00001071  EBAA              jmp 0x101d
00001073  AA                stosb
00001074  A28080            mov [0x8080],al
00001077  AE                scasb
00001078  3F                aas
00001079  FA                cli
0000107A  AE                scasb
0000107B  AE                scasb
0000107C  EAEEAABBEA        jmp word 0xeabb:word 0xaaee
00001081  EAAEAAFAAE        jmp word 0xaefa:word 0xaaae
00001086  AA                stosb
00001087  AA                stosb
00001088  AA                stosb
00001089  8AAABA80          mov ch,[bp+si-0x7f46]
0000108D  A80B              test al,0xb
0000108F  3F                aas
00001090  FF                db 0xff
00001091  FE                db 0xfe
00001092  A9A015            test ax,0x15a0
00001095  FF                db 0xff
00001096  FF55DB            call word near [di-0x25]
00001099  AE                scasb
0000109A  BABBFE            mov dx,0xfebb
0000109D  BFFFEA            mov di,0xeaff
000010A0  AA                stosb
000010A1  AA                stosb
000010A2  AB                stosw
000010A3  EF                out dx,ax
000010A4  AF                scasw
000010A5  EE                out dx,al
000010A6  FE                db 0xfe
000010A7  EF                out dx,ax
000010A8  FA                cli
000010A9  EAEBEAA82A        jmp word 0x2aa8:word 0xeaeb
000010AE  8AFB              mov bh,bl
000010B0  3F                aas
000010B1  AA                stosb
000010B2  BEABEA            mov si,0xeaab
000010B5  AE                scasb
000010B6  A6                cmpsb
000010B7  BBEAEA            mov bx,0xeaea
000010BA  AB                stosw
000010BB  AE                scasb
000010BC  EAFAAAAAAA        jmp word 0xaaaa:word 0xaafa
000010C1  80AAABFB0A        sub byte [bp+si-0x455],0xa
000010C6  AC                lodsb
000010C7  FF                db 0xff
000010C8  EF                out dx,ax
000010C9  FFAA817F          jmp word far [bp+si+0x7f81]
000010CD  FFF5              push bp
000010CF  FD                std
000010D0  5B                pop bx
000010D1  EAEABBEAFB        jmp word 0xfbea:word 0xbbea
000010D6  FFAAAAAA          jmp word far [bp+si-0x5556]
000010DA  AB                stosw
000010DB  BEBFFF            mov si,0xffbf
000010DE  AF                scasw
000010DF  BFEBAA            mov di,0xaaeb
000010E2  EE                out dx,al
000010E3  FFAA800A          jmp word far [bp+si+0xa80]
000010E7  BE8FEA            mov si,0xea8f
000010EA  BAAEEA            mov dx,0xeaae
000010ED  BAA6BF            mov dx,0xbfa6
000010F0  EAEAAEAFBA        jmp word 0xbaaf:word 0xaeea
000010F5  FA                cli
000010F6  AA                stosb
000010F7  AA                stosb
000010F8  AA                stosb
000010F9  A02AAA            mov al,[0xaa2a]
000010FC  AE                scasb
000010FD  FA                cli
000010FE  F0                lock
000010FF  FFAFFFBF          jmp word far [bx-0x4001]
00001103  95                xchg ax,bp
00001104  7FFF              jg 0x1105
00001106  F7D6              not si
00001108  EF                out dx,ax
00001109  AA                stosb
0000110A  AA                stosb
0000110B  EF                out dx,ax
0000110C  EBFF              jmp 0x110d
0000110E  FB                sti
0000110F  EAAAAAAFBE        jmp word 0xbeaf:word 0xaaaa
00001114  BFFAEE            mov di,0xeefa
00001117  EE                out dx,al
00001118  BEA2BA            mov si,0xbaa2
0000111B  BFFEAA            mov di,0xaafe
0000111E  0BFE              or di,si
00001120  3F                aas
00001121  B6EE              mov dh,0xee
00001123  AF                scasw
00001124  AA                stosb
00001125  BA99BF            mov dx,0xbf99
00001128  EAEAAEAFEA        jmp word 0xeaaf:word 0xaeea
0000112D  FA                cli
0000112E  06                push es
0000112F  AA                stosb
00001130  0402              add al,0x2
00001132  AA                stosb
00001133  AA                stosb
00001134  AB                stosw
00001135  EF                out dx,ax
00001136  FA                cli
00001137  BFFEBA            mov di,0xbafe
0000113A  FF                db 0xff
0000113B  FF                db 0xff
0000113C  EE                out dx,al
0000113D  FE                db 0xfe
0000113E  AF                scasw
0000113F  EF                out dx,ax
00001140  AE                scasb
00001141  AA                stosb
00001142  AE                scasb
00001143  AA                stosb
00001144  EF                out dx,ax
00001145  FA                cli
00001146  AA                stosb
00001147  AA                stosb
00001148  AA                stosb
00001149  BBEEAB            mov bx,0xabee
0000114C  EE                out dx,al
0000114D  FB                sti
0000114E  BAFAA2            mov dx,0xa2fa
00001151  BBEEFE            mov bx,0xfeee
00001154  EA8AFA3B5A        jmp word 0x5a3b:word 0xfa8a
00001159  EABBAAAAAA        jmp word 0xaaaa:word 0xaabb
0000115E  AF                scasw
0000115F  EABAAAAAEA        jmp word 0xeaaa:word 0xaaba
00001164  FA                cli
00001165  AA                stosb
00001166  AA                stosb
00001167  AA                stosb
00001168  A8A0              test al,0xa0
0000116A  02AAAEFB          add ch,[bp+si-0x452]
0000116E  EE                out dx,al
0000116F  BBFAAE            mov bx,0xaefa
00001172  FF                db 0xff
00001173  BFEBBE            mov di,0xbeeb
00001176  AF                scasw
00001177  FB                sti
00001178  BBAABE            mov bx,0xbeaa
0000117B  AA                stosb
0000117C  BFEBAA            mov di,0xaaeb
0000117F  AA                stosb
00001180  AA                stosb
00001181  BFEAAE            mov di,0xaeea
00001184  BFAEFA            mov di,0xfaae
00001187  EE                out dx,al
00001188  A8AF              test al,0xaf
0000118A  BBFBAA            mov bx,0xaafb
0000118D  AA                stosb
0000118E  F8                clc
0000118F  3EB6AA            ds mov dh,0xaa
00001192  BEAAAA            mov si,0xaaaa
00001195  AA                stosb
00001196  EF                out dx,ax
00001197  EABAAAAEEA        jmp word 0xeaae:word 0xaaba
0000119C  EA06AA0408        jmp word 0x804:word 0xaa06
000011A1  0002              add [bp+si],al
000011A3  AF                scasw
000011A4  AF                scasw
000011A5  AE                scasb
000011A6  FE                db 0xfe
000011A7  FE                db 0xfe
000011A8  BAFFEE            mov dx,0xeeff
000011AB  AF                scasw
000011AC  FA                cli
000011AD  BBFFEB            mov bx,0xebff
000011B0  AA                stosb
000011B1  BAAABF            mov dx,0xbfaa
000011B4  AB                stosw
000011B5  AA                stosb
000011B6  AA                stosb
000011B7  AA                stosb
000011B8  BEEAAE            mov si,0xaeea
000011BB  BE3FE8            mov si,0xe83f
000011BE  FA                cli
000011BF  A8BA              test al,0xba
000011C1  BEBEFF            mov si,0xffbe
000011C4  AA                stosb
000011C5  A8FF              test al,0xff
000011C7  5A                pop dx
000011C8  EA06AA04BF        jmp word 0xbf04:word 0xaa06
000011CD  EABAAABBAA        jmp word 0xaabb:word 0xaaba
000011D2  BA06AA            mov dx,0xaa06
000011D5  04A0              add al,0xa0
000011D7  0AAAFEFB          or ch,[bp+si-0x402]
000011DB  AB                stosw
000011DC  EABABBFFFA        jmp word 0xfaff:word 0xbbba
000011E1  AF                scasw
000011E2  EABFBBAAAA        jmp word 0xaaaa:word 0xbbbf
000011E7  FE                db 0xfe
000011E8  AA                stosb
000011E9  BEAEAA            mov si,0xaaae
000011EC  AA                stosb
000011ED  AA                stosb
000011EE  FB                sti
000011EF  AA                stosb
000011F0  AE                scasb
000011F1  BA3FF8            mov dx,0xf83f
000011F4  FE                db 0xfe
000011F5  A22FBB            mov [0xbb2f],al
000011F8  FA                cli
000011F9  BFFBA8            mov di,0xa8fb
000011FC  EE                out dx,al
000011FD  6AAA              push word 0xffffffffffffffaa
000011FF  BAAAAA            mov dx,0xaaaa
00001202  AA                stosb
00001203  FF                db 0xff
00001204  EABAAABEAA        jmp word 0xaabe:word 0xaaba
00001209  FA                cli
0000120A  06                push es
0000120B  AA                stosb
0000120C  05A02F            add ax,0x2fa0
0000120F  EF                out dx,ax
00001210  EAAFABEAAB        jmp word 0xabea:word 0xabaf
00001215  FB                sti
00001216  AA                stosb
00001217  BFEABF            mov di,0xbfea
0000121A  BEAAAA            mov si,0xaaaa
0000121D  BAAABE            mov dx,0xbeaa
00001220  AE                scasb
00001221  AA                stosb
00001222  AA                stosb
00001223  AA                stosb
00001224  EE                out dx,al
00001225  EABAB83FB8        jmp word 0xb83f:word 0xb8ba
0000122A  BFA88B            mov di,0x8ba8
0000122D  AA                stosb
0000122E  AB                stosw
0000122F  EE                out dx,al
00001230  BE83BF            mov si,0xbf83
00001233  06                push es
00001234  AA                stosb
00001235  06                push es
00001236  EF                out dx,ax
00001237  EABAAABEAA        jmp word 0xaabe:word 0xaaba
0000123C  FA                cli
0000123D  06                push es
0000123E  AA                stosb
0000123F  06                push es
00001240  BEEFAA            mov si,0xaaef
00001243  BAAAEA            mov dx,0xeaaa
00001246  AB                stosw
00001247  FE                db 0xfe
00001248  AA                stosb
00001249  BFEAEE            mov di,0xeeea
0000124C  BFAEAA            mov di,0xaaae
0000124F  EAAAFABAAA        jmp word 0xaaba:word 0xfaaa
00001254  AA                stosb
00001255  AA                stosb
00001256  FB                sti
00001257  AA                stosb
00001258  EAA82AE8FA        jmp word 0xfae8:word 0x2aa8
0000125D  A8A0              test al,0xa0
0000125F  BEAAAA            mov si,0xaaaa
00001262  A223EF            mov [0xef23],al
00001265  AA                stosb
00001266  EABAAAAAAA        jmp word 0xaaaa:word 0xaaba
0000126B  FA                cli
0000126C  EABAAABAAA        jmp word 0xaaba:word 0xaaba
00001271  EA06AA06EF        jmp word 0xef06:word 0xaa06
00001276  BAAAAA            mov dx,0xaaaa
00001279  AB                stosw
0000127A  AA                stosb
0000127B  AB                stosw
0000127C  BBAAFF            mov bx,0xffaa
0000127F  BABEEE            mov dx,0xeebe
00001282  AA                stosb
00001283  AA                stosb
00001284  EAAAEA06AA        jmp word 0xaa06:word 0xeaaa
00001289  04FB              add al,0xfb
0000128B  AA                stosb
0000128C  BABA3A            mov dx,0x3aba
0000128F  E83EA8            call 0xbad0
00001292  2A20              sub ah,[bx+si]
00001294  0F                db 0x0f
00001295  BA00FF            mov dx,0xff00
00001298  BAAB06            mov dx,0x6ab
0000129B  AA                stosb
0000129C  05EBAA            add ax,0xaaeb
0000129F  BAAAEE            mov dx,0xeeaa
000012A2  AA                stosb
000012A3  EA06AA06BF        jmp word 0xbf06:word 0xaa06
000012A8  EA06AA04AF        jmp word 0xaf04:word 0xaa06
000012AD  FE                db 0xfe
000012AE  AB                stosw
000012AF  FF                db 0xff
000012B0  EAFEFEAAAB        jmp word 0xabaa:word 0xfefe
000012B5  AA                stosb
000012B6  AB                stosw
000012B7  EAAAAAAAAB        jmp word 0xabaa:word 0xaaaa
000012BC  BEAAEA            mov si,0xeaaa
000012BF  A83A              test al,0x3a
000012C1  A0FAAA            mov al,[0xaafa]
000012C4  0AAA2AA0          or ch,[bp+si-0x5fd6]
000012C8  3F                aas
000012C9  AF                scasw
000012CA  EAAE06AA04        jmp word 0x4aa:word 0x6ae
000012CF  AB                stosw
000012D0  BBAABA            mov bx,0xbaaa
000012D3  AA                stosb
000012D4  FA                cli
000012D5  06                push es
000012D6  AA                stosb
000012D7  07                pop es
000012D8  BAFBAA            mov dx,0xaafb
000012DB  EAAABAAAFF        jmp word 0xffaa:word 0xbaaa
000012E0  EAABFEAAFA        jmp word 0xfaaa:word 0xfeab
000012E5  FB                sti
000012E6  AA                stosb
000012E7  AF                scasw
000012E8  06                push es
000012E9  AA                stosb
000012EA  06                push es
000012EB  AB                stosw
000012EC  EE                out dx,al
000012ED  AA                stosb
000012EE  EAA23EA8FE        jmp word 0xfea8:word 0x3ea2
000012F3  AA                stosb
000012F4  A2A080            mov [0x80a0],al
000012F7  3F                aas
000012F8  EF                out dx,ax
000012F9  AA                stosb
000012FA  AA                stosb
000012FB  AE                scasb
000012FC  06                push es
000012FD  AA                stosb
000012FE  07                pop es
000012FF  BAAAFA            mov dx,0xfaaa
00001302  06                push es
00001303  AA                stosb
00001304  07                pop es
00001305  BEFEAF            mov si,0xaffe
00001308  AA                stosb
00001309  AA                stosb
0000130A  BAABFE            mov dx,0xfeab
0000130D  AE                scasb
0000130E  AF                scasw
0000130F  FE                db 0xfe
00001310  AA                stosb
00001311  EAEBAAAFAA        jmp word 0xaaaf:word 0xaaeb
00001316  AB                stosw
00001317  06                push es
00001318  AA                stosb
00001319  04AE              add al,0xae
0000131B  EAABAAA8AE        jmp word 0xaea8:word 0xaaab
00001320  A2FAAA            mov [0xaafa],al
00001323  AA                stosb
00001324  080C              or [si],cl
00001326  EF                out dx,ax
00001327  BAAAAA            mov dx,0xaaaa
0000132A  BA06AA            mov dx,0xaa06
0000132D  05AEAA            add ax,0xaaae
00001330  EAAAFA06AA        jmp word 0xaa06:word 0xfaaa
00001335  06                push es
00001336  AB                stosw
00001337  EBAA              jmp 0x12e3
00001339  BAAAAA            mov dx,0xaaaa
0000133C  BAABFA            mov dx,0xfaab
0000133F  BABFFA            mov dx,0xfabf
00001342  AB                stosw
00001343  AA                stosb
00001344  EAAABE06AA        jmp word 0xaa06:word 0xbeaa
00001349  06                push es
0000134A  AF                scasw
0000134B  AA                stosb
0000134C  AB                stosw
0000134D  AA                stosb
0000134E  A2EAA0            mov [0xa0ea],al
00001351  FA                cli
00001352  AA                stosb
00001353  A020FF            mov al,[0xff20]
00001356  BA06AA            mov dx,0xaa06
00001359  0BEA              or bp,dx
0000135B  AA                stosb
0000135C  EA06AA06BE        jmp word 0xbe06:word 0xaa06
00001361  AA                stosb
00001362  AA                stosb
00001363  BAAAEA            mov dx,0xeaaa
00001366  EAAAEBEABF        jmp word 0xbfea:word 0xebaa
0000136B  BAAAAA            mov dx,0xaaaa
0000136E  AB                stosw
0000136F  AA                stosb
00001370  BBAAAE            mov bx,0xaeaa
00001373  06                push es
00001374  AA                stosb
00001375  04AF              add al,0xaf
00001377  AA                stosb
00001378  AA                stosb
00001379  AA                stosb
0000137A  A8EA              test al,0xea
0000137C  A2AAAA            mov [0xaaaa],al
0000137F  22AEEEAA          and ch,[bp-0x5512]
00001383  AA                stosb
00001384  AA                stosb
00001385  AB                stosw
00001386  06                push es
00001387  AA                stosb
00001388  06                push es
00001389  AE                scasb
0000138A  AA                stosb
0000138B  AA                stosb
0000138C  AA                stosb
0000138D  FA                cli
0000138E  06                push es
0000138F  AA                stosb
00001390  06                push es
00001391  EE                out dx,al
00001392  AA                stosb
00001393  AA                stosb
00001394  EAABAAEAAB        jmp word 0xabea:word 0xaaab
00001399  BEAAFE            mov si,0xfeaa
0000139C  EAAAAAEBAA        jmp word 0xaaeb:word 0xaaaa
000013A1  AE                scasb
000013A2  06                push es
000013A3  AA                stosb
000013A4  06                push es
000013A5  BE06AA            mov si,0xaa06
000013A8  058BAA            add ax,0xaa8b
000013AB  AA                stosb
000013AC  AA                stosb
000013AD  AF                scasw
000013AE  BA06AA            mov dx,0xaa06
000013B1  0BABAAAB          or bp,[bp+di-0x5456]
000013B5  BA06AA            mov dx,0xaa06
000013B8  05AB06            add ax,0x6ab
000013BB  AA                stosb
000013BC  04AB              add al,0xab
000013BE  AB                stosw
000013BF  AA                stosb
000013C0  AB                stosw
000013C1  EE                out dx,al
000013C2  AA                stosb
000013C3  FA                cli
000013C4  AA                stosb
000013C5  AA                stosb
000013C6  AB                stosw
000013C7  AB                stosw
000013C8  AA                stosb
000013C9  BAAABA            mov dx,0xbaaa
000013CC  06                push es
000013CD  AA                stosb
000013CE  04BF              add al,0xbf
000013D0  06                push es
000013D1  AA                stosb
000013D2  05A3AA            add ax,0xaaa3
000013D5  AA                stosb
000013D6  AA                stosb
000013D7  BA06AA            mov dx,0xaa06
000013DA  0BAEABAA          or bp,[bp-0x5555]
000013DE  AB                stosw
000013DF  EA06AA05BA        jmp word 0xba05:word 0xaa06
000013E4  06                push es
000013E5  AA                stosb
000013E6  04AF              add al,0xaf
000013E8  AA                stosb
000013E9  AA                stosb
000013EA  AB                stosw
000013EB  BAABEE            mov dx,0xeeab
000013EE  AA                stosb
000013EF  AA                stosb
000013F0  AA                stosb
000013F1  AE                scasb
000013F2  AA                stosb
000013F3  BAAABA            mov dx,0xbaaa
000013F6  06                push es
000013F7  AA                stosb
000013F8  04BB              add al,0xbb
000013FA  AA                stosb
000013FB  AA                stosb
000013FC  AA                stosb
000013FD  AE                scasb
000013FE  AA                stosb
000013FF  AB                stosw
00001400  06                push es
00001401  AA                stosb
00001402  0FBAAEAAABEA      bts word [bp-0x5456],byte 0xea
00001408  06                push es
00001409  AA                stosb
0000140A  05EA06            add ax,0x6ea
0000140D  AA                stosb
0000140E  04BE              add al,0xbe
00001410  AA                stosb
00001411  AA                stosb
00001412  AB                stosw
00001413  BAABEA            mov dx,0xeaab
00001416  06                push es
00001417  AA                stosb
00001418  07                pop es
00001419  EA06AA04EE        jmp word 0xee04:word 0xaa06
0000141E  06                push es
0000141F  AA                stosb
00001420  09BA06AA          or [bp+si-0x55fa],di
00001424  0E                push cs
00001425  AB                stosw
00001426  EA06AA09AF        jmp word 0xaf09:word 0xaa06
0000142B  EAAAAAABAA        jmp word 0xaaab:word 0xaaaa
00001430  AB                stosw
00001431  06                push es
00001432  AA                stosb
00001433  0DFA06            or ax,0x6fa
00001436  AA                stosb
00001437  08ABEA06          or [bp+di+0x6ea],ch
0000143B  AA                stosb
0000143C  0CFA              or al,0xfa
0000143E  06                push es
0000143F  AA                stosb
00001440  0CBA              or al,0xba
00001442  AA                stosb
00001443  AA                stosb
00001444  AA                stosb
00001445  AE                scasb
00001446  06                push es
00001447  AA                stosb
00001448  0F                db 0x0f
00001449  BA06AA            mov dx,0xaa06
0000144C  08BE06AA          or [bp-0x55fa],bh
00001450  0FAB06AA1E        bts [0x1eaa],ax
00001455  EA06AA07AB        jmp word 0xab07:word 0xaa06
0000145A  06                push es
0000145B  AA                stosb
0000145C  17                pop ss
0000145D  06                push es
0000145E  AA                stosb
0000145F  70BB              jo 0x141c
00001461  FB                sti
00001462  BFBBBF            mov di,0xbfbb
00001465  BBBBFF            mov bx,0xffbb
00001468  BBBBBF            mov bx,0xbfbb
0000146B  06                push es
0000146C  BB08FB            mov bx,0xfb08
0000146F  FF                db 0xff
00001470  FF                db 0xff
00001471  BBBFFB            mov bx,0xfbbf
00001474  06                push es
00001475  BB10FF            mov bx,0xff10
00001478  FF                db 0xff
00001479  FB                sti
0000147A  06                push es
0000147B  BB0CFE            mov bx,0xfe0c
0000147E  FE                db 0xfe
0000147F  FE                db 0xfe
00001480  FF                db 0xff
00001481  FE                db 0xfe
00001482  EF                out dx,ax
00001483  FF                db 0xff
00001484  FF                db 0xff
00001485  FF                db 0xff
00001486  EF                out dx,ax
00001487  FF                db 0xff
00001488  FF                db 0xff
00001489  EE                out dx,al
0000148A  EE                out dx,al
0000148B  EF                out dx,ax
0000148C  FE                db 0xfe
0000148D  EF                out dx,ax
0000148E  FF                db 0xff
0000148F  FF                db 0xff
00001490  FE                db 0xfe
00001491  FF                db 0xff
00001492  EE                out dx,al
00001493  EF                out dx,ax
00001494  FF                db 0xff
00001495  FF                db 0xff
00001496  FF                db 0xff
00001497  EE                out dx,al
00001498  EF                out dx,ax
00001499  EE                out dx,al
0000149A  EF                out dx,ax
0000149B  FE                db 0xfe
0000149C  FF                db 0xff
0000149D  EF                out dx,ax
0000149E  FE                db 0xfe
0000149F  EF                out dx,ax
000014A0  EF                out dx,ax
000014A1  FF                db 0xff
000014A2  FE                db 0xfe
000014A3  FF                db 0xff
000014A4  EF                out dx,ax
000014A5  FF                db 0xff
000014A6  FF                db 0xff
000014A7  FE                db 0xfe
000014A8  FF                db 0xff
000014A9  EE                out dx,al
000014AA  06                push es
000014AB  EF                out dx,ax
000014AC  04FE              add al,0xfe
000014AE  FF                db 0xff
000014AF  FF                db 0xff
000014B0  FE                db 0xfe
000014B1  EE                out dx,al
000014B2  EE                out dx,al
000014B3  EE                out dx,al
000014B4  06                push es
000014B5  FF32              push word [bp+si]
000014B7  EF                out dx,ax
000014B8  FB                sti
000014B9  06                push es
000014BA  FF                db 0xff
000014BB  FF06FFFF          inc word [0xffff]
000014BF  06                push es
000014C0  FF                db 0xff
000014C1  F9                stc
000014C2  F0                lock
000014C3  2BBA06FF          sub di,[bp+si-0xfa]
000014C7  04C2              add al,0xc2
000014C9  BBBAAF            mov bx,0xafba
000014CC  06                push es
000014CD  FF2D              jmp word far [di]
000014CF  C3                ret
000014D0  EAABBBEEAF        jmp word 0xafee:word 0xbbab
000014D5  FFCE              dec si
000014D7  AE                scasb
000014D8  EF                out dx,ax
000014D9  06                push es
000014DA  FF1EFD6A          call word far [0x6afd]
000014DE  AB                stosw
000014DF  BBBFEE            mov bx,0xeebf
000014E2  06                push es
000014E3  FF09              dec word [bx+di]
000014E5  FC                cld
000014E6  03EB              add bp,bx
000014E8  BF06FF            mov di,0xff06
000014EB  040B              add al,0xb
000014ED  AB                stosw
000014EE  06                push es
000014EF  FF1F              call word far [bx]
000014F1  FD                std
000014F2  2BBF06FF          sub di,[bx-0xfa]
000014F6  0CF0              or al,0xf0
000014F8  03EA              add bp,dx
000014FA  EE                out dx,al
000014FB  EF                out dx,ax
000014FC  FF                db 0xff
000014FD  FF                db 0xff
000014FE  FF0EAF06          dec word [0x6af]
00001502  FF1F              call word far [bx]
00001504  F4                hlt
00001505  AF                scasw
00001506  06                push es
00001507  FF0D              dec word [di]
00001509  F0                lock
0000150A  0FEABFFFFF        pminsw mm7,[bx-0x1]
0000150F  FF                db 0xff
00001510  FC                cld
00001511  0FFB06FF10        psubq mm0,[0x10ff]
00001516  C002AA            rol byte [bp+si],byte 0xaa
00001519  BA06FF            mov dx,0xff06
0000151C  0BF4              or si,sp
0000151E  2BBBBAAB          sub di,[bp+di-0x5446]
00001522  EF                out dx,ax
00001523  FF                db 0xff
00001524  BBBBAA            mov bx,0xaabb
00001527  AE                scasb
00001528  EE                out dx,al
00001529  FF                db 0xff
0000152A  FF                db 0xff
0000152B  FF00              inc word [bx+si]
0000152D  3F                aas
0000152E  EABFFFFFFF        jmp word 0xffff:word 0xffbf
00001533  FC                cld
00001534  3EBFFFFF          ds mov di,0xffff
00001538  FC                cld
00001539  02AEAAEE          add ch,[bp-0x1156]
0000153D  EE                out dx,al
0000153E  FF                db 0xff
0000153F  BB06FF            mov bx,0xff06
00001542  05C033            add ax,0x33c0
00001545  FC                cld
00001546  02EF              add ch,bh
00001548  06                push es
00001549  FF07              inc word [bx]
0000154B  AA                stosb
0000154C  AB                stosw
0000154D  BBFFF4            mov bx,0xf4ff
00001550  AA                stosb
00001551  EE                out dx,al
00001552  EE                out dx,al
00001553  FF                db 0xff
00001554  FF                db 0xff
00001555  FB                sti
00001556  BB06FF            mov bx,0xff06
00001559  04FB              add al,0xfb
0000155B  BBB0C0            mov bx,0xc0b0
0000155E  3EEA06FF04F0      ds jmp word 0xf004:word 0xff06
00001564  3CBF              cmp al,0xbf
00001566  FF                db 0xff
00001567  FFF0              push ax
00001569  0002              add [bp+si],al
0000156B  EE                out dx,al
0000156C  AA                stosb
0000156D  BF06FF            mov di,0xff06
00001570  06                push es
00001571  C00033            rol byte [bx+si],byte 0x33
00001574  FB                sti
00001575  A8AF              test al,0xaf
00001577  EAEABEAEEE        jmp word 0xeeae:word 0xbeea
0000157C  EE                out dx,al
0000157D  EE                out dx,al
0000157E  06                push es
0000157F  FF04              inc word [si]
00001581  D82A              fsubr dword [bp+si]
00001583  AF                scasw
00001584  FF                db 0xff
00001585  FF                db 0xff
00001586  FF06EE04          inc word [0x4ee]
0000158A  FF                db 0xff
0000158B  FB                sti
0000158C  BFFF0F            mov di,0xfff
0000158F  C03FEA            sar byte [bx],byte 0xea
00001592  AE                scasb
00001593  EAAEEEC03C        jmp word 0x3cc0:word 0xeeae
00001598  BFFFFF            mov di,0xffff
0000159B  F0                lock
0000159C  03FF              add di,di
0000159E  F0                lock
0000159F  CF                iret
000015A0  AA                stosb
000015A1  AB                stosw
000015A2  BFFFF0            mov di,0xf0ff
000015A5  06                push es
000015A6  0004              add [si],al
000015A8  33FB              xor di,bx
000015AA  AA                stosb
000015AB  AB                stosw
000015AC  AA                stosb
000015AD  FB                sti
000015AE  BBAABF            mov bx,0xbfaa
000015B1  FB                sti
000015B2  BBAEEF            mov bx,0xefae
000015B5  AA                stosb
000015B6  AA                stosb
000015B7  90                nop
000015B8  2AABBBBB          sub ch,[bp+di-0x4445]
000015BC  BBEAAA            mov bx,0xaaea
000015BF  BEAAAB            mov si,0xabaa
000015C2  EF                out dx,ax
000015C3  BFFC3C            mov di,0x3cfc
000015C6  00FE              add dh,bh
000015C8  FA                cli
000015C9  BFFFFF            mov di,0xffff
000015CC  FF03              inc word [bp+di]
000015CE  3C8F              cmp al,0x8f
000015D0  FF                db 0xff
000015D1  FFC0              inc ax
000015D3  03FF              add di,di
000015D5  CB                retf
000015D6  FF00              inc word [bx+si]
000015D8  00F0              add al,dh
000015DA  000F              add [bx],cl
000015DC  C0C300            rol bl,byte 0x0
000015DF  0033              add [bp+di],dh
000015E1  FFAAAB06          jmp word far [bp+si+0x6ab]
000015E5  AA                stosb
000015E6  05D706            add ax,0x6d7
000015E9  AA                stosb
000015EA  04AB              add al,0xab
000015EC  42                inc dx
000015ED  06                push es
000015EE  AA                stosb
000015EF  0AACAAB0          or ch,[si-0x4f56]
000015F3  F000FF            lock add bh,bh
000015F6  B8AAAA            mov ax,0xaaaa
000015F9  AC                lodsb
000015FA  00C3              add bl,al
000015FC  3E2EAA            cs stosb
000015FF  AA                stosb
00001600  C00306            rol byte [bp+di],byte 0x6
00001603  FF04              inc word [si]
00001605  33F3              xor si,bx
00001607  0CFF              or al,0xff
00001609  C03CC0            sar byte [si],byte 0xc0
0000160C  0033              add [bp+di],dh
0000160E  FB                sti
0000160F  AA                stosb
00001610  AB                stosw
00001611  06                push es
00001612  FF04              inc word [si]
00001614  D05706            rcl byte [bx+0x6],0x0
00001617  FF05              inc word [di]
00001619  42                inc dx
0000161A  AA                stosb
0000161B  AB                stosw
0000161C  BBB6FF            mov bx,0xffb6
0000161F  FB                sti
00001620  BBFEEE            mov bx,0xeefe
00001623  FA                cli
00001624  F0                lock
00001625  3F                aas
00001626  C0                db 0xc0
00001627  F0                lock
00001628  03FE              add di,si
0000162A  E8AFFF            call 0x15dc
0000162D  F0                lock
0000162E  333F              xor di,[bx]
00001630  3E22FF            ds and bh,bh
00001633  FF00              inc word [bx+si]
00001635  033F              add di,[bx]
00001637  FF                db 0xff
00001638  FF                db 0xff
00001639  FF33              push word [bp+di]
0000163B  F30CCF            rep or al,0xcf
0000163E  F0FFC0            lock inc ax
00001641  0033              add [bp+di],dh
00001643  FB                sti
00001644  BAABAA            mov dx,0xaaab
00001647  AA                stosb
00001648  AA                stosb
00001649  B405              mov ah,0x5
0000164B  55                push bp
0000164C  FA                cli
0000164D  AA                stosb
0000164E  AA                stosb
0000164F  AB                stosw
00001650  7D04              jnl 0x1656
00001652  28AAAB56          sub [bp+si+0x56ab],ch
00001656  06                push es
00001657  AA                stosb
00001658  06                push es
00001659  B0CA              mov al,0xca
0000165B  C3                ret
0000165C  300F              xor [bx],cl
0000165E  FE                db 0xfe
0000165F  E82AAA            call 0xc08c
00001662  B000              mov al,0x0
00001664  3CFE              cmp al,0xfe
00001666  8AAAAB00          mov ch,[bp+si+0xab]
0000166A  033F              add di,[bx]
0000166C  FF                db 0xff
0000166D  FF                db 0xff
0000166E  FF0F              dec word [bx]
00001670  F30CCF            rep or al,0xcf
00001673  C3                ret
00001674  3F                aas
00001675  C000F3            rol byte [bx+si],byte 0xf3
00001678  FB                sti
00001679  AA                stosb
0000167A  AB                stosw
0000167B  D17FFD            sar word [bx-0x3],0x0
0000167E  055D77            add ax,0x775d
00001681  FFF5              push bp
00001683  EAAD7D88E8        jmp word 0xe888:word 0x7dad
00001688  AA                stosb
00001689  AB                stosw
0000168A  57                push di
0000168B  AA                stosb
0000168C  B606              mov dh,0x6
0000168E  AA                stosb
0000168F  04B0              add al,0xb0
00001691  CAC0F0            retf word 0xf0c0
00001694  0FFEEA            paddd mm5,mm2
00001697  0AAAB300          or ch,[bp+si+0xb3]
0000169B  FC                cld
0000169C  FA                cli
0000169D  A8AA              test al,0xaa
0000169F  AC                lodsb
000016A0  000C              add [si],cl
000016A2  06                push es
000016A3  FF04              inc word [si]
000016A5  0FF30C            psllq mm1,[si]
000016A8  CF                iret
000016A9  CC                int3
000016AA  FFC0              inc ax
000016AC  00CF              add bh,cl
000016AE  FFAAEA41          jmp word far [bp+si+0x41ea]
000016B2  FF                db 0xff
000016B3  D05F75            rcr byte [bx+0x75],0x0
000016B6  5F                pop di
000016B7  FF                db 0xff
000016B8  D7                xlatb
000016B9  FA                cli
000016BA  AD                lodsw
000016BB  DD8B28AA          fisttp qword [bp+di-0x55d8]
000016BF  AD                lodsw
000016C0  57                push di
000016C1  EAD706AA04        jmp word 0x4aa:word 0x6d7
000016C6  C3                ret
000016C7  0AC3              or al,bl
000016C9  F0                lock
000016CA  3F                aas
000016CB  FFAE8AAA          jmp word far [bp-0x5576]
000016CF  C00FF3            ror byte [bx],byte 0xf3
000016D2  EE                out dx,al
000016D3  88AAAC00          mov [bp+si+0xac],ch
000016D7  3C06              cmp al,0x6
000016D9  FF04              inc word [si]
000016DB  0FF30C            psllq mm1,[si]
000016DE  FFC3              inc bx
000016E0  FFC0              inc ax
000016E2  00CF              add bh,cl
000016E4  FE                db 0xfe
000016E5  AA                stosb
000016E6  AA                stosb
000016E7  57                push di
000016E8  FF557D            call word near [di+0x7d]
000016EB  F77FFF            idiv word [bx-0x1]
000016EE  DF                db 0xdf
000016EF  FFAD3530          jmp word far [di+0x3035]
000016F3  A88A              test al,0x8a
000016F5  A95DFB            test ax,0xfb5d
000016F8  57                push di
000016F9  EAAAAAAB00        jmp word 0xab:word 0xaaaa
000016FE  F300C0            rep add al,al
00001701  3F                aas
00001702  FB                sti
00001703  AE                scasb
00001704  0AAB0CCF          or ch,[bp+di-0x30f4]
00001708  33FE              xor di,si
0000170A  80AAA0003C        sub byte [bp+si+0xa0],0x3c
0000170F  06                push es
00001710  FF04              inc word [si]
00001712  3F                aas
00001713  C3                ret
00001714  33CF              xor cx,di
00001716  C3                ret
00001717  FFC0              inc ax
00001719  000F              add [bx],cl
0000171B  FE                db 0xfe
0000171C  AA                stosb
0000171D  AA                stosb
0000171E  75FF              jnz 0x171f
00001720  55                push bp
00001721  FD                std
00001722  D7                xlatb
00001723  7FFF              jg 0x1724
00001725  DF                db 0xdf
00001726  FFF7              push di
00001728  7D00              jnl 0x172a
0000172A  B80AAA            mov ax,0xaa0a
0000172D  57                push di
0000172E  FD                std
0000172F  77FA              ja 0x172b
00001731  A8AA              test al,0xaa
00001733  AB                stosw
00001734  00FC              add ah,bh
00001736  0FC33F            movnti [bx],edi
00001739  FB                sti
0000173A  AE                scasb
0000173B  82                db 0x82
0000173C  AB                stosw
0000173D  303C              xor [si],bh
0000173F  CF                iret
00001740  EE                out dx,al
00001741  82                db 0x82
00001742  2A00              sub al,[bx+si]
00001744  00F0              add al,dh
00001746  FF                db 0xff
00001747  FF                db 0xff
00001748  FF                db 0xff
00001749  FC                cld
0000174A  CF                iret
0000174B  C3                ret
0000174C  33CF              xor cx,di
0000174E  CF                iret
0000174F  FFC0              inc ax
00001751  00F3              add bl,dh
00001753  FFAABAD7          jmp word far [bp+si-0x2846]
00001757  FF77F5            push word [bx-0xb]
0000175A  5D                pop bp
0000175B  06                push es
0000175C  FF04              inc word [si]
0000175E  C430              les si,word [bx+si]
00001760  C2B808            ret word 0x8b8
00001763  88A9F55F          mov [bx+di+0x5ff5],ch
00001767  FFC0              inc ax
00001769  0AAB03FC          or ch,[bp+di-0x3fd]
0000176D  3303              xor ax,[bp+di]
0000176F  3F                aas
00001770  FB                sti
00001771  BE88AC            mov si,0xac88
00001774  003F              add [bx],bh
00001776  FF                db 0xff
00001777  BA8220            mov dx,0x2082
0000177A  0000              add [bx+si],al
0000177C  F3                rep
0000177D  FF                db 0xff
0000177E  FF                db 0xff
0000177F  FF                db 0xff
00001780  FC                cld
00001781  3F                aas
00001782  C0                db 0xc0
00001783  F3CF              rep iret
00001785  F3FFC0            rep inc ax
00001788  0033              add [bp+di],dh
0000178A  FF                db 0xff
0000178B  EAEA1FFFDF        jmp word 0xdfff:word 0x1fea
00001790  D7                xlatb
00001791  7506              jnz 0x1799
00001793  FF04              inc word [si]
00001795  D0                db 0xd0
00001796  304BA8            xor [bp+di-0x58],cl
00001799  20A22AD5          and [bp+si-0x2ad6],ah
0000179D  7FF0              jg 0x178f
0000179F  0000              add [bx+si],al
000017A1  3C00              cmp al,0x0
000017A3  F0                lock
000017A4  CF                iret
000017A5  0CFF              or al,0xff
000017A7  FFAEA2AC          jmp word far [bp-0x535e]
000017AB  C3                ret
000017AC  30FF              xor bh,bh
000017AE  BE8880            mov si,0x8088
000017B1  0000              add [bx+si],al
000017B3  CF                iret
000017B4  FF                db 0xff
000017B5  FF                db 0xff
000017B6  FFF3              push bx
000017B8  3F                aas
000017B9  C0                db 0xc0
000017BA  F33F              rep aas
000017BC  CF                iret
000017BD  FFC0              inc ax
000017BF  0033              add [bp+di],dh
000017C1  FE                db 0xfe
000017C2  EBAE              jmp 0x1772
000017C4  3F                aas
000017C5  FF                db 0xff
000017C6  DF5557            fist word [di+0x57]
000017C9  06                push es
000017CA  FF04              inc word [si]
000017CC  D0C1              rol cl,0x0
000017CE  EBAA              jmp 0x177a
000017D0  0828              or [bx+si],ch
000017D2  AA                stosb
000017D3  A8B0              test al,0xb0
000017D5  0000              add [bx+si],al
000017D7  0003              add [bp+di],al
000017D9  0F30              wrmsr
000017DB  3C0C              cmp al,0xc
000017DD  FF                db 0xff
000017DE  EF                out dx,ax
000017DF  BB82AA            mov bx,0xaa82
000017E2  00F3              add bl,dh
000017E4  FE                db 0xfe
000017E5  BA8080            mov dx,0x8080
000017E8  0000              add [bx+si],al
000017EA  CF                iret
000017EB  FF                db 0xff
000017EC  FF                db 0xff
000017ED  FF0C              dec word [si]
000017EF  FFC0              inc ax
000017F1  F33F              rep aas
000017F3  CF                iret
000017F4  FFC0              inc ax
000017F6  00F3              add bl,dh
000017F8  FE                db 0xfe
000017F9  EAAEFFFF7F        jmp word 0x7fff:word 0xffae
000017FE  5D                pop bp
000017FF  57                push di
00001800  06                push es
00001801  FF04              inc word [si]
00001803  C1C94A            ror cx,byte 0x4a
00001806  AA                stosb
00001807  0A880080          or cl,[bx+si-0x8000]
0000180B  06                push es
0000180C  0004              add [si],al
0000180E  0C30              or al,0x30
00001810  FC                cld
00001811  FC                cld
00001812  3CFF              cmp al,0xff
00001814  FF                db 0xff
00001815  BBA0AA            mov bx,0xaaa0
00001818  0CC3              or al,0xc3
0000181A  EAFAA00000        jmp word 0x0:word 0xa0fa
0000181F  03CF              add cx,di
00001821  FF                db 0xff
00001822  FF                db 0xff
00001823  FC                cld
00001824  F3FF33            rep push word [bp+di]
00001827  333F              xor di,[bx]
00001829  F3FF30            rep push word [bx+si]
0000182C  00F3              add bl,dh
0000182E  FE                db 0xfe
0000182F  EAAF0FFDFF        jmp word 0xfffd:word 0xfaf
00001834  7577              jnz 0x18ad
00001836  06                push es
00001837  FF04              inc word [si]
00001839  43                inc bx
0000183A  130A              adc cx,[bp+si]
0000183C  AA                stosb
0000183D  82                db 0x82
0000183E  A00600            mov al,[0x6]
00001841  06                push es
00001842  30FC              xor ah,bh
00001844  F3                rep
00001845  F0                lock
00001846  3CFF              cmp al,0xff
00001848  EE                out dx,al
00001849  FA                cli
0000184A  A82A              test al,0x2a
0000184C  83CFBA            or di,0xffffffffffffffba
0000184F  FA                cli
00001850  A20000            mov [0x0],al
00001853  30CF              xor bh,cl
00001855  FF                db 0xff
00001856  FFF3              push bx
00001858  CF                iret
00001859  FF30              push word [bx+si]
0000185B  F33F              rep aas
0000185D  F3FFC0            rep inc ax
00001860  00FF              add bh,bh
00001862  FE                db 0xfe
00001863  EBAE              jmp 0x1813
00001865  CF                iret
00001866  FF                db 0xff
00001867  FD                std
00001868  775F              ja 0x18c9
0000186A  06                push es
0000186B  FF04              inc word [si]
0000186D  40                inc ax
0000186E  16                push ss
0000186F  CAEA82            retf word 0x82ea
00001872  800600040C        add byte [0x400],0xc
00001877  00F0              add al,dh
00001879  CF                iret
0000187A  C3                ret
0000187B  C0                db 0xc0
0000187C  F3                rep
0000187D  FF                db 0xff
0000187E  BEBBE2            mov si,0xe2bb
00001881  0AB3FFAA          or dh,[bp+di-0x5501]
00001885  EE                out dx,al
00001886  A0000C            mov al,[0xc00]
00001889  3C3F              cmp al,0x3f
0000188B  FF                db 0xff
0000188C  FFF3              push bx
0000188E  CF                iret
0000188F  FF30              push word [bx+si]
00001891  333F              xor di,[bx]
00001893  F3FFF0            rep push ax
00001896  00F3              add bl,dh
00001898  FE                db 0xfe
00001899  EBAE              jmp 0x1849
0000189B  8F                db 0x8f
0000189C  FFF5              push bp
0000189E  DDDF              fstp st7
000018A0  06                push es
000018A1  FF04              inc word [si]
000018A3  40                inc ax
000018A4  242A              and al,0x2a
000018A6  AA                stosb
000018A7  A880              test al,0x80
000018A9  0000              add [bx+si],al
000018AB  00C0              add al,al
000018AD  C003F0            rol byte [bp+di],byte 0xf0
000018B0  CF                iret
000018B1  0F                db 0x0f
000018B2  C3                ret
000018B3  F3                rep
000018B4  FF                db 0xff
000018B5  BEBFE8            mov si,0xe8bf
000018B8  0AAFFFAB          or ch,[bx-0x5401]
000018BC  EE                out dx,al
000018BD  A20030            mov [0x3000],al
000018C0  F0                lock
000018C1  3F                aas
000018C2  FF                db 0xff
000018C3  FF0F              dec word [bx]
000018C5  3F                aas
000018C6  FF00              inc word [bx+si]
000018C8  333F              xor di,[bx]
000018CA  F3FFF0            rep push ax
000018CD  03F3              add si,bx
000018CF  FE                db 0xfe
000018D0  EBAA              jmp 0x187c
000018D2  CF                iret
000018D3  FFF5              push bp
000018D5  7FFF              jg 0x18d6
000018D7  F5                cmc
000018D8  77FF              ja 0x18d9
000018DA  FD                std
000018DB  4F                dec di
000018DC  08ABAA22          or [bp+di+0x22aa],ch
000018E0  8800              mov [bx+si],al
000018E2  000F              add [bx],cl
000018E4  0030              add [bx+si],dh
000018E6  0300              add ax,[bx+si]
000018E8  CF                iret
000018E9  CF                iret
000018EA  C3                ret
000018EB  F3                rep
000018EC  FF                db 0xff
000018ED  BAFBE8            mov dx,0xe8fb
000018F0  82                db 0x82
000018F1  AF                scasw
000018F2  FFAFEE88          jmp word far [bx-0x7712]
000018F6  0033              add [bp+di],dh
000018F8  C3                ret
000018F9  0FFFFC            ud0 di,sp
000018FC  F0                lock
000018FD  FF                db 0xff
000018FE  FC                cld
000018FF  C0FF3F            sar bh,byte 0x3f
00001902  FF                db 0xff
00001903  FFF0              push ax
00001905  03F3              add si,bx
00001907  FE                db 0xfe
00001908  EAAB83FFD7        jmp word 0xd7ff:word 0x83ab
0000190D  DF7F57            fistp qword [bx+0x57]
00001910  FF                db 0xff
00001911  FF                db 0xff
00001912  FD                std
00001913  0F33              rdpmc
00001915  AB                stosw
00001916  AA                stosb
00001917  0A0A              or cl,[bp+si]
00001919  8000AC            add byte [bx+si],0xac
0000191C  3330              xor si,[bx+si]
0000191E  0C33              or al,0x33
00001920  0F                db 0x0f
00001921  3F                aas
00001922  C3                ret
00001923  CF                iret
00001924  FF                db 0xff
00001925  FE                db 0xfe
00001926  BBFA00            mov bx,0xfa
00001929  AA                stosb
0000192A  FE                db 0xfe
0000192B  BFBEA0            mov di,0xa0be
0000192E  00F3              add bl,dh
00001930  30CF              xor bh,cl
00001932  FFC0              inc ax
00001934  CF                iret
00001935  FF                db 0xff
00001936  FC                cld
00001937  C3                ret
00001938  CF                iret
00001939  CF                iret
0000193A  F3FFF0            rep push ax
0000193D  03CF              add cx,di
0000193F  FE                db 0xfe
00001940  EABA83FFD7        jmp word 0xd7ff:word 0x83ba
00001945  DF                db 0xdf
00001946  FD                std
00001947  DD                db 0xdd
00001948  FF                db 0xff
00001949  FFF5              push bp
0000194B  0C3C              or al,0x3c
0000194D  AE                scasb
0000194E  AA                stosb
0000194F  0A0B              or cl,[bp+di]
00001951  EA82F030F0        jmp word 0xf030:word 0xf082
00001956  030C              add cx,[si]
00001958  3CFF              cmp al,0xff
0000195A  03CF              add cx,di
0000195C  FE                db 0xfe
0000195D  FA                cli
0000195E  BFBA00            mov di,0xba
00001961  AA                stosb
00001962  FA                cli
00001963  EF                out dx,ax
00001964  EE                out dx,al
00001965  8800              mov [bx+si],al
00001967  FFC3              inc bx
00001969  CF                iret
0000196A  FFC3              inc bx
0000196C  3F                aas
0000196D  FFF3              push bx
0000196F  C3                ret
00001970  CF                iret
00001971  CF                iret
00001972  FC                cld
00001973  FF                db 0xff
00001974  FC                cld
00001975  03CF              add cx,di
00001977  FF                db 0xff
00001978  EBEB              jmp 0x1965
0000197A  C3                ret
0000197B  FF                db 0xff
0000197C  DF7DFD            fistp qword [di-0x3]
0000197F  77FF              ja 0x1980
00001981  FD                std
00001982  54                push sp
00001983  0032              add [bp+si],dh
00001985  AE                scasb
00001986  8A0A              mov cl,[bp+si]
00001988  8BBAEBA3          mov di,[bp+si-0x5c15]
0000198C  00C0              add al,al
0000198E  3C30              cmp al,0x30
00001990  FF                db 0xff
00001991  FF0F              dec word [bx]
00001993  CF                iret
00001994  FE                db 0xfe
00001995  FA                cli
00001996  EE                out dx,al
00001997  AE                scasb
00001998  0828              or [bx+si],ch
0000199A  BEEFBF            mov si,0xbfef
0000199D  A800              test al,0x0
0000199F  FF30              push word [bx+si]
000019A1  0FFF0C            ud0 cx,[si]
000019A4  FF                db 0xff
000019A5  FFF3              push bx
000019A7  C3                ret
000019A8  CF                iret
000019A9  CF                iret
000019AA  FC                cld
000019AB  3F                aas
000019AC  FC                cld
000019AD  03CF              add cx,di
000019AF  FF                db 0xff
000019B0  EE                out dx,al
000019B1  AB                stosw
000019B2  CF                iret
000019B3  FF                db 0xff
000019B4  7DFF              jnl 0x19b5
000019B6  F5                cmc
000019B7  FF                db 0xff
000019B8  FFF4              push sp
000019BA  54                push sp
000019BB  30CA              xor dl,cl
000019BD  AA                stosb
000019BE  8A0A              mov cl,[bp+si]
000019C0  0BBCCE00          or di,[si+0xce]
000019C4  C3                ret
000019C5  CF                iret
000019C6  F30CFC            rep or al,0xfc
000019C9  FC                cld
000019CA  0F                db 0x0f
000019CB  3F                aas
000019CC  FE                db 0xfe
000019CD  EAEEEE0AAC        jmp word 0xac0a:word 0xeeee
000019D2  2F                das
000019D3  AB                stosw
000019D4  FFA803FF          jmp word far [bx+si-0xfd]
000019D8  330F              xor cx,[bx]
000019DA  FF0C              dec word [si]
000019DC  FF                db 0xff
000019DD  FFF3              push bx
000019DF  CF                iret
000019E0  CF                iret
000019E1  CF                iret
000019E2  FC                cld
000019E3  3F                aas
000019E4  FC                cld
000019E5  03CF              add cx,di
000019E7  FF                db 0xff
000019E8  BAEB20            mov dx,0x20eb
000019EB  FF                db 0xff
000019EC  FF                db 0xff
000019ED  FFF5              push bp
000019EF  FF                db 0xff
000019F0  FFF4              push sp
000019F2  44                inc sp
000019F3  C2AAAA            ret word 0xaaaa
000019F6  8A20              mov ah,[bx+si]
000019F8  03B0F0CC          add si,[bx+si-0x3310]
000019FC  C0C3CC            rol bl,byte 0xcc
000019FF  F0                lock
00001A00  F3FC              rep cld
00001A02  3F                aas
00001A03  FF                db 0xff
00001A04  FE                db 0xfe
00001A05  FA                cli
00001A06  BEEE88            mov si,0x88ee
00001A09  A02AEF            mov al,[0xef2a]
00001A0C  EF                out dx,ax
00001A0D  A0033F            mov al,[0x3f03]
00001A10  0C3F              or al,0x3f
00001A12  FC                cld
00001A13  33FF              xor di,di
00001A15  FFF3              push bx
00001A17  C3                ret
00001A18  CF                iret
00001A19  CF                iret
00001A1A  FC                cld
00001A1B  3F                aas
00001A1C  FC                cld
00001A1D  030F              add cx,[bx]
00001A1F  FF                db 0xff
00001A20  BAEB00            mov dx,0xeb
00001A23  FF                db 0xff
00001A24  FD                std
00001A25  FFF7              push di
00001A27  FF                db 0xff
00001A28  FF                db 0xff
00001A29  D0D0              rcl al,0x0
00001A2B  C2AEBA            ret word 0xbaae
00001A2E  2A0A              sub cl,[bp+si]
00001A30  0230              add dh,[bx+si]
00001A32  E200              loop 0x1a34
00001A34  3333              xor si,[bp+di]
00001A36  F0                lock
00001A37  F3FFF0            rep push ax
00001A3A  3F                aas
00001A3B  FF                db 0xff
00001A3C  FE                db 0xfe
00001A3D  EAAFEE2830        jmp word 0x3028:word 0xeeaf
00001A42  2ABBEFA2          sub bh,[bp+di-0x5d11]
00001A46  033C              add di,[si]
00001A48  0CFF              or al,0xff
00001A4A  FC                cld
00001A4B  0CFF              or al,0xff
00001A4D  FFF3              push bx
00001A4F  33CF              xor cx,di
00001A51  CF                iret
00001A52  FC                cld
00001A53  CF                iret
00001A54  FC                cld
00001A55  0333              add si,[bp+di]
00001A57  FF                db 0xff
00001A58  BAAB02            mov dx,0x2ab
00001A5B  FF                db 0xff
00001A5C  FF                db 0xff
00001A5D  FF                db 0xff
00001A5E  D7                xlatb
00001A5F  FF                db 0xff
00001A60  FF                db 0xff
00001A61  D3C3              rol bx,cl
00001A63  CE                into
00001A64  EAAA2A2022        jmp word 0x2220:word 0x2aaa
00001A69  0338              add di,[bx+si]
00001A6B  E008              loopne 0x1a75
00001A6D  CF                iret
00001A6E  30CF              xor bh,cl
00001A70  F3C0FFFF          rep sar bh,byte 0xff
00001A74  FB                sti
00001A75  AA                stosb
00001A76  BBEA2B            mov bx,0x2bea
00001A79  C0AAAFBAA2        shr byte [bp+si-0x4551],byte 0xa2
00001A7E  0CF0              or al,0xf0
00001A80  F0                lock
00001A81  3F                aas
00001A82  FF0C              dec word [si]
00001A84  FF                db 0xff
00001A85  FFCF              dec di
00001A87  0FF3F3            psllq mm6,mm3
00001A8A  FC                cld
00001A8B  3F                aas
00001A8C  FC                cld
00001A8D  0333              add si,[bp+di]
00001A8F  FF                db 0xff
00001A90  FB                sti
00001A91  AE                scasb
00001A92  08BFFFFF          or [bx-0x1],bh
00001A96  7FFF              jg 0x1a97
00001A98  FF430F            inc word [bp+di+0xf]
00001A9B  3AEB              cmp ch,bl
00001A9D  AA                stosb
00001A9E  28A00ACB          sub [bx+si-0x34f6],ah
00001AA2  E0E0              loopne 0x1a84
00001AA4  A33CC3            mov [0xc33c],ax
00001AA7  03FF              add di,di
00001AA9  C3                ret
00001AAA  EF                out dx,ax
00001AAB  FF                db 0xff
00001AAC  FB                sti
00001AAD  AA                stosb
00001AAE  AF                scasw
00001AAF  BA0000            mov dx,0x0
00001AB2  BAABEE            mov dx,0xeeab
00001AB5  BB0CF0            mov bx,0xf00c
00001AB8  30CF              xor bh,cl
00001ABA  FF                db 0xff
00001ABB  3CFF              cmp al,0xff
00001ABD  FF8333F3          inc word [bp+di-0xccd]
00001AC1  F3FC              rep cld
00001AC3  FF                db 0xff
00001AC4  FC                cld
00001AC5  0333              add si,[bp+di]
00001AC7  FF                db 0xff
00001AC8  FA                cli
00001AC9  EE                out dx,al
00001ACA  C0BF06FF05        sar byte [bx-0xfa],byte 0x5
00001ACF  43                inc bx
00001AD0  30EA              xor dl,ch
00001AD2  AB                stosw
00001AD3  EA28882A8B        jmp word 0x8b2a:word 0x8828
00001AD8  A3E2AF            mov [0xafe2],ax
00001ADB  3C0C              cmp al,0xc
00001ADD  0FFFC3            ud0 ax,bx
00001AE0  EF                out dx,ax
00001AE1  FF                db 0xff
00001AE2  FB                sti
00001AE3  AE                scasb
00001AE4  AF                scasw
00001AE5  BA0002            mov dx,0x200
00001AE8  BAABEB            mov dx,0xebab
00001AEB  A833              test al,0x33
00001AED  FC                cld
00001AEE  00CF              add bh,cl
00001AF0  F0                lock
00001AF1  33FF              xor di,di
00001AF3  FF8333F3          inc word [bp+di-0xccd]
00001AF7  F3FF03            rep inc word [bp+di]
00001AFA  FF0C              dec word [si]
00001AFC  FF                db 0xff
00001AFD  FF                db 0xff
00001AFE  BAEE08            mov dx,0x8ee
00001B01  3F                aas
00001B02  06                push es
00001B03  FF04              inc word [si]
00001B05  FD                std
00001B06  0C00              or al,0x0
00001B08  2BAFAAA8          sub bp,[bx-0x5756]
00001B0C  A20B0B            mov [0xb0b],al
00001B0F  EF                out dx,ax
00001B10  AA                stosb
00001B11  83F3C3            xor bx,0xffffffffffffffc3
00001B14  3F                aas
00001B15  FF03              inc word [bp+di]
00001B17  BEFFAE            mov si,0xaeff
00001B1A  AE                scasb
00001B1B  EF                out dx,ax
00001B1C  BA003E            mov dx,0x3e00
00001B1F  EAAABBE88F        jmp word 0x8fe8:word 0xbbaa
00001B24  F3003F            rep add [bx],bh
00001B27  FC                cld
00001B28  F3                rep
00001B29  FF                db 0xff
00001B2A  FA                cli
00001B2B  330F              xor cx,[bx]
00001B2D  F3                rep
00001B2E  F3                rep
00001B2F  FF                db 0xff
00001B30  FC                cld
00001B31  FF0C              dec word [si]
00001B33  F3                rep
00001B34  FF                db 0xff
00001B35  BAAE30            mov dx,0x30ae
00001B38  0F06              clts
00001B3A  FF04              inc word [si]
00001B3C  FD                std
00001B3D  0000              add [bx+si],al
00001B3F  CB                retf
00001B40  AF                scasw
00001B41  A8A0              test al,0xa0
00001B43  8A882CEE          mov cl,[bx+si-0x11d4]
00001B47  AA                stosb
00001B48  0FC0CF            xadd bh,cl
00001B4B  3F                aas
00001B4C  FF0F              dec word [bx]
00001B4E  AB                stosw
00001B4F  FFAAAABF          jmp word far [bp+si-0x4056]
00001B53  EC                in al,dx
00001B54  00FE              add dh,bh
00001B56  EAAAAAB0CF        jmp word 0xcfb0:word 0xaaaa
00001B5B  FF03              inc word [bp+di]
00001B5D  3F                aas
00001B5E  F3                rep
00001B5F  F3                rep
00001B60  FF                db 0xff
00001B61  EE                out dx,al
00001B62  0F33              rdpmc
00001B64  FF                db 0xff
00001B65  FC                cld
00001B66  FFF0              push ax
00001B68  FF0C              dec word [si]
00001B6A  F3                rep
00001B6B  FF                db 0xff
00001B6C  FB                sti
00001B6D  AF                scasw
00001B6E  300B              xor [bp+di],cl
00001B70  06                push es
00001B71  FF04              inc word [si]
00001B73  F4                hlt
00001B74  0300              add ax,[bx+si]
00001B76  3BAEA888          cmp bp,[bp-0x7758]
00001B7A  82                db 0x82
00001B7B  82                db 0x82
00001B7C  AF                scasw
00001B7D  3EA00F03          mov al,[ds:0x30f]
00001B81  FC                cld
00001B82  3F                aas
00001B83  FC                cld
00001B84  FF                db 0xff
00001B85  BAFEAA            mov dx,0xaafe
00001B88  AE                scasb
00001B89  BEAA00            mov si,0xaa
00001B8C  FB                sti
00001B8D  AA                stosb
00001B8E  AB                stosw
00001B8F  AA                stosb
00001B90  AB                stosw
00001B91  FF                db 0xff
00001B92  FF0C              dec word [si]
00001B94  FFF3              push bx
00001B96  FC                cld
00001B97  FB                sti
00001B98  B8CF0F            mov ax,0xfcf
00001B9B  FC                cld
00001B9C  FC                cld
00001B9D  FFF0              push ax
00001B9F  FF0C              dec word [si]
00001BA1  F3                rep
00001BA2  FF                db 0xff
00001BA3  BAEB33            mov dx,0x33eb
00001BA6  8306FF04F4        add word [0x4ff],0xfffffffffffffff4
00001BAB  00C0              add al,al
00001BAD  CAAAA2            retf word 0xa2aa
00001BB0  8A82A0AF          mov al,[bp+si-0x5060]
00001BB4  FA                cli
00001BB5  A00F33            mov al,[0x330f]
00001BB8  3CFF              cmp al,0xff
00001BBA  FF                db 0xff
00001BBB  FE                db 0xfe
00001BBC  EF                out dx,ax
00001BBD  FE                db 0xfe
00001BBE  E952AA            jmp 0xc613
00001BC1  8000FA            add byte [bx+si],0xfa
00001BC4  AA                stosb
00001BC5  AF                scasw
00001BC6  E8AAAF            call 0xcb73
00001BC9  FF33              push word [bp+di]
00001BCB  0FFFFC            ud0 di,sp
00001BCE  EE                out dx,al
00001BCF  0303              add ax,[bp+di]
00001BD1  3F                aas
00001BD2  FC                cld
00001BD3  FC                cld
00001BD4  FF                db 0xff
00001BD5  FF                db 0xff
00001BD6  FF0C              dec word [si]
00001BD8  F3                rep
00001BD9  FF                db 0xff
00001BDA  BAAF30            mov dx,0x30af
00001BDD  2306FF04          and ax,[0x4ff]
00001BE1  D000              rol byte [bx+si],0x0
00001BE3  033A              add di,[bp+si]
00001BE5  AA                stosb
00001BE6  A28880            mov [0x8088],al
00001BE9  8A3F              mov bh,[bx]
00001BEB  2A80CCFC          sub al,[bx+si-0x334]
00001BEF  F0                lock
00001BF0  FF                db 0xff
00001BF1  FF                db 0xff
00001BF2  FE                db 0xfe
00001BF3  EBFE              jmp 0x1bf3
00001BF5  E540              in ax,byte 0x40
00001BF7  003C              add [si],bh
00001BF9  03FA              add di,dx
00001BFB  EAAFA88AAB        jmp word 0xab8a:word 0xa8af
00001C00  FFC0              inc ax
00001C02  03FF              add di,di
00001C04  FB                sti
00001C05  A830              test al,0x30
00001C07  330F              xor cx,[bx]
00001C09  FC                cld
00001C0A  F8                clc
00001C0B  FF                db 0xff
00001C0C  FC                cld
00001C0D  FF03              inc word [bp+di]
00001C0F  F33F              rep aas
00001C11  BABBC8            mov dx,0xc8bb
00001C14  C006FF04DC        rol byte [0x4ff],byte 0xdc
00001C19  0303              add ax,[bp+di]
00001C1B  2EAA              cs stosb
00001C1D  AA                stosb
00001C1E  2A00              sub al,[bx+si]
00001C20  033C              add di,[si]
00001C22  EA0030FFC3        jmp word 0xc3ff:word 0x3000
00001C27  FF                db 0xff
00001C28  FF                db 0xff
00001C29  EABFFEA440        jmp word 0x40a4:word 0xfebf
00001C2E  00FF              add bh,bh
00001C30  0FEAAAAEBA        pminsw mm5,[bp+si-0x4552]
00001C35  22AABFFC          and ch,[bp+si-0x341]
00001C39  CF                iret
00001C3A  FF                db 0xff
00001C3B  EE                out dx,al
00001C3C  A0CC33            mov al,[0x33cc]
00001C3F  0FFCF8            paddb mm7,mm0
00001C42  FF                db 0xff
00001C43  FF                db 0xff
00001C44  FF03              inc word [bp+di]
00001C46  CF                iret
00001C47  FF                db 0xff
00001C48  BABBCA            mov dx,0xcabb
00001C4B  383F              cmp [bx],bh
00001C4D  FF                db 0xff
00001C4E  FF                db 0xff
00001C4F  FF                db 0xff
00001C50  D30C              ror word [si],cl
00001C52  0CEE              or al,0xee
00001C54  AA                stosb
00001C55  AA                stosb
00001C56  A803              test al,0x3
00001C58  0F                db 0x0f
00001C59  0CA8              or al,0xa8
00001C5B  00CC              add ah,cl
00001C5D  FF                db 0xff
00001C5E  3F                aas
00001C5F  FF                db 0xff
00001C60  FF                db 0xff
00001C61  EBBF              jmp 0x1c22
00001C63  BE9400            mov si,0x94
00001C66  0FFCFF            paddb mm7,mm7
00001C69  EBAA              jmp 0x1c15
00001C6B  BEEA22            mov si,0x22ea
00001C6E  AA                stosb
00001C6F  AB                stosw
00001C70  FC                cld
00001C71  330F              xor cx,[bx]
00001C73  AA                stosb
00001C74  0C03              or al,0x3
00001C76  0F                db 0x0f
00001C77  0FFF38            ud0 di,[bx+si]
00001C7A  FF                db 0xff
00001C7B  FF                db 0xff
00001C7C  FF03              inc word [bp+di]
00001C7E  CC                int3
00001C7F  FF                db 0xff
00001C80  BAFBF3            mov dx,0xf3fb
00001C83  382F              cmp [bx],ch
00001C85  FD                std
00001C86  FFF7              push di
00001C88  DC0C              fmul qword [si]
00001C8A  03AAAAA8          add bp,[bp+si-0x5756]
00001C8E  A03003            mov al,[0x330]
00001C91  32A00FF3          xor ah,[bx+si-0xcf1]
00001C95  FF0F              dec word [bx]
00001C97  FF                db 0xff
00001C98  FF                db 0xff
00001C99  EE                out dx,al
00001C9A  BFBA90            mov di,0x90ba
00001C9D  03FF              add di,di
00001C9F  F0                lock
00001CA0  FFABAAAA          jmp word far [bp+di-0x5556]
00001CA4  AA                stosb
00001CA5  282A              sub [bp+si],ch
00001CA7  AA                stosb
00001CA8  BB0CFE            mov bx,0xfe0c
00001CAB  0CC3              or al,0xc3
00001CAD  0CCF              or al,0xcf
00001CAF  3F                aas
00001CB0  FF                db 0xff
00001CB1  3A3F              cmp bh,[bx]
00001CB3  FF                db 0xff
00001CB4  FC                cld
00001CB5  CF                iret
00001CB6  C3                ret
00001CB7  FF                db 0xff
00001CB8  BBBBFC            mov bx,0xfcbb
00001CBB  8E0A              mov cs,word [bp+si]
00001CBD  868301D3          xchg al,[bp+di-0x2cff]
00001CC1  330F              xor cx,[bx]
00001CC3  AA                stosb
00001CC4  AA                stosb
00001CC5  888A800C          mov [bp+si+0xc80],cl
00001CC9  0AA03CCF          or ah,[bx+si-0x30c4]
00001CCD  FC                cld
00001CCE  3F                aas
00001CCF  FF                db 0xff
00001CD0  FE                db 0xfe
00001CD1  BEBEBA            mov si,0xbabe
00001CD4  94                xchg ax,sp
00001CD5  0FFFC3            ud0 ax,bx
00001CD8  FFAAAABA          jmp word far [bp+si-0x4556]
00001CDC  EA0A00AAAE        jmp word 0xaeaa:word 0xa
00001CE1  FF                db 0xff
00001CE2  E8F00F            call 0x2cd5
00001CE5  00CC              add ah,cl
00001CE7  CF                iret
00001CE8  FF                db 0xff
00001CE9  3B3F              cmp di,[bx]
00001CEB  FF                db 0xff
00001CEC  BC0FC3            mov sp,0xc30f
00001CEF  FF                db 0xff
00001CF0  FE                db 0xfe
00001CF1  FB                sti
00001CF2  FC                cld
00001CF3  A203EB            mov [0xeb03],al
00001CF6  A2858C            mov [0x8c85],al
00001CF9  F0                lock
00001CFA  C2BAEA            ret word 0xeaba
00001CFD  82                db 0x82
00001CFE  280C              sub [si],cl
00001D00  3C0A              cmp al,0xa
00001D02  80F033            xor al,0x33
00001D05  FC                cld
00001D06  3F                aas
00001D07  FF                db 0xff
00001D08  FE                db 0xfe
00001D09  EAFEEA550F        jmp word 0xf55:word 0xeafe
00001D0E  FF33              push word [bp+di]
00001D10  FE                db 0xfe
00001D11  AB                stosw
00001D12  2AAEAA0A          sub ch,[bp+0xaaa]
00001D16  8000AB            add byte [bx+si],0xab
00001D19  BE80F0            mov si,0xf080
00001D1C  2CCC              sub al,0xcc
00001D1E  CC                int3
00001D1F  3F                aas
00001D20  FF                db 0xff
00001D21  3E3F              ds aas
00001D23  FFB033CF          push word [bx+si-0x30cd]
00001D27  FF                db 0xff
00001D28  EE                out dx,al
00001D29  AB                stosw
00001D2A  FF2C              jmp word far [si]
00001D2C  830000            add word [bx+si],0x0
00001D2F  53                push bx
00001D30  CC                int3
00001D31  F0                lock
00001D32  CE                into
00001D33  EAEA28A000        jmp word 0xa0:word 0x28ea
00001D38  3F                aas
00001D39  2A0C              sub cl,[si]
00001D3B  C3                ret
00001D3C  33FC              xor di,sp
00001D3E  FF                db 0xff
00001D3F  FF                db 0xff
00001D40  FA                cli
00001D41  BBFAEA            mov bx,0xeafa
00001D44  55                push bp
00001D45  3F                aas
00001D46  FF03              inc word [bp+di]
00001D48  FE                db 0xfe
00001D49  A80A              test al,0xa
00001D4B  BAA880            mov dx,0x80a8
00001D4E  AA                stosb
00001D4F  802AA8            sub byte [bp+si],0xa8
00001D52  0F028C033C        lar cx,[si+0x3c03]
00001D57  3F                aas
00001D58  FF                db 0xff
00001D59  3A3F              cmp bh,[bx]
00001D5B  FF                db 0xff
00001D5C  BC33C3            mov sp,0xc333
00001D5F  FF                db 0xff
00001D60  EE                out dx,al
00001D61  EBFF              jmp 0x1d62
00001D63  CAE0D5            retf word 0xd5e0
00001D66  95                xchg ax,bp
00001D67  17                pop ss
00001D68  70F3              jo 0x1d5d
00001D6A  CE                into
00001D6B  EAAA28A80C        jmp word 0xca8:word 0x28aa
00001D70  CF                iret
00001D71  EA33CFCFF0        jmp word 0xf0cf:word 0xcf33
00001D76  FF                db 0xff
00001D77  FF                db 0xff
00001D78  FA                cli
00001D79  FB                sti
00001D7A  FB                sti
00001D7B  A9557F            test ax,0x7f55
00001D7E  FC                cld
00001D7F  0FFAA00AAA        psubd mm4,[bx+si-0x55f6]
00001D84  EA2202AA8A        jmp word 0x8aaa:word 0x222
00001D89  A00328            mov al,[0x2803]
00001D8C  3CCF              cmp al,0xcf
00001D8E  3CFF              cmp al,0xff
00001D90  FF                db 0xff
00001D91  3A3F              cmp bh,[bx]
00001D93  FFB33333          push word [bp+di+0x3333]
00001D97  FF                db 0xff
00001D98  EE                out dx,al
00001D99  EBAF              jmp 0x1d4a
00001D9B  F0                lock
00001D9C  B8035F            mov ax,0x5f03
00001D9F  17                pop ss
00001DA0  73C3              jnc 0x1d65
00001DA2  FE                db 0xfe
00001DA3  AA                stosb
00001DA4  A8A0              test al,0xa0
00001DA6  A8C0              test al,0xc0
00001DA8  FFA830FC          jmp word far [bx+si-0x3d0]
00001DAC  3F                aas
00001DAD  30FF              xor bh,bh
00001DAF  FF                db 0xff
00001DB0  FB                sti
00001DB1  FA                cli
00001DB2  FB                sti
00001DB3  A9057F            test ax,0x7f05
00001DB6  FC                cld
00001DB7  0FFAA0F2AB        psubd mm4,[bx+si-0x540e]
00001DBC  EAA8200A2A        jmp word 0x2a0a:word 0x20a8
00001DC1  800FA0            or byte [bx],0xa0
00001DC4  F303F3            rep add si,bx
00001DC7  FF                db 0xff
00001DC8  FF                db 0xff
00001DC9  3E3F              ds aas
00001DCB  FF                db 0xff
00001DCC  EC                in al,dx
00001DCD  0F                db 0x0f
00001DCE  0FFFEE            ud0 bp,si
00001DD1  EBAA              jmp 0x1d7d
00001DD3  BF0A20            mov di,0x200a
00001DD6  04DF              add al,0xdf
00001DD8  33C7              xor ax,di
00001DDA  CE                into
00001DDB  AA                stosb
00001DDC  E8A28A            call 0xa881
00001DDF  333E8BC0          xor di,[0xc08b]
00001DE3  F0                lock
00001DE4  FC                cld
00001DE5  00FF              add bh,bh
00001DE7  FF                db 0xff
00001DE8  FB                sti
00001DE9  EAFBA510FF        jmp word 0xff10:word 0xa5fb
00001DEE  FF                db 0xff
00001DEF  3F                aas
00001DF0  FE80F8AA          inc byte [bx+si-0x5508]
00001DF4  FA                cli
00001DF5  0A00              or al,[bx+si]
00001DF7  202A              and [bp+si],ch
00001DF9  8032E3            xor byte [bp+si],0xe3
00001DFC  E0CF              loopne 0x1dcd
00001DFE  F3                rep
00001DFF  FF                db 0xff
00001E00  FF                db 0xff
00001E01  3B3F              cmp di,[bx]
00001E03  FF                db 0xff
00001E04  BC0F33            mov sp,0x330f
00001E07  FF                db 0xff
00001E08  EE                out dx,al
00001E09  EB2E              jmp 0x1e39
00001E0B  AA                stosb
00001E0C  E02C              loopne 0x1e3a
00001E0E  0B7CC3            or di,[si-0x3d]
00001E11  C7C2AAB8          mov dx,0xb8aa
00001E15  020B              add cl,[bp+di]
00001E17  CF                iret
00001E18  C22F33            ret word 0x332f
00001E1B  CF                iret
00001E1C  F303FF            rep add di,di
00001E1F  FF                db 0xff
00001E20  EF                out dx,ax
00001E21  AF                scasw
00001E22  FA                cli
00001E23  A4                movsb
00001E24  00FF              add bh,bh
00001E26  C0FC0A            sar ah,byte 0xa
00001E29  0338              add di,[bx+si]
00001E2B  AA                stosb
00001E2C  AA                stosb
00001E2D  A28080            mov [0x8080],al
00001E30  AA                stosb
00001E31  000F              add [bx],cl
00001E33  A3F33F            mov [0x3ff3],ax
00001E36  33FF              xor di,di
00001E38  FF                db 0xff
00001E39  3A3F              cmp bh,[bx]
00001E3B  FE                db 0xfe
00001E3C  EF                out dx,ax
00001E3D  0FF3FF            psllq mm7,mm7
00001E40  FA                cli
00001E41  AA                stosb
00001E42  8AAABA80          mov ch,[bp+si-0x7f46]
00001E46  A804              test al,0x4
00001E48  CF                iret
00001E49  CF                iret
00001E4A  C2ABA0            ret word 0xa0ab
00001E4D  2A0F              sub cl,[bx]
00001E4F  FC                cld
00001E50  AA                stosb
00001E51  2CF3              sub al,0xf3
00001E53  CF                iret
00001E54  CC                int3
00001E55  03FF              add di,di
00001E57  FF                db 0xff
00001E58  EE                out dx,al
00001E59  EBEA              jmp 0x1e45
00001E5B  A4                movsb
00001E5C  10FF              adc bh,bh
00001E5E  3303              xor ax,[bp+di]
00001E60  300F              xor [bx],cl
00001E62  2A28              sub ch,[bx+si]
00001E64  FA                cli
00001E65  A82A              test al,0x2a
00001E67  8AAA00FE          mov ch,[bp+si-0x200]
00001E6B  83E83F            sub ax,0x3f
00001E6E  F3                rep
00001E6F  FF                db 0xff
00001E70  FF                db 0xff
00001E71  3A3F              cmp bh,[bx]
00001E73  FFA33F0F          jmp word near [bp+di+0xf3f]
00001E77  FF                db 0xff
00001E78  FA                cli
00001E79  EB80              jmp 0x1dfb
00001E7B  AA                stosb
00001E7C  AB                stosw
00001E7D  FB                sti
00001E7E  0A533F            or dl,[bp+di+0x3f]
00001E81  1F                pop ds
00001E82  C0AA82803F        shr byte [bp+si-0x7f7e],byte 0x3f
00001E87  3A02              cmp al,[bp+si]
00001E89  AC                lodsb
00001E8A  3F                aas
00001E8B  3F                aas
00001E8C  CC                int3
00001E8D  3F                aas
00001E8E  FF                db 0xff
00001E8F  FFAFAAEA          jmp word far [bx-0x1556]
00001E93  94                xchg ax,sp
00001E94  43                inc bx
00001E95  FFC0              inc ax
00001E97  F0                lock
00001E98  C03CFA            sar byte [si],byte 0xfa
00001E9B  23FF              and di,di
00001E9D  AA                stosb
00001E9E  800A82            or byte [bp+si],0x82
00001EA1  803B8F            cmp byte [bp+di],0x8f
00001EA4  A33FCF            mov [0xcf3f],ax
00001EA7  FF                db 0xff
00001EA8  FF                db 0xff
00001EA9  3A3F              cmp bh,[bx]
00001EAB  FE                db 0xfe
00001EAC  E0CF              loopne 0x1e7d
00001EAE  0FFFEE            ud0 bp,si
00001EB1  EAA02AAAAE        jmp word 0xaeaa:word 0x2aa0
00001EB6  F5                cmc
00001EB7  0FFC5FCC          paddb mm3,[bx-0x34]
00001EBB  BFAA80            mov di,0x80aa
00001EBE  FC                cld
00001EBF  F8                clc
00001EC0  2B30              sub si,[bx+si]
00001EC2  FF                db 0xff
00001EC3  FF30              push word [bx+si]
00001EC5  3F                aas
00001EC6  FF                db 0xff
00001EC7  FF                db 0xff
00001EC8  EE                out dx,al
00001EC9  AE                scasb
00001ECA  EE                out dx,al
00001ECB  90                nop
00001ECC  43                inc bx
00001ECD  FC                cld
00001ECE  0F33              rdpmc
00001ED0  3F                aas
00001ED1  C3                ret
00001ED2  A2CFFF            mov [0xffcf],al
00001ED5  FE                db 0xfe
00001ED6  AA                stosb
00001ED7  0A2A              or ch,[bp+si]
00001ED9  00CE              add dh,cl
00001EDB  32E0              xor ah,al
00001EDD  FFCF              dec di
00001EDF  FF                db 0xff
00001EE0  FF2E3FFE          jmp word far [0xfe3f]
00001EE4  A03F0F            mov al,[0xf3f]
00001EE7  FF                db 0xff
00001EE8  EE                out dx,al
00001EE9  AB                stosw
00001EEA  AA                stosb
00001EEB  02AAAAA4          add ch,[bp+si-0x5b56]
00001EEF  10F9              adc cl,bh
00001EF1  BF3EBA            mov di,0xba3e
00001EF4  003F              add [bx],bh
00001EF6  EE                out dx,al
00001EF7  016023            add [bx+si+0x23],sp
00001EFA  FF                db 0xff
00001EFB  FFF2              push dx
00001EFD  FE                db 0xfe
00001EFE  EF                out dx,ax
00001EFF  FE                db 0xfe
00001F00  AE                scasb
00001F01  BBEE88            mov bx,0x88ee
00001F04  33B82208          xor di,[bx+si+0x822]
00001F08  8A0B              mov cl,[bp+di]
00001F0A  A28BEE            mov [0xee8b],al
00001F0D  FE                db 0xfe
00001F0E  EA8A2A08FE        jmp word 0xfe08:word 0x2a8a
00001F13  3F                aas
00001F14  88EE              mov dh,ch
00001F16  BFFFFF            mov di,0xffff
00001F19  2A8FFEEB          sub cl,[bx-0x1402]
00001F1D  3B0F              cmp cx,[bx]
00001F1F  EE                out dx,al
00001F20  FA                cli
00001F21  EBA8              jmp 0x1ecb
00001F23  A002AA            mov al,[0xaa02]
00001F26  91                xchg ax,cx
00001F27  07                pop es
00001F28  E27B              loop 0x1fa5
00001F2A  3AAE00BF          cmp ch,[bp-0x4100]
00001F2E  E88163            call 0x82b2
00001F31  CB                retf
00001F32  FC                cld
00001F33  FFC3              inc bx
00001F35  BABFFB            mov dx,0xfbbf
00001F38  AA                stosb
00001F39  AB                stosw
00001F3A  BA803E            mov dx,0x3e80
00001F3D  E280              loop 0x1ebf
00001F3F  A23A23            mov [0x233a],al
00001F42  A8A3              test al,0xa3
00001F44  BBFBAA            mov bx,0xaafb
00001F47  AA                stosb
00001F48  A802              test al,0x2
00001F4A  CF                iret
00001F4B  BE83FB            mov si,0xfb83
00001F4E  BEFBFF            mov si,0xfffb
00001F51  3B8FFAE3          cmp cx,[bx-0x1c06]
00001F55  3A2F              cmp ch,[bx]
00001F57  BAFEAA            mov dx,0xaafe
00001F5A  AA                stosb
00001F5B  0800              or [bx+si],al
00001F5D  02505F            add dl,[bx+si+0x5f]
00001F60  A1FE3E            mov ax,[0x3efe]
00001F63  BA33EE            mov dx,0xee33
00001F66  A00988            mov al,[0x8809]
00001F69  CC                int3
00001F6A  E8FF8E            call 0xae6c
00001F6D  FA                cli
00001F6E  BFFBAE            mov di,0xaefb
00001F71  BBEE83            mov bx,0x83ee
00001F74  3BA28200          cmp sp,[bp+si+0x82]
00001F78  E80EA8            call 0xc789
00001F7B  BABEBE            mov dx,0xbebe
00001F7E  FFAAA800          jmp word far [bp+si+0xa8]
00001F82  FB                sti
00001F83  3BAEEEBB          cmp bp,[bp-0x4412]
00001F87  BFFF2E            mov di,0x2eff
00001F8A  8F                db 0x8f
00001F8B  BB8CEE            mov bx,0xee8c
00001F8E  8F                db 0x8f
00001F8F  BAFAEA            mov dx,0xeafa
00001F92  AA                stosb
00001F93  A00AA5            mov al,[0xa50a]
00001F96  01FB              add bx,di
00001F98  97                xchg ax,di
00001F99  EABAB80CFA        jmp word 0xfa0c:word 0xb8ba
00001F9E  A02683            mov al,[0x8326]
00001FA1  88EA              mov dl,ch
00001FA3  FE03              inc byte [bp+di]
00001FA5  AA                stosb
00001FA6  BFAEBA            mov di,0xbaae
00001FA9  AB                stosw
00001FAA  EE                out dx,al
00001FAB  08EB              or bl,ch
00001FAD  A28A03            mov [0x38a],al
00001FB0  F8                clc
00001FB1  02A22FBB          add ah,[bp+si-0x44d1]
00001FB5  FA                cli
00001FB6  BFFBA8            mov di,0xa8fb
00001FB9  22FA              and bh,dl
00001FBB  FE8FFABF          dec byte [bx-0x4006]
00001FBF  BEFF3F            mov si,0x3fff
00001FC2  8F                db 0x8f
00001FC3  BB83FE            mov bx,0xfe83
00001FC6  0BBAEABE          or di,[bp+si-0x4116]
00001FCA  AA                stosb
00001FCB  AA                stosb
00001FCC  A0101F            mov al,[0x1f10]
00001FCF  EA5FA8EAA8        jmp word 0xa8ea:word 0xa85f
00001FD4  3BAA8326          cmp bp,[bp+si+0x2683]
00001FD8  8382EAFE8E        add word [bp+si-0x116],0xffffffffffffff8e
00001FDD  AE                scasb
00001FDE  BFAEAA            mov di,0xaaae
00001FE1  AE                scasb
00001FE2  FA                cli
00001FE3  233E8A88          and di,[0x888a]
00001FE7  0FB88CA8          jmpe 0xc877
00001FEB  8BAAABEE          mov bp,[bp+si-0x1155]
00001FEF  BE8080            mov si,0x8080
00001FF2  BBEEAE            mov bx,0xaeee
00001FF5  EAEBAEEF2E        jmp word 0x2eef:word 0xaeeb
00001FFA  CE                into
00001FFB  EA83FE0EBA        jmp word 0xba0e:word 0xfe83
00002000  AB                stosw
00002001  EE                out dx,al
00002002  AA                stosb
00002003  AA                stosb
00002004  AA                stosb
00002005  41                inc cx
00002006  EF                out dx,ax
00002007  A9BAAA            test ax,0xaaba
0000200A  EAA80EAA80        jmp word 0x80aa:word 0xea8
0000200F  E62E              out byte 0x2e,al
00002011  83E2EE            and dx,0xffffffffffffffee
00002014  2EAA              cs stosb
00002016  FB                sti
00002017  BABAAF            mov dx,0xafba
0000201A  BA08FA            mov dx,0xfa08
0000201D  2AA82AE8          sub ch,[bx+si-0x17d6]
00002021  0AA8A0BE          or ch,[bx+si-0x4160]
00002025  AA                stosb
00002026  AA                stosb
00002027  A22020            mov [0x2020],al
0000202A  EE                out dx,al
0000202B  3E                ds
0000202C  8F                db 0x8f
0000202D  AF                scasw
0000202E  AB                stosw
0000202F  BAFA2B            mov dx,0x2bfa
00002032  CE                into
00002033  EA8EEE3EAA        jmp word 0xaa3e:word 0xee8e
00002038  EAEFAAAAAA        jmp word 0xaaaa:word 0xaaef
0000203D  1F                pop ds
0000203E  BAA6AA            mov dx,0xaaa6
00002041  A7                cmpsw
00002042  AA                stosb
00002043  A88B              test al,0x8b
00002045  AA                stosb
00002046  03BA8E23          add di,[bp+si+0x238e]
0000204A  AA                stosb
0000204B  BA3ABA            mov dx,0xba3a
0000204E  EE                out dx,al
0000204F  AA                stosb
00002050  EE                out dx,al
00002051  AA                stosb
00002052  BA08EA            mov dx,0xea08
00002055  8A8A0AE8          mov cl,[bp+si-0x17f6]
00002059  0E                push cs
0000205A  A82A              test al,0x2a
0000205C  200F              and [bx],cl
0000205E  BA0000            mov dx,0x0
00002061  8BA8FABB          mov bp,[bx+si-0x4406]
00002065  BAAEAA            mov dx,0xaaae
00002068  E8AB8F            call 0xb016
0000206B  EA32FA3BBA        jmp word 0xba3b:word 0xfa32
00002070  AF                scasw
00002071  BAAAAA            mov dx,0xaaaa
00002074  A97FEA            test ax,0xea7f
00002077  06                push es
00002078  AA                stosb
00002079  04A3              add al,0xa3
0000207B  3EA833            ds test al,0x33
0000207E  EA3E0FABE8        jmp word 0xe8ab:word 0xf3e
00002083  EAEBEEABFA        jmp word 0xfaab:word 0xeeeb
00002088  AE                scasb
00002089  E882BA            call 0xdb0e
0000208C  2AA80AA0          sub ch,[bx+si-0x5ff6]
00002090  0AAA0AAA          or ch,[bp+si-0x55f6]
00002094  2AA000A0          sub ah,[bx+si-0x6000]
00002098  3EA3EAAE          mov [ds:0xaeea],ax
0000209C  EAAAABB8AE        jmp word 0xaeb8:word 0xabaa
000020A1  CF                iret
000020A2  EA0EEEBEBA        jmp word 0xbabe:word 0xee0e
000020A7  AB                stosw
000020A8  BAAAAA            mov dx,0xaaaa
000020AB  85FB              test bx,di
000020AD  AA                stosb
000020AE  EAAABAAA03        jmp word 0x3aa:word 0xbaaa
000020B3  EAA80EAA3A        jmp word 0x3aaa:word 0xea8
000020B8  3BAEA0FA          cmp bp,[bp-0x560]
000020BC  EAAAABEABA        jmp word 0xbaea:word 0xabaa
000020C1  A823              test al,0x23
000020C3  EA2AA20EA8        jmp word 0xa80e:word 0xa22a
000020C8  0E                push cs
000020C9  AA                stosb
000020CA  A2A080            mov [0x80a0],al
000020CD  0020              add [bx+si],ah
000020CF  AF                scasw
000020D0  EAA3AABAEA        jmp word 0xeaba:word 0xaaa3
000020D5  AA                stosb
000020D6  AA                stosb
000020D7  AA                stosb
000020D8  AB                stosw
000020D9  8EAE0EFA          mov gs,word [bp-0x5f2]
000020DD  FA                cli
000020DE  AA                stosb
000020DF  AE                scasb
000020E0  EAAAA97EFE        jmp word 0xfe7e:word 0xa9aa
000020E5  AF                scasw
000020E6  AA                stosb
000020E7  AA                stosb
000020E8  BAA83E            mov dx,0x3ea8
000020EB  AE                scasb
000020EC  A03EAA            mov al,[0xaa3e]
000020EF  EAEBAEA0EA        jmp word 0xeaa0:word 0xaeeb
000020F4  AB                stosw
000020F5  AA                stosb
000020F6  AB                stosw
000020F7  AA                stosb
000020F8  BAE22E            mov dx,0x2ee2
000020FB  B8AAA8            mov ax,0xa8aa
000020FE  AE                scasb
000020FF  A23AAA            mov [0xaa3a],al
00002102  AA                stosb
00002103  0800              or [bx+si],al
00002105  208FBAAA          and [bx-0x5546],cl
00002109  8AAABBAA          mov ch,[bp+si-0x5545]
0000210D  AA                stosb
0000210E  AA                stosb
0000210F  A2AB2F            mov [0x2fab],al
00002112  AE                scasb
00002113  0BAAEAEA          or bp,[bp+si-0x1516]
00002117  AE                scasb
00002118  EAAAA7EBAA        jmp word 0xaaeb:word 0xa7aa
0000211D  BAAAAA            mov dx,0xaaaa
00002120  BAA83A            mov dx,0x3aa8
00002123  BA80FA            mov dx,0xfa80
00002126  A8AA              test al,0xaa
00002128  EAAE83FAAA        jmp word 0xaafa:word 0x83ae
0000212D  AA                stosb
0000212E  AE                scasb
0000212F  AA                stosb
00002130  EBA0              jmp 0x20d2
00002132  AE                scasb
00002133  E8AAA2            call 0xc3e0
00002136  2AA03AAA          sub ah,[bx+si-0x55c6]
0000213A  A02000            mov al,[0x20]
0000213D  8F                db 0x8f
0000213E  AA                stosb
0000213F  AA                stosb
00002140  AA                stosb
00002141  AF                scasw
00002142  AA                stosb
00002143  BBAAAA            mov bx,0xaaaa
00002146  BAAAAB            mov dx,0xabaa
00002149  3BAE3FBA          cmp bp,[bp-0x45c1]
0000214D  BAEABA            mov dx,0xbaea
00002150  EAAA7EAAAA        jmp word 0xaaaa:word 0x7eaa
00002155  BAAAEA            mov dx,0xeaaa
00002158  EAAAEBEA8F        jmp word 0x8fea:word 0xebaa
0000215D  BAAAAA            mov dx,0xaaaa
00002160  AB                stosw
00002161  EE                out dx,al
00002162  8CEA              mov dx,gs
00002164  AE                scasb
00002165  06                push es
00002166  AA                stosb
00002167  04A0              add al,0xa0
00002169  AF                scasw
0000216A  AA                stosb
0000216B  AA                stosb
0000216C  A82A              test al,0x2a
0000216E  A2AAAA            mov [0xaaaa],al
00002171  22A333EA          and ah,[bp+di-0x15cd]
00002175  AA                stosb
00002176  AA                stosb
00002177  A8BA              test al,0xba
00002179  AA                stosb
0000217A  BBAAAA            mov bx,0xaaaa
0000217D  FA                cli
0000217E  A2AEFB            mov [0xfbae],al
00002181  AA                stosb
00002182  0FEAEA            pminsw mm5,mm2
00002185  EF                out dx,ax
00002186  EAEAAAEEAA        jmp word 0xaaee:word 0xaaea
0000218B  AA                stosb
0000218C  EAABAAEAA8        jmp word 0xa8ea:word 0xaaab
00002191  BEAA3E            mov si,0x3eaa
00002194  EAAAAAEBEA        jmp word 0xeaeb:word 0xaaaa
00002199  A306AA            mov [0xaa06],ax
0000219C  05EB82            add ax,0x82eb
0000219F  BB06AA            mov bx,0xaa06
000021A2  048B              add al,0x8b
000021A4  AA                stosb
000021A5  AA                stosb
000021A6  AA                stosb
000021A7  A0CA06            mov al,[0x6ca]
000021AA  AA                stosb
000021AB  04EA              add al,0xea
000021AD  AA                stosb
000021AE  AE                scasb
000021AF  AA                stosb
000021B0  AB                stosw
000021B1  BAAAA8            mov dx,0xa8aa
000021B4  FA                cli
000021B5  A88B              test al,0x8b
000021B7  AA                stosb
000021B8  EABAABBAA7        jmp word 0xa7ba:word 0xabba
000021BD  06                push es
000021BE  AA                stosb
000021BF  04A7              add al,0xa7
000021C1  AB                stosw
000021C2  AA                stosb
000021C3  AB                stosw
000021C4  EE                out dx,al
000021C5  AA                stosb
000021C6  3AAAAAAB          cmp ch,[bp+si-0x5456]
000021CA  AB                stosw
000021CB  AE                scasb
000021CC  8EEA              mov gs,dx
000021CE  BAAAAA            mov dx,0xaaaa
000021D1  AB                stosw
000021D2  AA                stosb
000021D3  80BE06AA04        cmp byte [bp-0x55fa],0x4
000021D8  A3AAAA            mov [0xaaaa],ax
000021DB  AA                stosb
000021DC  8F06AA04          pop word [0x4aa]
000021E0  BAAAAA            mov dx,0xaaaa
000021E3  AE                scasb
000021E4  AA                stosb
000021E5  AE                scasb
000021E6  EAA2A8EAE8        jmp word 0xe8ea:word 0xa8a2
000021EB  2BEA              sub bp,dx
000021ED  EBAA              jmp 0x2199
000021EF  AB                stosw
000021F0  AA                stosb
000021F1  BA06AA            mov dx,0xaa06
000021F4  049F              add al,0x9f
000021F6  AA                stosb
000021F7  AA                stosb
000021F8  AB                stosw
000021F9  BAA8EE            mov dx,0xeea8
000021FC  AA                stosb
000021FD  AA                stosb
000021FE  AA                stosb
000021FF  AF                scasw
00002200  AA                stosb
00002201  8F                db 0x8f
00002202  AA                stosb
00002203  BAAAAA            mov dx,0xaaaa
00002206  AB                stosw
00002207  AE                scasb
00002208  88BAAAAA          mov [bp+si-0x5556],bh
0000220C  A2AAAB            mov [0xabaa],al
0000220F  AA                stosb
00002210  AA                stosb
00002211  AA                stosb
00002212  AE                scasb
00002213  EA06AA08FF        jmp word 0xff08:word 0xaa06
00002218  AA                stosb
00002219  8AA2EBA8          mov ah,[bp+si-0x5715]
0000221D  2BAAEAAA          sub bp,[bp+si-0x5516]
00002221  AE                scasb
00002222  EAEAAAAAAA        jmp word 0xaaaa:word 0xaaea
00002227  A5                movsw
00002228  7EAA              jng 0x21d4
0000222A  AA                stosb
0000222B  AB                stosw
0000222C  BAA8EA            mov dx,0xeaa8
0000222F  AA                stosb
00002230  AA                stosb
00002231  AA                stosb
00002232  BEAAAF            mov si,0xafaa
00002235  AA                stosb
00002236  EAAAAAAAAE        jmp word 0xaeaa:word 0xaaaa
0000223B  22BA06AA          and bh,[bp+si-0x55fa]
0000223F  088F06AA          or [bx-0x55fa],cl
00002243  08ABFAAA          or [bp+di-0x5506],ch
00002247  AA                stosb
00002248  AB                stosw
00002249  AB                stosw
0000224A  A82B              test al,0x2b
0000224C  AA                stosb
0000224D  AA                stosb
0000224E  AA                stosb
0000224F  FF06AA05          inc word [0x5aa]
00002253  9F                lahf
00002254  EAAAAAABAA        jmp word 0xaaab:word 0xaaaa
00002259  A8AA              test al,0xaa
0000225B  AA                stosb
0000225C  AA                stosb
0000225D  AB                stosw
0000225E  EA06AA07BA        jmp word 0xba07:word 0xaa06
00002263  0AEA              or ch,dl
00002265  06                push es
00002266  AA                stosb
00002267  07                pop es
00002268  A83A              test al,0x3a
0000226A  06                push es
0000226B  AA                stosb
0000226C  0C0A              or al,0xa
0000226E  AE                scasb
0000226F  AA                stosb
00002270  AE                scasb
00002271  AA                stosb
00002272  EAABBA06AA        jmp word 0xaa06:word 0xbaab
00002277  057AAA            add ax,0xaa7a
0000227A  AA                stosb
0000227B  AA                stosb
0000227C  AE                scasb
0000227D  06                push es
0000227E  AA                stosb
0000227F  08AE06AA          or [bp-0x55fa],ch
00002283  05BA8A            add ax,0x8aba
00002286  06                push es
00002287  AA                stosb
00002288  0882EE06          or [bp+si+0x6ee],al
0000228C  AA                stosb
0000228D  0DAEA8            or ax,0xa8ae
00002290  AA                stosb
00002291  AA                stosb
00002292  AA                stosb
00002293  AE                scasb
00002294  06                push es
00002295  AA                stosb
00002296  1A2A              sbb ch,[bp+si]
00002298  06                push es
00002299  AA                stosb
0000229A  07                pop es
0000229B  A806              test al,0x6
0000229D  AA                stosb
0000229E  14AE              adc al,0xae
000022A0  AA                stosb
000022A1  AA                stosb
000022A2  7D17              jnl 0x22bb
000022A4  DD4755            fld qword [bx+0x55]
000022A7  35547D            xor ax,0x7d54
000022AA  1F                pop ds
000022AB  45                inc bp
000022AC  F5                cmc
000022AD  F4                hlt
000022AE  7D51              jnl 0x2301
000022B0  DF                db 0xdf
000022B1  D554              aad byte 0x54
000022B3  1D5453            sbb ax,0x5354
000022B6  CF                iret
000022B7  4F                dec di
000022B8  74F7              jz 0x22b1
000022BA  37                aaa
000022BB  DF4F4F            fisttp word [bx+0x4f]
000022BE  7D17              jnl 0x22d7
000022C0  DD4755            fld qword [bx+0x55]
000022C3  35547D            xor ax,0x7d54
000022C6  1F                pop ds
000022C7  45                inc bp
000022C8  F5                cmc
000022C9  F4                hlt
000022CA  7D51              jnl 0x231d
000022CC  DF                db 0xdf
000022CD  D554              aad byte 0x54
000022CF  1D5453            sbb ax,0x5354
000022D2  CF                iret
000022D3  4F                dec di
000022D4  74F7              jz 0x22cd
000022D6  37                aaa
000022D7  DF4F4F            fisttp word [bx+0x4f]
000022DA  154D55            adc ax,0x554d
000022DD  1D5543            sbb ax,0x4355
000022E0  41                inc cx
000022E1  D545              aad byte 0x45
000022E3  44                inc sp
000022E4  0151D5            add [bx+di-0x2b],dx
000022E7  D1D5              rcl bp,0x0
000022E9  40                inc ax
000022EA  01F5              add bp,si
000022EC  55                push bp
000022ED  0D454D            or ax,0x4d45
000022F0  53                push bx
000022F1  55                push bp
000022F2  355535            xor ax,0x3555
000022F5  3415              xor al,0x15
000022F7  4D                dec bp
000022F8  55                push bp
000022F9  1D5543            sbb ax,0x4355
000022FC  41                inc cx
000022FD  D545              aad byte 0x45
000022FF  44                inc sp
00002300  0151D5            add [bx+di-0x2b],dx
00002303  D1D5              rcl bp,0x0
00002305  40                inc ax
00002306  01F5              add bp,si
00002308  55                push bp
00002309  0D454D            or ax,0x4d45
0000230C  53                push bx
0000230D  55                push bp
0000230E  355535            xor ax,0x3555
00002311  3405              xor al,0x5
00002313  4D                dec bp
00002314  54                push sp
00002315  0005              add [di],al
00002317  54                push sp
00002318  1C55              sbb al,0x55
0000231A  45                inc bp
0000231B  6301              arpl [bx+di],ax
0000231D  54                push sp
0000231E  55                push bp
0000231F  3DF455            cmp ax,0x55f4
00002322  55                push bp
00002323  35014D            xor ax,0x4d01
00002326  51                push cx
00002327  55                push bp
00002328  4D                dec bp
00002329  40                inc ax
0000232A  051085            add ax,0x8510
0000232D  4D                dec bp
0000232E  54                push sp
0000232F  0005              add [di],al
00002331  54                push sp
00002332  1C55              sbb al,0x55
00002334  45                inc bp
00002335  01F4              add sp,si
00002337  0001              add [bx+di],al
00002339  54                push sp
0000233A  55                push bp
0000233B  3DF455            cmp ax,0x55f4
0000233E  55                push bp
0000233F  35114D            xor ax,0x4d11
00002342  51                push cx
00002343  55                push bp
00002344  4D                dec bp
00002345  40                inc ax
00002346  051165            add ax,0x6511
00002349  053515            add ax,0x1535
0000234C  6701545540        add [ebp+edx*2+0x40],dx
00002351  50                push ax
00002352  0035              add [di],dh
00002354  54                push sp
00002355  D550              aad byte 0x50
00002357  63E0              arpl ax,sp
00002359  62                db 0x62
0000235A  FFA00535          jmp word near [bx+si+0x3505]
0000235E  1500BE            adc ax,0xbe00
00002361  EBEF              jmp 0x2352
00002363  B86201            mov ax,0x162
00002366  54                push sp
00002367  55                push bp
00002368  40                inc ax
00002369  50                push ax
0000236A  E83554            call 0x77a2
0000236D  D550              aad byte 0x50
0000236F  3F                aas
00002370  A00366            mov al,[0x6603]
00002373  7514              jnz 0x2389
00002375  69053D63          imul ax,[di],0x633d
00002379  54                push sp
0000237A  50                push ax
0000237B  6457              fs push di
0000237D  7D7F              jnl 0x23fe
0000237F  D55D              aad byte 0x5d
00002381  F0                lock
00002382  7514              jnz 0x2398
00002384  1F                pop ds
00002385  55                push bp
00002386  D5D5              aad byte 0xd5
00002388  55                push bp
00002389  F5                cmc
0000238A  FD                std
0000238B  FC                cld
0000238C  0005              add [di],al
0000238E  3D075D            cmp ax,0x5d07
00002391  40                inc ax
00002392  54                push sp
00002393  50                push ax
00002394  07                pop es
00002395  F5                cmc
00002396  D5FD              aad byte 0xfd
00002398  661540686CAE      adc eax,0xae6c6840
0000239E  AA                stosb
0000239F  AB                stosw
000023A0  AA                stosb
000023A1  AA                stosb
000023A2  AE                scasb
000023A3  1543BA            adc ax,0xba43
000023A6  BAABAA            mov dx,0xaaab
000023A9  EABAAAABFE        jmp word 0xfeab:word 0xaaba
000023AE  E000              loopne 0x23b0
000023B0  FA                cli
000023B1  EE                out dx,al
000023B2  AA                stosb
000023B3  000F              add [bx],cl
000023B5  BAEAEB            mov dx,0xebea
000023B8  AA                stosb
000023B9  6E                outsb
000023BA  6E                outsb
000023BB  55                push bp
000023BC  55                push bp
000023BD  57                push di
000023BE  55                push bp
000023BF  55                push bp
000023C0  55                push bp
000023C1  40                inc ax
000023C2  1D7555            sbb ax,0x5575
000023C5  55                push bp
000023C6  55                push bp
000023C7  55                push bp
000023C8  7555              jnz 0x241f
000023CA  D5DD              aad byte 0xdd
000023CC  5D                pop bp
000023CD  FD                std
000023CE  55                push bp
000023CF  DD5575            fst qword [di+0x75]
000023D2  5D                pop bp
000023D3  75D5              jnz 0x23aa
000023D5  57                push di
000023D6  55                push bp
000023D7  6E                outsb
000023D8  6E                outsb
000023D9  AE                scasb
000023DA  AA                stosb
000023DB  AA                stosb
000023DC  AA                stosb
000023DD  AA                stosb
000023DE  AA                stosb
000023DF  AA                stosb
000023E0  AA                stosb
000023E1  AA                stosb
000023E2  AA                stosb
000023E3  AA                stosb
000023E4  AA                stosb
000023E5  AA                stosb
000023E6  AA                stosb
000023E7  AA                stosb
000023E8  AB                stosw
000023E9  AA                stosb
000023EA  AA                stosb
000023EB  EAABAAAAAA        jmp word 0xaaaa:word 0xaaab
000023F0  AA                stosb
000023F1  AA                stosb
000023F2  AA                stosb
000023F3  AA                stosb
000023F4  AA                stosb
000023F5  690C6F63          imul cx,[si],0x636f
000023F9  55                push bp
000023FA  55                push bp
000023FB  55                push bp
000023FC  55                push bp
000023FD  55                push bp
000023FE  55                push bp
000023FF  55                push bp
00002400  55                push bp
00002401  55                push bp
00002402  5D                pop bp
00002403  45                inc bp
00002404  55                push bp
00002405  55                push bp
00002406  5D                pop bp
00002407  7555              jnz 0x245e
00002409  55                push bp
0000240A  55                push bp
0000240B  55                push bp
0000240C  55                push bp
0000240D  55                push bp
0000240E  55                push bp
0000240F  55                push bp
00002410  55                push bp
00002411  55                push bp
00002412  55                push bp
00002413  55                push bp
00002414  55                push bp
00002415  6930640F          imul si,[bx+si],0xf64
00002419  000C              add [si],cl
0000241B  65C065AEAA        shl byte [gs:di-0x52],byte 0xaa
00002420  BABAAA            mov dx,0xaaba
00002423  AA                stosb
00002424  AA                stosb
00002425  BABA80            mov dx,0x80ba
00002428  2BAAAEAA          sub bp,[bp+si-0x5552]
0000242C  AF                scasw
0000242D  AA                stosb
0000242E  AE                scasb
0000242F  AA                stosb
00002430  AA                stosb
00002431  AB                stosw
00002432  AA                stosb
00002433  AA                stosb
00002434  EBAA              jmp 0x23e0
00002436  EAEAAAAA69        jmp word 0x69aa:word 0xaaea
0000243B  C0620CC0          shl byte [bp+si+0xc],byte 0xc0
0000243F  F000FC            lock add ah,bh
00002442  30630F            xor [bp+di+0xf],ah
00002445  6655              push ebp
00002447  55                push bp
00002448  D555              aad byte 0x55
0000244A  57                push di
0000244B  55                push bp
0000244C  D575              aad byte 0x75
0000244E  55                push bp
0000244F  055755            add ax,0x5557
00002452  5D                pop bp
00002453  D5F0              aad byte 0xf0
00002455  75CD              jnz 0x2424
00002457  7575              jnz 0x24ce
00002459  57                push di
0000245A  55                push bp
0000245B  5F                pop di
0000245C  1D5555            sbb ax,0x5555
0000245F  55                push bp
00002460  755D              jnz 0x24bf
00002462  6310              arpl [bx+si],dx
00002464  640330            add si,[fs:bx+si]
00002467  F0                lock
00002468  03CF              add cx,di
0000246A  03CC              add cx,sp
0000246C  0FF3630F          psllq mm4,[bp+di+0xf]
00002470  50                push ax
00002471  0030              add [bx+si],dh
00002473  6203              bound ax,[bp+di]
00002475  00AAAEAA          add [bp+si-0x5552],ch
00002479  9AEAABAAEA        call word 0xeaaa:word 0xabea
0000247E  AB                stosw
0000247F  3AF2              cmp dh,dl
00002481  A8E3              test al,0xe3
00002483  2B0EACF3          sub cx,[0xf3ac]
00002487  AA                stosb
00002488  AA                stosb
00002489  AA                stosb
0000248A  A35882            mov [0x8258],ax
0000248D  BAABAA            mov dx,0xaaab
00002490  AB                stosw
00002491  2A63C0            sub ah,[bp+di-0x40]
00002494  643F              fs aas
00002496  0F                db 0x0f
00002497  00FC              add ah,bh
00002499  30CF              xor bh,cl
0000249B  30FD              xor ch,bh
0000249D  C1CC00            ror sp,byte 0x0
000024A0  3D700F            cmp ax,0xf70
000024A3  03C0              add ax,ax
000024A5  62                db 0x62
000024A6  F0                lock
000024A7  3C55              cmp al,0x55
000024A9  55                push bp
000024AA  D555              aad byte 0x55
000024AC  D555              aad byte 0x55
000024AE  55                push bp
000024AF  55                push bp
000024B0  7313              jnc 0x24c5
000024B2  05CC70            add ax,0x70cc
000024B5  D3                db 0xd3
000024B6  31C1              xor cx,ax
000024B8  C5                db 0xc5
000024B9  DD5D4D            fstp qword [di+0x4d]
000024BC  7013              jo 0x24d1
000024BE  54                push sp
000024BF  C55555            lds dx,word [di+0x55]
000024C2  F1                int1
000024C3  7D33              jnl 0x24f8
000024C5  0003              add [bp+di],al
000024C7  40                inc ax
000024C8  6303              arpl [bp+di],ax
000024CA  F5                cmc
000024CB  F7C003D3          test ax,0xd303
000024CF  3D3FFF            cmp ax,0xff3f
000024D2  C40F              les cx,word [bx]
000024D4  01C0              add ax,ax
000024D6  0FFFCC            ud0 cx,sp
000024D9  0330              add si,[bx+si]
000024DB  0C03              or al,0x3
000024DD  C0A02EA94A        shl byte [bx+si-0x56d2],byte 0x4a
000024E2  AB                stosw
000024E3  AA                stosb
000024E4  AA                stosb
000024E5  EB35              jmp 0x251c
000024E7  F7EA              imul dx
000024E9  0BD3              or dx,bx
000024EB  BD0FFF            mov bp,0xff0f
000024EE  C42F              les bp,word [bx]
000024F0  29C0              sub ax,ax
000024F2  8F                db 0x8f
000024F3  0FEC28            paddsb mm5,[bx+si]
000024F6  32ACABC2          xor ch,[si-0x3d55]
000024FA  FC                cld
000024FB  0003              add [bp+di],al
000024FD  10620C            adc [bp+si+0xc],ah
00002500  3B5F5F            cmp bx,[bx+0x5f]
00002503  FD                std
00002504  B0CC              mov al,0xcc
00002506  DF775F            fbstp tword [bx+0x5f]
00002509  7F31              jg 0x253c
0000250B  343F              xor al,0x3f
0000250D  FD                std
0000250E  F5                cmc
0000250F  303D              xor [di],bh
00002511  03C0              add ax,ax
00002513  FC                cld
00002514  3F                aas
00002515  9C                pushf
00002516  55                push bp
00002517  57                push di
00002518  15D555            adc ax,0x55d5
0000251B  5D                pop bp
0000251C  7B5C              jpo 0x257a
0000251E  5F                pop di
0000251F  F1                int1
00002520  B1CC              mov cl,0xcc
00002522  1C77              sbb al,0x77
00002524  5F                pop di
00002525  7031              jo 0x2558
00002527  7570              jnz 0x2599
00002529  FD                std
0000252A  F5                cmc
0000252B  317114            xor [bx+di+0x14],si
0000252E  C13C43            sar word [si],byte 0x43
00002531  FFA40D22          jmp word near [si+0x220d]
00002535  0045BF            add [di-0x41],al
00002538  D57D              aad byte 0x7d
0000253A  FD                std
0000253B  5F                pop di
0000253C  5F                pop di
0000253D  5F                pop di
0000253E  55                push bp
0000253F  DD7D7F            fnstsw [di+0x7f]
00002542  FF                db 0xff
00002543  D7                xlatb
00002544  FF5F57            call word far [bx+0x57]
00002547  FD                std
00002548  777C              ja 0x25c6
0000254A  3D5F75            cmp ax,0x755f
0000254D  FFA4AD2A          jmp word near [si+0x2aad]
00002551  AA                stosb
00002552  EF                out dx,ax
00002553  BFD571            mov di,0x71d5
00002556  FD                std
00002557  5F                pop di
00002558  5F                pop di
00002559  5F                pop di
0000255A  55                push bp
0000255B  DD7D7F            fnstsw [di+0x7f]
0000255E  FF                db 0xff
0000255F  D7                xlatb
00002560  FF5F57            call word far [bx+0x57]
00002563  CD77              int byte 0x77
00002565  7EB1              jng 0x2518
00002567  5F                pop di
00002568  75                db 0x75
