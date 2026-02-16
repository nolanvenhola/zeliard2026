00000100  4D                dec bp
00000101  5A                pop dx
00000102  EA01060006        jmp word 0x600:word 0x601
00000107  0020              add [bx+si],ah
00000109  0001              add [bx+di],al
0000010B  0201              add al,[bx+di]
0000010D  029F0000          add bl,[bx+0x0]
00000111  2011              and [bx+di],dl
00000113  AC                lodsb
00000114  0000              add [bx+si],al
00000116  0000              add [bx+si],al
00000118  1E                push ds
00000119  0000              add [bx+si],al
0000011B  0001              add [bx+di],al
0000011D  000C              add [si],cl
0000011F  0000              add [bx+si],al
00000121  006B03            add [bp+di+0x3],ch
00000124  0000              add [bx+si],al
00000126  C6                db 0xc6
00000127  0800              or [bx+si],al
00000129  00CA              add dl,cl
0000012B  0800              or [bx+si],al
0000012D  00CE              add dh,cl
0000012F  0800              or [bx+si],al
00000131  00D2              add dl,dl
00000133  0800              or [bx+si],al
00000135  0000              add [bx+si],al
00000137  0000              add [bx+si],al
00000139  0000              add [bx+si],al
0000013B  0000              add [bx+si],al
0000013D  0000              add [bx+si],al
0000013F  0000              add [bx+si],al
00000141  0000              add [bx+si],al
00000143  0000              add [bx+si],al
00000145  0000              add [bx+si],al
00000147  0000              add [bx+si],al
00000149  0000              add [bx+si],al
0000014B  0000              add [bx+si],al
0000014D  0000              add [bx+si],al
0000014F  0000              add [bx+si],al
00000151  0000              add [bx+si],al
00000153  0000              add [bx+si],al
00000155  0000              add [bx+si],al
00000157  0000              add [bx+si],al
00000159  0000              add [bx+si],al
0000015B  0000              add [bx+si],al
0000015D  0000              add [bx+si],al
0000015F  0000              add [bx+si],al
00000161  0000              add [bx+si],al
00000163  0000              add [bx+si],al
00000165  0000              add [bx+si],al
00000167  0000              add [bx+si],al
00000169  0000              add [bx+si],al
0000016B  0000              add [bx+si],al
0000016D  0000              add [bx+si],al
0000016F  0000              add [bx+si],al
00000171  0000              add [bx+si],al
00000173  0000              add [bx+si],al
00000175  0000              add [bx+si],al
00000177  0000              add [bx+si],al
00000179  0000              add [bx+si],al
0000017B  0000              add [bx+si],al
0000017D  0000              add [bx+si],al
0000017F  0000              add [bx+si],al
00000181  0000              add [bx+si],al
00000183  0000              add [bx+si],al
00000185  0000              add [bx+si],al
00000187  0000              add [bx+si],al
00000189  0000              add [bx+si],al
0000018B  0000              add [bx+si],al
0000018D  0000              add [bx+si],al
0000018F  0000              add [bx+si],al
00000191  0000              add [bx+si],al
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  0000              add [bx+si],al
0000019B  0000              add [bx+si],al
0000019D  0000              add [bx+si],al
0000019F  0000              add [bx+si],al
000001A1  0000              add [bx+si],al
000001A3  0000              add [bx+si],al
000001A5  0000              add [bx+si],al
000001A7  0000              add [bx+si],al
000001A9  0000              add [bx+si],al
000001AB  0000              add [bx+si],al
000001AD  0000              add [bx+si],al
000001AF  0000              add [bx+si],al
000001B1  0000              add [bx+si],al
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  0000              add [bx+si],al
000001BB  0000              add [bx+si],al
000001BD  0000              add [bx+si],al
000001BF  0000              add [bx+si],al
000001C1  0000              add [bx+si],al
000001C3  0000              add [bx+si],al
000001C5  0000              add [bx+si],al
000001C7  0000              add [bx+si],al
000001C9  0000              add [bx+si],al
000001CB  0000              add [bx+si],al
000001CD  0000              add [bx+si],al
000001CF  0000              add [bx+si],al
000001D1  0000              add [bx+si],al
000001D3  0000              add [bx+si],al
000001D5  0000              add [bx+si],al
000001D7  0000              add [bx+si],al
000001D9  0000              add [bx+si],al
000001DB  0000              add [bx+si],al
000001DD  0000              add [bx+si],al
000001DF  0000              add [bx+si],al
000001E1  0000              add [bx+si],al
000001E3  0000              add [bx+si],al
000001E5  0000              add [bx+si],al
000001E7  0000              add [bx+si],al
000001E9  0000              add [bx+si],al
000001EB  0000              add [bx+si],al
000001ED  0000              add [bx+si],al
000001EF  0000              add [bx+si],al
000001F1  0000              add [bx+si],al
000001F3  0000              add [bx+si],al
000001F5  0000              add [bx+si],al
000001F7  0000              add [bx+si],al
000001F9  0000              add [bx+si],al
000001FB  0000              add [bx+si],al
000001FD  0000              add [bx+si],al
000001FF  0000              add [bx+si],al
00000201  0000              add [bx+si],al
00000203  0000              add [bx+si],al
00000205  0000              add [bx+si],al
00000207  0000              add [bx+si],al
00000209  0000              add [bx+si],al
0000020B  0000              add [bx+si],al
0000020D  0000              add [bx+si],al
0000020F  0000              add [bx+si],al
00000211  0000              add [bx+si],al
00000213  0000              add [bx+si],al
00000215  0000              add [bx+si],al
00000217  0000              add [bx+si],al
00000219  0000              add [bx+si],al
0000021B  0000              add [bx+si],al
0000021D  0000              add [bx+si],al
0000021F  0000              add [bx+si],al
00000221  0000              add [bx+si],al
00000223  0000              add [bx+si],al
00000225  0000              add [bx+si],al
00000227  0000              add [bx+si],al
00000229  0000              add [bx+si],al
0000022B  0000              add [bx+si],al
0000022D  0000              add [bx+si],al
0000022F  0000              add [bx+si],al
00000231  0000              add [bx+si],al
00000233  0000              add [bx+si],al
00000235  0000              add [bx+si],al
00000237  0000              add [bx+si],al
00000239  0000              add [bx+si],al
0000023B  0000              add [bx+si],al
0000023D  0000              add [bx+si],al
0000023F  0000              add [bx+si],al
00000241  0000              add [bx+si],al
00000243  0000              add [bx+si],al
00000245  0000              add [bx+si],al
00000247  0000              add [bx+si],al
00000249  0000              add [bx+si],al
0000024B  0000              add [bx+si],al
0000024D  0000              add [bx+si],al
0000024F  0000              add [bx+si],al
00000251  0000              add [bx+si],al
00000253  0000              add [bx+si],al
00000255  0000              add [bx+si],al
00000257  0000              add [bx+si],al
00000259  0000              add [bx+si],al
0000025B  0000              add [bx+si],al
0000025D  0000              add [bx+si],al
0000025F  0000              add [bx+si],al
00000261  0000              add [bx+si],al
00000263  0000              add [bx+si],al
00000265  0000              add [bx+si],al
00000267  0000              add [bx+si],al
00000269  0000              add [bx+si],al
0000026B  0000              add [bx+si],al
0000026D  0000              add [bx+si],al
0000026F  0000              add [bx+si],al
00000271  0000              add [bx+si],al
00000273  0000              add [bx+si],al
00000275  0000              add [bx+si],al
00000277  0000              add [bx+si],al
00000279  0000              add [bx+si],al
0000027B  0000              add [bx+si],al
0000027D  0000              add [bx+si],al
0000027F  0000              add [bx+si],al
00000281  0000              add [bx+si],al
00000283  0000              add [bx+si],al
00000285  0000              add [bx+si],al
00000287  0000              add [bx+si],al
00000289  0000              add [bx+si],al
0000028B  0000              add [bx+si],al
0000028D  0000              add [bx+si],al
0000028F  0000              add [bx+si],al
00000291  0000              add [bx+si],al
00000293  0000              add [bx+si],al
00000295  0000              add [bx+si],al
00000297  0000              add [bx+si],al
00000299  0000              add [bx+si],al
0000029B  0000              add [bx+si],al
0000029D  0000              add [bx+si],al
0000029F  0000              add [bx+si],al
000002A1  0000              add [bx+si],al
000002A3  0000              add [bx+si],al
000002A5  0000              add [bx+si],al
000002A7  0000              add [bx+si],al
000002A9  0000              add [bx+si],al
000002AB  0000              add [bx+si],al
000002AD  0000              add [bx+si],al
000002AF  0000              add [bx+si],al
000002B1  0000              add [bx+si],al
000002B3  0000              add [bx+si],al
000002B5  0000              add [bx+si],al
000002B7  0000              add [bx+si],al
000002B9  0000              add [bx+si],al
000002BB  0000              add [bx+si],al
000002BD  0000              add [bx+si],al
000002BF  0000              add [bx+si],al
000002C1  0000              add [bx+si],al
000002C3  0000              add [bx+si],al
000002C5  0000              add [bx+si],al
000002C7  0000              add [bx+si],al
000002C9  0000              add [bx+si],al
000002CB  0000              add [bx+si],al
000002CD  0000              add [bx+si],al
000002CF  0000              add [bx+si],al
000002D1  0000              add [bx+si],al
000002D3  0000              add [bx+si],al
000002D5  0000              add [bx+si],al
000002D7  0000              add [bx+si],al
000002D9  0000              add [bx+si],al
000002DB  0000              add [bx+si],al
000002DD  0000              add [bx+si],al
000002DF  0000              add [bx+si],al
000002E1  0000              add [bx+si],al
000002E3  0000              add [bx+si],al
000002E5  0000              add [bx+si],al
000002E7  0000              add [bx+si],al
000002E9  0000              add [bx+si],al
000002EB  0000              add [bx+si],al
000002ED  0000              add [bx+si],al
000002EF  0000              add [bx+si],al
000002F1  0000              add [bx+si],al
000002F3  0000              add [bx+si],al
000002F5  0000              add [bx+si],al
000002F7  0000              add [bx+si],al
000002F9  0000              add [bx+si],al
000002FB  0000              add [bx+si],al
000002FD  0000              add [bx+si],al
000002FF  00FC              add ah,bh
00000301  B430              mov ah,0x30
00000303  CD21              int byte 0x21
00000305  3C02              cmp al,0x2
00000307  7302              jnc 0x30b
00000309  CD20              int byte 0x20
0000030B  B80000            mov ax,0x0
0000030E  8ED8              mov ds,ax
00000310  E8E605            call 0x8f9
00000313  BAE207            mov dx,0x7e2
00000316  B8003D            mov ax,0x3d00
00000319  CD21              int byte 0x21
0000031B  7308              jnc 0x325
0000031D  E80005            call 0x820
00000320  B8004C            mov ax,0x4c00
00000323  CD21              int byte 0x21
00000325  8BD8              mov bx,ax
00000327  E86603            call 0x690
0000032A  7303              jnc 0x32f
0000032C  E99B04            jmp 0x7ca
0000032F  E89A03            call 0x6cc
00000332  E85B03            call 0x690
00000335  7303              jnc 0x33a
00000337  E99004            jmp 0x7ca
0000033A  E80604            call 0x743
0000033D  E85003            call 0x690
00000340  7303              jnc 0x345
00000342  E98504            jmp 0x7ca
00000345  E83404            call 0x77c
00000348  E84503            call 0x690
0000034B  7303              jnc 0x350
0000034D  E97A04            jmp 0x7ca
00000350  E84004            call 0x793
00000353  B43E              mov ah,0x3e
00000355  CD21              int byte 0x21
00000357  BB0040            mov bx,0x4000
0000035A  B448              mov ah,0x48
0000035C  CD21              int byte 0x21
0000035E  731D              jnc 0x37d
00000360  3D0800            cmp ax,0x8
00000363  750C              jnz 0x371
00000365  BAFF06            mov dx,0x6ff
00000368  B409              mov ah,0x9
0000036A  CD21              int byte 0x21
0000036C  B8004C            mov ax,0x4c00
0000036F  CD21              int byte 0x21
00000371  BA2507            mov dx,0x725
00000374  B409              mov ah,0x9
00000376  CD21              int byte 0x21
00000378  B8004C            mov ax,0x4c00
0000037B  CD21              int byte 0x21
0000037D  A3AF08            mov [0x8af],ax
00000380  E80203            call 0x685
00000383  BA4C06            mov dx,0x64c
00000386  B409              mov ah,0x9
00000388  CD21              int byte 0x21
0000038A  2EF606E808FF      test byte [cs:0x8e8],0xff
00000390  742E              jz 0x3c0
00000392  2E8926C208        mov [cs:0x8c2],sp
00000397  2E8C16C408        mov word [cs:0x8c4],ss
0000039C  BFED07            mov di,0x7ed
0000039F  BAEF07            mov dx,0x7ef
000003A2  BBC608            mov bx,0x8c6
000003A5  B8004B            mov ax,0x4b00
000003A8  CD21              int byte 0x21
000003AA  FA                cli
000003AB  2E8B26C208        mov sp,[cs:0x8c2]
000003B0  2E8E16C408        mov ss,word [cs:0x8c4]
000003B5  FB                sti
000003B6  7308              jnc 0x3c0
000003B8  E86504            call 0x820
000003BB  B8004C            mov ax,0x4c00
000003BE  CD21              int byte 0x21
000003C0  B80835            mov ax,0x3508
000003C3  CD21              int byte 0x21
000003C5  891EB108          mov [0x8b1],bx
000003C9  8C06B308          mov word [0x8b3],es
000003CD  B80935            mov ax,0x3509
000003D0  CD21              int byte 0x21
000003D2  891EB508          mov [0x8b5],bx
000003D6  8C06B708          mov word [0x8b7],es
000003DA  B86035            mov ax,0x3560
000003DD  CD21              int byte 0x21
000003DF  891EB908          mov [0x8b9],bx
000003E3  8C06BB08          mov word [0x8bb],es
000003E7  B86135            mov ax,0x3561
000003EA  CD21              int byte 0x21
000003EC  891EBD08          mov [0x8bd],bx
000003F0  8C06BF08          mov word [0x8bf],es
000003F4  2E8E06AF08        mov es,word [cs:0x8af]
000003F9  26C70600FFD902    mov word [es:0xff00],0x2d9
00000400  268C0E02FF        mov word [es:0xff02],cs
00000405  2EC516B108        lds dx,word [cs:0x8b1]
0000040A  26891604FF        mov [es:0xff04],dx
0000040F  268C1E06FF        mov word [es:0xff06],ds
00000414  2EC516B508        lds dx,word [cs:0x8b5]
00000419  26891679FF        mov [es:0xff79],dx
0000041E  268C1E7BFF        mov word [es:0xff7b],ds
00000423  26C60616FF00      mov byte [es:0xff16],0x0
00000429  26C60617FF00      mov byte [es:0xff17],0x0
0000042F  26C70618FF0000    mov word [es:0xff18],0x0
00000436  26C6061DFF00      mov byte [es:0xff1d],0x0
0000043C  26C6061EFF00      mov byte [es:0xff1e],0x0
00000442  26C7061FFF0000    mov word [es:0xff1f],0x0
00000449  26C60626FFFF      mov byte [es:0xff26],0xff
0000044F  26C60609FFFF      mov byte [es:0xff09],0xff
00000455  26C60627FF00      mov byte [es:0xff27],0x0
0000045B  26C60628FF00      mov byte [es:0xff28],0x0
00000461  26C6060BFF00      mov byte [es:0xff0b],0x0
00000467  26C60608FF00      mov byte [es:0xff08],0x0
0000046D  26C60675FF00      mov byte [es:0xff75],0x0
00000473  26C60633FF05      mov byte [es:0xff33],0x5
00000479  26C60634FF00      mov byte [es:0xff34],0x0
0000047F  26C60638FF00      mov byte [es:0xff38],0x0
00000485  26C60639FF00      mov byte [es:0xff39],0x0
0000048B  26C6063AFF00      mov byte [es:0xff3a],0x0
00000491  26C60643FF00      mov byte [es:0xff43],0x0
00000497  26C6063CFF00      mov byte [es:0xff3c],0x0
0000049D  26C6063BFF00      mov byte [es:0xff3b],0x0
000004A3  26C60674FF00      mov byte [es:0xff74],0x0
000004A9  26C60640FF00      mov byte [es:0xff40],0x0
000004AF  26C60642FF00      mov byte [es:0xff42],0x0
000004B5  26C60678FF00      mov byte [es:0xff78],0x0
000004BB  2EA0E908          mov al,[cs:0x8e9]
000004BF  26A20AFF          mov [es:0xff0a],al
000004C3  2EA0E808          mov al,[cs:0x8e8]
000004C7  26A215FF          mov [es:0xff15],al
000004CB  BF6CFF            mov di,0xff6c
000004CE  32C0              xor al,al
000004D0  B90800            mov cx,0x8
000004D3  F3AA              rep stosb
000004D5  0E                push cs
000004D6  1F                pop ds
000004D7  BE6908            mov si,0x869
000004DA  BF6CFF            mov di,0xff6c
000004DD  B90800            mov cx,0x8
000004E0  AC                lodsb
000004E1  3C2E              cmp al,0x2e
000004E3  740D              jz 0x4f2
000004E5  3C61              cmp al,0x61
000004E7  7206              jc 0x4ef
000004E9  3C7B              cmp al,0x7b
000004EB  7302              jnc 0x4ef
000004ED  245F              and al,0x5f
000004EF  AA                stosb
000004F0  E2EE              loop 0x4e0
000004F2  2EA0E708          mov al,[cs:0x8e7]
000004F6  26A214FF          mov [es:0xff14],al
000004FA  2EA1AF08          mov ax,[cs:0x8af]
000004FE  050010            add ax,0x1000
00000501  26A32CFF          mov [es:0xff2c],ax
00000505  0E                push cs
00000506  1F                pop ds
00000507  2E8E06AF08        mov es,word [cs:0x8af]
0000050C  BF5A08            mov di,0x85a
0000050F  F606C108FF        test byte [0x8c1],0xff
00000514  7403              jz 0x519
00000516  BF6708            mov di,0x867
00000519  E8D302            call 0x7ef
0000051C  2E8E06AF08        mov es,word [cs:0x8af]
00000521  BF0608            mov di,0x806
00000524  E8C802            call 0x7ef
00000527  2E8E06AF08        mov es,word [cs:0x8af]
0000052C  BF4F08            mov di,0x84f
0000052F  E8BD02            call 0x7ef
00000532  2E8E06AF08        mov es,word [cs:0x8af]
00000537  33DB              xor bx,bx
00000539  8A1EE708          mov bl,[0x8e7]
0000053D  03DB              add bx,bx
0000053F  8BBFFA07          mov di,[bx+0x7fa]
00000543  E8A902            call 0x7ef
00000546  2EA1AF08          mov ax,[cs:0x8af]
0000054A  05F00F            add ax,0xff0
0000054D  8EC0              mov es,ax
0000054F  BF8908            mov di,0x889
00000552  E89A02            call 0x7ef
00000555  2EA1AF08          mov ax,[cs:0x8af]
00000559  05F00F            add ax,0xff0
0000055C  8EC0              mov es,ax
0000055E  BF9B08            mov di,0x89b
00000561  E88B02            call 0x7ef
00000564  FA                cli
00000565  0E                push cs
00000566  1F                pop ds
00000567  BAF805            mov dx,0x5f8
0000056A  B82325            mov ax,0x2523
0000056D  CD21              int byte 0x21
0000056F  2E8E1EAF08        mov ds,word [cs:0x8af]
00000574  BA0301            mov dx,0x103
00000577  B80825            mov ax,0x2508
0000057A  CD21              int byte 0x21
0000057C  BA0001            mov dx,0x100
0000057F  B80925            mov ax,0x2509
00000582  CD21              int byte 0x21
00000584  BA0601            mov dx,0x106
00000587  B82425            mov ax,0x2524
0000058A  CD21              int byte 0x21
0000058C  BA0901            mov dx,0x109
0000058F  B86125            mov ax,0x2561
00000592  CD21              int byte 0x21
00000594  2EA1AF08          mov ax,[cs:0x8af]
00000598  8EC0              mov es,ax
0000059A  05F00F            add ax,0xff0
0000059D  8ED8              mov ds,ax
0000059F  26C7060CFF0001    mov word [es:0xff0c],0x100
000005A6  268C1E0EFF        mov word [es:0xff0e],ds
000005AB  26C70610FF0011    mov word [es:0xff10],0x1100
000005B2  268C1E12FF        mov word [es:0xff12],ds
000005B7  BA0301            mov dx,0x103
000005BA  B86025            mov ax,0x2560
000005BD  CD21              int byte 0x21
000005BF  B036              mov al,0x36
000005C1  E643              out byte 0x43,al
000005C3  B0B1              mov al,0xb1
000005C5  E640              out byte 0x40,al
000005C7  B013              mov al,0x13
000005C9  E640              out byte 0x40,al
000005CB  FB                sti
000005CC  E8AB02            call 0x87a
000005CF  2EA0C108          mov al,[cs:0x8c1]
000005D3  98                cbw
000005D4  2EFF2EAD08        jmp word far [cs:0x8ad]
000005D9  50                push ax
000005DA  B80200            mov ax,0x2
000005DD  CD10              int byte 0x10
000005DF  B80200            mov ax,0x2
000005E2  CD10              int byte 0x10
000005E4  E89E00            call 0x685
000005E7  B80100            mov ax,0x1
000005EA  CD60              int byte 0x60
000005EC  58                pop ax
000005ED  0BC0              or ax,ax
000005EF  750B              jnz 0x5fc
000005F1  0E                push cs
000005F2  1F                pop ds
000005F3  BA3807            mov dx,0x738
000005F6  B409              mov ah,0x9
000005F8  CD21              int byte 0x21
000005FA  EB44              jmp 0x640
000005FC  3DFFFF            cmp ax,0xffff
000005FF  750B              jnz 0x60c
00000601  0E                push cs
00000602  1F                pop ds
00000603  BA9707            mov dx,0x797
00000606  B409              mov ah,0x9
00000608  CD21              int byte 0x21
0000060A  EB34              jmp 0x640
0000060C  1E                push ds
0000060D  52                push dx
0000060E  BA7507            mov dx,0x775
00000611  3D0200            cmp ax,0x2
00000614  7403              jz 0x619
00000616  BA8507            mov dx,0x785
00000619  0E                push cs
0000061A  1F                pop ds
0000061B  B409              mov ah,0x9
0000061D  CD21              int byte 0x21
0000061F  B220              mov dl,0x20
00000621  B402              mov ah,0x2
00000623  CD21              int byte 0x21
00000625  B23A              mov dl,0x3a
00000627  B402              mov ah,0x2
00000629  CD21              int byte 0x21
0000062B  B220              mov dl,0x20
0000062D  B402              mov ah,0x2
0000062F  CD21              int byte 0x21
00000631  5F                pop di
00000632  1F                pop ds
00000633  8A15              mov dl,[di]
00000635  0AD2              or dl,dl
00000637  7407              jz 0x640
00000639  B402              mov ah,0x2
0000063B  CD21              int byte 0x21
0000063D  47                inc di
0000063E  EBF3              jmp 0x633
00000640  FA                cli
00000641  2EC516B108        lds dx,word [cs:0x8b1]
00000646  B80825            mov ax,0x2508
00000649  CD21              int byte 0x21
0000064B  2EC516B508        lds dx,word [cs:0x8b5]
00000650  B80925            mov ax,0x2509
00000653  CD21              int byte 0x21
00000655  2EC516B908        lds dx,word [cs:0x8b9]
0000065A  B86025            mov ax,0x2560
0000065D  CD21              int byte 0x21
0000065F  B036              mov al,0x36
00000661  E643              out byte 0x43,al
00000663  32C0              xor al,al
00000665  E640              out byte 0x40,al
00000667  E640              out byte 0x40,al
00000669  FB                sti
0000066A  B80000            mov ax,0x0
0000066D  8ED8              mov ds,ax
0000066F  8E06AF08          mov es,word [0x8af]
00000673  B449              mov ah,0x49
00000675  CD21              int byte 0x21
00000677  7307              jnc 0x680
00000679  BA2507            mov dx,0x725
0000067C  B409              mov ah,0x9
0000067E  CD21              int byte 0x21
00000680  B8004C            mov ax,0x4c00
00000683  CD21              int byte 0x21
00000685  52                push dx
00000686  B2FF              mov dl,0xff
00000688  B406              mov ah,0x6
0000068A  CD21              int byte 0x21
0000068C  75F8              jnz 0x686
0000068E  5A                pop dx
0000068F  C3                ret
00000690  0E                push cs
00000691  1F                pop ds
00000692  BAEB08            mov dx,0x8eb
00000695  C606EA0800        mov byte [0x8ea],0x0
0000069A  B90100            mov cx,0x1
0000069D  B43F              mov ah,0x3f
0000069F  CD21              int byte 0x21
000006A1  0BC0              or ax,ax
000006A3  F9                stc
000006A4  7501              jnz 0x6a7
000006A6  C3                ret
000006A7  8BF2              mov si,dx
000006A9  803C20            cmp byte [si],0x20
000006AC  72EC              jc 0x69a
000006AE  FE06EA08          inc byte [0x8ea]
000006B2  800C20            or byte [si],0x20
000006B5  42                inc dx
000006B6  B90100            mov cx,0x1
000006B9  B43F              mov ah,0x3f
000006BB  CD21              int byte 0x21
000006BD  0BC0              or ax,ax
000006BF  7409              jz 0x6ca
000006C1  8BF2              mov si,dx
000006C3  803C20            cmp byte [si],0x20
000006C6  74EE              jz 0x6b6
000006C8  73E4              jnc 0x6ae
000006CA  F8                clc
000006CB  C3                ret
000006CC  0E                push cs
000006CD  07                pop es
000006CE  E80901            call 0x7da
000006D1  49                dec cx
000006D2  83F903            cmp cx,0x3
000006D5  742D              jz 0x704
000006D7  83F904            cmp cx,0x4
000006DA  7403              jz 0x6df
000006DC  E9EB00            jmp 0x7ca
000006DF  BF2904            mov di,0x429
000006E2  B90200            mov cx,0x2
000006E5  51                push cx
000006E6  56                push si
000006E7  57                push di
000006E8  B90400            mov cx,0x4
000006EB  F3A6              repe cmpsb
000006ED  5F                pop di
000006EE  5E                pop si
000006EF  59                pop cx
000006F0  7408              jz 0x6fa
000006F2  83C705            add di,0x5
000006F5  E2EE              loop 0x6e5
000006F7  E9D000            jmp 0x7ca
000006FA  83C704            add di,0x4
000006FD  268A05            mov al,[es:di]
00000700  A2E708            mov [0x8e7],al
00000703  C3                ret
00000704  BF3304            mov di,0x433
00000707  B90400            mov cx,0x4
0000070A  51                push cx
0000070B  56                push si
0000070C  57                push di
0000070D  B90300            mov cx,0x3
00000710  F3A6              repe cmpsb
00000712  5F                pop di
00000713  5E                pop si
00000714  59                pop cx
00000715  7408              jz 0x71f
00000717  83C704            add di,0x4
0000071A  E2EE              loop 0x70a
0000071C  E9AB00            jmp 0x7ca
0000071F  83C703            add di,0x3
00000722  268A05            mov al,[es:di]
00000725  A2E708            mov [0x8e7],al
00000728  C3                ret
00000729  636761            arpl [bx+0x61],sp
0000072C  3202              xor al,[bp+si]
0000072E  6D                insw
0000072F  636761            arpl [bx+0x61],sp
00000732  0463              add al,0x63
00000734  6761              a32 popa
00000736  016567            add [di+0x67],sp
00000739  61                popa
0000073A  006867            add [bx+si+0x67],ch
0000073D  6303              arpl [bp+di],ax
0000073F  7467              jz 0x7a8
00000741  61                popa
00000742  052EC6            add ax,0xc62e
00000745  06                push es
00000746  E80800            call 0x751
00000749  0E                push cs
0000074A  07                pop es
0000074B  E88C00            call 0x7da
0000074E  49                dec cx
0000074F  83F90F            cmp cx,0xf
00000752  7203              jc 0x757
00000754  B90F00            mov cx,0xf
00000757  BF8B08            mov di,0x88b
0000075A  F3A4              rep movsb
0000075C  32C0              xor al,al
0000075E  AA                stosb
0000075F  BF8B08            mov di,0x88b
00000762  BE7304            mov si,0x473
00000765  B90900            mov cx,0x9
00000768  F3A6              repe cmpsb
0000076A  7401              jz 0x76d
0000076C  C3                ret
0000076D  C606E808FF        mov byte [0x8e8],0xff
00000772  C3                ret
00000773  6D                insw
00000774  7363              jnc 0x7d9
00000776  6D                insw
00000777  742E              jz 0x7a7
00000779  647276            fs jc 0x7f2
0000077C  0E                push cs
0000077D  07                pop es
0000077E  E85900            call 0x7da
00000781  49                dec cx
00000782  83F90F            cmp cx,0xf
00000785  7203              jc 0x78a
00000787  B90F00            mov cx,0xf
0000078A  BF9D08            mov di,0x89d
0000078D  F3A4              rep movsb
0000078F  32C0              xor al,al
00000791  AA                stosb
00000792  C3                ret
00000793  0E                push cs
00000794  07                pop es
00000795  E84200            call 0x7da
00000798  49                dec cx
00000799  83F902            cmp cx,0x2
0000079C  7416              jz 0x7b4
0000079E  83F903            cmp cx,0x3
000007A1  7527              jnz 0x7ca
000007A3  BFC504            mov di,0x4c5
000007A6  B90300            mov cx,0x3
000007A9  F3A6              repe cmpsb
000007AB  751D              jnz 0x7ca
000007AD  2EC606E908FF      mov byte [cs:0x8e9],0xff
000007B3  C3                ret
000007B4  BFC804            mov di,0x4c8
000007B7  B90200            mov cx,0x2
000007BA  F3A6              repe cmpsb
000007BC  750C              jnz 0x7ca
000007BE  2EC606E90800      mov byte [cs:0x8e9],0x0
000007C4  C3                ret
000007C5  7965              jns 0x82c
000007C7  736E              jnc 0x837
000007C9  6F                outsw
000007CA  B43E              mov ah,0x3e
000007CC  CD21              int byte 0x21
000007CE  BAAA07            mov dx,0x7aa
000007D1  B409              mov ah,0x9
000007D3  CD21              int byte 0x21
000007D5  B8004C            mov ax,0x4c00
000007D8  CD21              int byte 0x21
000007DA  0E                push cs
000007DB  1F                pop ds
000007DC  BEEB08            mov si,0x8eb
000007DF  33C9              xor cx,cx
000007E1  8A0EEA08          mov cl,[0x8ea]
000007E5  AC                lodsb
000007E6  3C3A              cmp al,0x3a
000007E8  7501              jnz 0x7eb
000007EA  C3                ret
000007EB  E2F8              loop 0x7e5
000007ED  EBDB              jmp 0x7ca
000007EF  1E                push ds
000007F0  06                push es
000007F1  57                push di
000007F2  8BD7              mov dx,di
000007F4  83C202            add dx,0x2
000007F7  B8003D            mov ax,0x3d00
000007FA  CD21              int byte 0x21
000007FC  7219              jc 0x817
000007FE  8BD8              mov bx,ax
00000800  8B15              mov dx,[di]
00000802  B9FFFF            mov cx,0xffff
00000805  06                push es
00000806  1F                pop ds
00000807  B43F              mov ah,0x3f
00000809  CD21              int byte 0x21
0000080B  720A              jc 0x817
0000080D  B43E              mov ah,0x3e
0000080F  CD21              int byte 0x21
00000811  7204              jc 0x817
00000813  5F                pop di
00000814  07                pop es
00000815  1F                pop ds
00000816  C3                ret
00000817  5F                pop di
00000818  07                pop es
00000819  1F                pop ds
0000081A  E80300            call 0x820
0000081D  E920FE            jmp 0x640
00000820  1E                push ds
00000821  06                push es
00000822  57                push di
00000823  0E                push cs
00000824  1F                pop ds
00000825  50                push ax
00000826  BA5107            mov dx,0x751
00000829  B409              mov ah,0x9
0000082B  CD21              int byte 0x21
0000082D  58                pop ax
0000082E  5F                pop di
0000082F  07                pop es
00000830  1F                pop ds
00000831  50                push ax
00000832  83C702            add di,0x2
00000835  8A15              mov dl,[di]
00000837  0AD2              or dl,dl
00000839  7407              jz 0x842
0000083B  B402              mov ah,0x2
0000083D  CD21              int byte 0x21
0000083F  47                inc di
00000840  EBF3              jmp 0x835
00000842  5B                pop bx
00000843  0E                push cs
00000844  1F                pop ds
00000845  BA6207            mov dx,0x762
00000848  B409              mov ah,0x9
0000084A  CD21              int byte 0x21
0000084C  BA7507            mov dx,0x775
0000084F  83FB02            cmp bx,0x2
00000852  7421              jz 0x875
00000854  BA8507            mov dx,0x785
00000857  83FB05            cmp bx,0x5
0000085A  7419              jz 0x875
0000085C  D1E3              shl bx,0x0
0000085E  8A97C207          mov dl,[bx+0x7c2]
00000862  B402              mov ah,0x2
00000864  CD21              int byte 0x21
00000866  8A97C307          mov dl,[bx+0x7c3]
0000086A  B402              mov ah,0x2
0000086C  CD21              int byte 0x21
0000086E  B248              mov dl,0x48
00000870  B402              mov ah,0x2
00000872  CD21              int byte 0x21
00000874  C3                ret
00000875  B409              mov ah,0x9
00000877  CD21              int byte 0x21
00000879  C3                ret
0000087A  2E8A1EE708        mov bl,[cs:0x8e7]
0000087F  32FF              xor bh,bh
00000881  03DB              add bx,bx
00000883  2EFFA78805        jmp word near [cs:bx+0x588]
00000888  94                xchg ax,sp
00000889  059A05            add ax,0x59a
0000088C  A005B2            mov al,[0xb205]
0000088F  05A605            add ax,0x5a6
00000892  AC                lodsb
00000893  05B80E            add ax,0xeb8
00000896  00CD              add ch,cl
00000898  10C3              adc bl,al
0000089A  B80500            mov ax,0x5
0000089D  CD10              int byte 0x10
0000089F  C3                ret
000008A0  B80600            mov ax,0x6
000008A3  CD10              int byte 0x10
000008A5  C3                ret
000008A6  B81300            mov ax,0x13
000008A9  CD10              int byte 0x10
000008AB  C3                ret
000008AC  B80900            mov ax,0x9
000008AF  CD10              int byte 0x10
000008B1  C3                ret
000008B2  0E                push cs
000008B3  1F                pop ds
000008B4  BAB803            mov dx,0x3b8
000008B7  B002              mov al,0x2
000008B9  EE                out dx,al
000008BA  BABF03            mov dx,0x3bf
000008BD  B001              mov al,0x1
000008BF  EE                out dx,al
000008C0  B90C00            mov cx,0xc
000008C3  B400              mov ah,0x0
000008C5  BEEC05            mov si,0x5ec
000008C8  BAB403            mov dx,0x3b4
000008CB  8AC4              mov al,ah
000008CD  EE                out dx,al
000008CE  AC                lodsb
000008CF  42                inc dx
000008D0  EE                out dx,al
000008D1  4A                dec dx
000008D2  FEC4              inc ah
000008D4  E2F5              loop 0x8cb
000008D6  B02A              mov al,0x2a
000008D8  BAB803            mov dx,0x3b8
000008DB  EE                out dx,al
000008DC  B800B0            mov ax,0xb000
000008DF  8EC0              mov es,ax
000008E1  BF0000            mov di,0x0
000008E4  33C0              xor ax,ax
000008E6  B90040            mov cx,0x4000
000008E9  F3AB              rep stosw
000008EB  C3                ret
000008EC  352D2E            xor ax,0x2e2d
000008EF  07                pop es
000008F0  5B                pop bx
000008F1  025757            add dl,[bx+0x57]
000008F4  0203              add al,[bp+di]
000008F6  0000              add [bx+si],al
000008F8  CF                iret
000008F9  26F6068000FF      test byte [es:0x80],0xff
000008FF  7501              jnz 0x902
00000901  C3                ret
00000902  BF6908            mov di,0x869
00000905  33C9              xor cx,cx
00000907  268A0E8000        mov cl,[es:0x80]
0000090C  BE8100            mov si,0x81
0000090F  26803C20          cmp byte [es:si],0x20
00000913  7504              jnz 0x919
00000915  46                inc si
00000916  E2F7              loop 0x90f
00000918  C3                ret
00000919  32E4              xor ah,ah
0000091B  268A04            mov al,[es:si]
0000091E  3C20              cmp al,0x20
00000920  7409              jz 0x92b
00000922  3C0D              cmp al,0xd
00000924  7405              jz 0x92b
00000926  B4FF              mov ah,0xff
00000928  8805              mov [di],al
0000092A  47                inc di
0000092B  46                inc si
0000092C  E2ED              loop 0x91b
0000092E  0AE4              or ah,ah
00000930  7501              jnz 0x933
00000932  C3                ret
00000933  C606C108FF        mov byte [0x8c1],0xff
00000938  C6052E            mov byte [di],0x2e
0000093B  C6450155          mov byte [di+0x1],0x55
0000093F  C6450253          mov byte [di+0x2],0x53
00000943  C6450352          mov byte [di+0x3],0x52
00000947  C6450400          mov byte [di+0x4],0x0
0000094B  C3                ret
0000094C  54                push sp
0000094D  686520            push word 0x2065
00000950  46                inc si
00000951  61                popa
00000952  6E                outsb
00000953  7461              jz 0x9b6
00000955  7379              jnc 0x9d0
00000957  204163            and [bx+di+0x63],al
0000095A  7469              jz 0x9c5
0000095C  6F                outsw
0000095D  6E                outsb
0000095E  204761            and [bx+0x61],al
00000961  6D                insw
00000962  65205A45          and [gs:bp+si+0x45],bl
00000966  4C                dec sp
00000967  49                dec cx
00000968  41                inc cx
00000969  52                push dx
0000096A  44                inc sp
0000096B  205665            and [bp+0x65],dl
0000096E  7273              jc 0x9e3
00000970  696F6E2031        imul bp,[bx+0x6e],0x3120
00000975  2E3230            xor dh,[cs:bx+si]
00000978  380D              cmp [di],cl
0000097A  0A436F            or al,[bp+di+0x6f]
0000097D  7079              jo 0x9f8
0000097F  7269              jc 0x9ea
00000981  67687420          a32 push word 0x2074
00000985  284329            sub [bp+di+0x29],al
00000988  2031              and [bx+di],dh
0000098A  3938              cmp [bx+si],di
0000098C  37                aaa
0000098D  207E20            and [bp+0x20],bh
00000990  3139              xor [bx+di],di
00000992  3930              cmp [bx+si],si
00000994  204761            and [bx+0x61],al
00000997  6D                insw
00000998  65204172          and [gs:bx+di+0x72],al
0000099C  7473              jz 0xa11
0000099E  20436F            and [bp+di+0x6f],al
000009A1  2E2C4C            cs sub al,0x4c
000009A4  7464              jz 0xa0a
000009A6  2E0D0A43          cs or ax,0x430a
000009AA  6F                outsw
000009AB  7079              jo 0xa26
000009AD  7269              jc 0xa18
000009AF  67687420          a32 push word 0x2074
000009B3  284329            sub [bp+di+0x29],al
000009B6  2031              and [bx+di],dh
000009B8  3939              cmp [bx+di],di
000009BA  3020              xor [bx+si],ah
000009BC  53                push bx
000009BD  6965727261        imul sp,[di+0x72],0x6172
000009C2  204F6E            and [bx+0x6e],cl
000009C5  2D4C69            sub ax,0x694c
000009C8  6E                outsb
000009C9  652C20            gs sub al,0x20
000009CC  49                dec cx
000009CD  6E                outsb
000009CE  632E0D0A          arpl [0xa0d],bp
000009D2  244E              and al,0x4e
000009D4  6F                outsw
000009D5  7420              jz 0x9f7
000009D7  7375              jnc 0xa4e
000009D9  7070              jo 0xa4b
000009DB  6F                outsw
000009DC  7274              jc 0xa52
000009DE  656420636F        and [fs:bp+di+0x6f],ah
000009E3  6D                insw
000009E4  6D                insw
000009E5  61                popa
000009E6  6E                outsb
000009E7  642021            and [fs:bx+di],ah
000009EA  0D0A24            or ax,0x240a
000009ED  53                push bx
000009EE  7065              jo 0xa55
000009F0  636961            arpl [bx+di+0x61],bp
000009F3  6C                insb
000009F4  206D6F            and [di+0x6f],ch
000009F7  64652021          and [gs:bx+di],ah
000009FB  210D              and [di],cx
000009FD  0A24              or ah,[si]
000009FF  4E                dec si
00000A00  6F                outsw
00000A01  7420              jz 0xa23
00000A03  656E              gs outsb
00000A05  6F                outsw
00000A06  7567              jnz 0xa6f
00000A08  68206D            push word 0x6d20
00000A0B  656D              gs insw
00000A0D  6F                outsw
00000A0E  7279              jc 0xa89
00000A10  20746F            and [si+0x6f],dh
00000A13  207275            and [bp+si+0x75],dh
00000A16  6E                outsb
00000A17  2027              and [bx],ah
00000A19  5A                pop dx
00000A1A  45                inc bp
00000A1B  4C                dec sp
00000A1C  49                dec cx
00000A1D  41                inc cx
00000A1E  52                push dx
00000A1F  44                inc sp
00000A20  27                daa
00000A21  2E0D0A24          cs or ax,0x240a
00000A25  4D                dec bp
00000A26  656D              gs insw
00000A28  6F                outsw
00000A29  7279              jc 0xaa4
00000A2B  206572            and [di+0x72],ah
00000A2E  726F              jc 0xa9f
00000A30  7220              jc 0xa52
00000A32  2121              and [bx+di],sp
00000A34  210D              and [di],cx
00000A36  0A24              or ah,[si]
00000A38  54                push sp
00000A39  68616E            push word 0x6e61
00000A3C  6B2079            imul sp,[bx+si],0x79
00000A3F  6F                outsw
00000A40  7520              jnz 0xa62
00000A42  666F              outsd
00000A44  7220              jc 0xa66
00000A46  706C              jo 0xab4
00000A48  61                popa
00000A49  7969              jns 0xab4
00000A4B  6E                outsb
00000A4C  672E0D0A24        cs a32 or ax,0x240a
00000A51  46                inc si
00000A52  696C652045        imul bp,[si+0x65],0x4520
00000A57  7272              jc 0xacb
00000A59  6F                outsw
00000A5A  7220              jc 0xa7c
00000A5C  66726F            jc 0xace
00000A5F  6D                insw
00000A60  2024              and [si],ah
00000A62  2020              and [bx+si],ah
00000A64  2020              and [bx+si],ah
00000A66  204572            and [di+0x72],al
00000A69  726F              jc 0xada
00000A6B  7220              jc 0xa8d
00000A6D  54                push sp
00000A6E  7970              jns 0xae0
00000A70  65203A            and [gs:bp+si],bh
00000A73  2024              and [si],ah
00000A75  46                inc si
00000A76  696C65206E        imul bp,[si+0x65],0x6e20
00000A7B  6F                outsw
00000A7C  7420              jz 0xa9e
00000A7E  666F              outsd
00000A80  756E              jnz 0xaf0
00000A82  642E2444          cs and al,0x44
00000A86  49                dec cx
00000A87  53                push bx
00000A88  4B                dec bx
00000A89  207265            and [bp+si+0x65],dh
00000A8C  61                popa
00000A8D  64204572          and [fs:di+0x72],al
00000A91  726F              jc 0xb02
00000A93  7221              jc 0xab6
00000A95  2124              and [si],sp
00000A97  55                push bp
00000A98  53                push bx
00000A99  45                inc bp
00000A9A  52                push dx
00000A9B  206669            and [bp+0x69],ah
00000A9E  6C                insb
00000A9F  65206E6F          and [gs:bp+0x6f],ch
00000AA3  7468              jz 0xb0d
00000AA5  696E672E24        imul bp,[bp+0x67],0x242e
00000AAA  45                inc bp
00000AAB  7272              jc 0xb1f
00000AAD  6F                outsw
00000AAE  7220              jc 0xad0
00000AB0  696E205245        imul bp,[bp+0x20],0x4552
00000AB5  53                push bx
00000AB6  4F                dec di
00000AB7  55                push bp
00000AB8  52                push dx
00000AB9  43                inc bx
00000ABA  45                inc bp
00000ABB  2E43              cs inc bx
00000ABD  46                inc si
00000ABE  47                inc di
00000ABF  0D0A24            or ax,0x240a
00000AC2  3030              xor [bx+si],dh
00000AC4  3031              xor [bx+di],dh
00000AC6  3032              xor [bp+si],dh
00000AC8  3033              xor [bp+di],dh
00000ACA  3034              xor [si],dh
00000ACC  3035              xor [di],dh
00000ACE  30363037          xor [0x3730],dh
00000AD2  3038              xor [bx+si],bh
00000AD4  3039              xor [bx+di],bh
00000AD6  304130            xor [bx+di+0x30],al
00000AD9  42                inc dx
00000ADA  304330            xor [bp+di+0x30],al
00000ADD  44                inc sp
00000ADE  304530            xor [di+0x30],al
00000AE1  46                inc si
00000AE2  52                push dx
00000AE3  45                inc bp
00000AE4  53                push bx
00000AE5  4F                dec di
00000AE6  55                push bp
00000AE7  52                push dx
00000AE8  43                inc bx
00000AE9  45                inc bp
00000AEA  2E43              cs inc bx
00000AEC  46                inc si
00000AED  47                inc di
00000AEE  004D54            add [di+0x54],cl
00000AF1  49                dec cx
00000AF2  4E                dec si
00000AF3  49                dec cx
00000AF4  54                push sp
00000AF5  2E43              cs inc bx
00000AF7  4F                dec di
00000AF8  4D                dec bp
00000AF9  0012              add [bp+si],dl
00000AFB  081E081E          or [0x1e08],bl
00000AFF  082A              or [bp+si],ch
00000B01  08360843          or [0x4308],dh
00000B05  0800              or [bx+si],al
00000B07  017374            add [bp+di+0x74],si
00000B0A  69636B2E62        imul sp,[bp+di+0x6b],0x622e
00000B0F  696E000020        imul bp,[bp+0x0],0x2000
00000B14  676D              a32 insw
00000B16  656761            gs a32 popa
00000B19  2E62696E          bound bp,[cs:bx+di+0x6e]
00000B1D  0000              add [bx+si],al
00000B1F  20676D            and [bx+0x6d],ah
00000B22  636761            arpl [bx+0x61],sp
00000B25  2E62696E          bound bp,[cs:bx+di+0x6e]
00000B29  0000              add [bx+si],al
00000B2B  20676D            and [bx+0x6d],ah
00000B2E  686763            push word 0x6367
00000B31  2E62696E          bound bp,[cs:bx+di+0x6e]
00000B35  0000              add [bx+si],al
00000B37  20676D            and [bx+0x6d],ah
00000B3A  6D                insw
00000B3B  636761            arpl [bx+0x61],sp
00000B3E  2E62696E          bound bp,[cs:bx+di+0x6e]
00000B42  0000              add [bx+si],al
00000B44  20676D            and [bx+0x6d],ah
00000B47  7467              jz 0xbb0
00000B49  61                popa
00000B4A  2E62696E          bound bp,[cs:bx+di+0x6e]
00000B4E  0000              add [bx+si],al
00000B50  A06761            mov al,[0x6167]
00000B53  6D                insw
00000B54  652E62696E        bound bp,[cs:bx+di+0x6e]
00000B59  0000              add [bx+si],al
00000B5B  007374            add [bp+di+0x74],dh
00000B5E  64706C            fs jo 0xbcd
00000B61  792E              jns 0xb91
00000B63  62696E            bound bp,[bx+di+0x6e]
00000B66  0000              add [bx+si],al
00000B68  0000              add [bx+si],al
00000B6A  0000              add [bx+si],al
00000B6C  0000              add [bx+si],al
00000B6E  0000              add [bx+si],al
00000B70  0000              add [bx+si],al
00000B72  0000              add [bx+si],al
00000B74  0000              add [bx+si],al
00000B76  0000              add [bx+si],al
00000B78  0000              add [bx+si],al
00000B7A  0000              add [bx+si],al
00000B7C  0000              add [bx+si],al
00000B7E  0000              add [bx+si],al
00000B80  0000              add [bx+si],al
00000B82  0000              add [bx+si],al
00000B84  0000              add [bx+si],al
00000B86  0000              add [bx+si],al
00000B88  0000              add [bx+si],al
00000B8A  0100              add [bx+si],ax
00000B8C  0000              add [bx+si],al
00000B8E  0000              add [bx+si],al
00000B90  0000              add [bx+si],al
00000B92  0000              add [bx+si],al
00000B94  0000              add [bx+si],al
00000B96  0000              add [bx+si],al
00000B98  0000              add [bx+si],al
00000B9A  0000              add [bx+si],al
00000B9C  1100              adc [bx+si],ax
00000B9E  0000              add [bx+si],al
00000BA0  0000              add [bx+si],al
00000BA2  0000              add [bx+si],al
00000BA4  0000              add [bx+si],al
00000BA6  0000              add [bx+si],al
00000BA8  0000              add [bx+si],al
00000BAA  0000              add [bx+si],al
00000BAC  0000              add [bx+si],al
00000BAE  A00000            mov al,[0x0]
00000BB1  0000              add [bx+si],al
00000BB3  0000              add [bx+si],al
00000BB5  0000              add [bx+si],al
00000BB7  0000              add [bx+si],al
00000BB9  0000              add [bx+si],al
00000BBB  0000              add [bx+si],al
00000BBD  0000              add [bx+si],al
00000BBF  0000              add [bx+si],al
00000BC1  0000              add [bx+si],al
00000BC3  0000              add [bx+si],al
00000BC5  0000              add [bx+si],al
00000BC7  00D4              add ah,dl
00000BC9  0800              or [bx+si],al
00000BCB  00D7              add bh,dl
00000BCD  0800              or [bx+si],al
00000BCF  00D7              add bh,dl
00000BD1  0800              or [bx+si],al
00000BD3  0001              add [bx+di],al
00000BD5  200D              and [di],cl
00000BD7  0020              add [bx+si],ah
00000BD9  0000              add [bx+si],al
00000BDB  0000              add [bx+si],al
00000BDD  0000              add [bx+si],al
00000BDF  0000              add [bx+si],al
00000BE1  0000              add [bx+si],al
00000BE3  0000              add [bx+si],al
00000BE5  0000              add [bx+si],al
00000BE7  0000              add [bx+si],al
00000BE9  0000              add [bx+si],al
00000BEB  0000              add [bx+si],al
00000BED  0000              add [bx+si],al
00000BEF  0000              add [bx+si],al
00000BF1  0000              add [bx+si],al
00000BF3  0000              add [bx+si],al
00000BF5  0000              add [bx+si],al
00000BF7  0000              add [bx+si],al
00000BF9  0000              add [bx+si],al
00000BFB  0000              add [bx+si],al
00000BFD  0000              add [bx+si],al
00000BFF  0000              add [bx+si],al
00000C01  0000              add [bx+si],al
00000C03  0000              add [bx+si],al
00000C05  0000              add [bx+si],al
00000C07  0000              add [bx+si],al
00000C09  0000              add [bx+si],al
00000C0B  0000              add [bx+si],al
00000C0D  0000              add [bx+si],al
00000C0F  0000              add [bx+si],al
00000C11  0000              add [bx+si],al
00000C13  0000              add [bx+si],al
00000C15  0000              add [bx+si],al
00000C17  0000              add [bx+si],al
00000C19  0000              add [bx+si],al
00000C1B  0000              add [bx+si],al
00000C1D  0000              add [bx+si],al
00000C1F  0000              add [bx+si],al
00000C21  0000              add [bx+si],al
00000C23  0000              add [bx+si],al
00000C25  0000              add [bx+si],al
00000C27  0000              add [bx+si],al
00000C29  0000              add [bx+si],al
00000C2B  0000              add [bx+si],al
00000C2D  0000              add [bx+si],al
00000C2F  0000              add [bx+si],al
00000C31  0000              add [bx+si],al
00000C33  0000              add [bx+si],al
00000C35  0000              add [bx+si],al
00000C37  0000              add [bx+si],al
00000C39  0000              add [bx+si],al
00000C3B  0000              add [bx+si],al
00000C3D  0000              add [bx+si],al
00000C3F  0000              add [bx+si],al
00000C41  0000              add [bx+si],al
00000C43  0000              add [bx+si],al
00000C45  0000              add [bx+si],al
00000C47  0000              add [bx+si],al
00000C49  0000              add [bx+si],al
00000C4B  0000              add [bx+si],al
00000C4D  0000              add [bx+si],al
00000C4F  0000              add [bx+si],al
00000C51  0000              add [bx+si],al
00000C53  0000              add [bx+si],al
00000C55  0000              add [bx+si],al
00000C57  0000              add [bx+si],al
00000C59  0000              add [bx+si],al
00000C5B  0000              add [bx+si],al
00000C5D  0000              add [bx+si],al
00000C5F  0000              add [bx+si],al
00000C61  0000              add [bx+si],al
00000C63  0000              add [bx+si],al
00000C65  0000              add [bx+si],al
00000C67  0000              add [bx+si],al
00000C69  0000              add [bx+si],al
00000C6B  0000              add [bx+si],al
00000C6D  0000              add [bx+si],al
00000C6F  0000              add [bx+si],al
00000C71  0000              add [bx+si],al
00000C73  0000              add [bx+si],al
00000C75  0000              add [bx+si],al
00000C77  0000              add [bx+si],al
00000C79  0000              add [bx+si],al
00000C7B  0000              add [bx+si],al
00000C7D  0000              add [bx+si],al
00000C7F  0000              add [bx+si],al
00000C81  0000              add [bx+si],al
00000C83  0000              add [bx+si],al
00000C85  0000              add [bx+si],al
00000C87  0000              add [bx+si],al
00000C89  0000              add [bx+si],al
00000C8B  0000              add [bx+si],al
00000C8D  0000              add [bx+si],al
00000C8F  0000              add [bx+si],al
00000C91  0000              add [bx+si],al
00000C93  0000              add [bx+si],al
00000C95  0000              add [bx+si],al
00000C97  0000              add [bx+si],al
00000C99  0000              add [bx+si],al
00000C9B  0000              add [bx+si],al
00000C9D  0000              add [bx+si],al
00000C9F  0000              add [bx+si],al
00000CA1  0000              add [bx+si],al
00000CA3  0000              add [bx+si],al
00000CA5  0000              add [bx+si],al
00000CA7  0000              add [bx+si],al
00000CA9  0000              add [bx+si],al
00000CAB  0000              add [bx+si],al
00000CAD  0000              add [bx+si],al
00000CAF  0000              add [bx+si],al
00000CB1  0000              add [bx+si],al
00000CB3  0000              add [bx+si],al
00000CB5  0000              add [bx+si],al
00000CB7  0000              add [bx+si],al
00000CB9  0000              add [bx+si],al
00000CBB  0000              add [bx+si],al
00000CBD  0000              add [bx+si],al
00000CBF  0000              add [bx+si],al
00000CC1  0000              add [bx+si],al
00000CC3  0000              add [bx+si],al
00000CC5  0000              add [bx+si],al
00000CC7  0000              add [bx+si],al
00000CC9  0000              add [bx+si],al
00000CCB  0000              add [bx+si],al
00000CCD  0000              add [bx+si],al
00000CCF  0000              add [bx+si],al
00000CD1  0000              add [bx+si],al
00000CD3  0000              add [bx+si],al
00000CD5  0000              add [bx+si],al
00000CD7  0000              add [bx+si],al
00000CD9  0000              add [bx+si],al
00000CDB  0000              add [bx+si],al
00000CDD  0000              add [bx+si],al
00000CDF  0000              add [bx+si],al
00000CE1  0000              add [bx+si],al
00000CE3  0000              add [bx+si],al
00000CE5  0000              add [bx+si],al
00000CE7  0000              add [bx+si],al
00000CE9  00                db 0x00
