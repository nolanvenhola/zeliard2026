00000000  3D1B00            cmp ax,0x1b
00000003  0027              add [bx],ah
00000005  A047AB            mov al,[0xab47]
00000008  06                push es
00000009  A0E851            mov al,[0x51e8]
0000000C  00C7              add bh,al
0000000E  06                push es
0000000F  12BB170E          adc bh,[bp+di+0xe17]
00000013  E87E09            call 0x994
00000016  BB600D            mov bx,0xd60
00000019  B93736            mov cx,0x3637
0000001C  B0FF              mov al,0xff
0000001E  2EFF160020        call word near [cs:0x2000]
00000023  C7064CFF67BA      mov word [0xff4c],0xba67
00000029  EB20              jmp 0x4b
0000002B  E83000            call 0x5e
0000002E  C70612BB1707      mov word [0xbb12],0x717
00000034  E85D09            call 0x994
00000037  BB600D            mov bx,0xd60
0000003A  B93736            mov cx,0x3637
0000003D  B0FF              mov al,0xff
0000003F  2EFF160020        call word near [cs:0x2000]
00000044  E8C40B            call 0xc0b
00000047  89364CFF          mov [0xff4c],si
0000004B  2EFF160460        call word near [cs:0x6004]
00000050  3CFF              cmp al,0xff
00000052  7405              jz 0x59
00000054  E85100            call 0xa8
00000057  EBF2              jmp 0x4b
00000059  2EFF264020        jmp word near [cs:0x2040]
0000005E  8E062CFF          mov es,word [0xff2c]
00000062  BF0080            mov di,0x8000
00000065  BEB0AC            mov si,0xacb0
00000068  B002              mov al,0x2
0000006A  2EFF160C01        call word near [cs:0x10c]
0000006F  1E                push ds
00000070  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000075  BE0080            mov si,0x8000
00000078  B90001            mov cx,0x100
0000007B  2EFF164420        call word near [cs:0x2044]
00000080  1F                pop ds
00000081  C6064EFF00        mov byte [0xff4e],0x0
00000086  C6064FFF00        mov byte [0xff4f],0x0
0000008B  2EFF160220        call word near [cs:0x2002]
00000090  2EFF161220        call word near [cs:0x2012]
00000095  8A1E06C0          mov bl,[0xc006]
00000099  FECB              dec bl
0000009B  32FF              xor bh,bh
0000009D  03DB              add bx,bx
0000009F  8BB7BDAC          mov si,[bx-0x5343]
000000A3  2EFF261020        jmp word near [cs:0x2010]
000000A8  8AD8              mov bl,al
000000AA  32FF              xor bh,bh
000000AC  03DB              add bx,bx
000000AE  2EFFA7AFA0        jmp word near [cs:bx-0x5f51]
000000B3  CB                retf
000000B4  A08EA1            mov al,[0xa18e]
000000B7  14A9              adc al,0xa9
000000B9  62A810A4          bound bp,[bx+si-0x5bf0]
000000BD  B4A2              mov ah,0xa2
000000BF  20A43BA9          and [si-0x56c5],ah
000000C3  3F                aas
000000C4  A943A9            test ax,0xa943
000000C7  47                inc di
000000C8  A94BA9            test ax,0xa94b
000000CB  4F                dec di
000000CC  A953A9            test ax,0xa953
000000CF  E8B508            call 0x987
000000D2  BB2227            mov bx,0x2722
000000D5  B92D1C            mov cx,0x1c2d
000000D8  B0FF              mov al,0xff
000000DA  2EFF160020        call word near [cs:0x2000]
000000DF  C70654FF2527      mov word [0xff54],0x2725
000000E5  C60652FF04        mov byte [0xff52],0x4
000000EA  C60653FF04        mov byte [0xff53],0x4
000000EF  B90400            mov cx,0x4
000000F2  BE65AD            mov si,0xad65
000000F5  2EFF160E60        call word near [cs:0x600e]
000000FA  C60656FF00        mov byte [0xff56],0x0
000000FF  8A1E14BB          mov bl,[0xbb14]
00000103  2EFF161060        call word near [cs:0x6010]
00000108  7302              jnc 0x10c
0000010A  32DB              xor bl,bl
0000010C  881E14BB          mov [0xbb14],bl
00000110  32FF              xor bh,bh
00000112  03DB              add bx,bx
00000114  FFA714A1          jmp word near [bx-0x5eec]
00000118  1CA1              sbb al,0xa1
0000011A  26A157A1          mov ax,[es:0xa157]
0000011E  78A1              js 0xc1
00000120  E86408            call 0x987
00000123  C7064CFFEBAD      mov word [0xff4c],0xadeb
00000129  C3                ret
0000012A  E85A08            call 0x987
0000012D  F60615BBFF        test byte [0xbb15],0xff
00000132  7507              jnz 0x13b
00000134  C7064CFF08AE      mov word [0xff4c],0xae08
0000013A  C3                ret
0000013B  F60616BBFF        test byte [0xbb16],0xff
00000140  7512              jnz 0x154
00000142  BFA7AE            mov di,0xaea7
00000145  F60617BBFF        test byte [0xbb17],0xff
0000014A  7403              jz 0x14f
0000014C  BF03AF            mov di,0xaf03
0000014F  893E4CFF          mov [0xff4c],di
00000153  C3                ret
00000154  C7064CFF42AE      mov word [0xff4c],0xae42
0000015A  C3                ret
0000015B  E82908            call 0x987
0000015E  8A1E06C0          mov bl,[0xc006]
00000162  FECB              dec bl
00000164  32FF              xor bh,bh
00000166  03DB              add bx,bx
00000168  8BB7EBB5          mov si,[bx-0x4a15]
0000016C  89364CFF          mov [0xff4c],si
00000170  2EFF160460        call word near [cs:0x6004]
00000175  C7064CFFBFAD      mov word [0xff4c],0xadbf
0000017B  C3                ret
0000017C  E80808            call 0x987
0000017F  E8A902            call 0x42b
00000182  C7064CFFBFAD      mov word [0xff4c],0xadbf
00000188  7301              jnc 0x18b
0000018A  C3                ret
0000018B  C7064CFF7CAF      mov word [0xff4c],0xaf7c
00000191  C3                ret
00000192  C60615BBFF        mov byte [0xbb15],0xff
00000197  E83B00            call 0x1d5
0000019A  E87702            call 0x414
0000019D  C60618BBFF        mov byte [0xbb18],0xff
000001A2  C60619BBFF        mov byte [0xbb19],0xff
000001A7  C7064CFFDEAF      mov word [0xff4c],0xafde
000001AD  E86402            call 0x414
000001B0  2EFF160460        call word near [cs:0x6004]
000001B5  3C04              cmp al,0x4
000001B7  74F4              jz 0x1ad
000001B9  C6061ABBFF        mov byte [0xbb1a],0xff
000001BE  E84300            call 0x204
000001C1  2EFF160460        call word near [cs:0x6004]
000001C6  E86900            call 0x232
000001C9  03C0              add ax,ax
000001CB  8BD8              mov bx,ax
000001CD  8B8729B0          mov ax,[bx-0x4fd7]
000001D1  A34CFF            mov [0xff4c],ax
000001D4  C3                ret
000001D5  BEFDA1            mov si,0xa1fd
000001D8  C60619BBFF        mov byte [0xbb19],0xff
000001DD  C6061BBBFF        mov byte [0xbb1b],0xff
000001E2  B90300            mov cx,0x3
000001E5  51                push cx
000001E6  C6061AFF00        mov byte [0xff1a],0x0
000001EB  AC                lodsb
000001EC  56                push si
000001ED  E82A08            call 0xa1a
000001F0  803E1AFF19        cmp byte [0xff1a],0x19
000001F5  72F9              jc 0x1f0
000001F7  5E                pop si
000001F8  59                pop cx
000001F9  E2EA              loop 0x1e5
000001FB  C60619BB00        mov byte [0xbb19],0x0
00000200  C3                ret
00000201  0001              add [bx+di],al
00000203  02BEFEA1          add bh,[bp-0x5e02]
00000207  C60619BBFF        mov byte [0xbb19],0xff
0000020C  B90200            mov cx,0x2
0000020F  51                push cx
00000210  C6061AFF00        mov byte [0xff1a],0x0
00000215  8A04              mov al,[si]
00000217  4E                dec si
00000218  56                push si
00000219  E8FE07            call 0xa1a
0000021C  803E1AFF19        cmp byte [0xff1a],0x19
00000221  72F9              jc 0x21c
00000223  5E                pop si
00000224  59                pop cx
00000225  E2E8              loop 0x20f
00000227  C60619BB00        mov byte [0xbb19],0x0
0000022C  C6061BBB00        mov byte [0xbb1b],0x0
00000231  C3                ret
00000232  33DB              xor bx,bx
00000234  8A1E8D00          mov bl,[0x8d]
00000238  80FB0F            cmp bl,0xf
0000023B  7202              jc 0x23f
0000023D  B30F              mov bl,0xf
0000023F  03DB              add bx,bx
00000241  81C38CA2          add bx,0xa28c
00000245  8B17              mov dx,[bx]
00000247  8BCA              mov cx,dx
00000249  33C0              xor ax,ax
0000024B  D1E9              shr cx,0x0
0000024D  390E8E00          cmp [0x8e],cx
00000251  7301              jnc 0x254
00000253  C3                ret
00000254  8BC2              mov ax,dx
00000256  D1E9              shr cx,0x0
00000258  2BC1              sub ax,cx
0000025A  8BC8              mov cx,ax
0000025C  B80100            mov ax,0x1
0000025F  390E8E00          cmp [0x8e],cx
00000263  7301              jnc 0x266
00000265  C3                ret
00000266  B80200            mov ax,0x2
00000269  39168E00          cmp [0x8e],dx
0000026D  7301              jnc 0x270
0000026F  C3                ret
00000270  33DB              xor bx,bx
00000272  8A1E06C0          mov bl,[0xc006]
00000276  4B                dec bx
00000277  81C3ACA2          add bx,0xa2ac
0000027B  B80300            mov ax,0x3
0000027E  8A0E8D00          mov cl,[0x8d]
00000282  3A0F              cmp cl,[bx]
00000284  7301              jnc 0x287
00000286  C3                ret
00000287  C60617BBFF        mov byte [0xbb17],0xff
0000028C  B80400            mov ax,0x4
0000028F  C3                ret
00000290  3200              xor al,[bx+si]
00000292  96                xchg ax,si
00000293  002C              add [si],ch
00000295  01A401E8          add [si-0x17ff],sp
00000299  03DC              add bx,sp
0000029B  05B80B            add ax,0xbb8
0000029E  8813              mov [bp+di],dl
000002A0  7017              jo 0x2b9
000002A2  40                inc ax
000002A3  1F                pop ds
000002A4  1027              adc [bx],ah
000002A6  98                cbw
000002A7  3A20              cmp ah,[bx+si]
000002A9  4E                dec si
000002AA  40                inc ax
000002AB  9C                pushf
000002AC  50                push ax
000002AD  C3                ret
000002AE  60                pusha
000002AF  EA0306090B        jmp word 0xb09:word 0x603
000002B4  0D0F12            or ax,0x120f
000002B7  FFC6              inc si
000002B9  06                push es
000002BA  16                push ss
000002BB  BBFFB9            mov bx,0xb9ff
000002BE  0800              or [bx+si],al
000002C0  51                push cx
000002C1  2EFF160030        call word near [cs:0x3000]
000002C6  C6061AFF00        mov byte [0xff1a],0x0
000002CB  803E1AFF0A        cmp byte [0xff1a],0xa
000002D0  72F9              jc 0x2cb
000002D2  59                pop cx
000002D3  E2EB              loop 0x2c0
000002D5  0E                push cs
000002D6  07                pop es
000002D7  A08D00            mov al,[0x8d]
000002DA  3C10              cmp al,0x10
000002DC  721B              jc 0x2f9
000002DE  C70634BB2003      mov word [0xbb34],0x320
000002E4  B90700            mov cx,0x7
000002E7  BEB400            mov si,0xb4
000002EA  BF36BB            mov di,0xbb36
000002ED  AC                lodsb
000002EE  0402              add al,0x2
000002F0  7302              jnc 0x2f4
000002F2  B0FF              mov al,0xff
000002F4  AA                stosb
000002F5  E2F6              loop 0x2ed
000002F7  EB11              jmp 0x30a
000002F9  B309              mov bl,0x9
000002FB  F6E3              mul bl
000002FD  BE80A3            mov si,0xa380
00000300  03F0              add si,ax
00000302  BF34BB            mov di,0xbb34
00000305  B90900            mov cx,0x9
00000308  F3A4              rep movsb
0000030A  A08D00            mov al,[0x8d]
0000030D  FEC0              inc al
0000030F  7502              jnz 0x313
00000311  B0FF              mov al,0xff
00000313  A28D00            mov [0x8d],al
00000316  A134BB            mov ax,[0xbb34]
00000319  A3B200            mov [0xb2],ax
0000031C  A39000            mov [0x90],ax
0000031F  2EFF160620        call word near [cs:0x2006]
00000324  2EFF160820        call word near [cs:0x2008]
00000329  0E                push cs
0000032A  07                pop es
0000032B  BFB400            mov di,0xb4
0000032E  BE36BB            mov si,0xbb36
00000331  B90700            mov cx,0x7
00000334  F3A4              rep movsb
00000336  BFAB00            mov di,0xab
00000339  BE36BB            mov si,0xbb36
0000033C  B90700            mov cx,0x7
0000033F  F3A4              rep movsb
00000341  F6069D00FF        test byte [0x9d],0xff
00000346  7405              jz 0x34d
00000348  2EFF161820        call word near [cs:0x2018]
0000034D  33DB              xor bx,bx
0000034F  8A1E8D00          mov bl,[0x8d]
00000353  FECB              dec bl
00000355  80FB0F            cmp bl,0xf
00000358  7202              jc 0x35c
0000035A  B30F              mov bl,0xf
0000035C  03DB              add bx,bx
0000035E  8B878CA2          mov ax,[bx-0x5d74]
00000362  29068E00          sub [0x8e],ax
00000366  33DB              xor bx,bx
00000368  8A1E8D00          mov bl,[0x8d]
0000036C  80FB0F            cmp bl,0xf
0000036F  7202              jc 0x373
00000371  B30F              mov bl,0xf
00000373  03DB              add bx,bx
00000375  8B878CA2          mov ax,[bx-0x5d74]
00000379  39068E00          cmp [0x8e],ax
0000037D  7204              jc 0x383
0000037F  48                dec ax
00000380  A38E00            mov [0x8e],ax
00000383  C3                ret
00000384  7800              js 0x386
00000386  0C06              or al,0x6
00000388  0808              or [bx+si],cl
0000038A  0304              add ax,[si]
0000038C  03A0000C          add sp,[bx+si+0xc00]
00000390  06                push es
00000391  0808              or [bx+si],cl
00000393  0304              add ax,[si]
00000395  03C8              add cx,ax
00000397  000C              add [si],cl
00000399  06                push es
0000039A  0808              or [bx+si],cl
0000039C  0304              add ax,[si]
0000039E  03F0              add si,ax
000003A0  000C              add [si],cl
000003A2  06                push es
000003A3  0808              or [bx+si],cl
000003A5  0304              add ax,[si]
000003A7  0318              add bx,[bx+si]
000003A9  0110              add [bx+si],dx
000003AB  06                push es
000003AC  0808              or [bx+si],cl
000003AE  0304              add ax,[si]
000003B0  034001            add ax,[bx+si+0x1]
000003B3  1406              adc al,0x6
000003B5  0808              or [bx+si],cl
000003B7  0304              add ax,[si]
000003B9  037C01            add di,[si+0x1]
000003BC  18060808          sbb [0x808],al
000003C0  0304              add ax,[si]
000003C2  03CC              add cx,sp
000003C4  011C              add [si],bx
000003C6  0C08              or al,0x8
000003C8  0803              or [bp+di],al
000003CA  0403              add al,0x3
000003CC  1C02              sbb al,0x2
000003CE  2012              and [bp+si],dl
000003D0  0C08              or al,0x8
000003D2  0304              add ax,[si]
000003D4  035802            add bx,[bx+si+0x2]
000003D7  2418              and al,0x18
000003D9  1008              adc [bx+si],cl
000003DB  0304              add ax,[si]
000003DD  03800228          add ax,[bx+si+0x2802]
000003E1  1E                push ds
000003E2  1410              adc al,0x10
000003E4  0304              add ax,[si]
000003E6  03A8022C          add bp,[bx+si+0x2c02]
000003EA  2418              and al,0x18
000003EC  1803              sbb [bp+di],al
000003EE  0403              add al,0x3
000003F0  D002              rol byte [bp+si],0x0
000003F2  302A              xor [bp+si],ch
000003F4  1C20              sbb al,0x20
000003F6  0304              add ax,[si]
000003F8  03F8              add di,ax
000003FA  0234              add dh,[si]
000003FC  3024              xor [si],ah
000003FE  3009              xor [bx+di],cl
00000400  08060C03          or [0x30c],al
00000404  38362C36          cmp [0x362c],dh
00000408  0F                db 0x0f
00000409  0C09              or al,0x9
0000040B  2003              and [bp+di],al
0000040D  3C3C              cmp al,0x3c
0000040F  3C48              cmp al,0x48
00000411  15100C            adc ax,0xc10
00000414  C6061AFF00        mov byte [0xff1a],0x0
00000419  E82F07            call 0xb4b
0000041C  803E1AFF8C        cmp byte [0xff1a],0x8c
00000421  72F6              jc 0x419
00000423  C3                ret
00000424  C7064CFFBFAD      mov word [0xff4c],0xadbf
0000042A  C3                ret
0000042B  0E                push cs
0000042C  07                pop es
0000042D  BE07A9            mov si,0xa907
00000430  B006              mov al,0x6
00000432  2EFF160C01        call word near [cs:0x10c]
00000437  8CC8              mov ax,cs
00000439  8EC0              mov es,ax
0000043B  8ED8              mov ds,ax
0000043D  BF00E0            mov di,0xe000
00000440  BA16A5            mov dx,0xa516
00000443  2EFF161C01        call word near [cs:0x11c]
00000448  BB600D            mov bx,0xd60
0000044B  B93736            mov cx,0x3637
0000044E  B0FF              mov al,0xff
00000450  2EFF160020        call word near [cs:0x2000]
00000455  BB600D            mov bx,0xd60
00000458  B93726            mov cx,0x2637
0000045B  B0FF              mov al,0xff
0000045D  2EFF160020        call word near [cs:0x2000]
00000462  0E                push cs
00000463  07                pop es
00000464  BF27BB            mov di,0xbb27
00000467  B060              mov al,0x60
00000469  B90800            mov cx,0x8
0000046C  F3AA              rep stosb
0000046E  B0FF              mov al,0xff
00000470  AA                stosb
00000471  C60625BB00        mov byte [0xbb25],0x0
00000476  BE6CFF            mov si,0xff6c
00000479  BF27BB            mov di,0xbb27
0000047C  B90800            mov cx,0x8
0000047F  AC                lodsb
00000480  0AC0              or al,al
00000482  7407              jz 0x48b
00000484  FE0625BB          inc byte [0xbb25]
00000488  AA                stosb
00000489  E2F4              loop 0x47f
0000048B  A025BB            mov al,[0xbb25]
0000048E  A226BB            mov [0xbb26],al
00000491  BB3C00            mov bx,0x3c
00000494  B16C              mov cl,0x6c
00000496  BE1CA5            mov si,0xa51c
00000499  2EFF162A20        call word near [cs:0x202a]
0000049E  C70621BB6000      mov word [0xbb21],0x60
000004A4  C60623BB7E        mov byte [0xbb23],0x7e
000004A9  C70654FF6334      mov word [0xff54],0x3463
000004AF  C7066AFF0A00      mov word [0xff6a],0xa
000004B5  A000E0            mov al,[0xe000]
000004B8  3C05              cmp al,0x5
000004BA  7202              jc 0x4be
000004BC  B005              mov al,0x5
000004BE  32E4              xor ah,ah
000004C0  8BC8              mov cx,ax
000004C2  32C0              xor al,al
000004C4  BE01E0            mov si,0xe001
000004C7  E303              jcxz 0x4cc
000004C9  E86000            call 0x52c
000004CC  BE01E0            mov si,0xe001
000004CF  A000E0            mov al,[0xe000]
000004D2  A253FF            mov [0xff53],al
000004D5  C60652FF05        mov byte [0xff52],0x5
000004DA  E88000            call 0x55d
000004DD  9C                pushf
000004DE  BB600D            mov bx,0xd60
000004E1  B93736            mov cx,0x3637
000004E4  B0FF              mov al,0xff
000004E6  2EFF160020        call word near [cs:0x2000]
000004EB  9D                popf
000004EC  7301              jnc 0x4ef
000004EE  C3                ret
000004EF  0E                push cs
000004F0  07                pop es
000004F1  BF6CFF            mov di,0xff6c
000004F4  B90800            mov cx,0x8
000004F7  32C0              xor al,al
000004F9  F3AA              rep stosb
000004FB  803E26BB00        cmp byte [0xbb26],0x0
00000500  F9                stc
00000501  7501              jnz 0x504
00000503  C3                ret
00000504  BE27BB            mov si,0xbb27
00000507  BF6CFF            mov di,0xff6c
0000050A  AC                lodsb
0000050B  3CFF              cmp al,0xff
0000050D  F8                clc
0000050E  7501              jnz 0x511
00000510  C3                ret
00000511  3C60              cmp al,0x60
00000513  F8                clc
00000514  7501              jnz 0x517
00000516  C3                ret
00000517  AA                stosb
00000518  EBF0              jmp 0x50a
0000051A  2A2E7573          sub ch,[0x7375]
0000051E  7200              jc 0x520
00000520  49                dec cx
00000521  6E                outsb
00000522  7075              jo 0x599
00000524  7420              jz 0x546
00000526  6E                outsb
00000527  61                popa
00000528  6D                insw
00000529  653AFF            gs cmp bh,bh
0000052C  32E4              xor ah,ah
0000052E  51                push cx
0000052F  56                push si
00000530  50                push ax
00000531  2EFF161A30        call word near [cs:0x301a]
00000536  58                pop ax
00000537  50                push ax
00000538  8AC4              mov al,ah
0000053A  32E4              xor ah,ah
0000053C  03C0              add ax,ax
0000053E  8BD8              mov bx,ax
00000540  03C0              add ax,ax
00000542  03C0              add ax,ax
00000544  03D8              add bx,ax
00000546  031E54FF          add bx,[0xff54]
0000054A  81C30003          add bx,0x300
0000054E  2EFF161C30        call word near [cs:0x301c]
00000553  58                pop ax
00000554  FEC0              inc al
00000556  FEC4              inc ah
00000558  5E                pop si
00000559  59                pop cx
0000055A  E2D2              loop 0x52e
0000055C  C3                ret
0000055D  C60674FFFF        mov byte [0xff74],0xff
00000562  C60629FF00        mov byte [0xff29],0x0
00000567  C60629FF00        mov byte [0xff29],0x0
0000056C  C6061DFF00        mov byte [0xff1d],0x0
00000571  C6061EFF00        mov byte [0xff1e],0x0
00000576  C60656FF00        mov byte [0xff56],0x0
0000057B  C60624BB00        mov byte [0xbb24],0x0
00000580  32DB              xor bl,bl
00000582  F60653FFFF        test byte [0xff53],0xff
00000587  7405              jz 0x58e
00000589  2EFF161460        call word near [cs:0x6014]
0000058E  E87002            call 0x801
00000591  32C0              xor al,al
00000593  E8FE01            call 0x794
00000596  2EFF161660        call word near [cs:0x6016]
0000059B  C6061AFF00        mov byte [0xff1a],0x0
000005A0  F6061EFFFF        test byte [0xff1e],0xff
000005A5  F9                stc
000005A6  750A              jnz 0x5b2
000005A8  2EF70618FF0100    test word [cs:0xff18],0x1
000005AF  740C              jz 0x5bd
000005B1  F8                clc
000005B2  C60674FF00        mov byte [0xff74],0x0
000005B7  C6061EFF00        mov byte [0xff1e],0x0
000005BC  C3                ret
000005BD  F6061DFFFF        test byte [0xff1d],0xff
000005C2  7463              jz 0x627
000005C4  56                push si
000005C5  32FF              xor bh,bh
000005C7  8A1E56FF          mov bl,[0xff56]
000005CB  021E24BB          add bl,[0xbb24]
000005CF  03DB              add bx,bx
000005D1  8B30              mov si,[bx+si]
000005D3  0E                push cs
000005D4  07                pop es
000005D5  BF27BB            mov di,0xbb27
000005D8  B060              mov al,0x60
000005DA  B90800            mov cx,0x8
000005DD  F3AA              rep stosb
000005DF  B0FF              mov al,0xff
000005E1  AA                stosb
000005E2  C60625BB00        mov byte [0xbb25],0x0
000005E7  BF27BB            mov di,0xbb27
000005EA  B90800            mov cx,0x8
000005ED  AC                lodsb
000005EE  0AC0              or al,al
000005F0  7407              jz 0x5f9
000005F2  FE0625BB          inc byte [0xbb25]
000005F6  AA                stosb
000005F7  E2F4              loop 0x5ed
000005F9  A025BB            mov al,[0xbb25]
000005FC  A226BB            mov [0xbb26],al
000005FF  5E                pop si
00000600  C6061DFF00        mov byte [0xff1d],0x0
00000605  A121BB            mov ax,[0xbb21]
00000608  D1E8              shr ax,0x0
0000060A  D1E8              shr ax,0x0
0000060C  8AF8              mov bh,al
0000060E  8A1E23BB          mov bl,[0xbb23]
00000612  B91010            mov cx,0x1010
00000615  32C0              xor al,al
00000617  2EFF160020        call word near [cs:0x2000]
0000061C  E8E201            call 0x801
0000061F  32C0              xor al,al
00000621  E87001            call 0x794
00000624  E96FFF            jmp 0x596
00000627  B992A5            mov cx,0xa592
0000062A  51                push cx
0000062B  F60629FFFF        test byte [0xff29],0xff
00000630  7431              jz 0x663
00000632  A029FF            mov al,[0xff29]
00000635  C60629FF00        mov byte [0xff29],0x0
0000063A  3C0D              cmp al,0xd
0000063C  7501              jnz 0x63f
0000063E  C3                ret
0000063F  3C08              cmp al,0x8
00000641  7503              jnz 0x646
00000643  E9E501            jmp 0x82b
00000646  33DB              xor bx,bx
00000648  8A1E25BB          mov bl,[0xbb25]
0000064C  80BF27BB60        cmp byte [bx-0x44d9],0x60
00000651  7504              jnz 0x657
00000653  FE0626BB          inc byte [0xbb26]
00000657  888727BB          mov [bx-0x44d9],al
0000065B  E8A301            call 0x801
0000065E  B001              mov al,0x1
00000660  E93101            jmp 0x794
00000663  CD61              int byte 0x61
00000665  A808              test al,0x8
00000667  7411              jz 0x67a
00000669  B001              mov al,0x1
0000066B  E82601            call 0x794
0000066E  CD61              int byte 0x61
00000670  A808              test al,0x8
00000672  75FA              jnz 0x66e
00000674  C60629FF00        mov byte [0xff29],0x0
00000679  C3                ret
0000067A  A804              test al,0x4
0000067C  7411              jz 0x68f
0000067E  B0FF              mov al,0xff
00000680  E81101            call 0x794
00000683  CD61              int byte 0x61
00000685  A804              test al,0x4
00000687  75FA              jnz 0x683
00000689  C60629FF00        mov byte [0xff29],0x0
0000068E  C3                ret
0000068F  F60653FFFF        test byte [0xff53],0xff
00000694  7501              jnz 0x697
00000696  C3                ret
00000697  2403              and al,0x3
00000699  3C01              cmp al,0x1
0000069B  7570              jnz 0x70d
0000069D  F60624BBFF        test byte [0xbb24],0xff
000006A2  740E              jz 0x6b2
000006A4  8A1E24BB          mov bl,[0xbb24]
000006A8  2EFF161860        call word near [cs:0x6018]
000006AD  FE0E24BB          dec byte [0xbb24]
000006B1  C3                ret
000006B2  F60656FFFF        test byte [0xff56],0xff
000006B7  7501              jnz 0x6ba
000006B9  C3                ret
000006BA  57                push di
000006BB  56                push si
000006BC  FE0E56FF          dec byte [0xff56]
000006C0  A056FF            mov al,[0xff56]
000006C3  020624BB          add al,[0xbb24]
000006C7  2EFF161A30        call word near [cs:0x301a]
000006CC  B90A00            mov cx,0xa
000006CF  51                push cx
000006D0  8B1E54FF          mov bx,[0xff54]
000006D4  81C30103          add bx,0x301
000006D8  8AC1              mov al,cl
000006DA  FEC8              dec al
000006DC  8A0E52FF          mov cl,[0xff52]
000006E0  02C9              add cl,cl
000006E2  8AD1              mov dl,cl
000006E4  02C9              add cl,cl
000006E6  02C9              add cl,cl
000006E8  02CA              add cl,dl
000006EA  80E902            sub cl,0x2
000006ED  8A2E6AFF          mov ch,[0xff6a]
000006F1  2EFF161E30        call word near [cs:0x301e]
000006F6  2EFF161660        call word near [cs:0x6016]
000006FB  803E1AFF04        cmp byte [0xff1a],0x4
00000700  72F4              jc 0x6f6
00000702  C6061AFF00        mov byte [0xff1a],0x0
00000707  59                pop cx
00000708  E2C5              loop 0x6cf
0000070A  5E                pop si
0000070B  5F                pop di
0000070C  C3                ret
0000070D  3C02              cmp al,0x2
0000070F  7401              jz 0x712
00000711  C3                ret
00000712  A024BB            mov al,[0xbb24]
00000715  020656FF          add al,[0xff56]
00000719  FEC0              inc al
0000071B  8A2653FF          mov ah,[0xff53]
0000071F  FECC              dec ah
00000721  3AE0              cmp ah,al
00000723  7301              jnc 0x726
00000725  C3                ret
00000726  A052FF            mov al,[0xff52]
00000729  FEC8              dec al
0000072B  380624BB          cmp [0xbb24],al
0000072F  730E              jnc 0x73f
00000731  8A1E24BB          mov bl,[0xbb24]
00000735  2EFF161A60        call word near [cs:0x601a]
0000073A  FE0624BB          inc byte [0xbb24]
0000073E  C3                ret
0000073F  57                push di
00000740  56                push si
00000741  FE0656FF          inc byte [0xff56]
00000745  A056FF            mov al,[0xff56]
00000748  020624BB          add al,[0xbb24]
0000074C  2EFF161A30        call word near [cs:0x301a]
00000751  B90A00            mov cx,0xa
00000754  51                push cx
00000755  8B1E54FF          mov bx,[0xff54]
00000759  81C30103          add bx,0x301
0000075D  8AC1              mov al,cl
0000075F  F6D8              neg al
00000761  040A              add al,0xa
00000763  8A0E52FF          mov cl,[0xff52]
00000767  02C9              add cl,cl
00000769  8AD1              mov dl,cl
0000076B  02C9              add cl,cl
0000076D  02C9              add cl,cl
0000076F  02CA              add cl,dl
00000771  80E902            sub cl,0x2
00000774  8A2E6AFF          mov ch,[0xff6a]
00000778  2EFF162030        call word near [cs:0x3020]
0000077D  2EFF161660        call word near [cs:0x6016]
00000782  803E1AFF04        cmp byte [0xff1a],0x4
00000787  72F4              jc 0x77d
00000789  C6061AFF00        mov byte [0xff1a],0x0
0000078E  59                pop cx
0000078F  E2C3              loop 0x754
00000791  5E                pop si
00000792  5F                pop di
00000793  C3                ret
00000794  56                push si
00000795  50                push ax
00000796  A121BB            mov ax,[0xbb21]
00000799  D1E8              shr ax,0x0
0000079B  D1E8              shr ax,0x0
0000079D  8AF8              mov bh,al
0000079F  A025BB            mov al,[0xbb25]
000007A2  02C0              add al,al
000007A4  02F8              add bh,al
000007A6  8A1E23BB          mov bl,[0xbb23]
000007AA  80C308            add bl,0x8
000007AD  B90802            mov cx,0x208
000007B0  32C0              xor al,al
000007B2  2EFF160020        call word near [cs:0x2000]
000007B7  58                pop ax
000007B8  000625BB          add [0xbb25],al
000007BC  F60625BB80        test byte [0xbb25],0x80
000007C1  7405              jz 0x7c8
000007C3  C60625BB00        mov byte [0xbb25],0x0
000007C8  803E25BB08        cmp byte [0xbb25],0x8
000007CD  7204              jc 0x7d3
000007CF  FE0E25BB          dec byte [0xbb25]
000007D3  A026BB            mov al,[0xbb26]
000007D6  380625BB          cmp [0xbb25],al
000007DA  7203              jc 0x7df
000007DC  A225BB            mov [0xbb25],al
000007DF  8B1E21BB          mov bx,[0xbb21]
000007E3  8A0E23BB          mov cl,[0xbb23]
000007E7  33C0              xor ax,ax
000007E9  A025BB            mov al,[0xbb25]
000007EC  03C0              add ax,ax
000007EE  03C0              add ax,ax
000007F0  03C0              add ax,ax
000007F2  03D8              add bx,ax
000007F4  80C108            add cl,0x8
000007F7  B87F06            mov ax,0x67f
000007FA  2EFF162220        call word near [cs:0x2022]
000007FF  5E                pop si
00000800  C3                ret
00000801  56                push si
00000802  A121BB            mov ax,[0xbb21]
00000805  D1E8              shr ax,0x0
00000807  D1E8              shr ax,0x0
00000809  8AF8              mov bh,al
0000080B  8A1E23BB          mov bl,[0xbb23]
0000080F  B90810            mov cx,0x1008
00000812  32C0              xor al,al
00000814  2EFF160020        call word near [cs:0x2000]
00000819  8B1E21BB          mov bx,[0xbb21]
0000081D  8A0E23BB          mov cl,[0xbb23]
00000821  BE27BB            mov si,0xbb27
00000824  2EFF162A20        call word near [cs:0x202a]
00000829  5E                pop si
0000082A  C3                ret
0000082B  56                push si
0000082C  8A1E25BB          mov bl,[0xbb25]
00000830  0ADB              or bl,bl
00000832  7502              jnz 0x836
00000834  FEC3              inc bl
00000836  32FF              xor bh,bh
00000838  0E                push cs
00000839  07                pop es
0000083A  BE27BB            mov si,0xbb27
0000083D  03F3              add si,bx
0000083F  8BFE              mov di,si
00000841  4F                dec di
00000842  B008              mov al,0x8
00000844  2AC3              sub al,bl
00000846  8AC8              mov cl,al
00000848  32ED              xor ch,ch
0000084A  F3A4              rep movsb
0000084C  F60626BBFF        test byte [0xbb26],0xff
00000851  7404              jz 0x857
00000853  FE0E26BB          dec byte [0xbb26]
00000857  C6062EBB60        mov byte [0xbb2e],0x60
0000085C  B0FF              mov al,0xff
0000085E  E833FF            call 0x794
00000861  E89DFF            call 0x801
00000864  5E                pop si
00000865  C3                ret
00000866  0E                push cs
00000867  07                pop es
00000868  BE6CFF            mov si,0xff6c
0000086B  BF27BB            mov di,0xbb27
0000086E  B90800            mov cx,0x8
00000871  AC                lodsb
00000872  0AC0              or al,al
00000874  7403              jz 0x879
00000876  AA                stosb
00000877  E2F8              loop 0x871
00000879  26C6052E          mov byte [es:di],0x2e
0000087D  26C6450175        mov byte [es:di+0x1],0x75
00000882  26C6450273        mov byte [es:di+0x2],0x73
00000887  26C6450372        mov byte [es:di+0x3],0x72
0000088C  26C6450400        mov byte [es:di+0x4],0x0
00000891  BA27BB            mov dx,0xbb27
00000894  B90000            mov cx,0x0
00000897  B43C              mov ah,0x3c
00000899  CD21              int byte 0x21
0000089B  7219              jc 0x8b6
0000089D  50                push ax
0000089E  BA0000            mov dx,0x0
000008A1  B90001            mov cx,0x100
000008A4  8BD8              mov bx,ax
000008A6  B440              mov ah,0x40
000008A8  CD21              int byte 0x21
000008AA  58                pop ax
000008AB  9C                pushf
000008AC  8BD8              mov bx,ax
000008AE  B43E              mov ah,0x3e
000008B0  CD21              int byte 0x21
000008B2  9D                popf
000008B3  7201              jc 0x8b6
000008B5  C3                ret
000008B6  B84908            mov ax,0x849
000008B9  B92619            mov cx,0x1926
000008BC  33FF              xor di,di
000008BE  2EFF162620        call word near [cs:0x2026]
000008C3  BB4910            mov bx,0x1049
000008C6  B92632            mov cx,0x3226
000008C9  B0FF              mov al,0xff
000008CB  2EFF160020        call word near [cs:0x2000]
000008D0  BB4C00            mov bx,0x4c
000008D3  B150              mov cl,0x50
000008D5  BEACB5            mov si,0xb5ac
000008D8  2EFF162A20        call word near [cs:0x202a]
000008DD  C6061DFF00        mov byte [0xff1d],0x0
000008E2  F6061DFFFF        test byte [0xff1d],0xff
000008E7  74F9              jz 0x8e2
000008E9  C6061DFF00        mov byte [0xff1d],0x0
000008EE  B84908            mov ax,0x849
000008F1  B92619            mov cx,0x1926
000008F4  33FF              xor di,di
000008F6  2EFF162820        call word near [cs:0x2028]
000008FB  BB600D            mov bx,0xd60
000008FE  B93736            mov cx,0x3637
00000901  B0FF              mov al,0xff
00000903  2EFF160020        call word near [cs:0x2000]
00000908  E971F8            jmp 0x17c
0000090B  0000              add [bx+si],al
0000090D  53                push bx
0000090E  54                push sp
0000090F  44                inc sp
00000910  50                push ax
00000911  4C                dec sp
00000912  59                pop cx
00000913  2E42              cs inc dx
00000915  49                dec cx
00000916  4E                dec si
00000917  00BB2B2F          add [bp+di+0x2f2b],bh
0000091B  B9190C            mov cx,0xc19
0000091E  B0FF              mov al,0xff
00000920  2EFF160020        call word near [cs:0x2000]
00000925  C70654FF2E30      mov word [0xff54],0x302e
0000092B  2EFF160860        call word near [cs:0x6008]
00000930  9C                pushf
00000931  E85300            call 0x987
00000934  9D                popf
00000935  7201              jc 0x938
00000937  C3                ret
00000938  33C0              xor ax,ax
0000093A  2EFF2E00FF        jmp word far [cs:0xff00]
0000093F  B001              mov al,0x1
00000941  EB18              jmp 0x95b
00000943  B002              mov al,0x2
00000945  EB14              jmp 0x95b
00000947  B003              mov al,0x3
00000949  EB10              jmp 0x95b
0000094B  B004              mov al,0x4
0000094D  EB0C              jmp 0x95b
0000094F  B005              mov al,0x5
00000951  EB08              jmp 0x95b
00000953  B006              mov al,0x6
00000955  EB04              jmp 0x95b
00000957  B007              mov al,0x7
00000959  EB00              jmp 0x95b
0000095B  50                push ax
0000095C  BB1CAA            mov bx,0xaa1c
0000095F  32C0              xor al,al
00000961  B517              mov ch,0x17
00000963  2EFF160420        call word near [cs:0x2004]
00000968  58                pop ax
00000969  A29D00            mov [0x9d],al
0000096C  8AD8              mov bl,al
0000096E  FECB              dec bl
00000970  32FF              xor bh,bh
00000972  C687BB00FF        mov byte [bx+0xbb],0xff
00000977  A09D00            mov al,[0x9d]
0000097A  BBA437            mov bx,0x37a4
0000097D  2EFF161E20        call word near [cs:0x201e]
00000982  2EFF261820        jmp word near [cs:0x2018]
00000987  BB1727            mov bx,0x2717
0000098A  B9411D            mov cx,0x1d41
0000098D  32C0              xor al,al
0000098F  2EFF260020        jmp word near [cs:0x2000]
00000994  BEB6A9            mov si,0xa9b6
00000997  8B1E12BB          mov bx,[0xbb12]
0000099B  B90800            mov cx,0x8
0000099E  51                push cx
0000099F  B90C00            mov cx,0xc
000009A2  51                push cx
000009A3  53                push bx
000009A4  AC                lodsb
000009A5  2EFF161630        call word near [cs:0x3016]
000009AA  5B                pop bx
000009AB  FEC7              inc bh
000009AD  59                pop cx
000009AE  E2F2              loop 0x9a2
000009B0  80EF0C            sub bh,0xc
000009B3  80C308            add bl,0x8
000009B6  59                pop cx
000009B7  E2E5              loop 0x99e
000009B9  C3                ret
000009BA  0001              add [bx+di],al
000009BC  0203              add al,[bp+di]
000009BE  0405              add al,0x5
000009C0  06                push es
000009C1  07                pop es
000009C2  0809              or [bx+di],cl
000009C4  0A0B              or cl,[bp+di]
000009C6  0C0D              or al,0xd
000009C8  0E                push cs
000009C9  0F1011            movups xmm2,oword [bx+di]
000009CC  1213              adc dl,[bp+di]
000009CE  1415              adc al,0x15
000009D0  16                push ss
000009D1  17                pop ss
000009D2  1819              sbb [bx+di],bl
000009D4  1A1B              sbb bl,[bp+di]
000009D6  1C1D              sbb al,0x1d
000009D8  1E                push ds
000009D9  1F                pop ds
000009DA  1B20              sbb sp,[bx+si]
000009DC  2122              and [bp+si],sp
000009DE  2324              and sp,[si]
000009E0  251B26            and ax,0x261b
000009E3  27                daa
000009E4  2829              sub [bx+di],ch
000009E6  1B2B              sbb bp,[bp+di]
000009E8  2C2D              sub al,0x2d
000009EA  2E2F              cs das
000009EC  3031              xor [bx+di],dh
000009EE  3233              xor dh,[bp+di]
000009F0  3435              xor al,0x35
000009F2  3637              ss aaa
000009F4  3839              cmp [bx+di],bh
000009F6  3A3B              cmp bh,[bp+di]
000009F8  3C3D              cmp al,0x3d
000009FA  3E3F              ds aas
000009FC  40                inc ax
000009FD  41                inc cx
000009FE  42                inc dx
000009FF  43                inc bx
00000A00  44                inc sp
00000A01  45                inc bp
00000A02  46                inc si
00000A03  47                inc di
00000A04  48                dec ax
00000A05  49                dec cx
00000A06  4A                dec dx
00000A07  4B                dec bx
00000A08  4C                dec sp
00000A09  4D                dec bp
00000A0A  4E                dec si
00000A0B  4F                dec di
00000A0C  50                push ax
00000A0D  51                push cx
00000A0E  52                push dx
00000A0F  53                push bx
00000A10  54                push sp
00000A11  55                push bp
00000A12  56                push si
00000A13  57                push di
00000A14  58                pop ax
00000A15  59                pop cx
00000A16  5A                pop dx
00000A17  5B                pop bx
00000A18  5C                pop sp
00000A19  5D                pop bp
00000A1A  B120              mov cl,0x20
00000A1C  F6E1              mul cl
00000A1E  8B1E12BB          mov bx,[0xbb12]
00000A22  81C31002          add bx,0x210
00000A26  8BF0              mov si,ax
00000A28  81C647AA          add si,0xaa47
00000A2C  B90400            mov cx,0x4
00000A2F  51                push cx
00000A30  B90800            mov cx,0x8
00000A33  51                push cx
00000A34  53                push bx
00000A35  AC                lodsb
00000A36  2EFF161630        call word near [cs:0x3016]
00000A3B  5B                pop bx
00000A3C  FEC7              inc bh
00000A3E  59                pop cx
00000A3F  E2F2              loop 0xa33
00000A41  80EF08            sub bh,0x8
00000A44  80C308            add bl,0x8
00000A47  59                pop cx
00000A48  E2E5              loop 0xa2f
00000A4A  C3                ret
00000A4B  1A1B              sbb bl,[bp+di]
00000A4D  1C1D              sbb al,0x1d
00000A4F  1E                push ds
00000A50  1F                pop ds
00000A51  1B20              sbb sp,[bx+si]
00000A53  251B26            and ax,0x261b
00000A56  27                daa
00000A57  2829              sub [bx+di],ch
00000A59  1B2B              sbb bp,[bp+di]
00000A5B  3031              xor [bx+di],dh
00000A5D  3233              xor dh,[bp+di]
00000A5F  3435              xor al,0x35
00000A61  3637              ss aaa
00000A63  3C3D              cmp al,0x3d
00000A65  3E3F              ds aas
00000A67  40                inc ax
00000A68  41                inc cx
00000A69  42                inc dx
00000A6A  43                inc bx
00000A6B  1A1B              sbb bl,[bp+di]
00000A6D  1C1D              sbb al,0x1d
00000A6F  1E                push ds
00000A70  1F                pop ds
00000A71  1B20              sbb sp,[bx+si]
00000A73  251B71            and ax,0x711b
00000A76  27                daa
00000A77  28741B            sub [si+0x1b],dh
00000A7A  2B30              sub si,[bx+si]
00000A7C  317533            xor [di+0x33],si
00000A7F  3476              xor al,0x76
00000A81  3637              ss aaa
00000A83  3C3D              cmp al,0x3d
00000A85  3E3F              ds aas
00000A87  40                inc ax
00000A88  41                inc cx
00000A89  42                inc dx
00000A8A  43                inc bx
00000A8B  5E                pop si
00000A8C  5F                pop di
00000A8D  1C1D              sbb al,0x1d
00000A8F  1E                push ds
00000A90  1F                pop ds
00000A91  60                pusha
00000A92  61                popa
00000A93  626364            bound sp,[bp+di+0x64]
00000A96  656667696A306B6C  imul ebp,[gs:edx+0x30],0x6e6d6c6b
         -6D6E
00000AA0  6F                outsw
00000AA1  7037              jo 0xada
00000AA3  3C3D              cmp al,0x3d
00000AA5  3E3F              ds aas
00000AA7  40                inc ax
00000AA8  41                inc cx
00000AA9  42                inc dx
00000AAA  43                inc bx
00000AAB  1A1B              sbb bl,[bp+di]
00000AAD  1C1D              sbb al,0x1d
00000AAF  1E                push ds
00000AB0  7778              ja 0xb2a
00000AB2  2025              and [di],ah
00000AB4  1B7965            sbb di,[bx+di+0x65]
00000AB7  7A72              jpe 0xb2b
00000AB9  732B              jnc 0xae6
00000ABB  307B7C            xor [bp+di+0x7c],bh
00000ABE  7D7E              jnl 0xb3e
00000AC0  7F36              jg 0xaf8
00000AC2  37                aaa
00000AC3  3C80              cmp al,0x80
00000AC5  813F4041          cmp word [bx],0x4140
00000AC9  42                inc dx
00000ACA  43                inc bx
00000ACB  1A1B              sbb bl,[bp+di]
00000ACD  1C1D              sbb al,0x1d
00000ACF  1E                push ds
00000AD0  1F                pop ds
00000AD1  1B20              sbb sp,[bx+si]
00000AD3  258283            and ax,0x8382
00000AD6  657A84            gs jpe 0xa5d
00000AD9  852B              test [bp+di],bp
00000ADB  3086877D          xor [bp+0x7d87],al
00000ADF  88893637          mov [bx+di+0x3736],cl
00000AE3  3C3D              cmp al,0x3d
00000AE5  3E3F              ds aas
00000AE7  40                inc ax
00000AE8  41                inc cx
00000AE9  42                inc dx
00000AEA  43                inc bx
00000AEB  1A1B              sbb bl,[bp+di]
00000AED  1C1D              sbb al,0x1d
00000AEF  1E                push ds
00000AF0  1F                pop ds
00000AF1  1B20              sbb sp,[bx+si]
00000AF3  258A8B            and ax,0x8b8a
00000AF6  65668C8D2B30      o32 mov word [gs:di+0x302b],cs
00000AFC  8E8F7D90          mov cs,word [bx-0x6f83]
00000B00  91                xchg ax,cx
00000B01  92                xchg ax,dx
00000B02  37                aaa
00000B03  3C3D              cmp al,0x3d
00000B05  3E3F              ds aas
00000B07  40                inc ax
00000B08  41                inc cx
00000B09  42                inc dx
00000B0A  43                inc bx
00000B0B  1A1B              sbb bl,[bp+di]
00000B0D  1C1D              sbb al,0x1d
00000B0F  1E                push ds
00000B10  1F                pop ds
00000B11  1B20              sbb sp,[bx+si]
00000B13  259394            and ax,0x9493
00000B16  6595              gs xchg ax,bp
00000B18  96                xchg ax,si
00000B19  97                xchg ax,di
00000B1A  2B30              sub si,[bx+si]
00000B1C  31987D88          xor [bx+si-0x7783],bx
00000B20  99                cwd
00000B21  9A373C3D3E        call word 0x3e3d:word 0x3c37
00000B26  3F                aas
00000B27  40                inc ax
00000B28  41                inc cx
00000B29  42                inc dx
00000B2A  43                inc bx
00000B2B  1A9B9C1D          sbb bl,[bp+di+0x1d9c]
00000B2F  1E                push ds
00000B30  1F                pop ds
00000B31  1B20              sbb sp,[bx+si]
00000B33  259D9E            and ax,0x9e9d
00000B36  6595              gs xchg ax,bp
00000B38  9F                lahf
00000B39  1B2B              sbb bp,[bp+di]
00000B3B  30A0A17D          xor [bx+si+0x7da1],ah
00000B3F  6E                outsb
00000B40  A2A337            mov [0x37a3],al
00000B43  3C3D              cmp al,0x3d
00000B45  3E3F              ds aas
00000B47  40                inc ax
00000B48  A4                movsb
00000B49  A5                movsw
00000B4A  43                inc bx
00000B4B  833E50FF02        cmp word [0xff50],0x2
00000B50  7301              jnc 0xb53
00000B52  C3                ret
00000B53  C70650FF0000      mov word [0xff50],0x0
00000B59  F60618BBFF        test byte [0xbb18],0xff
00000B5E  745D              jz 0xbbd
00000B60  F6061ABBFF        test byte [0xbb1a],0xff
00000B65  7426              jz 0xb8d
00000B67  FE061CBB          inc byte [0xbb1c]
00000B6B  80261CBB0F        and byte [0xbb1c],0xf
00000B70  803E1CBB01        cmp byte [0xbb1c],0x1
00000B75  7546              jnz 0xbbd
00000B77  C60618BB00        mov byte [0xbb18],0x0
00000B7C  C6061ABB00        mov byte [0xbb1a],0x0
00000B81  C6061CBB00        mov byte [0xbb1c],0x0
00000B86  C6061DBB00        mov byte [0xbb1d],0x0
00000B8B  EB30              jmp 0xbbd
00000B8D  FE0620BB          inc byte [0xbb20]
00000B91  803E20BB14        cmp byte [0xbb20],0x14
00000B96  7301              jnc 0xb99
00000B98  C3                ret
00000B99  C60620BB00        mov byte [0xbb20],0x0
00000B9E  FE061DBB          inc byte [0xbb1d]
00000BA2  8A1E1DBB          mov bl,[0xbb1d]
00000BA6  FECB              dec bl
00000BA8  80E307            and bl,0x7
00000BAB  32FF              xor bh,bh
00000BAD  8A87FFAB          mov al,[bx-0x5401]
00000BB1  E866FE            call 0xa1a
00000BB4  FE061CBB          inc byte [0xbb1c]
00000BB8  80261CBB0F        and byte [0xbb1c],0xf
00000BBD  F60619BBFF        test byte [0xbb19],0xff
00000BC2  7401              jz 0xbc5
00000BC4  C3                ret
00000BC5  FE061FBB          inc byte [0xbb1f]
00000BC9  803E1FBB14        cmp byte [0xbb1f],0x14
00000BCE  7301              jnc 0xbd1
00000BD0  C3                ret
00000BD1  C6061FBB00        mov byte [0xbb1f],0x0
00000BD6  8A1E1EBB          mov bl,[0xbb1e]
00000BDA  F6161EBB          not byte [0xbb1e]
00000BDE  80E301            and bl,0x1
00000BE1  32FF              xor bh,bh
00000BE3  BFFBAB            mov di,0xabfb
00000BE6  F6061BBBFF        test byte [0xbb1b],0xff
00000BEB  7403              jz 0xbf0
00000BED  BFFDAB            mov di,0xabfd
00000BF0  8A01              mov al,[bx+di]
00000BF2  8B1E12BB          mov bx,[0xbb12]
00000BF6  81C31807          add bx,0x718
00000BFA  2EFF261630        jmp word near [cs:0x3016]
00000BFF  292A              sub [bp+si],bp
00000C01  67680506          a32 push word 0x605
00000C05  07                pop es
00000C06  06                push es
00000C07  050403            add ax,0x304
00000C0A  04BE              add al,0xbe
00000C0C  9D                popf
00000C0D  AD                lodsw
00000C0E  8A1E06C0          mov bl,[0xc006]
00000C12  FECB              dec bl
00000C14  32FF              xor bh,bh
00000C16  03DB              add bx,bx
00000C18  FFA718AC          jmp word near [bx-0x53e8]
00000C1C  28AC39AC          sub [si-0x53c7],ch
00000C20  4A                dec dx
00000C21  AC                lodsb
00000C22  5B                pop bx
00000C23  AC                lodsb
00000C24  6C                insb
00000C25  AC                lodsb
00000C26  7DAC              jnl 0xbd4
00000C28  8EAC9FAC          mov gs,word [si-0x5361]
00000C2C  F606E50080        test byte [0xe5],0x80
00000C31  7401              jz 0xc34
00000C33  C3                ret
00000C34  BEB8B1            mov si,0xb1b8
00000C37  800EE50080        or byte [0xe5],0x80
00000C3C  C3                ret
00000C3D  F606E50040        test byte [0xe5],0x40
00000C42  7401              jz 0xc45
00000C44  C3                ret
00000C45  BE2DB2            mov si,0xb22d
00000C48  800EE50040        or byte [0xe5],0x40
00000C4D  C3                ret
00000C4E  F606E50020        test byte [0xe5],0x20
00000C53  7401              jz 0xc56
00000C55  C3                ret
00000C56  BE9FB2            mov si,0xb29f
00000C59  800EE50020        or byte [0xe5],0x20
00000C5E  C3                ret
00000C5F  F606E50010        test byte [0xe5],0x10
00000C64  7401              jz 0xc67
00000C66  C3                ret
00000C67  BE17B3            mov si,0xb317
00000C6A  800EE50010        or byte [0xe5],0x10
00000C6F  C3                ret
00000C70  F606E50008        test byte [0xe5],0x8
00000C75  7401              jz 0xc78
00000C77  C3                ret
00000C78  BE8CB3            mov si,0xb38c
00000C7B  800EE50008        or byte [0xe5],0x8
00000C80  C3                ret
00000C81  F606E50004        test byte [0xe5],0x4
00000C86  7401              jz 0xc89
00000C88  C3                ret
00000C89  BE00B4            mov si,0xb400
00000C8C  800EE50004        or byte [0xe5],0x4
00000C91  C3                ret
00000C92  F606E50002        test byte [0xe5],0x2
00000C97  7401              jz 0xc9a
00000C99  C3                ret
00000C9A  BE88B4            mov si,0xb488
00000C9D  800EE50002        or byte [0xe5],0x2
00000CA2  C3                ret
00000CA3  F606E50001        test byte [0xe5],0x1
00000CA8  7401              jz 0xcab
00000CAA  C3                ret
00000CAB  BE1EB5            mov si,0xb51e
00000CAE  800EE50001        or byte [0xe5],0x1
00000CB3  C3                ret
00000CB4  011A              add [bp+si],bx
00000CB6  4B                dec bx
00000CB7  45                inc bp
00000CB8  4E                dec si
00000CB9  4A                dec dx
00000CBA  59                pop cx
00000CBB  41                inc cx
00000CBC  2E47              cs inc di
00000CBE  52                push dx
00000CBF  50                push ax
00000CC0  00CD              add ch,cl
00000CC2  AC                lodsb
00000CC3  DFACF2AC          fild qword [si-0x530e]
00000CC7  05AD19            add ax,0x19ad
00000CCA  AD                lodsw
00000CCB  2CAD              sub al,0xad
00000CCD  3F                aas
00000CCE  AD                lodsw
00000CCF  51                push cx
00000CD0  AD                lodsw
00000CD1  16                push ss
00000CD2  AF                scasw
00000CD3  000E5468          add [0x6854],cl
00000CD7  65205361          and [gs:bp+di+0x61],dl
00000CDB  6765204D61        and [gs:ebp+0x61],cl
00000CE0  7269              jc 0xd4b
00000CE2  6415AF00          fs adc ax,0xaf
00000CE6  0F546865          andps xmm5,oword [bx+si+0x65]
00000CEA  205361            and [bp+di+0x61],dl
00000CED  6765205961        and [gs:ecx+0x61],bl
00000CF2  736D              jnc 0xd61
00000CF4  696E14AF00        imul bp,[bp+0x14],0xaf
00000CF9  0F546865          andps xmm5,oword [bx+si+0x65]
00000CFD  205361            and [bp+di+0x61],dl
00000D00  6765204861        and [gs:eax+0x61],cl
00000D05  6A6A              push word 0x6a
00000D07  61                popa
00000D08  7214              jc 0xd1e
00000D0A  AF                scasw
00000D0B  0210              add dl,[bx+si]
00000D0D  54                push sp
00000D0E  686520            push word 0x2065
00000D11  53                push bx
00000D12  61                popa
00000D13  6765204368        and [gs:ebx+0x68],al
00000D18  6972696761        imul si,[bp+si+0x69],0x6167
00000D1D  14AF              adc al,0xaf
00000D1F  000F              add [bx],cl
00000D21  54                push sp
00000D22  686520            push word 0x2065
00000D25  53                push bx
00000D26  61                popa
00000D27  6765204869        and [gs:eax+0x69],cl
00000D2C  7368              jnc 0xd96
00000D2E  61                popa
00000D2F  6D                insw
00000D30  14AF              adc al,0xaf
00000D32  000F              add [bx],cl
00000D34  54                push sp
00000D35  686520            push word 0x2065
00000D38  53                push bx
00000D39  61                popa
00000D3A  6765204D61        and [gs:ebp+0x61],cl
00000D3F  7279              jc 0xdba
00000D41  61                popa
00000D42  6D                insw
00000D43  15AF00            adc ax,0xaf
00000D46  0E                push cs
00000D47  54                push sp
00000D48  686520            push word 0x2065
00000D4B  53                push bx
00000D4C  61                popa
00000D4D  6765205361        and [gs:ebx+0x61],dl
00000D52  69656414AF        imul sp,[di+0x64],0xaf14
00000D57  0010              add [bx+si],dl
00000D59  54                push sp
00000D5A  686520            push word 0x2065
00000D5D  53                push bx
00000D5E  61                popa
00000D5F  676520496E        and [gs:ecx+0x6e],cl
00000D64  646968617247      imul bp,[fs:bx+si+0x61],0x4772
00000D6A  6F                outsw
00000D6B  206F75            and [bx+0x75],ch
00000D6E  7473              jz 0xde3
00000D70  6964650053        imul sp,[si+0x65],0x5300
00000D75  656520506F        and [gs:bx+si+0x6f],dl
00000D7A  7765              ja 0xde1
00000D7C  7200              jc 0xd7e
00000D7E  4C                dec sp
00000D7F  697374656E        imul si,[bp+di+0x74],0x6e65
00000D84  204B6E            and [bp+di+0x6e],cl
00000D87  6F                outsw
00000D88  776C              ja 0xdf6
00000D8A  65646765005265    add [gs:edx+0x65],dl
00000D91  636F72            arpl [bx+0x72],bp
00000D94  64204578          and [fs:di+0x78],al
00000D98  7065              jo 0xdff
00000D9A  7269              jc 0xe05
00000D9C  656E              gs outsb
00000D9E  636500            arpl [di+0x0],sp
00000DA1  0C48              or al,0x48
00000DA3  6F                outsw
00000DA4  7720              ja 0xdc6
00000DA6  63616E            arpl [bx+di+0x6e],sp
00000DA9  204920            and [bx+di+0x20],cl
00000DAC  68656C            push word 0x6c65
00000DAF  7020              jo 0xdd1
00000DB1  796F              jns 0xe22
00000DB3  752C              jnz 0xde1
00000DB5  204272            and [bp+si+0x72],al
00000DB8  61                popa
00000DB9  7665              jna 0xe20
00000DBB  204F6E            and [bx+0x6e],cl
00000DBE  653F              gs aas
00000DC0  2F                das
00000DC1  FF00              inc word [bx+si]
00000DC3  0C49              or al,0x49
00000DC5  7320              jnc 0xde7
00000DC7  7468              jz 0xe31
00000DC9  657265            gs jc 0xe31
00000DCC  20616E            and [bx+di+0x6e],ah
00000DCF  7974              jns 0xe45
00000DD1  68696E            push word 0x6e69
00000DD4  6720656C          and [ebp+0x6c],ah
00000DD8  7365              jnc 0xe3f
00000DDA  204920            and [bx+di+0x20],cl
00000DDD  63616E            arpl [bx+di+0x6e],sp
00000DE0  20646F            and [si+0x6f],ah
00000DE3  20666F            and [bp+0x6f],ah
00000DE6  7220              jc 0xe08
00000DE8  796F              jns 0xe59
00000DEA  753F              jnz 0xe2b
00000DEC  2F                das
00000DED  FF00              inc word [bx+si]
00000DEF  0C54              or al,0x54
00000DF1  686520            push word 0x2065
00000DF4  53                push bx
00000DF5  7069              jo 0xe60
00000DF7  7269              jc 0xe62
00000DF9  7473              jz 0xe6e
00000DFB  206172            and [bx+di+0x72],ah
00000DFE  65207769          and [gs:bx+0x69],dh
00000E02  7468              jz 0xe6c
00000E04  20796F            and [bx+di+0x6f],bh
00000E07  752E              jnz 0xe37
00000E09  11FF              adc di,di
00000E0B  FF0C              dec word [si]
00000E0D  49                dec cx
00000E0E  207368            and [bp+di+0x68],dh
00000E11  61                popa
00000E12  6C                insb
00000E13  6C                insb
00000E14  206361            and [bp+di+0x61],ah
00000E17  6C                insb
00000E18  6C                insb
00000E19  207570            and [di+0x70],dh
00000E1C  6F                outsw
00000E1D  6E                outsb
00000E1E  207468            and [si+0x68],dh
00000E21  65205370          and [gs:bp+di+0x70],dl
00000E25  6972697473        imul si,[bp+si+0x69],0x7374
00000E2A  20616E            and [bx+di+0x6e],ah
00000E2D  64207468          and [fs:si+0x68],dh
00000E31  65697220706F      imul si,[gs:bp+si+0x20],0x6f70
00000E37  7765              ja 0xe9e
00000E39  7273              jc 0xeae
00000E3B  2E2E2E2E2E202F    and [cs:bx],ch
00000E42  FF04              inc word [si]
00000E44  FF01              inc word [bx+di]
00000E46  0C49              or al,0x49
00000E48  206665            and [bp+0x65],ah
00000E4B  61                popa
00000E4C  7220              jc 0xe6e
00000E4E  7468              jz 0xeb8
00000E50  65207370          and [gs:bp+di+0x70],dh
00000E54  6972697473        imul si,[bp+si+0x69],0x7374
00000E59  206172            and [bx+di+0x72],ah
00000E5C  65206E6F          and [gs:bp+0x6f],ch
00000E60  206C6F            and [si+0x6f],ch
00000E63  6E                outsb
00000E64  67657220          gs a32 jc 0xe88
00000E68  7769              ja 0xed3
00000E6A  7468              jz 0xed4
00000E6C  20796F            and [bx+di+0x6f],bh
00000E6F  752E              jnz 0xe9f
00000E71  204E6F            and [bp+0x6f],cl
00000E74  206D61            and [di+0x61],ch
00000E77  7474              jz 0xeed
00000E79  657220            gs jc 0xe9c
00000E7C  686F77            push word 0x776f
00000E7F  206D61            and [di+0x61],ch
00000E82  6E                outsb
00000E83  7920              jns 0xea5
00000E85  7469              jz 0xef0
00000E87  6D                insw
00000E88  657320            gs jnc 0xeab
00000E8B  49                dec cx
00000E8C  207472            and [si+0x72],dh
00000E8F  792C              jns 0xebd
00000E91  206974            and [bx+di+0x74],ch
00000E94  20636F            and [bp+di+0x6f],ah
00000E97  6D                insw
00000E98  657320            gs jnc 0xebb
00000E9B  6F                outsw
00000E9C  7574              jnz 0xf12
00000E9E  207468            and [si+0x68],dh
00000EA1  65207361          and [gs:bp+di+0x61],dh
00000EA5  6D                insw
00000EA6  652E20FF          cs and bh,bh
00000EAA  000C              add [si],cl
00000EAC  59                pop cx
00000EAD  6F                outsw
00000EAE  7520              jnz 0xed0
00000EB0  61                popa
00000EB1  7265              jc 0xf18
00000EB3  206272            and [bp+si+0x72],ah
00000EB6  61                popa
00000EB7  7665              jna 0xf1e
00000EB9  2C20              sub al,0x20
00000EBB  627574            bound si,[di+0x74]
00000EBE  20796F            and [bx+di+0x6f],bh
00000EC1  7572              jnz 0xf35
00000EC3  206578            and [di+0x78],ah
00000EC6  7065              jo 0xf2d
00000EC8  7269              jc 0xf33
00000ECA  656E              gs outsb
00000ECC  636520            arpl [di+0x20],sp
00000ECF  6973206C61        imul si,[bp+di+0x20],0x616c
00000ED4  636B69            arpl [bp+di+0x69],bp
00000ED7  6E                outsb
00000ED8  672E20436F        and [cs:ebx+0x6f],al
00000EDD  6D                insw
00000EDE  65206261          and [gs:bp+si+0x61],ah
00000EE2  636B20            arpl [bp+di+0x20],bp
00000EE5  7768              ja 0xf4f
00000EE7  656E              gs outsb
00000EE9  20796F            and [bx+di+0x6f],bh
00000EEC  7520              jnz 0xf0e
00000EEE  686176            push word 0x7661
00000EF1  65206163          and [gs:bx+di+0x63],ah
00000EF5  636F6D            arpl [bx+0x6d],bp
00000EF8  706C              jo 0xf66
00000EFA  6973686564        imul si,[bp+di+0x68],0x6465
00000EFF  206D6F            and [di+0x6f],ch
00000F02  7265              jc 0xf69
00000F04  2EFF00            inc word [cs:bx+si]
00000F07  0C49              or al,0x49
00000F09  206361            and [bp+di+0x61],ah
00000F0C  6E                outsb
00000F0D  206E6F            and [bp+0x6f],ch
00000F10  206C6F            and [si+0x6f],ch
00000F13  6E                outsb
00000F14  67657220          gs a32 jc 0xf38
00000F18  696D706172        imul bp,[di+0x70],0x7261
00000F1D  7420              jz 0xf3f
00000F1F  7468              jz 0xf89
00000F21  6520706F          and [gs:bx+si+0x6f],dh
00000F25  7765              ja 0xf8c
00000F27  7220              jc 0xf49
00000F29  6F                outsw
00000F2A  66207468          o32 and [si+0x68],dh
00000F2E  65205370          and [gs:bp+di+0x70],dl
00000F32  6972697473        imul si,[bp+si+0x69],0x7374
00000F37  20746F            and [si+0x6f],dh
00000F3A  20796F            and [bx+di+0x6f],bh
00000F3D  752E              jnz 0xf6d
00000F3F  20436F            and [bp+di+0x6f],al
00000F42  6E                outsb
00000F43  7469              jz 0xfae
00000F45  6E                outsb
00000F46  7565              jnz 0xfad
00000F48  206F6E            and [bx+0x6e],ch
00000F4B  20796F            and [bx+di+0x6f],bh
00000F4E  7572              jnz 0xfc2
00000F50  207175            and [bx+di+0x75],dh
00000F53  657374            gs jnc 0xfca
00000F56  2E20596F          and [cs:bx+di+0x6f],bl
00000F5A  7520              jnz 0xf7c
00000F5C  7769              ja 0xfc7
00000F5E  6C                insb
00000F5F  6C                insb
00000F60  20736F            and [bp+di+0x6f],dh
00000F63  6F                outsw
00000F64  6E                outsb
00000F65  206669            and [bp+0x69],ah
00000F68  6E                outsb
00000F69  64206F74          and [fs:bx+0x74],ch
00000F6D  686572            push word 0x7265
00000F70  7320              jnc 0xf92
00000F72  746F              jz 0xfe3
00000F74  206865            and [bx+si+0x65],ch
00000F77  6C                insb
00000F78  7020              jo 0xf9a
00000F7A  796F              jns 0xfeb
00000F7C  752E              jnz 0xfac
00000F7E  FF00              inc word [bx+si]
00000F80  0C49              or al,0x49
00000F82  207368            and [bp+di+0x68],dh
00000F85  61                popa
00000F86  6C                insb
00000F87  6C                insb
00000F88  207265            and [bp+si+0x65],dh
00000F8B  636F72            arpl [bx+0x72],bp
00000F8E  6420796F          and [fs:bx+di+0x6f],bh
00000F92  7572              jnz 0x1006
00000F94  206578            and [di+0x78],ah
00000F97  7065              jo 0xffe
00000F99  7269              jc 0x1004
00000F9B  656E              gs outsb
00000F9D  636573            arpl [di+0x73],sp
00000FA0  2E2F              cs das
00000FA2  FF03              inc word [bp+di]
00000FA4  50                push ax
00000FA5  6C                insb
00000FA6  61                popa
00000FA7  636520            arpl [di+0x20],sp
00000FAA  6973207361        imul si,[bp+di+0x20],0x6173
00000FAF  7665              jna 0x1016
00000FB1  64206F6E          and [fs:bx+0x6e],ch
00000FB5  207573            and [di+0x73],dh
00000FB8  657220            gs jc 0xfdb
00000FBB  6469736B2E20      imul si,[fs:bp+di+0x6b],0x202e
00000FC1  57                push di
00000FC2  696C6C2079        imul bp,[si+0x6c],0x7920
00000FC7  6F                outsw
00000FC8  7520              jnz 0xfea
00000FCA  636F6E            arpl [bx+0x6e],bp
00000FCD  7469              jz 0x1038
00000FCF  6E                outsb
00000FD0  7565              jnz 0x1037
00000FD2  20796F            and [bx+di+0x6f],bh
00000FD5  7572              jnz 0x1049
00000FD7  207175            and [bx+di+0x75],dh
00000FDA  657374            gs jnc 0x1051
00000FDD  3F                aas
00000FDE  FF02              inc word [bp+si]
00000FE0  FF0613FF          inc word [0xff13]
00000FE4  044F              add al,0x4f
00000FE6  682C20            push word 0x202c
00000FE9  48                dec ax
00000FEA  6F                outsw
00000FEB  6C                insb
00000FEC  7920              jns 0x100e
00000FEE  53                push bx
00000FEF  7069              jo 0x105a
00000FF1  7269              jc 0x105c
00000FF3  7473              jz 0x1068
00000FF5  2C20              sub al,0x20
00000FF7  7075              jo 0x106e
00000FF9  7269              jc 0x1064
00000FFB  667920            jns 0x101e
00000FFE  6D                insw
00000FFF  7920              jns 0x1021
00001001  7468              jz 0x106b
00001003  6F                outsw
00001004  7567              jnz 0x106d
00001006  687473            push word 0x7374
00001009  20616E            and [bx+di+0x6e],ah
0000100C  64206772          and [fs:bx+0x72],ah
00001010  61                popa
00001011  6E                outsb
00001012  7420              jz 0x1034
00001014  6D                insw
00001015  65207374          and [gs:bp+di+0x74],dh
00001019  7265              jc 0x1080
0000101B  6E                outsb
0000101C  677468            a32 jz 0x1087
0000101F  2E20FF            cs and bh,bh
00001022  04FF              add al,0xff
00001024  040D              add al,0xd
00001026  15FF00            adc ax,0xff
00001029  FF00              inc word [bx+si]
0000102B  FF                db 0xff
0000102C  FF33              push word [bp+di]
0000102E  B069              mov al,0x69
00001030  B08F              mov al,0x8f
00001032  B0E2              mov al,0xe2
00001034  B03F              mov al,0x3f
00001036  B159              mov cl,0x59
00001038  6F                outsw
00001039  7572              jnz 0x10ad
0000103B  206578            and [di+0x78],ah
0000103E  7065              jo 0x10a5
00001040  7269              jc 0x10ab
00001042  656E              gs outsb
00001044  636520            arpl [di+0x20],sp
00001047  6973206C61        imul si,[bp+di+0x20],0x616c
0000104C  636B69            arpl [bp+di+0x69],bp
0000104F  6E                outsb
00001050  672E205065        and [cs:eax+0x65],dl
00001055  7273              jc 0x10ca
00001057  657665            gs jna 0x10bf
0000105A  7265              jc 0x10c1
0000105C  20696E            and [bx+di+0x6e],ch
0000105F  20796F            and [bx+di+0x6f],bh
00001062  7572              jnz 0x10d6
00001064  207175            and [bx+di+0x75],dh
00001067  657374            gs jnc 0x10de
0000106A  2EFF00            inc word [cs:bx+si]
0000106D  59                pop cx
0000106E  6F                outsw
0000106F  7520              jnz 0x1091
00001071  6D                insw
00001072  7573              jnz 0x10e7
00001074  7420              jz 0x1096
00001076  61                popa
00001077  636375            arpl [bp+di+0x75],sp
0000107A  6D                insw
0000107B  756C              jnz 0x10e9
0000107D  61                popa
0000107E  7465              jz 0x10e5
00001080  206D6F            and [di+0x6f],ch
00001083  7265              jc 0x10ea
00001085  206578            and [di+0x78],ah
00001088  7065              jo 0x10ef
0000108A  7269              jc 0x10f5
0000108C  656E              gs outsb
0000108E  63652E            arpl [di+0x2e],sp
00001091  FF00              inc word [bx+si]
00001093  49                dec cx
00001094  206361            and [bp+di+0x61],ah
00001097  6E                outsb
00001098  207365            and [bp+di+0x65],dh
0000109B  65207468          and [gs:si+0x68],dh
0000109F  65206661          and [gs:bp+0x61],ah
000010A3  696E74206C        imul bp,[bp+0x74],0x6c20
000010A8  6967687420        imul sp,[bx+0x68],0x2074
000010AD  6F                outsw
000010AE  66207468          o32 and [si+0x68],dh
000010B2  65205370          and [gs:bp+di+0x70],dl
000010B6  6972697473        imul si,[bp+si+0x69],0x7374
000010BB  20696E            and [bx+di+0x6e],ch
000010BE  20796F            and [bx+di+0x6f],bh
000010C1  752E              jnz 0x10f1
000010C3  20596F            and [bx+di+0x6f],bl
000010C6  7520              jnz 0x10e8
000010C8  6D                insw
000010C9  7573              jnz 0x113e
000010CB  7420              jz 0x10ed
000010CD  656E              gs outsb
000010CF  647572            fs jnz 0x1144
000010D2  65206120          and [gs:bx+di+0x20],ah
000010D6  6C                insb
000010D7  6974746C65        imul si,[si+0x74],0x656c
000010DC  206C6F            and [si+0x6f],ch
000010DF  6E                outsb
000010E0  6765722E          gs a32 jc 0x1112
000010E4  FF00              inc word [bx+si]
000010E6  54                push sp
000010E7  686520            push word 0x2065
000010EA  6C                insb
000010EB  6967687420        imul sp,[bx+0x68],0x2074
000010F0  6F                outsw
000010F1  66207468          o32 and [si+0x68],dh
000010F5  65205370          and [gs:bp+di+0x70],dl
000010F9  6972697473        imul si,[bp+si+0x69],0x7374
000010FE  206973            and [bx+di+0x73],ch
00001101  206275            and [bp+si+0x75],ah
00001104  7273              jc 0x1179
00001106  7469              jz 0x1171
00001108  6E                outsb
00001109  6720666F          and [esi+0x6f],ah
0000110D  7274              jc 0x1183
0000110F  682077            push word 0x7720
00001112  697468696E        imul si,[si+0x68],0x6e69
00001117  20796F            and [bx+di+0x6f],bh
0000111A  752E              jnz 0x114a
0000111C  20FF              and bh,bh
0000111E  040D              add al,0xd
00001120  49                dec cx
00001121  6E                outsb
00001122  646565642C20      fs sub al,0x20
00001128  796F              jns 0x1199
0000112A  7572              jnz 0x119e
0000112C  20706F            and [bx+si+0x6f],dh
0000112F  7765              ja 0x1196
00001131  7220              jc 0x1153
00001133  686173            push word 0x7361
00001136  206772            and [bx+0x72],ah
00001139  6F                outsw
0000113A  776E              ja 0x11aa
0000113C  2EFF05            inc word [cs:di]
0000113F  FF04              inc word [si]
00001141  FF00              inc word [bx+si]
00001143  49                dec cx
00001144  206361            and [bp+di+0x61],ah
00001147  6E                outsb
00001148  206E6F            and [bp+0x6f],ch
0000114B  206C6F            and [si+0x6f],ch
0000114E  6E                outsb
0000114F  67657220          gs a32 jc 0x1173
00001153  696D706172        imul bp,[di+0x70],0x7261
00001158  7420              jz 0x117a
0000115A  7468              jz 0x11c4
0000115C  6520706F          and [gs:bx+si+0x6f],dh
00001160  7765              ja 0x11c7
00001162  7220              jc 0x1184
00001164  6F                outsw
00001165  66207468          o32 and [si+0x68],dh
00001169  65205370          and [gs:bp+di+0x70],dl
0000116D  6972697473        imul si,[bp+si+0x69],0x7374
00001172  20746F            and [si+0x6f],dh
00001175  20796F            and [bx+di+0x6f],bh
00001178  752E              jnz 0x11a8
0000117A  20436F            and [bp+di+0x6f],al
0000117D  6E                outsb
0000117E  7469              jz 0x11e9
00001180  6E                outsb
00001181  7565              jnz 0x11e8
00001183  206F6E            and [bx+0x6e],ch
00001186  20796F            and [bx+di+0x6f],bh
00001189  7572              jnz 0x11fd
0000118B  207175            and [bx+di+0x75],dh
0000118E  657374            gs jnc 0x1205
00001191  2E20596F          and [cs:bx+di+0x6f],bl
00001195  7520              jnz 0x11b7
00001197  7769              ja 0x1202
00001199  6C                insb
0000119A  6C                insb
0000119B  20736F            and [bp+di+0x6f],dh
0000119E  6F                outsw
0000119F  6E                outsb
000011A0  206669            and [bp+0x69],ah
000011A3  6E                outsb
000011A4  64206F74          and [fs:bx+0x74],ch
000011A8  686572            push word 0x7265
000011AB  7320              jnc 0x11cd
000011AD  746F              jz 0x121e
000011AF  206865            and [bx+si+0x65],ch
000011B2  6C                insb
000011B3  7020              jo 0x11d5
000011B5  796F              jns 0x1226
000011B7  752E              jnz 0x11e7
000011B9  20FF              and bh,bh
000011BB  004920            add [bx+di+0x20],cl
000011BE  61                popa
000011BF  6D                insw
000011C0  207468            and [si+0x68],dh
000011C3  65205361          and [gs:bp+di+0x61],dl
000011C7  6765204D61        and [gs:ebp+0x61],cl
000011CC  7269              jc 0x1237
000011CE  642E2F            cs das
000011D1  59                pop cx
000011D2  6F                outsw
000011D3  7520              jnz 0x11f5
000011D5  61                popa
000011D6  7265              jc 0x123d
000011D8  207665            and [bp+0x65],dh
000011DB  7279              jc 0x1256
000011DD  206272            and [bp+si+0x72],ah
000011E0  61                popa
000011E1  7665              jna 0x1248
000011E3  20746F            and [si+0x6f],dh
000011E6  20656D            and [di+0x6d],ah
000011E9  626172            bound sp,[bx+di+0x72]
000011EC  6B206F            imul sp,[bx+si],0x6f
000011EF  6E                outsb
000011F0  207375            and [bp+di+0x75],dh
000011F3  636820            arpl [bx+si+0x20],bp
000011F6  61                popa
000011F7  206461            and [si+0x61],ah
000011FA  6E                outsb
000011FB  6765726F          gs a32 jc 0x126e
000011FF  7573              jnz 0x1274
00001201  206A6F            and [bp+si+0x6f],ch
00001204  7572              jnz 0x1278
00001206  6E                outsb
00001207  65792E            gs jns 0x1238
0000120A  204926            and [bx+di+0x26],cl
0000120D  7368              jnc 0x1277
0000120F  61                popa
00001210  6C                insb
00001211  6C                insb
00001212  206173            and [bx+di+0x73],ah
00001215  7369              jnc 0x1280
00001217  7374              jnc 0x128d
00001219  20796F            and [bx+di+0x6f],bh
0000121C  7520              jnz 0x123e
0000121E  696E20796F        imul bp,[bp+0x20],0x6f79
00001223  7572              jnz 0x1297
00001225  207472            and [si+0x72],dh
00001228  61                popa
00001229  7665              jna 0x1290
0000122B  6C                insb
0000122C  732E              jnc 0x125c
0000122E  20FF              and bh,bh
00001230  004920            add [bx+di+0x20],cl
00001233  61                popa
00001234  6D                insw
00001235  207468            and [si+0x68],dh
00001238  65205361          and [gs:bp+di+0x61],dl
0000123C  6765205961        and [gs:ecx+0x61],bl
00001241  736D              jnc 0x12b0
00001243  696E2E2F49        imul bp,[bp+0x2e],0x492f
00001248  206861            and [bx+si+0x61],ch
0000124B  7665              jna 0x12b2
0000124D  206265            and [bp+si+0x65],ah
00001250  656E              gs outsb
00001252  206578            and [di+0x78],ah
00001255  7065              jo 0x12bc
00001257  637469            arpl [si+0x69],si
0000125A  6E                outsb
0000125B  6720796F          and [ecx+0x6f],bh
0000125F  752E              jnz 0x128f
00001261  204926            and [bx+di+0x26],cl
00001264  7368              jnc 0x12ce
00001266  61                popa
00001267  6C                insb
00001268  6C                insb
00001269  207465            and [si+0x65],dh
0000126C  61                popa
0000126D  636820            arpl [bx+si+0x20],bp
00001270  796F              jns 0x12e1
00001272  7520              jnz 0x1294
00001274  7468              jz 0x12de
00001276  65204D61          and [gs:di+0x61],cl
0000127A  676963205370      imul sp,[ebx+0x20],0x7053
00001280  656C              gs insb
00001282  6C                insb
00001283  206F66            and [bx+0x66],ch
00001286  205468            and [si+0x68],dl
00001289  726F              jc 0x12fa
0000128B  7769              ja 0x12f6
0000128D  6E                outsb
0000128E  67205377          and [ebx+0x77],dl
00001292  6F                outsw
00001293  7264              jc 0x12f9
00001295  733A              jnc 0x12d1
00001297  204573            and [di+0x73],al
0000129A  7061              jo 0x12fd
0000129C  6461              fs popa
0000129E  2EFF07            inc word [cs:bx]
000012A1  FF00              inc word [bx+si]
000012A3  49                dec cx
000012A4  20616D            and [bx+di+0x6d],ah
000012A7  207468            and [si+0x68],dh
000012AA  65205361          and [gs:bp+di+0x61],dl
000012AE  6765204861        and [gs:eax+0x61],cl
000012B3  6A6A              push word 0x6a
000012B5  61                popa
000012B6  722E              jc 0x12e6
000012B8  2F                das
000012B9  49                dec cx
000012BA  20616D            and [bx+di+0x6d],ah
000012BD  206861            and [bx+si+0x61],ch
000012C0  7070              jo 0x1332
000012C2  7920              jns 0x12e4
000012C4  746F              jz 0x1335
000012C6  207365            and [bp+di+0x65],dh
000012C9  6520796F          and [gs:bx+di+0x6f],bh
000012CD  755C              jnz 0x132b
000012CF  7665              jna 0x1336
000012D1  206D61            and [di+0x61],ch
000012D4  6465206974        and [gs:bx+di+0x74],ch
000012D9  207468            and [si+0x68],dh
000012DC  6973206661        imul si,[bp+di+0x20],0x6166
000012E1  722E              jc 0x1311
000012E3  204926            and [bx+di+0x26],cl
000012E6  7368              jnc 0x1350
000012E8  61                popa
000012E9  6C                insb
000012EA  6C                insb
000012EB  207465            and [si+0x65],dh
000012EE  61                popa
000012EF  636820            arpl [bx+si+0x20],bp
000012F2  796F              jns 0x1363
000012F4  7520              jnz 0x1316
000012F6  7468              jz 0x1360
000012F8  65204D61          and [gs:di+0x61],cl
000012FC  676963205370      imul sp,[ebx+0x20],0x7053
00001302  656C              gs insb
00001304  6C                insb
00001305  206F66            and [bx+0x66],ch
00001308  204172            and [bx+di+0x72],al
0000130B  726F              jc 0x137c
0000130D  7773              ja 0x1382
0000130F  3A20              cmp ah,[bx+si]
00001311  53                push bx
00001312  61                popa
00001313  657461            gs jz 0x1377
00001316  2EFF08            dec word [cs:bx+si]
00001319  FF00              inc word [bx+si]
0000131B  49                dec cx
0000131C  20616D            and [bx+di+0x6d],ah
0000131F  207468            and [si+0x68],dh
00001322  65205361          and [gs:bp+di+0x61],dl
00001326  6765204368        and [gs:ebx+0x68],al
0000132B  6972696761        imul si,[bp+si+0x69],0x6167
00001330  2E2F              cs das
00001332  59                pop cx
00001333  6F                outsw
00001334  7520              jnz 0x1356
00001336  686176            push word 0x7661
00001339  6520636F          and [gs:bp+di+0x6f],ah
0000133D  6D                insw
0000133E  65206661          and [gs:bp+0x61],ah
00001342  722C              jc 0x1370
00001344  20616E            and [bx+di+0x6e],ah
00001347  6420796F          and [fs:bx+di+0x6f],bh
0000134B  7520              jnz 0x136d
0000134D  6D                insw
0000134E  7573              jnz 0x13c3
00001350  7420              jz 0x1372
00001352  626520            bound sp,[di+0x20]
00001355  636F6C            arpl [bx+0x6c],bp
00001358  642E204926        and [cs:bx+di+0x26],cl
0000135D  7368              jnc 0x13c7
0000135F  61                popa
00001360  6C                insb
00001361  6C                insb
00001362  207465            and [si+0x65],dh
00001365  61                popa
00001366  636820            arpl [bx+si+0x20],bp
00001369  796F              jns 0x13da
0000136B  7520              jnz 0x138d
0000136D  7468              jz 0x13d7
0000136F  65204D61          and [gs:di+0x61],cl
00001373  676963205370      imul sp,[ebx+0x20],0x7053
00001379  656C              gs insb
0000137B  6C                insb
0000137C  206F66            and [bx+0x66],ch
0000137F  204669            and [bp+0x69],al
00001382  7265              jc 0x13e9
00001384  3A20              cmp ah,[bx+si]
00001386  46                inc si
00001387  7565              jnz 0x13ee
00001389  676F              a32 outsw
0000138B  2EFF09            dec word [cs:bx+di]
0000138E  FF00              inc word [bx+si]
00001390  49                dec cx
00001391  20616D            and [bx+di+0x6d],ah
00001394  207468            and [si+0x68],dh
00001397  65205361          and [gs:bp+di+0x61],dl
0000139B  6765204869        and [gs:eax+0x69],cl
000013A0  7368              jnc 0x140a
000013A2  61                popa
000013A3  6D                insw
000013A4  2E2F              cs das
000013A6  59                pop cx
000013A7  6F                outsw
000013A8  7520              jnz 0x13ca
000013AA  61                popa
000013AB  7265              jc 0x1412
000013AD  20646F            and [si+0x6f],ah
000013B0  696E672077        imul bp,[bp+0x67],0x7720
000013B5  656C              gs insb
000013B7  6C                insb
000013B8  20746F            and [si+0x6f],dh
000013BB  207374            and [bp+di+0x74],dh
000013BE  61                popa
000013BF  6E                outsb
000013C0  64206265          and [fs:bp+si+0x65],ah
000013C4  666F              outsd
000013C6  7265              jc 0x142d
000013C8  206D65            and [di+0x65],ch
000013CB  2E204926          and [cs:bx+di+0x26],cl
000013CF  7368              jnc 0x1439
000013D1  61                popa
000013D2  6C                insb
000013D3  6C                insb
000013D4  207465            and [si+0x65],dh
000013D7  61                popa
000013D8  636820            arpl [bx+si+0x20],bp
000013DB  796F              jns 0x144c
000013DD  7520              jnz 0x13ff
000013DF  7468              jz 0x1449
000013E1  65204D61          and [gs:di+0x61],cl
000013E5  676963205370      imul sp,[ebx+0x20],0x7053
000013EB  656C              gs insb
000013ED  6C                insb
000013EE  206F66            and [bx+0x66],ch
000013F1  20466C            and [bp+0x6c],al
000013F4  61                popa
000013F5  6D                insw
000013F6  653A20            cmp ah,[gs:bx+si]
000013F9  4C                dec sp
000013FA  61                popa
000013FB  6E                outsb
000013FC  7A61              jpe 0x145f
000013FE  722E              jc 0x142e
00001400  FF0A              dec word [bp+si]
00001402  FF00              inc word [bx+si]
00001404  49                dec cx
00001405  20616D            and [bx+di+0x6d],ah
00001408  207468            and [si+0x68],dh
0000140B  65205361          and [gs:bp+di+0x61],dl
0000140F  6765204D61        and [gs:ebp+0x61],cl
00001414  7279              jc 0x148f
00001416  61                popa
00001417  6D                insw
00001418  2E2F              cs das
0000141A  59                pop cx
0000141B  6F                outsw
0000141C  7520              jnz 0x143e
0000141E  686176            push word 0x7661
00001421  65206D61          and [gs:di+0x61],ch
00001425  6465207468        and [gs:si+0x68],dh
0000142A  65205370          and [gs:bp+di+0x70],dl
0000142E  6972697473        imul si,[bp+si+0x69],0x7374
00001433  207072            and [bx+si+0x72],dh
00001436  6F                outsw
00001437  7564              jnz 0x149d
00001439  207769            and [bx+0x69],dh
0000143C  7468              jz 0x14a6
0000143E  20796F            and [bx+di+0x6f],bh
00001441  7572              jnz 0x14b5
00001443  206272            and [bp+si+0x72],ah
00001446  61                popa
00001447  7665              jna 0x14ae
00001449  7279              jc 0x14c4
0000144B  2E204926          and [cs:bx+di+0x26],cl
0000144F  7368              jnc 0x14b9
00001451  61                popa
00001452  6C                insb
00001453  6C                insb
00001454  207465            and [si+0x65],dh
00001457  61                popa
00001458  636820            arpl [bx+si+0x20],bp
0000145B  796F              jns 0x14cc
0000145D  7520              jnz 0x147f
0000145F  7468              jz 0x14c9
00001461  65204D61          and [gs:di+0x61],cl
00001465  676963205370      imul sp,[ebx+0x20],0x7053
0000146B  656C              gs insb
0000146D  6C                insb
0000146E  206F66            and [bx+0x66],ch
00001471  204661            and [bp+0x61],al
00001474  6C                insb
00001475  6C                insb
00001476  696E672052        imul bp,[bp+0x67],0x5220
0000147B  6F                outsw
0000147C  636B73            arpl [bp+di+0x73],bp
0000147F  3A20              cmp ah,[bx+si]
00001481  52                push dx
00001482  61                popa
00001483  7363              jnc 0x14e8
00001485  61                popa
00001486  722E              jc 0x14b6
00001488  FF0B              dec word [bp+di]
0000148A  FF00              inc word [bx+si]
0000148C  49                dec cx
0000148D  20616D            and [bx+di+0x6d],ah
00001490  207468            and [si+0x68],dh
00001493  65205361          and [gs:bp+di+0x61],dl
00001497  6765205361        and [gs:ebx+0x61],dl
0000149C  6965642E2F        imul sp,[di+0x64],0x2f2e
000014A1  59                pop cx
000014A2  6F                outsw
000014A3  7520              jnz 0x14c5
000014A5  686176            push word 0x7661
000014A8  65206C69          and [gs:si+0x69],ch
000014AC  7665              jna 0x1513
000014AE  64207468          and [fs:si+0x68],dh
000014B2  726F              jc 0x1523
000014B4  7567              jnz 0x151d
000014B6  68206D            push word 0x6d20
000014B9  7563              jnz 0x151e
000014BB  682C20            push word 0x202c
000014BE  627574            bound si,[di+0x74]
000014C1  20796F            and [bx+di+0x6f],bh
000014C4  7572              jnz 0x1538
000014C6  206A6F            and [bp+si+0x6f],ch
000014C9  7572              jnz 0x153d
000014CB  6E                outsb
000014CC  657920            gs jns 0x14ef
000014CF  6973206E6F        imul si,[bp+di+0x20],0x6f6e
000014D4  7420              jz 0x14f6
000014D6  6F                outsw
000014D7  7665              jna 0x153e
000014D9  722E              jc 0x1509
000014DB  20596F            and [bx+di+0x6f],bl
000014DE  7520              jnz 0x1500
000014E0  6D                insw
000014E1  7573              jnz 0x1556
000014E3  7420              jz 0x1505
000014E5  626520            bound sp,[di+0x20]
000014E8  686F74            push word 0x746f
000014EB  2E204926          and [cs:bx+di+0x26],cl
000014EF  7368              jnc 0x1559
000014F1  61                popa
000014F2  6C                insb
000014F3  6C                insb
000014F4  207465            and [si+0x65],dh
000014F7  61                popa
000014F8  636820            arpl [bx+si+0x20],bp
000014FB  796F              jns 0x156c
000014FD  7520              jnz 0x151f
000014FF  7468              jz 0x1569
00001501  65204D61          and [gs:di+0x61],cl
00001505  676963205370      imul sp,[ebx+0x20],0x7053
0000150B  656C              gs insb
0000150D  6C                insb
0000150E  206F66            and [bx+0x66],ch
00001511  205761            and [bx+0x61],dl
00001514  7465              jz 0x157b
00001516  723A              jc 0x1552
00001518  204167            and [bx+di+0x67],al
0000151B  7561              jnz 0x157e
0000151D  2EFF0C            dec word [cs:si]
00001520  FF00              inc word [bx+si]
00001522  49                dec cx
00001523  20616D            and [bx+di+0x6d],ah
00001526  207468            and [si+0x68],dh
00001529  65205361          and [gs:bp+di+0x61],dl
0000152D  6765206F66        and [gs:edi+0x66],ch
00001532  20416C            and [bx+di+0x6c],al
00001535  6C                insb
00001536  205361            and [bp+di+0x61],dl
00001539  6765732C          gs a32 jnc 0x1569
0000153D  20496E            and [bx+di+0x6e],cl
00001540  64696861722E      imul bp,[fs:bx+si+0x61],0x2e72
00001546  2F                das
00001547  42                inc dx
00001548  7261              jc 0x15ab
0000154A  7665              jna 0x15b1
0000154C  206C61            and [si+0x61],ch
0000154F  642C20            fs sub al,0x20
00001552  796F              jns 0x15c3
00001554  755C              jnz 0x15b2
00001556  7665              jna 0x15bd
00001558  20646F            and [si+0x6f],ah
0000155B  6E                outsb
0000155C  65207765          and [gs:bx+0x65],dh
00001560  6C                insb
00001561  6C                insb
00001562  20746F            and [si+0x6f],dh
00001565  206765            and [bx+0x65],ah
00001568  7420              jz 0x158a
0000156A  7468              jz 0x15d4
0000156C  6973206661        imul si,[bp+di+0x20],0x6166
00001571  722E              jc 0x15a1
00001573  2F                das
00001574  0F49267368        cmovns sp,[0x6873]
00001579  61                popa
0000157A  6C                insb
0000157B  6C                insb
0000157C  207465            and [si+0x65],dh
0000157F  61                popa
00001580  636820            arpl [bx+si+0x20],bp
00001583  796F              jns 0x15f4
00001585  7520              jnz 0x15a7
00001587  7468              jz 0x15f1
00001589  65204D61          and [gs:di+0x61],cl
0000158D  676963205370      imul sp,[ebx+0x20],0x7053
00001593  656C              gs insb
00001595  6C                insb
00001596  206F66            and [bx+0x66],ch
00001599  204C69            and [si+0x69],cl
0000159C  6768746E          a32 push word 0x6e74
000015A0  696E673A20        imul bp,[bp+0x67],0x203a
000015A5  47                inc di
000015A6  7565              jnz 0x160d
000015A8  7272              jc 0x161c
000015AA  61                popa
000015AB  2EFF0D            dec word [cs:di]
000015AE  FF00              inc word [bx+si]
000015B0  2020              and [bx+si],ah
000015B2  2020              and [bx+si],ah
000015B4  2020              and [bx+si],ah
000015B6  44                inc sp
000015B7  69736B2065        imul si,[bp+di+0x6b],0x6520
000015BC  7272              jc 0x1630
000015BE  6F                outsw
000015BF  722E              jc 0x15ef
000015C1  0D506C            or ax,0x6c50
000015C4  6561              gs popa
000015C6  7365              jnc 0x162d
000015C8  206368            and [bp+di+0x68],ah
000015CB  65636B20          arpl [gs:bp+di+0x20],bp
000015CF  796F              jns 0x1640
000015D1  7572              jnz 0x1645
000015D3  206469            and [si+0x69],ah
000015D6  736B              jnc 0x1643
000015D8  0D2020            or ax,0x2020
000015DB  61                popa
000015DC  6E                outsb
000015DD  64207072          and [fs:bx+si+0x72],dh
000015E1  657373            gs jnc 0x1657
000015E4  207370            and [bp+di+0x70],dh
000015E7  61                popa
000015E8  636562            arpl [di+0x62],sp
000015EB  61                popa
000015EC  722E              jc 0x161c
000015EE  FF                db 0xff
000015EF  FB                sti
000015F0  B570              mov ch,0x70
000015F2  B6EB              mov dh,0xeb
000015F4  B66D              mov dh,0x6d
000015F6  B71C              mov bh,0x1c
000015F8  B8B2B8            mov ax,0xb8b2
000015FB  54                push sp
000015FC  B9AFB9            mov cx,0xb9af
000015FF  0C4D              or al,0x4d
00001601  7920              jns 0x1623
00001603  6D                insw
00001604  61                popa
00001605  7374              jnc 0x167b
00001607  65722C            gs jc 0x1636
0000160A  207468            and [si+0x68],dh
0000160D  65205361          and [gs:bp+di+0x61],dl
00001611  6765205961        and [gs:ecx+0x61],bl
00001616  736D              jnc 0x1685
00001618  696E2C2072        imul bp,[bp+0x2c],0x7220
0000161D  657369            gs jnc 0x1689
00001620  64657320          gs jnc 0x1644
00001624  696E207468        imul bp,[bp+0x20],0x6874
00001629  6520756E          and [gs:di+0x6e],dh
0000162D  64657267          gs jc 0x1698
00001631  726F              jc 0x16a2
00001633  756E              jnz 0x16a3
00001635  6420746F          and [fs:si+0x6f],dh
00001639  776E              ja 0x16a9
0000163B  2E205368          and [cs:bp+di+0x68],dl
0000163F  65206973          and [gs:bx+di+0x73],ch
00001643  206120            and [bx+di+0x20],ah
00001646  7065              jo 0x16ad
00001648  7273              jc 0x16bd
0000164A  6F                outsw
0000164B  6E                outsb
0000164C  20796F            and [bx+di+0x6f],bh
0000164F  7520              jnz 0x1671
00001651  63616E            arpl [bx+di+0x6e],sp
00001654  207475            and [si+0x75],dh
00001657  726E              jc 0x16c7
00001659  20746F            and [si+0x6f],dh
0000165C  206966            and [bx+di+0x66],ch
0000165F  20796F            and [bx+di+0x6f],bh
00001662  7520              jnz 0x1684
00001664  61                popa
00001665  7265              jc 0x16cc
00001667  20696E            and [bx+di+0x6e],ch
0000166A  206E65            and [bp+0x65],ch
0000166D  65642E2011        and [cs:bx+di],dl
00001672  FF00              inc word [bx+si]
00001674  0C57              or al,0x57
00001676  68656E            push word 0x6e65
00001679  20796F            and [bx+di+0x6f],bh
0000167C  7520              jnz 0x169e
0000167E  6C                insb
0000167F  6561              gs popa
00001681  7665              jna 0x16e8
00001683  207468            and [si+0x68],dh
00001686  65206369          and [gs:bp+di+0x69],ah
0000168A  7479              jz 0x1705
0000168C  2C20              sub al,0x20
0000168E  636C69            arpl [si+0x69],bp
00001691  6D                insw
00001692  6220              bound sp,[bx+si]
00001694  746F              jz 0x1705
00001696  207468            and [si+0x68],dh
00001699  6520706C          and [gs:bx+si+0x6c],dh
0000169D  61                popa
0000169E  7465              jz 0x1705
000016A0  61                popa
000016A1  7520              jnz 0x16c3
000016A3  6F                outsw
000016A4  6E                outsb
000016A5  207468            and [si+0x68],dh
000016A8  65206C65          and [gs:si+0x65],ch
000016AC  66742E            jz 0x16dd
000016AF  20596F            and [bx+di+0x6f],bl
000016B2  755C              jnz 0x1710
000016B4  6C                insb
000016B5  6C                insb
000016B6  207365            and [bp+di+0x65],dh
000016B9  65206120          and [gs:bx+di+0x20],ah
000016BD  646F              fs outsw
000016BF  6F                outsw
000016C0  7220              jc 0x16e2
000016C2  7468              jz 0x172c
000016C4  61                popa
000016C5  7420              jz 0x16e7
000016C7  6C                insb
000016C8  6F                outsw
000016C9  6F                outsw
000016CA  6B73206C          imul si,[bp+di+0x20],0x6c
000016CE  696B652074        imul bp,[bp+di+0x65],0x7420
000016D3  686520            push word 0x2065
000016D6  657869            gs js 0x1742
000016D9  7420              jz 0x16fb
000016DB  66726F            jc 0x174d
000016DE  6D                insw
000016DF  207468            and [si+0x68],dh
000016E2  697320776F        imul si,[bp+di+0x20],0x6f77
000016E7  726C              jc 0x1755
000016E9  642E2011          and [cs:bx+di],dl
000016ED  FF00              inc word [bx+si]
000016EF  0C54              or al,0x54
000016F1  686520            push word 0x2065
000016F4  657869            gs js 0x1760
000016F7  7420              jz 0x1719
000016F9  66726F            jc 0x176b
000016FC  6D                insw
000016FD  207468            and [si+0x68],dh
00001700  697320776F        imul si,[bp+di+0x20],0x6f77
00001705  726C              jc 0x1773
00001707  64206973          and [fs:bx+di+0x73],ch
0000170B  207665            and [bp+0x65],dh
0000170E  7279              jc 0x1789
00001710  206E65            and [bp+0x65],ch
00001713  61                popa
00001714  7220              jc 0x1736
00001716  7468              jz 0x1780
00001718  65206578          and [gs:di+0x78],ah
0000171C  6974206672        imul si,[si+0x20],0x7266
00001721  6F                outsw
00001722  6D                insw
00001723  207468            and [si+0x68],dh
00001726  65207669          and [gs:bp+0x69],dh
0000172A  6C                insb
0000172B  6C                insb
0000172C  61                popa
0000172D  67652E20486F      and [cs:eax+0x6f],cl
00001733  7765              ja 0x179a
00001735  7665              jna 0x179c
00001737  722C              jc 0x1765
00001739  206265            and [bp+si+0x65],ah
0000173C  666F              outsd
0000173E  7265              jc 0x17a5
00001740  20796F            and [bx+di+0x6f],bh
00001743  7520              jnz 0x1765
00001745  676F              a32 outsw
00001747  207468            and [si+0x68],dh
0000174A  657265            gs jc 0x17b2
0000174D  20796F            and [bx+di+0x6f],bh
00001750  7520              jnz 0x1772
00001752  6D                insw
00001753  7573              jnz 0x17c8
00001755  7420              jz 0x1777
00001757  686176            push word 0x7661
0000175A  65207468          and [gs:si+0x68],dh
0000175E  65204865          and [gs:bx+si+0x65],cl
00001762  726F              jc 0x17d3
00001764  5C                pop sp
00001765  7320              jnc 0x1787
00001767  43                inc bx
00001768  7265              jc 0x17cf
0000176A  7374              jnc 0x17e0
0000176C  2E2011            and [cs:bx+di],dl
0000176F  FF00              inc word [bx+si]
00001771  0C54              or al,0x54
00001773  686973            push word 0x7369
00001776  206973            and [bx+di+0x73],ch
00001779  206120            and [bx+di+0x20],ah
0000177C  6D                insw
0000177D  657373            gs jnc 0x17f3
00001780  61                popa
00001781  6765206672        and [gs:esi+0x72],ah
00001786  6F                outsw
00001787  6D                insw
00001788  207468            and [si+0x68],dh
0000178B  65205370          and [gs:bp+di+0x70],dl
0000178F  6972697473        imul si,[bp+si+0x69],0x7374
00001794  3A20              cmp ah,[bx+si]
00001796  42                inc dx
00001797  656E              gs outsb
00001799  64207768          and [fs:bx+0x68],dh
0000179D  656E              gs outsb
0000179F  20796F            and [bx+di+0x6f],bh
000017A2  7520              jnz 0x17c4
000017A4  7761              ja 0x1807
000017A6  6C                insb
000017A7  6B2061            imul sp,[bx+si],0x61
000017AA  206C6F            and [si+0x6f],ch
000017AD  7720              ja 0x17cf
000017AF  726F              jc 0x1820
000017B1  61                popa
000017B2  642E205761        and [cs:bx+0x61],dl
000017B7  6C                insb
000017B8  6B206E            imul sp,[bx+si],0x6e
000017BB  6F                outsw
000017BC  7420              jz 0x17de
000017BE  6F                outsw
000017BF  6E                outsb
000017C0  207468            and [si+0x68],dh
000017C3  65207374          and [gs:bp+di+0x74],dh
000017C7  65657020          gs jo 0x17eb
000017CB  7061              jo 0x182e
000017CD  7468              jz 0x1837
000017CF  207769            and [bx+0x69],dh
000017D2  7468              jz 0x183c
000017D4  207468            and [si+0x68],dh
000017D7  65206E65          and [gs:bp+0x65],ch
000017DB  65646C            fs insb
000017DE  657320            gs jnc 0x1801
000017E1  6F                outsw
000017E2  66206963          o32 and [bx+di+0x63],ch
000017E6  652C20            gs sub al,0x20
000017E9  63686F            arpl [bx+si+0x6f],bp
000017EC  6F                outsw
000017ED  7365              jnc 0x1854
000017EF  20616E            and [bx+di+0x6e],ah
000017F2  6F                outsw
000017F3  7468              jz 0x185d
000017F5  657220            gs jc 0x1818
000017F8  7061              jo 0x185b
000017FA  7468              jz 0x1864
000017FC  20696E            and [bx+di+0x6e],ch
000017FF  7374              jnc 0x1875
00001801  6561              gs popa
00001803  642E204865        and [cs:bx+si+0x65],cl
00001808  6564207765        and [fs:bx+0x65],dh
0000180D  6C                insb
0000180E  6C                insb
0000180F  207468            and [si+0x68],dh
00001812  657365            gs jnc 0x187a
00001815  20776F            and [bx+0x6f],dh
00001818  7264              jc 0x187e
0000181A  732E              jnc 0x184a
0000181C  2011              and [bx+di],dl
0000181E  FF00              inc word [bx+si]
00001820  0C59              or al,0x59
00001822  6F                outsw
00001823  7520              jnz 0x1845
00001825  63616E            arpl [bx+di+0x6e],sp
00001828  5C                pop sp
00001829  7420              jz 0x184b
0000182B  6465666561        gs popad
00001830  7420              jz 0x1852
00001832  7468              jz 0x189c
00001834  65206465          and [gs:si+0x65],ah
00001838  6D                insw
00001839  6F                outsw
0000183A  6E                outsb
0000183B  7320              jnc 0x185d
0000183D  61                popa
0000183E  7420              jz 0x1860
00001840  7468              jz 0x18aa
00001842  65206564          and [gs:di+0x64],ah
00001846  6765206F66        and [gs:edi+0x66],ch
0000184B  207468            and [si+0x68],dh
0000184E  65206261          and [gs:bp+si+0x61],ah
00001852  646C              fs insb
00001854  61                popa
00001855  6E                outsb
00001856  647320            fs jnc 0x1879
00001859  7769              ja 0x18c4
0000185B  7468              jz 0x18c5
0000185D  6F                outsw
0000185E  7574              jnz 0x18d4
00001860  207468            and [si+0x68],dh
00001863  65204B6E          and [gs:bp+di+0x6e],cl
00001867  696768745C        imul sp,[bx+0x68],0x5c74
0000186C  7320              jnc 0x188e
0000186E  53                push bx
0000186F  776F              ja 0x18e0
00001871  7264              jc 0x18d7
00001873  2E20556E          and [cs:di+0x6e],dl
00001877  7469              jz 0x18e2
00001879  6C                insb
0000187A  20796F            and [bx+di+0x6f],bh
0000187D  7520              jnz 0x189f
0000187F  67657420          gs a32 jz 0x18a3
00001883  7468              jz 0x18ed
00001885  61                popa
00001886  7420              jz 0x18a8
00001888  7377              jnc 0x1901
0000188A  6F                outsw
0000188B  7264              jc 0x18f1
0000188D  2C20              sub al,0x20
0000188F  646F              fs outsw
00001891  206E6F            and [bp+0x6f],ch
00001894  7420              jz 0x18b6
00001896  6F                outsw
00001897  7065              jo 0x18fe
00001899  6E                outsb
0000189A  207468            and [si+0x68],dh
0000189D  6520646F          and [gs:si+0x6f],ah
000018A1  6F                outsw
000018A2  7220              jc 0x18c4
000018A4  6F                outsw
000018A5  66207468          o32 and [si+0x68],dh
000018A9  65206465          and [gs:si+0x65],ah
000018AD  6D                insw
000018AE  6F                outsw
000018AF  6E                outsb
000018B0  732E              jnc 0x18e0
000018B2  2011              and [bx+di],dl
000018B4  FF00              inc word [bx+si]
000018B6  0C4F              or al,0x4f
000018B8  6E                outsb
000018B9  636520            arpl [di+0x20],sp
000018BC  796F              jns 0x192d
000018BE  7520              jnz 0x18e0
000018C0  6C                insb
000018C1  6561              gs popa
000018C3  7665              jna 0x192a
000018C5  207468            and [si+0x68],dh
000018C8  697320776F        imul si,[bp+di+0x20],0x6f77
000018CD  726C              jc 0x193b
000018CF  642C20            fs sub al,0x20
000018D2  67657420          gs a32 jz 0x18f6
000018D6  7468              jz 0x1940
000018D8  65205369          and [gs:bp+di+0x69],dl
000018DC  6C                insb
000018DD  6B61726E          imul sp,[bx+di+0x72],0x6e
000018E1  207368            and [bp+di+0x68],dh
000018E4  6F                outsw
000018E5  657320            gs jnc 0x1908
000018E8  6D                insw
000018E9  61                popa
000018EA  6465206279        and [gs:bp+si+0x79],ah
000018EF  207468            and [si+0x68],dh
000018F2  65207370          and [gs:bp+di+0x70],dh
000018F6  6972697473        imul si,[bp+si+0x69],0x7374
000018FB  206174            and [bx+di+0x74],ah
000018FE  207468            and [si+0x68],dh
00001901  65206265          and [gs:bp+si+0x65],ah
00001905  686573            push word 0x7365
00001908  7420              jz 0x192a
0000190A  6F                outsw
0000190B  66205065          o32 and [bx+si+0x65],dl
0000190F  7263              jc 0x1974
00001911  656C              gs insb
00001913  2E204966          and [cs:bx+di+0x66],cl
00001917  20796F            and [bx+di+0x6f],bh
0000191A  7520              jnz 0x193c
0000191C  646F              fs outsw
0000191E  206E6F            and [bp+0x6f],ch
00001921  7420              jz 0x1943
00001923  67657420          gs a32 jz 0x1947
00001927  7468              jz 0x1991
00001929  6F                outsw
0000192A  7365              jnc 0x1991
0000192C  2C20              sub al,0x20
0000192E  796F              jns 0x199f
00001930  7520              jnz 0x1952
00001932  63616E            arpl [bx+di+0x6e],sp
00001935  6E                outsb
00001936  6F                outsw
00001937  7420              jz 0x1959
00001939  7472              jz 0x19ad
0000193B  61                popa
0000193C  7665              jna 0x19a3
0000193E  6C                insb
0000193F  206661            and [bp+0x61],ah
00001942  7220              jc 0x1964
00001944  66726F            jc 0x19b6
00001947  6D                insw
00001948  207468            and [si+0x68],dh
0000194B  697320776F        imul si,[bp+di+0x20],0x6f77
00001950  726C              jc 0x19be
00001952  642E2011          and [cs:bx+di],dl
00001956  FF00              inc word [bx+si]
00001958  0C54              or al,0x54
0000195A  686174            push word 0x7461
0000195D  20776F            and [bx+0x6f],dh
00001960  726C              jc 0x19ce
00001962  64206973          and [fs:bx+di+0x73],ch
00001966  20636F            and [bp+di+0x6f],ah
00001969  6E                outsb
0000196A  7472              jz 0x19de
0000196C  6F                outsw
0000196D  6C                insb
0000196E  6C                insb
0000196F  6564206279        and [fs:bp+si+0x79],ah
00001974  206472            and [si+0x72],ah
00001977  61                popa
00001978  676F              a32 outsw
0000197A  6E                outsb
0000197B  732E              jnc 0x19ab
0000197D  20546F            and [si+0x6f],dl
00001980  206765            and [bx+0x65],ah
00001983  7420              jz 0x19a5
00001985  7468              jz 0x19ef
00001987  657265            gs jc 0x19ef
0000198A  2C20              sub al,0x20
0000198C  796F              jns 0x19fd
0000198E  7520              jnz 0x19b0
00001990  686176            push word 0x7661
00001993  6520746F          and [gs:si+0x6f],dh
00001997  206F70            and [bx+0x70],ch
0000199A  656E              gs outsb
0000199C  207468            and [si+0x68],dh
0000199F  7265              jc 0x1a06
000019A1  6520636C          and [gs:bp+di+0x6c],ah
000019A5  6F                outsw
000019A6  7365              jnc 0x1a0d
000019A8  6420646F          and [fs:si+0x6f],ah
000019AC  6F                outsw
000019AD  7273              jc 0x1a22
000019AF  2E11FF            cs adc di,di
000019B2  000C              add [si],cl
000019B4  41                inc cx
000019B5  7420              jz 0x19d7
000019B7  7468              jz 0x1a21
000019B9  65206564          and [gs:di+0x64],ah
000019BD  6765206F66        and [gs:edi+0x66],ch
000019C2  207468            and [si+0x68],dh
000019C5  697320776F        imul si,[bp+di+0x20],0x6f77
000019CA  726C              jc 0x1a38
000019CC  64206973          and [fs:bx+di+0x73],ch
000019D0  207468            and [si+0x68],dh
000019D3  65206669          and [gs:bp+0x69],ah
000019D7  6E                outsb
000019D8  61                popa
000019D9  6C                insb
000019DA  20666F            and [bp+0x6f],ah
000019DD  652C20            gs sub al,0x20
000019E0  4A                dec dx
000019E1  61                popa
000019E2  7368              jnc 0x1a4c
000019E4  69696E2E2F        imul bp,[bx+di+0x6e],0x2f2e
000019E9  54                push sp
000019EA  6F                outsw
000019EB  206669            and [bp+0x69],ah
000019EE  67687420          a32 push word 0x2074
000019F2  4A                dec dx
000019F3  61                popa
000019F4  7368              jnc 0x1a5e
000019F6  69696E2C20        imul bp,[bx+di+0x6e],0x202c
000019FB  796F              jns 0x1a6c
000019FD  7520              jnz 0x1a1f
000019FF  6D                insw
00001A00  7573              jnz 0x1a75
00001A02  7420              jz 0x1a24
00001A04  686176            push word 0x7661
00001A07  65207468          and [gs:si+0x68],dh
00001A0B  65205377          and [gs:bp+di+0x77],dl
00001A0F  6F                outsw
00001A10  7264              jc 0x1a76
00001A12  206F66            and [bx+0x66],ch
00001A15  207468            and [si+0x68],dh
00001A18  65204661          and [gs:bp+0x61],al
00001A1C  6972792046        imul si,[bp+si+0x79],0x4620
00001A21  6C                insb
00001A22  61                popa
00001A23  6D                insw
00001A24  652E20416E        and [cs:bx+di+0x6e],al
00001A29  6420746F          and [fs:si+0x6f],dh
00001A2D  206765            and [bx+0x65],ah
00001A30  7420              jz 0x1a52
00001A32  7468              jz 0x1a9c
00001A34  657265            gs jc 0x1a9c
00001A37  2C20              sub al,0x20
00001A39  796F              jns 0x1aaa
00001A3B  7520              jnz 0x1a5d
00001A3D  6D                insw
00001A3E  7573              jnz 0x1ab3
00001A40  7420              jz 0x1a62
00001A42  746F              jz 0x1ab3
00001A44  7070              jo 0x1ab6
00001A46  6C                insb
00001A47  65207468          and [gs:si+0x68],dh
00001A4B  6520696E          and [gs:bx+di+0x6e],ch
00001A4F  7669              jna 0x1aba
00001A51  6E                outsb
00001A52  636962            arpl [bx+di+0x62],bp
00001A55  6C                insb
00001A56  65206D6F          and [gs:di+0x6f],ch
00001A5A  6E                outsb
00001A5B  7374              jnc 0x1ad1
00001A5D  657220            gs jc 0x1a80
00001A60  41                inc cx
00001A61  6C                insb
00001A62  677569            a32 jnz 0x1ace
00001A65  656E              gs outsb
00001A67  2E11FF            cs adc di,di
00001A6A  000C              add [si],cl
00001A6C  57                push di
00001A6D  68696C            push word 0x6c69
00001A70  6520796F          and [gs:bx+di+0x6f],bh
00001A74  7520              jnz 0x1a96
00001A76  7765              ja 0x1add
00001A78  7265              jc 0x1adf
00001A7A  20756E            and [di+0x6e],dh
00001A7D  636F6E            arpl [bx+0x6e],bp
00001A80  7363              jnc 0x1ae5
00001A82  696F75732C        imul bp,[bx+0x75],0x2c73
00001A87  207468            and [si+0x68],dh
00001A8A  65207370          and [gs:bp+di+0x70],dh
00001A8E  6972697473        imul si,[bp+si+0x69],0x7374
00001A93  206272            and [bp+si+0x72],ah
00001A96  6F                outsw
00001A97  7567              jnz 0x1b00
00001A99  687420            push word 0x2074
00001A9C  796F              jns 0x1b0d
00001A9E  7520              jnz 0x1ac0
00001AA0  686572            push word 0x7265
00001AA3  652E2F            cs das
00001AA6  FF04              inc word [si]
00001AA8  FF04              inc word [si]
00001AAA  42                inc dx
00001AAB  65206361          and [gs:bp+di+0x61],ah
00001AAF  7265              jc 0x1b16
00001AB1  66756C            jnz 0x1b20
00001AB4  206E6F            and [bp+0x6f],ch
00001AB7  7420              jz 0x1ad9
00001AB9  746F              jz 0x1b2a
00001ABB  206578            and [di+0x78],ah
00001ABE  686175            push word 0x7561
00001AC1  7374              jnc 0x1b37
00001AC3  20796F            and [bx+di+0x6f],bh
00001AC6  7572              jnz 0x1b3a
00001AC8  7365              jnc 0x1b2f
00001ACA  6C                insb
00001ACB  6620696E          o32 and [bx+di+0x6e],ch
00001ACF  206261            and [bp+si+0x61],ah
00001AD2  7474              jz 0x1b48
00001AD4  6C                insb
00001AD5  652E2F            cs das
00001AD8  FF04              inc word [si]
00001ADA  4E                dec si
00001ADB  6F                outsw
00001ADC  7720              ja 0x1afe
00001ADE  626520            bound sp,[di+0x20]
00001AE1  6F                outsw
00001AE2  6E                outsb
00001AE3  20796F            and [bx+di+0x6f],bh
00001AE6  7572              jnz 0x1b5a
00001AE8  207761            and [bx+0x61],dh
00001AEB  792E              jns 0x1b1b
00001AED  20FF              and bh,bh
00001AEF  0454              add al,0x54
00001AF1  686520            push word 0x2065
00001AF4  7370              jnc 0x1b66
00001AF6  6972697473        imul si,[bp+si+0x69],0x7374
00001AFB  206172            and [bx+di+0x72],ah
00001AFE  65206C6F          and [gs:si+0x6f],ch
00001B02  6F                outsw
00001B03  6B696E67          imul bp,[bx+di+0x6e],0x67
00001B07  206166            and [bx+di+0x66],ah
00001B0A  7465              jz 0x1b71
00001B0C  7220              jc 0x1b2e
00001B0E  796F              jns 0x1b7f
00001B10  752E              jnz 0x1b40
00001B12  2011              and [bx+di],dl
00001B14  FF                db 0xff
00001B15  FF00              inc word [bx+si]
00001B17  0000              add [bx+si],al
00001B19  0000              add [bx+si],al
00001B1B  0000              add [bx+si],al
00001B1D  0000              add [bx+si],al
00001B1F  0000              add [bx+si],al
00001B21  0000              add [bx+si],al
00001B23  0000              add [bx+si],al
00001B25  0000              add [bx+si],al
00001B27  0000              add [bx+si],al
00001B29  0000              add [bx+si],al
00001B2B  0000              add [bx+si],al
00001B2D  0000              add [bx+si],al
00001B2F  0000              add [bx+si],al
00001B31  0000              add [bx+si],al
00001B33  0000              add [bx+si],al
00001B35  0000              add [bx+si],al
00001B37  0000              add [bx+si],al
00001B39  0000              add [bx+si],al
00001B3B  0000              add [bx+si],al
00001B3D  0000              add [bx+si],al
00001B3F  0000              add [bx+si],al
