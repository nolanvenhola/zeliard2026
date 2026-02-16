00000000  47                inc di
00000001  1C00              sbb al,0x0
00000003  0004              add [si],al
00000005  A00FA9            mov al,[0xa90f]
00000008  8E062CFF          mov es,word [0xff2c]
0000000C  BF0080            mov di,0x8000
0000000F  BEA2AC            mov si,0xaca2
00000012  B002              mov al,0x2
00000014  2EFF160C01        call word near [cs:0x10c]
00000019  1E                push ds
0000001A  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000001F  BE0080            mov si,0x8000
00000022  B90001            mov cx,0x100
00000025  2EFF164420        call word near [cs:0x2044]
0000002A  1F                pop ds
0000002B  C6064EFF00        mov byte [0xff4e],0x0
00000030  C6064FFF00        mov byte [0xff4f],0x0
00000035  C60621BC00        mov byte [0xbc21],0x0
0000003A  2EFF160220        call word near [cs:0x2002]
0000003F  2EFF161220        call word near [cs:0x2012]
00000044  BEAEAC            mov si,0xacae
00000047  2EFF161020        call word near [cs:0x2010]
0000004C  E86B00            call 0xba
0000004F  E89400            call 0xe6
00000052  0E                push cs
00000053  07                pop es
00000054  8A1E06C0          mov bl,[0xc006]
00000058  FECB              dec bl
0000005A  02DB              add bl,bl
0000005C  32FF              xor bh,bh
0000005E  8BB7A7BA          mov si,[bx-0x4559]
00000062  BFFDBB            mov di,0xbbfd
00000065  B91200            mov cx,0x12
00000068  F3A5              rep movsw
0000006A  32C0              xor al,al
0000006C  E86409            call 0x9d3
0000006F  C60623BCFF        mov byte [0xbc23],0xff
00000074  BB600D            mov bx,0xd60
00000077  B93736            mov cx,0x3637
0000007A  B0FF              mov al,0xff
0000007C  2EFF160020        call word near [cs:0x2000]
00000081  C7064CFFD3AD      mov word [0xff4c],0xadd3
00000087  F606240002        test byte [0x24],0x2
0000008C  7519              jnz 0xa7
0000008E  803E06C005        cmp byte [0xc006],0x5
00000093  7512              jnz 0xa7
00000095  F6069B00FF        test byte [0x9b],0xff
0000009A  740B              jz 0xa7
0000009C  C7064CFFA2B2      mov word [0xff4c],0xb2a2
000000A2  C60623BC00        mov byte [0xbc23],0x0
000000A7  2EFF160460        call word near [cs:0x6004]
000000AC  3CFF              cmp al,0xff
000000AE  7405              jz 0xb5
000000B0  E85F00            call 0x112
000000B3  EBF2              jmp 0xa7
000000B5  2EFF264020        jmp word near [cs:0x2040]
000000BA  BED200            mov si,0xd2
000000BD  A006C0            mov al,[0xc006]
000000C0  FEC8              dec al
000000C2  32E4              xor ah,ah
000000C4  03F0              add si,ax
000000C6  8A14              mov dl,[si]
000000C8  0E                push cs
000000C9  07                pop es
000000CA  BF3BBC            mov di,0xbc3b
000000CD  32F6              xor dh,dh
000000CF  B90600            mov cx,0x6
000000D2  02D2              add dl,dl
000000D4  7309              jnc 0xdf
000000D6  8AC1              mov al,cl
000000D8  F6D8              neg al
000000DA  0406              add al,0x6
000000DC  AA                stosb
000000DD  FEC6              inc dh
000000DF  E2F1              loop 0xd2
000000E1  883631BC          mov [0xbc31],dh
000000E5  C3                ret
000000E6  BEDB00            mov si,0xdb
000000E9  A006C0            mov al,[0xc006]
000000EC  FEC8              dec al
000000EE  32E4              xor ah,ah
000000F0  03F0              add si,ax
000000F2  8A14              mov dl,[si]
000000F4  0E                push cs
000000F5  07                pop es
000000F6  BF41BC            mov di,0xbc41
000000F9  32F6              xor dh,dh
000000FB  B90600            mov cx,0x6
000000FE  02D2              add dl,dl
00000100  7309              jnc 0x10b
00000102  8AC1              mov al,cl
00000104  F6D8              neg al
00000106  0406              add al,0x6
00000108  AA                stosb
00000109  FEC6              inc dh
0000010B  E2F1              loop 0xfe
0000010D  883632BC          mov [0xbc32],dh
00000111  C3                ret
00000112  8AD8              mov bl,al
00000114  32FF              xor bh,bh
00000116  03DB              add bx,bx
00000118  2EFFA719A1        jmp word near [cs:bx-0x5ee7]
0000011D  2DA159            sub ax,0x59a1
00000120  A298A4            mov [0xa498],al
00000123  CB                retf
00000124  A6                cmpsb
00000125  06                push es
00000126  A7                cmpsw
00000127  16                push ss
00000128  A7                cmpsw
00000129  59                pop cx
0000012A  A7                cmpsw
0000012B  70A8              jo 0xd5
0000012D  80A8FDA8E8        sub byte [bx+si-0x5703],0xe8
00000132  D207              rol byte [bx],cl
00000134  BB1D29            mov bx,0x291d
00000137  B93718            mov cx,0x1837
0000013A  B0FF              mov al,0xff
0000013C  2EFF160020        call word near [cs:0x2000]
00000141  C70654FF2029      mov word [0xff54],0x2920
00000147  C60652FF05        mov byte [0xff52],0x5
0000014C  C60653FF05        mov byte [0xff53],0x5
00000151  B90500            mov cx,0x5
00000154  BEC8AC            mov si,0xacc8
00000157  2EFF160E60        call word near [cs:0x600e]
0000015C  C60656FF00        mov byte [0xff56],0x0
00000161  8A1E21BC          mov bl,[0xbc21]
00000165  2EFF161060        call word near [cs:0x6010]
0000016A  7302              jnc 0x16e
0000016C  32DB              xor bl,bl
0000016E  881E21BC          mov [0xbc21],bl
00000172  32FF              xor bh,bh
00000174  03DB              add bx,bx
00000176  FFA776A1          jmp word near [bx-0x5e8a]
0000017A  80A198A144        and byte [bx+di-0x5e68],0x44
0000017F  A24BA2            mov [0xa24b],al
00000182  52                push dx
00000183  A2E87F            mov [0x7fe8],al
00000186  07                pop es
00000187  BEDEB1            mov si,0xb1de
0000018A  F60628BCFF        test byte [0xbc28],0xff
0000018F  7506              jnz 0x197
00000191  E87605            call 0x70a
00000194  BEFFB1            mov si,0xb1ff
00000197  89364CFF          mov [0xff4c],si
0000019B  C3                ret
0000019C  E86707            call 0x906
0000019F  F6069300FF        test byte [0x93],0xff
000001A4  7507              jnz 0x1ad
000001A6  C7064CFF4AAE      mov word [0xff4c],0xae4a
000001AC  C3                ret
000001AD  A19600            mov ax,[0x96]
000001B0  2B069400          sub ax,[0x94]
000001B4  7507              jnz 0x1bd
000001B6  C7064CFFB1AE      mov word [0xff4c],0xaeb1
000001BC  C3                ret
000001BD  C60628BCFF        mov byte [0xbc28],0xff
000001C2  D1E8              shr ax,0x0
000001C4  150000            adc ax,0x0
000001C7  A329BC            mov [0xbc29],ax
000001CA  C7064CFFF8AE      mov word [0xff4c],0xaef8
000001D0  2EFF160460        call word near [cs:0x6004]
000001D5  32D2              xor dl,dl
000001D7  A129BC            mov ax,[0xbc29]
000001DA  BF33BC            mov di,0xbc33
000001DD  2EFF160660        call word near [cs:0x6006]
000001E2  8B364CFF          mov si,[0xff4c]
000001E6  56                push si
000001E7  C7064CFF33BC      mov word [0xff4c],0xbc33
000001ED  2EFF160460        call word near [cs:0x6004]
000001F2  5E                pop si
000001F3  89364CFF          mov [0xff4c],si
000001F7  2EFF160460        call word near [cs:0x6004]
000001FC  BB2B2F            mov bx,0x2f2b
000001FF  B9190C            mov cx,0xc19
00000202  B0FF              mov al,0xff
00000204  2EFF160020        call word near [cs:0x2000]
00000209  C70654FF2E30      mov word [0xff54],0x302e
0000020F  2EFF160860        call word near [cs:0x6008]
00000214  9C                pushf
00000215  E8EE06            call 0x906
00000218  9D                popf
00000219  C7064CFFEFAD      mov word [0xff4c],0xadef
0000021F  7301              jnc 0x222
00000221  C3                ret
00000222  A129BC            mov ax,[0xbc29]
00000225  32D2              xor dl,dl
00000227  2EFF160A60        call word near [cs:0x600a]
0000022C  C7064CFF53AF      mov word [0xff4c],0xaf53
00000232  7301              jnc 0x235
00000234  C3                ret
00000235  88168500          mov [0x85],dl
00000239  A38600            mov [0x86],ax
0000023C  2EFF161620        call word near [cs:0x2016]
00000241  C7064CFFAFAF      mov word [0xff4c],0xafaf
00000247  C3                ret
00000248  C7064CFF26B0      mov word [0xff4c],0xb026
0000024E  C3                ret
0000024F  C7064CFF81B0      mov word [0xff4c],0xb081
00000255  C3                ret
00000256  C7064CFF1FB1      mov word [0xff4c],0xb11f
0000025C  C3                ret
0000025D  C60628BCFF        mov byte [0xbc28],0xff
00000262  0E                push cs
00000263  07                pop es
00000264  BF58FF            mov di,0xff58
00000267  BE3BBC            mov si,0xbc3b
0000026A  B90600            mov cx,0x6
0000026D  F3A4              rep movsb
0000026F  A031BC            mov al,[0xbc31]
00000272  A253FF            mov [0xff53],al
00000275  3C03              cmp al,0x3
00000277  7202              jc 0x27b
00000279  B003              mov al,0x3
0000027B  A252FF            mov [0xff52],al
0000027E  C60656FF00        mov byte [0xff56],0x0
00000283  C60622BC00        mov byte [0xbc22],0x0
00000288  BB6E15            mov bx,0x156e
0000028B  B92425            mov cx,0x2524
0000028E  B0FF              mov al,0xff
00000290  2EFF160020        call word near [cs:0x2000]
00000295  C60657FFFF        mov byte [0xff57],0xff
0000029A  C70654FF7115      mov word [0xff54],0x1571
000002A0  C7066AFF2100      mov word [0xff6a],0x21
000002A6  C70668FF1700      mov word [0xff68],0x17
000002AC  BE05AD            mov si,0xad05
000002AF  BFFDBB            mov di,0xbbfd
000002B2  8A0E52FF          mov cl,[0xff52]
000002B6  32ED              xor ch,ch
000002B8  A056FF            mov al,[0xff56]
000002BB  2EFF161260        call word near [cs:0x6012]
000002C0  8A1E22BC          mov bl,[0xbc22]
000002C4  2EFF161060        call word near [cs:0x6010]
000002C9  7307              jnc 0x2d2
000002CB  C7064CFFEFAD      mov word [0xff4c],0xadef
000002D1  C3                ret
000002D2  881E22BC          mov [0xbc22],bl
000002D6  8AC3              mov al,bl
000002D8  020656FF          add al,[0xff56]
000002DC  BB58FF            mov bx,0xff58
000002DF  D7                xlatb
000002E0  E89C01            call 0x47f
000002E3  50                push ax
000002E4  C7064CFFDCB0      mov word [0xff4c],0xb0dc
000002EA  2EFF160460        call word near [cs:0x6004]
000002EF  58                pop ax
000002F0  50                push ax
000002F1  8B364CFF          mov si,[0xff4c]
000002F5  56                push si
000002F6  32E4              xor ah,ah
000002F8  03C0              add ax,ax
000002FA  8BD8              mov bx,ax
000002FC  8B8705AD          mov ax,[bx-0x52fb]
00000300  A34CFF            mov [0xff4c],ax
00000303  2EFF160460        call word near [cs:0x6004]
00000308  5E                pop si
00000309  89364CFF          mov [0xff4c],si
0000030D  2EFF160460        call word near [cs:0x6004]
00000312  58                pop ax
00000313  50                push ax
00000314  32E4              xor ah,ah
00000316  8BD8              mov bx,ax
00000318  03C0              add ax,ax
0000031A  03C3              add ax,bx
0000031C  BEFDBB            mov si,0xbbfd
0000031F  03F0              add si,ax
00000321  8A14              mov dl,[si]
00000323  8B4401            mov ax,[si+0x1]
00000326  881629BC          mov [0xbc29],dl
0000032A  A32ABC            mov [0xbc2a],ax
0000032D  2EFF160A60        call word near [cs:0x600a]
00000332  5B                pop bx
00000333  C7064CFF54AF      mov word [0xff4c],0xaf54
00000339  7301              jnc 0x33c
0000033B  C3                ret
0000033C  88162CBC          mov [0xbc2c],dl
00000340  A32DBC            mov [0xbc2d],ax
00000343  FEC3              inc bl
00000345  881E2FBC          mov [0xbc2f],bl
00000349  C7064CFF06B1      mov word [0xff4c],0xb106
0000034F  2EFF160460        call word near [cs:0x6004]
00000354  8A1629BC          mov dl,[0xbc29]
00000358  A12ABC            mov ax,[0xbc2a]
0000035B  BF33BC            mov di,0xbc33
0000035E  2EFF160660        call word near [cs:0x6006]
00000363  8B364CFF          mov si,[0xff4c]
00000367  56                push si
00000368  C7064CFF33BC      mov word [0xff4c],0xbc33
0000036E  2EFF160460        call word near [cs:0x6004]
00000373  5E                pop si
00000374  89364CFF          mov [0xff4c],si
00000378  2EFF160460        call word near [cs:0x6004]
0000037D  C60629BC00        mov byte [0xbc29],0x0
00000382  C7062ABC0000      mov word [0xbc2a],0x0
00000388  F6069200FF        test byte [0x92],0xff
0000038D  7453              jz 0x3e2
0000038F  A09200            mov al,[0x92]
00000392  A230BC            mov [0xbc30],al
00000395  C7064CFF46B0      mov word [0xff4c],0xb046
0000039B  2EFF160460        call word near [cs:0x6004]
000003A0  A030BC            mov al,[0xbc30]
000003A3  FEC8              dec al
000003A5  32E4              xor ah,ah
000003A7  8BD8              mov bx,ax
000003A9  03C0              add ax,ax
000003AB  03D8              add bx,ax
000003AD  8A97FDBB          mov dl,[bx-0x4403]
000003B1  8B87FEBB          mov ax,[bx-0x4402]
000003B5  D0EA              shr dl,0x0
000003B7  D1D8              rcr ax,0x0
000003B9  881629BC          mov [0xbc29],dl
000003BD  A32ABC            mov [0xbc2a],ax
000003C0  BF33BC            mov di,0xbc33
000003C3  2EFF160660        call word near [cs:0x6006]
000003C8  8B364CFF          mov si,[0xff4c]
000003CC  56                push si
000003CD  C7064CFF33BC      mov word [0xff4c],0xbc33
000003D3  2EFF160460        call word near [cs:0x6004]
000003D8  5E                pop si
000003D9  89364CFF          mov [0xff4c],si
000003DD  2EFF160460        call word near [cs:0x6004]
000003E2  C7064CFFEDB0      mov word [0xff4c],0xb0ed
000003E8  2EFF160460        call word near [cs:0x6004]
000003ED  BB2B2F            mov bx,0x2f2b
000003F0  B9190C            mov cx,0xc19
000003F3  B0FF              mov al,0xff
000003F5  2EFF160020        call word near [cs:0x2000]
000003FA  C70654FF2E30      mov word [0xff54],0x302e
00000400  2EFF160860        call word near [cs:0x6008]
00000405  C7064CFFEFAD      mov word [0xff4c],0xadef
0000040B  7301              jnc 0x40e
0000040D  C3                ret
0000040E  C7064CFF1CAE      mov word [0xff4c],0xae1c
00000414  8A162CBC          mov dl,[0xbc2c]
00000418  A12DBC            mov ax,[0xbc2d]
0000041B  88168500          mov [0x85],dl
0000041F  A38600            mov [0x86],ax
00000422  8A1629BC          mov dl,[0xbc29]
00000426  A12ABC            mov ax,[0xbc2a]
00000429  2EFF160C60        call word near [cs:0x600c]
0000042E  2EFF161620        call word near [cs:0x2016]
00000433  F60630BCFF        test byte [0xbc30],0xff
00000438  7415              jz 0x44f
0000043A  A030BC            mov al,[0xbc30]
0000043D  FEC8              dec al
0000043F  BB9CAC            mov bx,0xac9c
00000442  D7                xlatb
00000443  8A1E06C0          mov bl,[0xc006]
00000447  FECB              dec bl
00000449  32FF              xor bh,bh
0000044B  0887D200          or [bx+0xd2],al
0000044F  A02FBC            mov al,[0xbc2f]
00000452  A29200            mov [0x92],al
00000455  3C06              cmp al,0x6
00000457  750D              jnz 0x466
00000459  8A1E06C0          mov bl,[0xc006]
0000045D  FECB              dec bl
0000045F  32FF              xor bh,bh
00000461  80A7D200FB        and byte [bx+0xd2],0xfb
00000466  E851FC            call 0xba
00000469  8A269200          mov ah,[0x92]
0000046D  B004              mov al,0x4
0000046F  2EFF160C01        call word near [cs:0x10c]
00000474  A09200            mov al,[0x92]
00000477  BBAB18            mov bx,0x18ab
0000047A  2EFF261C20        jmp word near [cs:0x201c]
0000047F  3C03              cmp al,0x3
00000481  7401              jz 0x484
00000483  C3                ret
00000484  F606240002        test byte [0x24],0x2
00000489  7401              jz 0x48c
0000048B  C3                ret
0000048C  803E06C005        cmp byte [0xc006],0x5
00000491  7401              jz 0x494
00000493  C3                ret
00000494  58                pop ax
00000495  C7064CFF4CB2      mov word [0xff4c],0xb24c
0000049B  C3                ret
0000049C  C60628BCFF        mov byte [0xbc28],0xff
000004A1  0E                push cs
000004A2  07                pop es
000004A3  BF58FF            mov di,0xff58
000004A6  BE41BC            mov si,0xbc41
000004A9  B90600            mov cx,0x6
000004AC  F3A4              rep movsb
000004AE  A032BC            mov al,[0xbc32]
000004B1  A253FF            mov [0xff53],al
000004B4  3C03              cmp al,0x3
000004B6  7202              jc 0x4ba
000004B8  B003              mov al,0x3
000004BA  A252FF            mov [0xff52],al
000004BD  C60656FF00        mov byte [0xff56],0x0
000004C2  C60622BC00        mov byte [0xbc22],0x0
000004C7  BB6E15            mov bx,0x156e
000004CA  B92425            mov cx,0x2524
000004CD  B0FF              mov al,0xff
000004CF  2EFF160020        call word near [cs:0x2000]
000004D4  C60657FFFF        mov byte [0xff57],0xff
000004D9  C70654FF7115      mov word [0xff54],0x1571
000004DF  C7066AFF2100      mov word [0xff6a],0x21
000004E5  C70668FF1700      mov word [0xff68],0x17
000004EB  BE11AD            mov si,0xad11
000004EE  BF0FBC            mov di,0xbc0f
000004F1  8A0E52FF          mov cl,[0xff52]
000004F5  32ED              xor ch,ch
000004F7  A056FF            mov al,[0xff56]
000004FA  2EFF161260        call word near [cs:0x6012]
000004FF  8A1E22BC          mov bl,[0xbc22]
00000503  2EFF161060        call word near [cs:0x6010]
00000508  7307              jnc 0x511
0000050A  C7064CFFEFAD      mov word [0xff4c],0xadef
00000510  C3                ret
00000511  881E22BC          mov [0xbc22],bl
00000515  C7064CFFDCB0      mov word [0xff4c],0xb0dc
0000051B  2EFF160460        call word near [cs:0x6004]
00000520  A022BC            mov al,[0xbc22]
00000523  020656FF          add al,[0xff56]
00000527  BB58FF            mov bx,0xff58
0000052A  D7                xlatb
0000052B  50                push ax
0000052C  8B364CFF          mov si,[0xff4c]
00000530  56                push si
00000531  32E4              xor ah,ah
00000533  03C0              add ax,ax
00000535  8BD8              mov bx,ax
00000537  8B8711AD          mov ax,[bx-0x52ef]
0000053B  A34CFF            mov [0xff4c],ax
0000053E  2EFF160460        call word near [cs:0x6004]
00000543  5E                pop si
00000544  89364CFF          mov [0xff4c],si
00000548  2EFF160460        call word near [cs:0x6004]
0000054D  58                pop ax
0000054E  50                push ax
0000054F  32E4              xor ah,ah
00000551  8BD8              mov bx,ax
00000553  03C0              add ax,ax
00000555  03C3              add ax,bx
00000557  BE0FBC            mov si,0xbc0f
0000055A  03F0              add si,ax
0000055C  8A14              mov dl,[si]
0000055E  8B4401            mov ax,[si+0x1]
00000561  881629BC          mov [0xbc29],dl
00000565  A32ABC            mov [0xbc2a],ax
00000568  2EFF160A60        call word near [cs:0x600a]
0000056D  5B                pop bx
0000056E  C7064CFF54AF      mov word [0xff4c],0xaf54
00000574  7301              jnc 0x577
00000576  C3                ret
00000577  88162CBC          mov [0xbc2c],dl
0000057B  A32DBC            mov [0xbc2d],ax
0000057E  FEC3              inc bl
00000580  881E2FBC          mov [0xbc2f],bl
00000584  C7064CFF06B1      mov word [0xff4c],0xb106
0000058A  2EFF160460        call word near [cs:0x6004]
0000058F  8A1629BC          mov dl,[0xbc29]
00000593  A12ABC            mov ax,[0xbc2a]
00000596  BF33BC            mov di,0xbc33
00000599  2EFF160660        call word near [cs:0x6006]
0000059E  8B364CFF          mov si,[0xff4c]
000005A2  56                push si
000005A3  C7064CFF33BC      mov word [0xff4c],0xbc33
000005A9  2EFF160460        call word near [cs:0x6004]
000005AE  5E                pop si
000005AF  89364CFF          mov [0xff4c],si
000005B3  2EFF160460        call word near [cs:0x6004]
000005B8  C60629BC00        mov byte [0xbc29],0x0
000005BD  C7062ABC0000      mov word [0xbc2a],0x0
000005C3  F6069300FF        test byte [0x93],0xff
000005C8  7453              jz 0x61d
000005CA  A09300            mov al,[0x93]
000005CD  A230BC            mov [0xbc30],al
000005D0  C7064CFFA1B0      mov word [0xff4c],0xb0a1
000005D6  2EFF160460        call word near [cs:0x6004]
000005DB  A030BC            mov al,[0xbc30]
000005DE  FEC8              dec al
000005E0  32E4              xor ah,ah
000005E2  8BD8              mov bx,ax
000005E4  03C0              add ax,ax
000005E6  03D8              add bx,ax
000005E8  8A970FBC          mov dl,[bx-0x43f1]
000005EC  8B8710BC          mov ax,[bx-0x43f0]
000005F0  D0EA              shr dl,0x0
000005F2  D1D8              rcr ax,0x0
000005F4  881629BC          mov [0xbc29],dl
000005F8  A32ABC            mov [0xbc2a],ax
000005FB  BF33BC            mov di,0xbc33
000005FE  2EFF160660        call word near [cs:0x6006]
00000603  8B364CFF          mov si,[0xff4c]
00000607  56                push si
00000608  C7064CFF33BC      mov word [0xff4c],0xbc33
0000060E  2EFF160460        call word near [cs:0x6004]
00000613  5E                pop si
00000614  89364CFF          mov [0xff4c],si
00000618  2EFF160460        call word near [cs:0x6004]
0000061D  C7064CFFEDB0      mov word [0xff4c],0xb0ed
00000623  2EFF160460        call word near [cs:0x6004]
00000628  BB2B2F            mov bx,0x2f2b
0000062B  B9190C            mov cx,0xc19
0000062E  B0FF              mov al,0xff
00000630  2EFF160020        call word near [cs:0x2000]
00000635  C70654FF2E30      mov word [0xff54],0x302e
0000063B  2EFF160860        call word near [cs:0x6008]
00000640  C7064CFFEFAD      mov word [0xff4c],0xadef
00000646  7301              jnc 0x649
00000648  C3                ret
00000649  C7064CFF1CAE      mov word [0xff4c],0xae1c
0000064F  8A162CBC          mov dl,[0xbc2c]
00000653  A12DBC            mov ax,[0xbc2d]
00000656  88168500          mov [0x85],dl
0000065A  A38600            mov [0x86],ax
0000065D  8A1629BC          mov dl,[0xbc29]
00000661  A12ABC            mov ax,[0xbc2a]
00000664  2EFF160C60        call word near [cs:0x600c]
00000669  2EFF161620        call word near [cs:0x2016]
0000066E  F60630BCFF        test byte [0xbc30],0xff
00000673  7415              jz 0x68a
00000675  A030BC            mov al,[0xbc30]
00000678  FEC8              dec al
0000067A  BB9CAC            mov bx,0xac9c
0000067D  D7                xlatb
0000067E  8A1E06C0          mov bl,[0xc006]
00000682  FECB              dec bl
00000684  32FF              xor bh,bh
00000686  0887DB00          or [bx+0xdb],al
0000068A  A02FBC            mov al,[0xbc2f]
0000068D  A29300            mov [0x93],al
00000690  E853FA            call 0xe6
00000693  A09300            mov al,[0x93]
00000696  BBA43E            mov bx,0x3ea4
00000699  2EFF162020        call word near [cs:0x2020]
0000069E  BB1CC6            mov bx,0xc61c
000006A1  32C0              xor al,al
000006A3  B517              mov ch,0x17
000006A5  2EFF160420        call word near [cs:0x2004]
000006AA  8A1E9300          mov bl,[0x93]
000006AE  FECB              dec bl
000006B0  32FF              xor bh,bh
000006B2  03DB              add bx,bx
000006B4  8B87BFA6          mov ax,[bx-0x5941]
000006B8  A39600            mov [0x96],ax
000006BB  A39400            mov [0x94],ax
000006BE  2EFF261A20        jmp word near [cs:0x201a]
000006C3  1E                push ds
000006C4  005000            add [bx+si+0x0],dl
000006C7  B400              mov ah,0x0
000006C9  2C01              sub al,0x1
000006CB  2C01              sub al,0x1
000006CD  58                pop ax
000006CE  02C6              add al,dh
000006D0  06                push es
000006D1  23BC00F6          and di,[si-0xa00]
000006D5  06                push es
000006D6  26BCFF74          es mov sp,0x74ff
000006DA  08B001E8          or [bx+si-0x17ff],dh
000006DE  F302E8            rep add ch,al
000006E1  91                xchg ax,cx
000006E2  01BEFDA6          add [bp-0x5903],di
000006E6  AC                lodsb
000006E7  3CFF              cmp al,0xff
000006E9  7501              jnz 0x6ec
000006EB  C3                ret
000006EC  56                push si
000006ED  0AC0              or al,al
000006EF  7905              jns 0x6f6
000006F1  C60675FF20        mov byte [0xff75],0x20
000006F6  2407              and al,0x7
000006F8  E8D802            call 0x9d3
000006FB  E87601            call 0x874
000006FE  5E                pop si
000006FF  EBE5              jmp 0x6e6
00000701  0304              add ax,[si]
00000703  050586            add ax,0x8605
00000706  06                push es
00000707  07                pop es
00000708  07                pop es
00000709  FFC6              inc si
0000070B  06                push es
0000070C  1AFF              sbb bh,bh
0000070E  00E8              add al,ch
00000710  0102              add [bp+si],ax
00000712  803E1AFF96        cmp byte [0xff1a],0x96
00000717  72F6              jc 0x70f
00000719  C3                ret
0000071A  2EFF164020        call word near [cs:0x2040]
0000071F  C70650FF0000      mov word [0xff50],0x0
00000725  813E50FF9001      cmp word [0xff50],0x190
0000072B  72F8              jc 0x725
0000072D  A19600            mov ax,[0x96]
00000730  A39400            mov [0x94],ax
00000733  2EFF161A20        call word near [cs:0x201a]
00000738  C60624BC00        mov byte [0xbc24],0x0
0000073D  C60625BC00        mov byte [0xbc25],0x0
00000742  C60626BC00        mov byte [0xbc26],0x0
00000747  C60627BC00        mov byte [0xbc27],0x0
0000074C  32C0              xor al,al
0000074E  E88202            call 0x9d3
00000751  C60623BCFF        mov byte [0xbc23],0xff
00000756  C7064CFFE0AF      mov word [0xff4c],0xafe0
0000075C  C3                ret
0000075D  C60622BC00        mov byte [0xbc22],0x0
00000762  C60656FF00        mov byte [0xff56],0x0
00000767  0E                push cs
00000768  07                pop es
00000769  8A0E31BC          mov cl,[0xbc31]
0000076D  32ED              xor ch,ch
0000076F  BE3BBC            mov si,0xbc3b
00000772  BF58FF            mov di,0xff58
00000775  F3A4              rep movsb
00000777  8A0E32BC          mov cl,[0xbc32]
0000077B  BE41BC            mov si,0xbc41
0000077E  AC                lodsb
0000077F  0406              add al,0x6
00000781  AA                stosb
00000782  E2FA              loop 0x77e
00000784  A031BC            mov al,[0xbc31]
00000787  020632BC          add al,[0xbc32]
0000078B  A253FF            mov [0xff53],al
0000078E  A053FF            mov al,[0xff53]
00000791  3C06              cmp al,0x6
00000793  7202              jc 0x797
00000795  B006              mov al,0x6
00000797  A252FF            mov [0xff52],al
0000079A  BB1727            mov bx,0x2717
0000079D  B9411B            mov cx,0x1b41
000007A0  B0FF              mov al,0xff
000007A2  2EFF160020        call word near [cs:0x2000]
000007A7  C60657FF00        mov byte [0xff57],0x0
000007AC  C70654FF1A27      mov word [0xff54],0x271a
000007B2  C7066AFF1700      mov word [0xff6a],0x17
000007B8  BE05AD            mov si,0xad05
000007BB  8A0E52FF          mov cl,[0xff52]
000007BF  32ED              xor ch,ch
000007C1  A056FF            mov al,[0xff56]
000007C4  2EFF161260        call word near [cs:0x6012]
000007C9  8A1E22BC          mov bl,[0xbc22]
000007CD  2EFF161060        call word near [cs:0x6010]
000007D2  7307              jnc 0x7db
000007D4  C7064CFFEFAD      mov word [0xff4c],0xadef
000007DA  C3                ret
000007DB  881E22BC          mov [0xbc22],bl
000007DF  C7064CFFEAB0      mov word [0xff4c],0xb0ea
000007E5  2EFF160460        call word near [cs:0x6004]
000007EA  A022BC            mov al,[0xbc22]
000007ED  020656FF          add al,[0xff56]
000007F1  BB58FF            mov bx,0xff58
000007F4  D7                xlatb
000007F5  E8EC00            call 0x8e4
000007F8  50                push ax
000007F9  50                push ax
000007FA  C7064CFFDDB0      mov word [0xff4c],0xb0dd
00000800  2EFF160460        call word near [cs:0x6004]
00000805  58                pop ax
00000806  8B364CFF          mov si,[0xff4c]
0000080A  56                push si
0000080B  32E4              xor ah,ah
0000080D  03C0              add ax,ax
0000080F  8BD8              mov bx,ax
00000811  8B8705AD          mov ax,[bx-0x52fb]
00000815  A34CFF            mov [0xff4c],ax
00000818  2EFF160460        call word near [cs:0x6004]
0000081D  5E                pop si
0000081E  89364CFF          mov [0xff4c],si
00000822  2EFF160460        call word near [cs:0x6004]
00000827  58                pop ax
00000828  32E4              xor ah,ah
0000082A  03C0              add ax,ax
0000082C  8BD8              mov bx,ax
0000082E  8B87DEB3          mov ax,[bx-0x4c22]
00000832  A34CFF            mov [0xff4c],ax
00000835  2EFF160460        call word near [cs:0x6004]
0000083A  C7064CFFA9B1      mov word [0xff4c],0xb1a9
00000840  2EFF160460        call word near [cs:0x6004]
00000845  BB2B2F            mov bx,0x2f2b
00000848  B9190C            mov cx,0xc19
0000084B  B0FF              mov al,0xff
0000084D  2EFF160020        call word near [cs:0x2000]
00000852  C70654FF2E30      mov word [0xff54],0x302e
00000858  2EFF160860        call word near [cs:0x6008]
0000085D  C7064CFFEFAD      mov word [0xff4c],0xadef
00000863  7301              jnc 0x866
00000865  C3                ret
00000866  C7064CFF7EB1      mov word [0xff4c],0xb17e
0000086C  2EFF160460        call word near [cs:0x6004]
00000871  E9F3FE            jmp 0x767
00000874  C6061AFF00        mov byte [0xff1a],0x0
00000879  E89700            call 0x913
0000087C  803E1AFF32        cmp byte [0xff1a],0x32
00000881  72F6              jc 0x879
00000883  C3                ret
00000884  BB2B2F            mov bx,0x2f2b
00000887  B9190C            mov cx,0xc19
0000088A  B0FF              mov al,0xff
0000088C  2EFF160020        call word near [cs:0x2000]
00000891  C70654FF2E30      mov word [0xff54],0x302e
00000897  2EFF160860        call word near [cs:0x6008]
0000089C  9C                pushf
0000089D  E86600            call 0x906
000008A0  9D                popf
000008A1  C7064CFF36B3      mov word [0xff4c],0xb336
000008A7  7301              jnc 0x8aa
000008A9  C3                ret
000008AA  32C0              xor al,al
000008AC  E82401            call 0x9d3
000008AF  C7064CFF75B3      mov word [0xff4c],0xb375
000008B5  2EFF160460        call word near [cs:0x6004]
000008BA  C606920004        mov byte [0x92],0x4
000008BF  C6069B0000        mov byte [0x9b],0x0
000008C4  B004              mov al,0x4
000008C6  BBAB18            mov bx,0x18ab
000008C9  2EFF161C20        call word near [cs:0x201c]
000008CE  8026D600EF        and byte [0xd6],0xef
000008D3  800E240002        or byte [0x24],0x2
000008D8  8A269200          mov ah,[0x92]
000008DC  B004              mov al,0x4
000008DE  2EFF160C01        call word near [cs:0x10c]
000008E3  C3                ret
000008E4  3C03              cmp al,0x3
000008E6  7401              jz 0x8e9
000008E8  C3                ret
000008E9  F606240002        test byte [0x24],0x2
000008EE  7401              jz 0x8f1
000008F0  C3                ret
000008F1  803E06C005        cmp byte [0xc006],0x5
000008F6  7401              jz 0x8f9
000008F8  C3                ret
000008F9  58                pop ax
000008FA  C7064CFF40B2      mov word [0xff4c],0xb240
00000900  C3                ret
00000901  B003              mov al,0x3
00000903  E9CD00            jmp 0x9d3
00000906  BB1727            mov bx,0x2717
00000909  B9411C            mov cx,0x1c41
0000090C  32C0              xor al,al
0000090E  2EFF260020        jmp word near [cs:0x2000]
00000913  F60623BCFF        test byte [0xbc23],0xff
00000918  7501              jnz 0x91b
0000091A  C3                ret
0000091B  833E50FF02        cmp word [0xff50],0x2
00000920  7301              jnc 0x923
00000922  C3                ret
00000923  C70650FF0000      mov word [0xff50],0x0
00000929  FE0624BC          inc byte [0xbc24]
0000092D  803E24BC1E        cmp byte [0xbc24],0x1e
00000932  7301              jnc 0x935
00000934  C3                ret
00000935  C60624BC00        mov byte [0xbc24],0x0
0000093A  FE0625BC          inc byte [0xbc25]
0000093E  F60626BCFF        test byte [0xbc26],0xff
00000943  7444              jz 0x989
00000945  803E26BC7F        cmp byte [0xbc26],0x7f
0000094A  7509              jnz 0x955
0000094C  C60626BCFF        mov byte [0xbc26],0xff
00000951  B002              mov al,0x2
00000953  EB7E              jmp 0x9d3
00000955  803E26BC80        cmp byte [0xbc26],0x80
0000095A  7509              jnz 0x965
0000095C  C60626BC00        mov byte [0xbc26],0x0
00000961  32C0              xor al,al
00000963  EB6E              jmp 0x9d3
00000965  BE68AB            mov si,0xab68
00000968  A025BC            mov al,[0xbc25]
0000096B  250300            and ax,0x3
0000096E  03C0              add ax,ax
00000970  03F0              add si,ax
00000972  BB370B            mov bx,0xb37
00000975  B90200            mov cx,0x2
00000978  51                push cx
00000979  53                push bx
0000097A  AC                lodsb
0000097B  2EFF161630        call word near [cs:0x3016]
00000980  5B                pop bx
00000981  80C308            add bl,0x8
00000984  59                pop cx
00000985  E2F1              loop 0x978
00000987  EB21              jmp 0x9aa
00000989  BED0AA            mov si,0xaad0
0000098C  A025BC            mov al,[0xbc25]
0000098F  250300            and ax,0x3
00000992  03C0              add ax,ax
00000994  03F0              add si,ax
00000996  BB4F10            mov bx,0x104f
00000999  B90200            mov cx,0x2
0000099C  51                push cx
0000099D  53                push bx
0000099E  AC                lodsb
0000099F  2EFF161630        call word near [cs:0x3016]
000009A4  5B                pop bx
000009A5  FEC7              inc bh
000009A7  59                pop cx
000009A8  E2F2              loop 0x99c
000009AA  2EFF161A01        call word near [cs:0x11a]
000009AF  2401              and al,0x1
000009B1  7401              jz 0x9b4
000009B3  C3                ret
000009B4  FE0627BC          inc byte [0xbc27]
000009B8  803E27BC1E        cmp byte [0xbc27],0x1e
000009BD  7301              jnc 0x9c0
000009BF  C3                ret
000009C0  C60627BC00        mov byte [0xbc27],0x0
000009C5  A026BC            mov al,[0xbc26]
000009C8  F6D0              not al
000009CA  3480              xor al,0x80
000009CC  A226BC            mov [0xbc26],al
000009CF  B001              mov al,0x1
000009D1  EB00              jmp 0x9d3
000009D3  32E4              xor ah,ah
000009D5  03C0              add ax,ax
000009D7  8BC8              mov cx,ax
000009D9  03C0              add ax,ax
000009DB  03C1              add ax,cx
000009DD  0510AA            add ax,0xaa10
000009E0  8BF0              mov si,ax
000009E2  BB1707            mov bx,0x717
000009E5  B90200            mov cx,0x2
000009E8  AC                lodsb
000009E9  0AC0              or al,al
000009EB  7501              jnz 0x9ee
000009ED  C3                ret
000009EE  51                push cx
000009EF  8AC8              mov cl,al
000009F1  AD                lodsw
000009F2  96                xchg ax,si
000009F3  50                push ax
000009F4  51                push cx
000009F5  B90C00            mov cx,0xc
000009F8  51                push cx
000009F9  53                push bx
000009FA  AC                lodsb
000009FB  2EFF161630        call word near [cs:0x3016]
00000A00  5B                pop bx
00000A01  FEC7              inc bh
00000A03  59                pop cx
00000A04  E2F2              loop 0x9f8
00000A06  80EF0C            sub bh,0xc
00000A09  80C308            add bl,0x8
00000A0C  59                pop cx
00000A0D  E2E5              loop 0x9f4
00000A0F  5E                pop si
00000A10  59                pop cx
00000A11  E2D5              loop 0x9e8
00000A13  C3                ret
00000A14  0240AA            add al,[bx+si-0x56]
00000A17  06                push es
00000A18  88AA0240          mov [bp+si+0x4002],ch
00000A1C  AA                stosb
00000A1D  06                push es
00000A1E  D8AA0240          fsubr dword [bp+si+0x4002]
00000A22  AA                stosb
00000A23  06                push es
00000A24  20AB0458          and [bp+di+0x5804],ch
00000A28  AA                stosb
00000A29  0470              add al,0x70
00000A2B  AB                stosw
00000A2C  0358AA            add bx,[bx+si-0x56]
00000A2F  05A0AB            add ax,0xaba0
00000A32  08DC              or ah,bl
00000A34  AB                stosw
00000A35  0000              add [bx+si],al
00000A37  0004              add [si],al
00000A39  58                pop ax
00000A3A  AA                stosb
00000A3B  043C              add al,0x3c
00000A3D  AC                lodsb
00000A3E  0458              add al,0x58
00000A40  AA                stosb
00000A41  046C              add al,0x6c
00000A43  AC                lodsb
00000A44  0001              add [bx+di],al
00000A46  0203              add al,[bp+di]
00000A48  0101              add [bx+di],ax
00000A4A  0101              add [bx+di],ax
00000A4C  0104              add [si],ax
00000A4E  050607            add ax,0x706
00000A51  0809              or [bx+di],cl
00000A53  0A0B              or cl,[bp+di]
00000A55  0C0C              or al,0xc
00000A57  0C0C              or al,0xc
00000A59  0D0E0F            or ax,0xf0e
00000A5C  0001              add [bx+di],al
00000A5E  0203              add al,[bp+di]
00000A60  0101              add [bx+di],ax
00000A62  0101              add [bx+di],ax
00000A64  0104              add [si],ax
00000A66  050607            add ax,0x706
00000A69  0809              or [bx+di],cl
00000A6B  0A0B              or cl,[bp+di]
00000A6D  0C0C              or al,0xc
00000A6F  0C0C              or al,0xc
00000A71  0D0E0F            or ax,0xf0e
00000A74  1011              adc [bx+di],dl
00000A76  1213              adc dl,[bp+di]
00000A78  1415              adc al,0x15
00000A7A  16                push ss
00000A7B  0C0C              or al,0xc
00000A7D  17                pop ss
00000A7E  1819              sbb [bx+di],bl
00000A80  1A1B              sbb bl,[bp+di]
00000A82  0C8F              or al,0x8f
00000A84  90                nop
00000A85  1E                push ds
00000A86  91                xchg ax,cx
00000A87  92                xchg ax,dx
00000A88  93                xchg ax,bx
00000A89  2122              and [bp+si],sp
00000A8B  2310              and dx,[bx+si]
00000A8D  1112              adc [bp+si],dx
00000A8F  1314              adc dx,[si]
00000A91  15160C            adc ax,0xc16
00000A94  0C17              or al,0x17
00000A96  1819              sbb [bx+di],bl
00000A98  1A1B              sbb bl,[bp+di]
00000A9A  0C1C              or al,0x1c
00000A9C  1D1E1F            sbb ax,0x1f1e
00000A9F  200C              and [si],cl
00000AA1  2122              and [bp+si],sp
00000AA3  2324              and sp,[si]
00000AA5  250C26            and ax,0x260c
00000AA8  27                daa
00000AA9  2829              sub [bx+di],ch
00000AAB  2A2B              sub ch,[bp+di]
00000AAD  2C2D              sub al,0x2d
00000AAF  2E2F              cs das
00000AB1  3031              xor [bx+di],dh
00000AB3  3233              xor dh,[bp+di]
00000AB5  3435              xor al,0x35
00000AB7  3637              ss aaa
00000AB9  3839              cmp [bx+di],bh
00000ABB  3A3B              cmp bh,[bp+di]
00000ABD  3C3D              cmp al,0x3d
00000ABF  3E3F              ds aas
00000AC1  40                inc ax
00000AC2  41                inc cx
00000AC3  42                inc dx
00000AC4  43                inc bx
00000AC5  44                inc sp
00000AC6  45                inc bp
00000AC7  46                inc si
00000AC8  47                inc di
00000AC9  48                dec ax
00000ACA  49                dec cx
00000ACB  4A                dec dx
00000ACC  4B                dec bx
00000ACD  4C                dec sp
00000ACE  4D                dec bp
00000ACF  4E                dec si
00000AD0  4F                dec di
00000AD1  50                push ax
00000AD2  51                push cx
00000AD3  52                push dx
00000AD4  50                push ax
00000AD5  51                push cx
00000AD6  50                push ax
00000AD7  51                push cx
00000AD8  50                push ax
00000AD9  51                push cx
00000ADA  53                push bx
00000ADB  54                push sp
00000ADC  1011              adc [bx+di],dl
00000ADE  1213              adc dl,[bp+di]
00000AE0  55                push bp
00000AE1  56                push si
00000AE2  57                push di
00000AE3  0C0C              or al,0xc
00000AE5  17                pop ss
00000AE6  1819              sbb [bx+di],bl
00000AE8  1A1B              sbb bl,[bp+di]
00000AEA  0C1C              or al,0x1c
00000AEC  58                pop ax
00000AED  59                pop cx
00000AEE  5A                pop dx
00000AEF  5B                pop bx
00000AF0  0C21              or al,0x21
00000AF2  2223              and ah,[bp+di]
00000AF4  2425              and al,0x25
00000AF6  0C5C              or al,0x5c
00000AF8  5D                pop bp
00000AF9  5E                pop si
00000AFA  5F                pop di
00000AFB  60                pusha
00000AFC  61                popa
00000AFD  2C2D              sub al,0x2d
00000AFF  2E2F              cs das
00000B01  306263            xor [bp+si+0x63],ah
00000B04  646566676869393A  gs a32 push dword 0x3b3a3969
         -3B
00000B0D  3C6A              cmp al,0x6a
00000B0F  6B6C6D6E          imul bp,[si+0x6d],0x6e
00000B13  6F                outsw
00000B14  7071              jo 0xb87
00000B16  45                inc bp
00000B17  46                inc si
00000B18  47                inc di
00000B19  7273              jc 0xb8e
00000B1B  7475              jz 0xb92
00000B1D  7677              jna 0xb96
00000B1F  7879              js 0xb9a
00000B21  7A7B              jpe 0xb9e
00000B23  52                push dx
00000B24  1011              adc [bx+di],dl
00000B26  1213              adc dl,[bp+di]
00000B28  55                push bp
00000B29  56                push si
00000B2A  57                push di
00000B2B  0C0C              or al,0xc
00000B2D  17                pop ss
00000B2E  1819              sbb [bx+di],bl
00000B30  1A1B              sbb bl,[bp+di]
00000B32  0C1C              or al,0x1c
00000B34  58                pop ax
00000B35  59                pop cx
00000B36  5A                pop dx
00000B37  5B                pop bx
00000B38  0C21              or al,0x21
00000B3A  2223              and ah,[bp+di]
00000B3C  2425              and al,0x25
00000B3E  0C7C              or al,0x7c
00000B40  5D                pop bp
00000B41  5E                pop si
00000B42  5F                pop di
00000B43  7D7E              jnl 0xbc3
00000B45  2C2D              sub al,0x2d
00000B47  2E2F              cs das
00000B49  306A80            xor [bp+si-0x80],ch
00000B4C  818283848569      add word [bp+si-0x7b7d],0x6985
00000B52  393A              cmp [bp+si],di
00000B54  3B3C              cmp di,[si]
00000B56  0C7F              or al,0x7f
00000B58  86878889          xchg al,[bx-0x7678]
00000B5C  8A7145            mov dh,[bx+di+0x45]
00000B5F  46                inc si
00000B60  47                inc di
00000B61  7273              jc 0xbd6
00000B63  4A                dec dx
00000B64  4B                dec bx
00000B65  4C                dec sp
00000B66  4D                dec bp
00000B67  4E                dec si
00000B68  797A              jns 0xbe4
00000B6A  7B52              jpo 0xbbe
00000B6C  5D                pop bp
00000B6D  815D815D81        sbb word [di-0x7f],0x815d
00000B72  8D8E2425          lea cx,[bp+0x2524]
00000B76  94                xchg ax,sp
00000B77  95                xchg ax,bp
00000B78  96                xchg ax,si
00000B79  28979899          sub [bx-0x6668],dl
00000B7D  2C2D              sub al,0x2d
00000B7F  2E2F              cs das
00000B81  309A9B9C          xor [bp+si-0x6365],bl
00000B85  9D                popf
00000B86  9E                sahf
00000B87  9F                lahf
00000B88  A0A139            mov al,[0x39a1]
00000B8B  3A3B              cmp bh,[bp+di]
00000B8D  3CA2              cmp al,0xa2
00000B8F  A3A4A5            mov [0xa5a4],ax
00000B92  A6                cmpsb
00000B93  A7                cmpsw
00000B94  A8A9              test al,0xa9
00000B96  45                inc bp
00000B97  46                inc si
00000B98  47                inc di
00000B99  72AA              jc 0xb45
00000B9B  AB                stosw
00000B9C  4B                dec bx
00000B9D  4C                dec sp
00000B9E  4D                dec bp
00000B9F  4E                dec si
00000BA0  AC                lodsb
00000BA1  AD                lodsw
00000BA2  7B52              jpo 0xbf6
00000BA4  1A1B              sbb bl,[bp+di]
00000BA6  0CAE              or al,0xae
00000BA8  AF                scasw
00000BA9  1E                push ds
00000BAA  91                xchg ax,cx
00000BAB  B0B1              mov al,0xb1
00000BAD  2122              and [bp+si],sp
00000BAF  2324              and sp,[si]
00000BB1  B2B3              mov dl,0xb3
00000BB3  B4B5              mov ah,0xb5
00000BB5  B697              mov dh,0x97
00000BB7  B7B8              mov bh,0xb8
00000BB9  B92D2E            mov cx,0x2e2d
00000BBC  2F                das
00000BBD  BABBBC            mov dx,0xbcbb
00000BC0  9C                pushf
00000BC1  9D                popf
00000BC2  9E                sahf
00000BC3  BDBEBF            mov bp,0xbfbe
00000BC6  393A              cmp [bp+si],di
00000BC8  3B3C              cmp di,[si]
00000BCA  0C0C              or al,0xc
00000BCC  C0A5A6C18A        shl byte [di-0x3e5a],byte 0x8a
00000BD1  7145              jno 0xc18
00000BD3  46                inc si
00000BD4  47                inc di
00000BD5  7273              jc 0xc4a
00000BD7  4A                dec dx
00000BD8  4B                dec bx
00000BD9  4C                dec sp
00000BDA  4D                dec bp
00000BDB  4E                dec si
00000BDC  797A              jns 0xc58
00000BDE  7B52              jpo 0xc32
00000BE0  0001              add [bx+di],al
00000BE2  02C2              add al,dl
00000BE4  C3                ret
00000BE5  C4                db 0xc4
00000BE6  C5                db 0xc5
00000BE7  C60104            mov byte [bx+di],0x4
00000BEA  050607            add ax,0x706
00000BED  08C7              or bh,al
00000BEF  C8C9CACB          enter word 0xcac9,byte 0xcb
00000BF3  CC                int3
00000BF4  CD0D              int byte 0xd
00000BF6  0E                push cs
00000BF7  0F1011            movups xmm2,oword [bx+di]
00000BFA  CE                into
00000BFB  CF                iret
00000BFC  D0D1              rcl cl,0x0
00000BFE  D2D3              rcl bl,cl
00000C00  D417              aam byte 0x17
00000C02  1819              sbb [bx+di],bl
00000C04  1A1B              sbb bl,[bp+di]
00000C06  0CD5              or al,0xd5
00000C08  D6                salc
00000C09  D7                xlatb
00000C0A  D8D9              fcomp st1
00000C0C  DA21              fisub dword [bx+di]
00000C0E  2223              and ah,[bp+di]
00000C10  2425              and al,0x25
00000C12  0CDB              or al,0xdb
00000C14  B5DC              mov ch,0xdc
00000C16  DDDE              fstp st6
00000C18  0C2C              or al,0x2c
00000C1A  2D2E2F            sub ax,0x2f2e
00000C1D  300C              xor [si],cl
00000C1F  6A9C              push word 0xffffffffffffff9c
00000C21  9D                popf
00000C22  DFE0              fnstsw ax
00000C24  0C69              or al,0x69
00000C26  393A              cmp [bp+si],di
00000C28  3B3C              cmp di,[si]
00000C2A  0C0C              or al,0xc
00000C2C  C0E1E2            shl cl,byte 0xe2
00000C2F  C18A714546        ror word [bp+si+0x4571],byte 0x46
00000C34  47                inc di
00000C35  7273              jc 0xcaa
00000C37  4A                dec dx
00000C38  4B                dec bx
00000C39  4C                dec sp
00000C3A  4D                dec bp
00000C3B  4E                dec si
00000C3C  797A              jns 0xcb8
00000C3E  7B52              jpo 0xc92
00000C40  E3E4              jcxz 0xc26
00000C42  94                xchg ax,sp
00000C43  95                xchg ax,bp
00000C44  96                xchg ax,si
00000C45  28979899          sub [bx-0x6668],dl
00000C49  2C2D              sub al,0x2d
00000C4B  2EE5E6            cs in ax,byte 0xe6
00000C4E  E79B              out byte 0x9b,ax
00000C50  9C                pushf
00000C51  9D                popf
00000C52  9E                sahf
00000C53  9F                lahf
00000C54  A0A139            mov al,[0x39a1]
00000C57  3AE8              cmp ch,al
00000C59  E9EAEB            jmp 0xf846
00000C5C  A4                movsb
00000C5D  A5                movsw
00000C5E  A6                cmpsb
00000C5F  A7                cmpsw
00000C60  EC                in al,dx
00000C61  ED                in ax,dx
00000C62  45                inc bp
00000C63  46                inc si
00000C64  EE                out dx,al
00000C65  EF                out dx,ax
00000C66  F0                lock
00000C67  F1                int1
00000C68  F2F3F4            rep hlt
00000C6B  F5                cmc
00000C6C  F6F7              div bh
00000C6E  F8                clc
00000C6F  F9                stc
00000C70  2425              and al,0x25
00000C72  94                xchg ax,sp
00000C73  95                xchg ax,bp
00000C74  96                xchg ax,si
00000C75  28979899          sub [bx-0x6668],dl
00000C79  2C2D              sub al,0x2d
00000C7B  2E2F              cs das
00000C7D  30E7              xor bh,ah
00000C7F  9B9C              wait pushf
00000C81  9D                popf
00000C82  9E                sahf
00000C83  9F                lahf
00000C84  A0A139            mov al,[0x39a1]
00000C87  3AFA              cmp bh,dl
00000C89  FB                sti
00000C8A  EAEBA4A5A6        jmp word 0xa6a5:word 0xa4eb
00000C8F  A7                cmpsw
00000C90  EC                in al,dx
00000C91  ED                in ax,dx
00000C92  45                inc bp
00000C93  46                inc si
00000C94  FC                cld
00000C95  FD                std
00000C96  F0FE4B4C          lock dec byte [bp+di+0x4c]
00000C9A  4D                dec bp
00000C9B  4E                dec si
00000C9C  F6FF              idiv bh
00000C9E  7B52              jpo 0xcf2
00000CA0  80402010          add byte [bx+si+0x20],0x10
00000CA4  0804              or [si],al
00000CA6  0115              add [di],dx
00000CA8  41                inc cx
00000CA9  52                push dx
00000CAA  4D                dec bp
00000CAB  4F                dec di
00000CAC  52                push dx
00000CAD  2E47              cs inc di
00000CAF  52                push dx
00000CB0  50                push ax
00000CB1  0010              add [bx+si],dl
00000CB3  AF                scasw
00000CB4  00165765          add [0x6557],dl
00000CB8  61                popa
00000CB9  706F              jo 0xd2a
00000CBB  6E                outsb
00000CBC  20616E            and [bx+di+0x6e],ah
00000CBF  64204172          and [fs:bx+di+0x72],al
00000CC3  6D                insw
00000CC4  6F                outsw
00000CC5  7572              jnz 0xd39
00000CC7  205368            and [bp+di+0x68],dl
00000CCA  6F                outsw
00000CCB  7047              jo 0xd14
00000CCD  6F                outsw
00000CCE  206F75            and [bx+0x75],ch
00000CD1  7473              jz 0xd46
00000CD3  6964650052        imul sp,[si+0x65],0x5200
00000CD8  657061            gs jo 0xd3c
00000CDB  6972207368        imul si,[bp+si+0x20],0x6873
00000CE0  69656C6400        imul sp,[di+0x6c],0x64
00000CE5  42                inc dx
00000CE6  7579              jnz 0xd61
00000CE8  207765            and [bx+0x65],dh
00000CEB  61                popa
00000CEC  706F              jo 0xd5d
00000CEE  6E                outsb
00000CEF  004275            add [bp+si+0x75],al
00000CF2  7920              jns 0xd14
00000CF4  7368              jnc 0xd5e
00000CF6  69656C6400        imul sp,[di+0x6c],0x64
00000CFB  45                inc bp
00000CFC  7870              js 0xd6e
00000CFE  6C                insb
00000CFF  61                popa
00000D00  696E20676F        imul bp,[bp+0x20],0x6f67
00000D05  6F                outsw
00000D06  647300            fs jnc 0xd09
00000D09  1DAD2C            sbb ax,0x2cad
00000D0C  AD                lodsw
00000D0D  3DAD4A            cmp ax,0x4aad
00000D10  AD                lodsw
00000D11  59                pop cx
00000D12  AD                lodsw
00000D13  6C                insb
00000D14  AD                lodsw
00000D15  7EAD              jng 0xcc4
00000D17  8AAD9CAD          mov ch,[di-0x5264]
00000D1B  A9ADB6            test ax,0xb6ad
00000D1E  AD                lodsw
00000D1F  C3                ret
00000D20  AD                lodsw
00000D21  54                push sp
00000D22  7261              jc 0xd85
00000D24  696E696E67        imul bp,[bp+0x69],0x676e
00000D29  207377            and [bp+di+0x77],dh
00000D2C  6F                outsw
00000D2D  7264              jc 0xd93
00000D2F  005769            add [bx+0x69],dl
00000D32  7365              jnc 0xd99
00000D34  206D61            and [di+0x61],ch
00000D37  6E                outsb
00000D38  5C                pop sp
00000D39  7320              jnc 0xd5b
00000D3B  7377              jnc 0xdb4
00000D3D  6F                outsw
00000D3E  7264              jc 0xda4
00000D40  005370            add [bp+di+0x70],dl
00000D43  6972697420        imul si,[bp+si+0x69],0x2074
00000D48  7377              jnc 0xdc1
00000D4A  6F                outsw
00000D4B  7264              jc 0xdb1
00000D4D  004B6E            add [bp+di+0x6e],cl
00000D50  696768745C        imul sp,[bx+0x68],0x5c74
00000D55  7320              jnc 0xd77
00000D57  7377              jnc 0xdd0
00000D59  6F                outsw
00000D5A  7264              jc 0xdc0
00000D5C  00496C            add [bx+di+0x6c],cl
00000D5F  6C                insb
00000D60  756D              jnz 0xdcf
00000D62  696E617469        imul bp,[bp+0x61],0x6974
00000D67  6F                outsw
00000D68  6E                outsb
00000D69  207377            and [bp+di+0x77],dh
00000D6C  6F                outsw
00000D6D  7264              jc 0xdd3
00000D6F  00456E            add [di+0x6e],al
00000D72  636861            arpl [bx+si+0x61],bp
00000D75  6E                outsb
00000D76  746D              jz 0xde5
00000D78  656E              gs outsb
00000D7A  7420              jz 0xd9c
00000D7C  7377              jnc 0xdf5
00000D7E  6F                outsw
00000D7F  7264              jc 0xde5
00000D81  00436C            add [bp+di+0x6c],al
00000D84  61                popa
00000D85  7920              jns 0xda7
00000D87  7368              jnc 0xdf1
00000D89  69656C6400        imul sp,[di+0x6c],0x64
00000D8E  57                push di
00000D8F  697365206D        imul si,[bp+di+0x65],0x6d20
00000D94  61                popa
00000D95  6E                outsb
00000D96  5C                pop sp
00000D97  7320              jnc 0xdb9
00000D99  7368              jnc 0xe03
00000D9B  69656C6400        imul sp,[di+0x6c],0x64
00000DA0  53                push bx
00000DA1  746F              jz 0xe12
00000DA3  6E                outsb
00000DA4  65207368          and [gs:bp+di+0x68],dh
00000DA8  69656C6400        imul sp,[di+0x6c],0x64
00000DAD  48                dec ax
00000DAE  6F                outsw
00000DAF  6E                outsb
00000DB0  6F                outsw
00000DB1  7220              jc 0xdd3
00000DB3  7368              jnc 0xe1d
00000DB5  69656C6400        imul sp,[di+0x6c],0x64
00000DBA  4C                dec sp
00000DBB  6967687420        imul sp,[bx+0x68],0x2074
00000DC0  7368              jnc 0xe2a
00000DC2  69656C6400        imul sp,[di+0x6c],0x64
00000DC7  54                push sp
00000DC8  6974616E69        imul si,[si+0x61],0x696e
00000DCD  756D              jnz 0xe3c
00000DCF  205368            and [bp+di+0x68],dl
00000DD2  69656C6400        imul sp,[di+0x6c],0x64
00000DD7  4D                dec bp
00000DD8  61                popa
00000DD9  7920              jns 0xdfb
00000DDB  49                dec cx
00000DDC  26626520          bound sp,[es:di+0x20]
00000DE0  6F                outsw
00000DE1  66207365          o32 and [bp+di+0x65],dh
00000DE5  7276              jc 0xe5d
00000DE7  6963652C20        imul sp,[bp+di+0x65],0x202c
00000DEC  7369              jnc 0xe57
00000DEE  723F              jc 0xe2f
00000DF0  2F                das
00000DF1  FF00              inc word [bx+si]
00000DF3  0C49              or al,0x49
00000DF5  7320              jnc 0xe17
00000DF7  7468              jz 0xe61
00000DF9  657265            gs jc 0xe61
00000DFC  20736F            and [bp+di+0x6f],dh
00000DFF  6D                insw
00000E00  657468            gs jz 0xe6b
00000E03  696E672049        imul bp,[bp+0x67],0x4920
00000E08  2663616E          arpl [es:bx+di+0x6e],sp
00000E0C  20646F            and [si+0x6f],ah
00000E0F  20666F            and [bp+0x6f],ah
00000E12  7220              jc 0xe34
00000E14  796F              jns 0xe85
00000E16  752C              jnz 0xe44
00000E18  207369            and [bp+di+0x69],dh
00000E1B  723F              jc 0xe5c
00000E1D  2F                das
00000E1E  FF00              inc word [bx+si]
00000E20  0C57              or al,0x57
00000E22  696C6C2074        imul bp,[si+0x6c],0x7420
00000E27  686572            push word 0x7265
00000E2A  65206265          and [gs:bp+si+0x65],ah
00000E2E  20736F            and [bp+di+0x6f],dh
00000E31  6D                insw
00000E32  657468            gs jz 0xe9d
00000E35  696E672065        imul bp,[bp+0x67],0x6520
00000E3A  6C                insb
00000E3B  7365              jnc 0xea2
00000E3D  20666F            and [bp+0x6f],ah
00000E40  7220              jc 0xe62
00000E42  796F              jns 0xeb3
00000E44  752C              jnz 0xe72
00000E46  207369            and [bp+di+0x69],dh
00000E49  723F              jc 0xe8a
00000E4B  2F                das
00000E4C  FF00              inc word [bx+si]
00000E4E  0C53              or al,0x53
00000E50  69722C2079        imul si,[bp+si+0x2c],0x7920
00000E55  6F                outsw
00000E56  7520              jnz 0xe78
00000E58  61                popa
00000E59  7265              jc 0xec0
00000E5B  6E                outsb
00000E5C  5C                pop sp
00000E5D  7420              jz 0xe7f
00000E5F  636172            arpl [bx+di+0x72],sp
00000E62  7279              jc 0xedd
00000E64  696E672061        imul bp,[bp+0x67],0x6120
00000E69  207368            and [bp+di+0x68],dh
00000E6C  69656C6420        imul sp,[di+0x6c],0x2064
00000E71  2D2D20            sub ax,0x202d
00000E74  686F77            push word 0x776f
00000E77  657665            gs jna 0xedf
00000E7A  722C              jc 0xea8
00000E7C  204920            and [bx+di+0x20],cl
00000E7F  646F              fs outsw
00000E81  206861            and [bx+si+0x61],ch
00000E84  7665              jna 0xeeb
00000E86  206120            and [bx+di+0x20],ah
00000E89  66696E652073656C  imul ebp,[bp+0x65],0x6c657320
00000E91  65637469          arpl [gs:si+0x69],si
00000E95  6F                outsw
00000E96  6E                outsb
00000E97  2C20              sub al,0x20
00000E99  696620796F        imul sp,[bp+0x20],0x6f79
00000E9E  755C              jnz 0xefc
00000EA0  64206C69          and [fs:si+0x69],ch
00000EA4  6B652074          imul sp,[di+0x20],0x74
00000EA8  6F                outsw
00000EA9  206275            and [bp+si+0x75],ah
00000EAC  7920              jns 0xece
00000EAE  6F                outsw
00000EAF  6E                outsb
00000EB0  652E2F            cs das
00000EB3  FF00              inc word [bx+si]
00000EB5  0C53              or al,0x53
00000EB7  69722C2079        imul si,[bp+si+0x2c],0x7920
00000EBC  6F                outsw
00000EBD  7572              jnz 0xf31
00000EBF  207368            and [bp+di+0x68],dh
00000EC2  69656C6420        imul sp,[di+0x6c],0x2064
00000EC7  6973206E6F        imul si,[bp+di+0x20],0x6f6e
00000ECC  7420              jz 0xeee
00000ECE  696E206E65        imul bp,[bp+0x20],0x656e
00000ED3  6564206F66        and [fs:bx+0x66],ch
00000ED8  207265            and [bp+si+0x65],dh
00000EDB  7061              jo 0xf3e
00000EDD  69722E2048        imul si,[bp+si+0x2e],0x4820
00000EE2  6F                outsw
00000EE3  7720              ja 0xf05
00000EE5  656C              gs insb
00000EE7  7365              jnc 0xf4e
00000EE9  206361            and [bp+di+0x61],ah
00000EEC  6E                outsb
00000EED  204920            and [bx+di+0x20],cl
00000EF0  68656C            push word 0x6c65
00000EF3  7020              jo 0xf15
00000EF5  796F              jns 0xf66
00000EF7  753F              jnz 0xf38
00000EF9  2F                das
00000EFA  FF00              inc word [bx+si]
00000EFC  0C49              or al,0x49
00000EFE  5C                pop sp
00000EFF  6C                insb
00000F00  6C                insb
00000F01  206265            and [bp+si+0x65],ah
00000F04  20676C            and [bx+0x6c],ah
00000F07  61                popa
00000F08  6420746F          and [fs:si+0x6f],dh
00000F0C  207265            and [bp+si+0x65],dh
00000F0F  7061              jo 0xf72
00000F11  697220796F        imul si,[bp+si+0x20],0x6f79
00000F16  7572              jnz 0xf8a
00000F18  207368            and [bp+di+0x68],dh
00000F1B  69656C642C        imul sp,[di+0x6c],0x2c64
00000F20  207369            and [bp+di+0x69],dh
00000F23  722C              jc 0xf51
00000F25  20666F            and [bp+0x6f],ah
00000F28  7220              jc 0xf4a
00000F2A  7468              jz 0xf94
00000F2C  65206C6F          and [gs:si+0x6f],ch
00000F30  7720              ja 0xf52
00000F32  7072              jo 0xfa6
00000F34  696365206F        imul sp,[bp+di+0x65],0x6f20
00000F39  6620FF            o32 and bh,bh
00000F3C  0026676F          add [0x6f67],ah
00000F40  6C                insb
00000F41  64732E            fs jnc 0xf72
00000F44  205368            and [bp+di+0x68],dl
00000F47  61                popa
00000F48  6C                insb
00000F49  6C                insb
00000F4A  204926            and [bx+di+0x26],cl
00000F4D  7072              jo 0xfc1
00000F4F  6F                outsw
00000F50  636565            arpl [di+0x65],sp
00000F53  643F              fs aas
00000F55  FF00              inc word [bx+si]
00000F57  0D495C            or ax,0x5c49
00000F5A  6D                insw
00000F5B  20736F            and [bp+di+0x6f],dh
00000F5E  7272              jc 0xfd2
00000F60  7920              jns 0xf82
00000F62  7369              jnc 0xfcd
00000F64  722C              jc 0xf92
00000F66  20796F            and [bx+di+0x6f],bh
00000F69  7520              jnz 0xf8b
00000F6B  61                popa
00000F6C  7265              jc 0xfd3
00000F6E  6E                outsb
00000F6F  5C                pop sp
00000F70  7420              jz 0xf92
00000F72  636172            arpl [bx+di+0x72],sp
00000F75  7279              jc 0xff0
00000F77  696E672065        imul bp,[bp+0x67],0x6520
00000F7C  6E                outsb
00000F7D  6F                outsw
00000F7E  7567              jnz 0xfe7
00000F80  682067            push word 0x6720
00000F83  6F                outsw
00000F84  6C                insb
00000F85  642E205065        and [cs:bx+si+0x65],dl
00000F8A  7268              jc 0xff4
00000F8C  61                popa
00000F8D  7073              jo 0x1002
00000F8F  206166            and [bx+di+0x66],ah
00000F92  7465              jz 0xff9
00000F94  7220              jc 0xfb6
00000F96  796F              jns 0x1007
00000F98  755C              jnz 0xff6
00000F9A  7665              jna 0x1001
00000F9C  207669            and [bp+0x69],dh
00000F9F  7369              jnc 0x100a
00000FA1  7465              jz 0x1008
00000FA3  64207468          and [fs:si+0x68],dh
00000FA7  65206261          and [gs:bp+si+0x61],ah
00000FAB  6E                outsb
00000FAC  6B2E2E2E2F        imul bp,[0x2e2e],0x2f
00000FB1  FF00              inc word [bx+si]
00000FB3  0D506C            or ax,0x6c50
00000FB6  6561              gs popa
00000FB8  7365              jnc 0x101f
00000FBA  207761            and [bx+0x61],dh
00000FBD  6974206865        imul si,[si+0x20],0x6568
00000FC2  7265              jc 0x1029
00000FC4  2C20              sub al,0x20
00000FC6  49                dec cx
00000FC7  5C                pop sp
00000FC8  6C                insb
00000FC9  6C                insb
00000FCA  206F6E            and [bx+0x6e],ch
00000FCD  6C                insb
00000FCE  7920              jns 0xff0
00000FD0  626520            bound sp,[di+0x20]
00000FD3  61                popa
00000FD4  206D6F            and [di+0x6f],ch
00000FD7  6D                insw
00000FD8  656E              gs outsb
00000FDA  742E              jz 0x100a
00000FDC  FF04              inc word [si]
00000FDE  FF04              inc word [si]
00000FE0  FF05              inc word [di]
00000FE2  FF00              inc word [bx+si]
00000FE4  0C54              or al,0x54
00000FE6  686520            push word 0x2065
00000FE9  7265              jc 0x1050
00000FEB  7061              jo 0x104e
00000FED  6972732074        imul si,[bp+si+0x73],0x7420
00000FF2  6F                outsw
00000FF3  20796F            and [bx+di+0x6f],bh
00000FF6  7572              jnz 0x106a
00000FF8  206172            and [bx+di+0x72],ah
00000FFB  6D                insw
00000FFC  6F                outsw
00000FFD  7572              jnz 0x1071
00000FFF  206172            and [bx+di+0x72],ah
00001002  6520636F          and [gs:bp+di+0x6f],ah
00001006  6D                insw
00001007  706C              jo 0x1075
00001009  657465            gs jz 0x1071
0000100C  2E204974          and [cs:bx+di+0x74],cl
00001010  206973            and [bx+di+0x73],ch
00001013  206E6F            and [bp+0x6f],ch
00001016  7720              ja 0x1038
00001018  61                popa
00001019  7320              jnc 0x103b
0000101B  676F              a32 outsw
0000101D  6F                outsw
0000101E  64206173          and [fs:bx+di+0x73],ah
00001022  206E65            and [bp+0x65],ch
00001025  772E              ja 0x1055
00001027  2F                das
00001028  FF00              inc word [bx+si]
0000102A  0C53              or al,0x53
0000102C  6F                outsw
0000102D  6D                insw
0000102E  657468            gs jz 0x1099
00001031  696E672065        imul bp,[bp+0x67],0x6520
00001036  6C                insb
00001037  7365              jnc 0x109e
00001039  20666F            and [bp+0x6f],ah
0000103C  7220              jc 0x105e
0000103E  796F              jns 0x10af
00001040  752C              jnz 0x106e
00001042  207369            and [bp+di+0x69],dh
00001045  723F              jc 0x1086
00001047  2F                das
00001048  FF01              inc word [bx+di]
0000104A  49                dec cx
0000104B  5C                pop sp
0000104C  6C                insb
0000104D  6C                insb
0000104E  206769            and [bx+0x69],ah
00001051  7665              jna 0x10b8
00001053  20796F            and [bx+di+0x6f],bh
00001056  7520              jnz 0x1078
00001058  FF00              inc word [bx+si]
0000105A  26676F            es a32 outsw
0000105D  6C                insb
0000105E  647320            fs jnc 0x1081
00001061  6F                outsw
00001062  6E                outsb
00001063  20796F            and [bx+di+0x6f],bh
00001066  7572              jnz 0x10da
00001068  206F6C            and [bx+0x6c],ch
0000106B  64207765          and [fs:bx+0x65],dh
0000106F  61                popa
00001070  706F              jo 0x10e1
00001072  6E                outsb
00001073  206173            and [bx+di+0x73],ah
00001076  206120            and [bx+di+0x20],ah
00001079  7472              jz 0x10ed
0000107B  61                popa
0000107C  64652D696E        gs sub ax,0x6e69
00001081  2E0DFF00          cs or ax,0xff
00001085  0C53              or al,0x53
00001087  6F                outsw
00001088  6D                insw
00001089  657468            gs jz 0x10f4
0000108C  696E672065        imul bp,[bp+0x67],0x6520
00001091  6C                insb
00001092  7365              jnc 0x10f9
00001094  20666F            and [bp+0x6f],ah
00001097  7220              jc 0x10b9
00001099  796F              jns 0x110a
0000109B  752C              jnz 0x10c9
0000109D  207369            and [bp+di+0x69],dh
000010A0  723F              jc 0x10e1
000010A2  2F                das
000010A3  FF02              inc word [bp+si]
000010A5  49                dec cx
000010A6  5C                pop sp
000010A7  6C                insb
000010A8  6C                insb
000010A9  206769            and [bx+0x69],ah
000010AC  7665              jna 0x1113
000010AE  20796F            and [bx+di+0x6f],bh
000010B1  7520              jnz 0x10d3
000010B3  FF00              inc word [bx+si]
000010B5  26676F            es a32 outsw
000010B8  6C                insb
000010B9  647320            fs jnc 0x10dc
000010BC  6F                outsw
000010BD  6E                outsb
000010BE  20796F            and [bx+di+0x6f],bh
000010C1  7572              jnz 0x1135
000010C3  206F6C            and [bx+0x6c],ch
000010C6  64207368          and [fs:bp+di+0x68],dh
000010CA  69656C6420        imul sp,[di+0x6c],0x2064
000010CF  61                popa
000010D0  7320              jnc 0x10f2
000010D2  61                popa
000010D3  207472            and [si+0x72],dh
000010D6  61                popa
000010D7  64652D696E        gs sub ax,0x6e69
000010DC  2E0DFF00          cs or ax,0xff
000010E0  0C4F              or al,0x4f
000010E2  682C20            push word 0x202c
000010E5  7468              jz 0x114f
000010E7  6520FF            gs and bh,bh
000010EA  003F              add [bx],bh
000010EC  2F                das
000010ED  FF0C              dec word [si]
000010EF  FF00              inc word [bx+si]
000010F1  57                push di
000010F2  696C6C2074        imul bp,[si+0x6c],0x7420
000010F7  686174            push word 0x7461
000010FA  206265            and [bp+si+0x65],ah
000010FD  20616C            and [bx+di+0x6c],ah
00001100  6C                insb
00001101  207269            and [bp+si+0x69],dh
00001104  6768743F          a32 push word 0x3f74
00001108  FF00              inc word [bx+si]
0000110A  54                push sp
0000110B  686174            push word 0x7461
0000110E  207769            and [bx+0x69],dh
00001111  6C                insb
00001112  6C                insb
00001113  206265            and [bp+si+0x65],ah
00001116  20FF              and bh,bh
00001118  0026676F          add [0x6f67],ah
0000111C  6C                insb
0000111D  64732E            fs jnc 0x114e
00001120  2F                das
00001121  FF00              inc word [bx+si]
00001123  0C41              or al,0x41
00001125  6C                insb
00001126  6C                insb
00001127  206F66            and [bx+0x66],ch
0000112A  206D79            and [di+0x79],ch
0000112D  20676F            and [bx+0x6f],ah
00001130  6F                outsw
00001131  647320            fs jnc 0x1154
00001134  61                popa
00001135  7265              jc 0x119c
00001137  206F66            and [bx+0x66],ch
0000113A  207468            and [si+0x68],dh
0000113D  65206869          and [gs:bx+si+0x69],ch
00001141  67686573          a32 push word 0x7365
00001145  7420              jz 0x1167
00001147  7175              jno 0x11be
00001149  61                popa
0000114A  6C                insb
0000114B  6974792E20        imul si,[si+0x79],0x202e
00001150  57                push di
00001151  686963            push word 0x6369
00001154  682069            push word 0x6920
00001157  7465              jz 0x11be
00001159  6D                insw
0000115A  20776F            and [bx+0x6f],dh
0000115D  756C              jnz 0x11cb
0000115F  6420796F          and [fs:bx+di+0x6f],bh
00001163  7520              jnz 0x1185
00001165  6C                insb
00001166  696B65206D        imul bp,[bp+di+0x65],0x6d20
0000116B  6520746F          and [gs:si+0x6f],dh
0000116F  207465            and [si+0x65],dh
00001172  6C                insb
00001173  6C                insb
00001174  20796F            and [bx+di+0x6f],bh
00001177  7520              jnz 0x1199
00001179  61                popa
0000117A  626F75            bound bp,[bx+0x75]
0000117D  743F              jz 0x11be
0000117F  2F                das
00001180  FF060C57          inc word [0x570c]
00001184  686963            push word 0x6369
00001187  682069            push word 0x6920
0000118A  7465              jz 0x11f1
0000118C  6D                insw
0000118D  20776F            and [bx+0x6f],dh
00001190  756C              jnz 0x11fe
00001192  6420796F          and [fs:bx+di+0x6f],bh
00001196  7520              jnz 0x11b8
00001198  6C                insb
00001199  696B652074        imul bp,[bp+di+0x65],0x7420
0000119E  6F                outsw
0000119F  206B6E            and [bp+di+0x6e],ch
000011A2  6F                outsw
000011A3  7720              ja 0x11c5
000011A5  61                popa
000011A6  626F75            bound bp,[bx+0x75]
000011A9  743F              jz 0x11ea
000011AB  2F                das
000011AC  FF4973            dec word [bx+di+0x73]
000011AF  207468            and [si+0x68],dh
000011B2  657265            gs jc 0x121a
000011B5  20616E            and [bx+di+0x6e],ah
000011B8  6F                outsw
000011B9  7468              jz 0x1223
000011BB  657220            gs jc 0x11de
000011BE  6974656D20        imul si,[si+0x65],0x206d
000011C3  796F              jns 0x1234
000011C5  7520              jnz 0x11e7
000011C7  776F              ja 0x1238
000011C9  756C              jnz 0x1237
000011CB  64206C69          and [fs:si+0x69],ch
000011CF  6B652074          imul sp,[di+0x20],0x74
000011D3  6F                outsw
000011D4  206B6E            and [bp+di+0x6e],ch
000011D7  6F                outsw
000011D8  7720              ja 0x11fa
000011DA  61                popa
000011DB  626F75            bound bp,[bx+0x75]
000011DE  743F              jz 0x121f
000011E0  2F                das
000011E1  FF0C              dec word [si]
000011E3  54                push sp
000011E4  68616E            push word 0x6e61
000011E7  6B2079            imul sp,[bx+si],0x79
000011EA  6F                outsw
000011EB  752C              jnz 0x1219
000011ED  20706C            and [bx+si+0x6c],dh
000011F0  6561              gs popa
000011F2  7365              jnc 0x1259
000011F4  20636F            and [bp+di+0x6f],ah
000011F7  6D                insw
000011F8  65206167          and [gs:bx+di+0x67],ah
000011FC  61                popa
000011FD  696E2E11FF        imul bp,[bp+0x2e],0xff11
00001202  FF0C              dec word [si]
00001204  49                dec cx
00001205  6620796F          o32 and [bx+di+0x6f],bh
00001209  755C              jnz 0x1267
0000120B  7265              jc 0x1272
0000120D  20676F            and [bx+0x6f],ah
00001210  696E672074        imul bp,[bp+0x67],0x7420
00001215  6F                outsw
00001216  207761            and [bx+0x61],dh
00001219  7374              jnc 0x128f
0000121B  65206D79          and [gs:di+0x79],ch
0000121F  207469            and [si+0x69],dh
00001222  6D                insw
00001223  652C20            gs sub al,0x20
00001226  706C              jo 0x1294
00001228  6561              gs popa
0000122A  7365              jnc 0x1291
0000122C  206265            and [bp+si+0x65],ah
0000122F  206F6E            and [bx+0x6e],ch
00001232  20796F            and [bx+di+0x6f],bh
00001235  7572              jnz 0x12a9
00001237  207761            and [bx+0x61],dh
0000123A  792E              jns 0x126a
0000123C  2F                das
0000123D  FF07              inc word [bx]
0000123F  FF03              inc word [bp+di]
00001241  11FF              adc di,di
00001243  FF0C              dec word [si]
00001245  55                push bp
00001246  682E2E            push word 0x2e2e
00001249  2E2E2E2E2F        cs das
0000124E  FF00              inc word [bx+si]
00001250  0C49              or al,0x49
00001252  20646F            and [si+0x6f],ah
00001255  206E6F            and [bp+0x6f],ch
00001258  7420              jz 0x127a
0000125A  7365              jnc 0x12c1
0000125C  6C                insb
0000125D  6C                insb
0000125E  207468            and [si+0x68],dh
00001261  61                popa
00001262  7420              jz 0x1284
00001264  7765              ja 0x12cb
00001266  61                popa
00001267  706F              jo 0x12d8
00001269  6E                outsb
0000126A  2E204920          and [cs:bx+di+0x20],cl
0000126E  686176            push word 0x7661
00001271  656E              gs outsb
00001273  5C                pop sp
00001274  7420              jz 0x1296
00001276  61                popa
00001277  207369            and [bp+di+0x69],dh
0000127A  6E                outsb
0000127B  676C              a32 insb
0000127D  65206F6E          and [gs:bx+0x6e],ch
00001281  6520696E          and [gs:bx+di+0x6e],ch
00001285  207374            and [bp+di+0x74],dh
00001288  6F                outsw
00001289  636B2E            arpl [bp+di+0x2e],bp
0000128C  20506C            and [bx+si+0x6c],dl
0000128F  6561              gs popa
00001291  7365              jnc 0x12f8
00001293  206368            and [bp+di+0x68],ah
00001296  6F                outsw
00001297  6F                outsw
00001298  7365              jnc 0x12ff
0000129A  20616E            and [bx+di+0x6e],ah
0000129D  6F                outsw
0000129E  7468              jz 0x1308
000012A0  65722E            gs jc 0x12d1
000012A3  2F                das
000012A4  FF00              inc word [bx+si]
000012A6  0C57              or al,0x57
000012A8  656C              gs insb
000012AA  6C                insb
000012AB  20495C            and [bx+di+0x5c],cl
000012AE  6C                insb
000012AF  6C                insb
000012B0  206265            and [bp+si+0x65],ah
000012B3  2E2E2E20FF        cs and bh,bh
000012B8  04FF              add al,0xff
000012BA  0453              add al,0x53
000012BC  69722120FF        imul si,[bp+si+0x21],0xff20
000012C1  09FF              or di,di
000012C3  0449              add al,0x49
000012C5  736E              jnc 0x1335
000012C7  5C                pop sp
000012C8  7420              jz 0x12ea
000012CA  7468              jz 0x1334
000012CC  61                popa
000012CD  7420              jz 0x12ef
000012CF  7468              jz 0x1339
000012D1  65206372          and [gs:bp+di+0x72],ah
000012D5  657374            gs jnc 0x134c
000012D8  206F66            and [bx+0x66],ch
000012DB  20686F            and [bx+si+0x6f],ch
000012DE  6E                outsb
000012DF  6F                outsw
000012E0  7220              jc 0x1302
000012E2  796F              jns 0x1353
000012E4  7520              jnz 0x1306
000012E6  626561            bound sp,[di+0x61]
000012E9  723F              jc 0x132a
000012EB  20506C            and [bx+si+0x6c],dl
000012EE  6561              gs popa
000012F0  7365              jnc 0x1357
000012F2  20636F            and [bp+di+0x6f],ah
000012F5  6D                insw
000012F6  6520696E          and [gs:bx+di+0x6e],ch
000012FA  2E2E2E204920      and [cs:bx+di+0x20],cl
00001300  6D                insw
00001301  6561              gs popa
00001303  6E                outsb
00001304  2E2E2E7568        {pn} jnz 0x1371
00001309  2E2E2E202F        and [cs:bx],ch
0000130E  4D                dec bp
0000130F  6967687420        imul sp,[bx+0x68],0x2074
00001314  49                dec cx
00001315  207472            and [si+0x72],dh
00001318  61                popa
00001319  646520796F        and [gs:bx+di+0x6f],bh
0000131E  7520              jnz 0x1340
00001320  61                popa
00001321  206B6E            and [bp+di+0x6e],ch
00001324  696768745C        imul sp,[bx+0x68],0x5c74
00001329  7320              jnc 0x134b
0000132B  7377              jnc 0x13a4
0000132D  6F                outsw
0000132E  7264              jc 0x1394
00001330  20666F            and [bp+0x6f],ah
00001333  7220              jc 0x1355
00001335  69743FFF08        imul si,[si+0x3f],0x8ff
0000133A  0C4F              or al,0x4f
0000133C  682C20            push word 0x202c
0000133F  49                dec cx
00001340  267365            es jnc 0x13a8
00001343  652E205765        and [cs:bx+0x65],dl
00001348  6C                insb
00001349  6C                insb
0000134A  2C20              sub al,0x20
0000134C  696620796F        imul sp,[bp+0x20],0x6f79
00001351  7520              jnz 0x1373
00001353  636861            arpl [bx+si+0x61],bp
00001356  6E                outsb
00001357  676520796F        and [gs:ecx+0x6f],bh
0000135C  7572              jnz 0x13d0
0000135E  206D69            and [di+0x69],ch
00001361  6E                outsb
00001362  642C20            fs sub al,0x20
00001365  706C              jo 0x13d3
00001367  6561              gs popa
00001369  7365              jnc 0x13d0
0000136B  20636F            and [bp+di+0x6f],ah
0000136E  6D                insw
0000136F  65206261          and [gs:bp+si+0x61],ah
00001373  636B2E            arpl [bp+di+0x2e],bp
00001376  11FF              adc di,di
00001378  FF0C              dec word [si]
0000137A  4F                dec di
0000137B  682C20            push word 0x202c
0000137E  7468              jz 0x13e8
00001380  61                popa
00001381  6E                outsb
00001382  6B2079            imul sp,[bx+si],0x79
00001385  6F                outsw
00001386  752C              jnz 0x13b4
00001388  207369            and [bp+di+0x69],dh
0000138B  7221              jc 0x13ae
0000138D  204173            and [bx+di+0x73],al
00001390  207072            and [bx+si+0x72],dh
00001393  6F                outsw
00001394  6D                insw
00001395  697365642C        imul si,[bp+di+0x65],0x2c64
0000139A  206865            and [bx+si+0x65],ch
0000139D  7265              jc 0x1404
0000139F  206973            and [bx+di+0x73],ch
000013A2  20796F            and [bx+di+0x6f],bh
000013A5  7572              jnz 0x1419
000013A7  206B6E            and [bp+di+0x6e],ch
000013AA  696768745C        imul sp,[bx+0x68],0x5c74
000013AF  7320              jnc 0x13d1
000013B1  7377              jnc 0x142a
000013B3  6F                outsw
000013B4  7264              jc 0x141a
000013B6  2E2F              cs das
000013B8  FF00              inc word [bx+si]
000013BA  54                push sp
000013BB  68616E            push word 0x6e61
000013BE  6B2079            imul sp,[bx+si],0x79
000013C1  6F                outsw
000013C2  752C              jnz 0x13f0
000013C4  20616E            and [bx+di+0x6e],ah
000013C7  6420706C          and [fs:bx+si+0x6c],dh
000013CB  6561              gs popa
000013CD  7365              jnc 0x1434
000013CF  20636F            and [bp+di+0x6f],ah
000013D2  6D                insw
000013D3  65206261          and [gs:bp+si+0x61],ah
000013D7  636B20            arpl [bp+di+0x20],bp
000013DA  736F              jnc 0x144b
000013DC  6F                outsw
000013DD  6E                outsb
000013DE  2E11FF            cs adc di,di
000013E1  FFF6              push si
000013E3  B39F              mov bl,0x9f
000013E5  B466              mov ah,0x66
000013E7  B5C9              mov ch,0xc9
000013E9  B54C              mov ch,0x4c
000013EB  B6DB              mov dh,0xdb
000013ED  B60C              mov dh,0xc
000013EF  B7BB              mov bh,0xbb
000013F1  B73F              mov bh,0x3f
000013F3  B8CAB8            mov ax,0xb8ca
000013F6  58                pop ax
000013F7  B90FBA            mov cx,0xba0f
000013FA  57                push di
000013FB  656C              gs insb
000013FD  6C                insb
000013FE  2C20              sub al,0x20
00001400  49                dec cx
00001401  5C                pop sp
00001402  64207361          and [fs:bp+di+0x61],dh
00001406  7920              jns 0x1428
00001408  7468              jz 0x1472
0000140A  6973207377        imul si,[bp+di+0x20],0x7773
0000140F  6F                outsw
00001410  7264              jc 0x1476
00001412  206973            and [bx+di+0x73],ch
00001415  20616C            and [bx+di+0x6c],ah
00001418  6C                insb
00001419  207269            and [bp+si+0x69],dh
0000141C  67687420          a32 push word 0x2074
00001420  666F              outsd
00001422  7220              jc 0x1444
00001424  61                popa
00001425  206265            and [bp+si+0x65],ah
00001428  67696E6E6572      imul bp,[esi+0x6e],0x7265
0000142E  2E2F              cs das
00001430  59                pop cx
00001431  6F                outsw
00001432  7520              jnz 0x1454
00001434  67657420          gs a32 jz 0x1458
00001438  7768              ja 0x14a2
0000143A  61                popa
0000143B  7420              jz 0x145d
0000143D  796F              jns 0x14ae
0000143F  7520              jnz 0x1461
00001441  7061              jo 0x14a4
00001443  7920              jns 0x1465
00001445  666F              outsd
00001447  722E              jc 0x1477
00001449  2F                das
0000144A  49                dec cx
0000144B  745C              jz 0x14a9
0000144D  7320              jnc 0x146f
0000144F  796F              jns 0x14c0
00001451  7572              jnz 0x14c5
00001453  207374            and [bp+di+0x74],dh
00001456  61                popa
00001457  6E                outsb
00001458  6461              fs popa
0000145A  7264              jc 0x14c0
0000145C  2C20              sub al,0x20
0000145E  6D                insw
0000145F  61                popa
00001460  696E74656E        imul bp,[bp+0x74],0x6e65
00001465  61                popa
00001466  6E                outsb
00001467  63652D            arpl [di+0x2d],sp
0000146A  667265            jc 0x14d2
0000146D  65207377          and [gs:bp+di+0x77],dh
00001471  6F                outsw
00001472  7264              jc 0x14d8
00001474  2E204966          and [cs:bx+di+0x66],cl
00001478  206D6F            and [di+0x6f],ch
0000147B  6E                outsb
0000147C  65795C            gs jns 0x14db
0000147F  7320              jnc 0x14a1
00001481  61                popa
00001482  207072            and [bx+si+0x72],dh
00001485  6F                outsw
00001486  626C65            bound bp,[si+0x65]
00001489  6D                insw
0000148A  2C20              sub al,0x20
0000148C  7468              jz 0x14f6
0000148E  6973206F6E        imul si,[bp+di+0x20],0x6e6f
00001493  655C              gs pop sp
00001495  7320              jnc 0x14b7
00001497  666F              outsd
00001499  7220              jc 0x14bb
0000149B  796F              jns 0x150c
0000149D  752E              jnz 0x14cd
0000149F  110C              adc [si],cx
000014A1  FF                db 0xff
000014A2  FF5468            call word near [si+0x68]
000014A5  6973206F6E        imul si,[bp+di+0x20],0x6e6f
000014AA  65206973          and [gs:bx+di+0x73],ch
000014AE  206A75            and [bp+si+0x75],ch
000014B1  7374              jnc 0x1527
000014B3  206120            and [bx+di+0x20],ah
000014B6  626974            bound bp,[bx+di+0x74]
000014B9  206265            and [bp+si+0x65],ah
000014BC  7474              jz 0x1532
000014BE  657220            gs jc 0x14e1
000014C1  7468              jz 0x152b
000014C3  61                popa
000014C4  6E                outsb
000014C5  207468            and [si+0x68],dh
000014C8  65205472          and [gs:si+0x72],dl
000014CC  61                popa
000014CD  696E696E67        imul bp,[bp+0x69],0x676e
000014D2  205377            and [bp+di+0x77],dl
000014D5  6F                outsw
000014D6  7264              jc 0x153c
000014D8  2E204F6E          and [cs:bx+0x6e],cl
000014DC  636520            arpl [di+0x20],sp
000014DF  796F              jns 0x1550
000014E1  7520              jnz 0x1503
000014E3  67657420          gs a32 jz 0x1507
000014E7  7468              jz 0x1551
000014E9  65206861          and [gs:bx+si+0x61],ch
000014ED  6E                outsb
000014EE  67206F66          and [edi+0x66],ch
000014F2  206974            and [bx+di+0x74],ch
000014F5  2C20              sub al,0x20
000014F7  69745C7320        imul si,[si+0x5c],0x2073
000014FC  61                popa
000014FD  6E                outsb
000014FE  206561            and [di+0x61],ah
00001501  7379              jnc 0x157c
00001503  206F6E            and [bx+0x6e],ch
00001506  6520746F          and [gs:si+0x6f],dh
0000150A  207769            and [bx+0x69],dh
0000150D  656C              gs insb
0000150F  642E205468        and [cs:si+0x68],dl
00001514  65207072          and [gs:bx+si+0x72],dh
00001518  6963652069        imul sp,[bp+di+0x65],0x6920
0000151D  7320              jnc 0x153f
0000151F  61                popa
00001520  206269            and [bp+si+0x69],ah
00001523  7420              jz 0x1545
00001525  686967            push word 0x6769
00001528  686572            push word 0x7265
0000152B  2C20              sub al,0x20
0000152D  627574            bound si,[di+0x74]
00001530  20796F            and [bx+di+0x6f],bh
00001533  7520              jnz 0x1555
00001535  63616E            arpl [bx+di+0x6e],sp
00001538  5C                pop sp
00001539  7420              jz 0x155b
0000153B  6C                insb
0000153C  6F                outsw
0000153D  7365              jnc 0x15a4
0000153F  206F6E            and [bx+0x6e],ch
00001542  207468            and [si+0x68],dh
00001545  6973206F6E        imul si,[bp+di+0x20],0x6e6f
0000154A  652E2F            cs das
0000154D  57                push di
0000154E  687920            push word 0x2079
00001551  6E                outsb
00001552  6F                outsw
00001553  7420              jz 0x1575
00001555  7461              jz 0x15b8
00001557  6B652069          imul sp,[di+0x20],0x69
0000155B  7420              jz 0x157d
0000155D  7769              ja 0x15c8
0000155F  7468              jz 0x15c9
00001561  20796F            and [bx+di+0x6f],bh
00001564  753F              jnz 0x15a5
00001566  110C              adc [si],cx
00001568  FF                db 0xff
00001569  FF596F            call word far [bx+di+0x6f]
0000156C  7520              jnz 0x158e
0000156E  6C                insb
0000156F  696B652074        imul bp,[bp+di+0x65],0x7420
00001574  686973            push word 0x7369
00001577  206F6E            and [bx+0x6e],ch
0000157A  653F              gs aas
0000157C  2F                das
0000157D  41                inc cx
0000157E  207769            and [bx+0x69],dh
00001581  7365              jnc 0x15e8
00001583  206368            and [bp+di+0x68],ah
00001586  6F                outsw
00001587  6963652E2F        imul sp,[bp+di+0x65],0x2f2e
0000158C  54                push sp
0000158D  686973            push word 0x7369
00001590  206973            and [bx+di+0x73],ch
00001593  206120            and [bx+di+0x20],ah
00001596  686967            push word 0x6769
00001599  682067            push word 0x6720
0000159C  7261              jc 0x15ff
0000159E  6465207072        and [gs:bx+si+0x72],dh
000015A3  6F                outsw
000015A4  647563            fs jnz 0x160a
000015A7  742E              jz 0x15d7
000015A9  204974            and [bx+di+0x74],cl
000015AC  5C                pop sp
000015AD  7320              jnc 0x15cf
000015AF  6F                outsw
000015B0  6E                outsb
000015B1  65206F66          and [gs:bx+0x66],ch
000015B5  206D79            and [di+0x79],ch
000015B8  206269            and [bp+si+0x69],ah
000015BB  6767657374        gs a32 jnc 0x1634
000015C0  207365            and [bp+di+0x65],dh
000015C3  6C                insb
000015C4  6C                insb
000015C5  657273            gs jc 0x163b
000015C8  2E110C            adc [cs:si],cx
000015CB  FF                db 0xff
000015CC  FF4F68            dec word [bx+0x68]
000015CF  2C20              sub al,0x20
000015D1  49                dec cx
000015D2  5C                pop sp
000015D3  64206265          and [fs:bp+si+0x65],ah
000015D7  206D6F            and [di+0x6f],ch
000015DA  7265              jc 0x1641
000015DC  207468            and [si+0x68],dh
000015DF  61                popa
000015E0  6E                outsb
000015E1  206861            and [bx+si+0x61],ch
000015E4  7070              jo 0x1656
000015E6  7920              jns 0x1608
000015E8  746F              jz 0x1659
000015EA  207465            and [si+0x65],dh
000015ED  6C                insb
000015EE  6C                insb
000015EF  20796F            and [bx+di+0x6f],bh
000015F2  7520              jnz 0x1614
000015F4  61                popa
000015F5  626F75            bound bp,[bx+0x75]
000015F8  7420              jz 0x161a
000015FA  7468              jz 0x1664
000015FC  6973206F6E        imul si,[bp+di+0x20],0x6e6f
00001601  652E2F            cs das
00001604  54                push sp
00001605  686973            push word 0x7369
00001608  206973            and [bx+di+0x73],ch
0000160B  206120            and [bx+di+0x20],ah
0000160E  7265              jc 0x1675
00001610  61                popa
00001611  6C                insb
00001612  206D61            and [di+0x61],ch
00001615  6E                outsb
00001616  5C                pop sp
00001617  7320              jnc 0x1639
00001619  7377              jnc 0x1692
0000161B  6F                outsw
0000161C  7264              jc 0x1682
0000161E  2E204974          and [cs:bx+di+0x74],cl
00001622  5C                pop sp
00001623  6C                insb
00001624  6C                insb
00001625  20746F            and [si+0x6f],dh
00001628  7070              jo 0x169a
0000162A  6C                insb
0000162B  65206D6F          and [gs:di+0x6f],ch
0000162F  6E                outsb
00001630  7374              jnc 0x16a6
00001632  657273            gs jc 0x16a8
00001635  20696E            and [bx+di+0x6e],ch
00001638  207468            and [si+0x68],dh
0000163B  65207769          and [gs:bx+0x69],dh
0000163F  6E                outsb
00001640  6B206F            imul sp,[bx+si],0x6f
00001643  6620616E          o32 and [bx+di+0x6e],ah
00001647  206579            and [di+0x79],ah
0000164A  652E110C          adc [cs:si],cx
0000164E  FF                db 0xff
0000164F  FF596F            call word far [bx+di+0x6f]
00001652  755C              jnz 0x16b0
00001654  7665              jna 0x16bb
00001656  20676F            and [bx+0x6f],ah
00001659  7420              jz 0x167b
0000165B  61                popa
0000165C  206C6F            and [si+0x6f],ch
0000165F  7420              jz 0x1681
00001661  6F                outsw
00001662  66206772          o32 and [bx+0x72],ah
00001666  697420495C        imul si,[si+0x20],0x5c49
0000166B  64207361          and [fs:bp+di+0x61],dh
0000166F  792E              jns 0x169f
00001671  205468            and [si+0x68],dl
00001674  6973206F6E        imul si,[bp+di+0x20],0x6e6f
00001679  65207265          and [gs:bp+si+0x65],dh
0000167D  61                popa
0000167E  6C                insb
0000167F  6C                insb
00001680  7920              jns 0x16a2
00001682  7061              jo 0x16e5
00001684  636B73            arpl [bp+di+0x73],bp
00001687  206120            and [bx+di+0x20],ah
0000168A  7075              jo 0x1701
0000168C  6E                outsb
0000168D  63682E            arpl [bx+si+0x2e],bp
00001690  204120            and [bx+di+0x20],al
00001693  746F              jz 0x1704
00001695  702D              jo 0x16c4
00001697  6F                outsw
00001698  662D7468652D      sub eax,0x2d656874
0000169E  6C                insb
0000169F  696E652073        imul bp,[bp+0x65],0x7320
000016A4  776F              ja 0x1715
000016A6  7264              jc 0x170c
000016A8  20666F            and [bp+0x6f],ah
000016AB  7220              jc 0x16cd
000016AD  61                popa
000016AE  20746F            and [si+0x6f],dh
000016B1  702D              jo 0x16e0
000016B3  6F                outsw
000016B4  662D7468652D      sub eax,0x2d656874
000016BA  6C                insb
000016BB  696E652D73        imul bp,[bp+0x65],0x732d
000016C0  776F              ja 0x1731
000016C2  7264              jc 0x1728
000016C4  736D              jnc 0x1733
000016C6  61                popa
000016C7  6E                outsb
000016C8  2E205769          and [cs:bx+0x69],dl
000016CC  6C                insb
000016CD  6C                insb
000016CE  20796F            and [bx+di+0x6f],bh
000016D1  7520              jnz 0x16f3
000016D3  7461              jz 0x1736
000016D5  6B652069          imul sp,[di+0x20],0x69
000016D9  743F              jz 0x171a
000016DB  110C              adc [si],cx
000016DD  FF                db 0xff
000016DE  FF4973            dec word [bx+di+0x73]
000016E1  6E                outsb
000016E2  5C                pop sp
000016E3  7420              jz 0x1705
000016E5  7468              jz 0x174f
000016E7  61                popa
000016E8  7420              jz 0x170a
000016EA  7468              jz 0x1754
000016EC  65207377          and [gs:bp+di+0x77],dh
000016F0  6F                outsw
000016F1  7264              jc 0x1757
000016F3  20796F            and [bx+di+0x6f],bh
000016F6  7520              jnz 0x1718
000016F8  62726F            bound si,[bp+si+0x6f]
000016FB  7567              jnz 0x1764
000016FD  687420            push word 0x2074
00001700  696E207769        imul bp,[bp+0x20],0x6977
00001705  7468              jz 0x176f
00001707  20796F            and [bx+di+0x6f],bh
0000170A  753F              jnz 0x174b
0000170C  110C              adc [si],cx
0000170E  FF                db 0xff
0000170F  FF5468            call word near [si+0x68]
00001712  6973207368        imul si,[bp+di+0x20],0x6873
00001717  69656C6420        imul sp,[di+0x6c],0x2064
0000171C  697320736D        imul si,[bp+di+0x20],0x6d73
00001721  61                popa
00001722  6C                insb
00001723  6C                insb
00001724  20616E            and [bx+di+0x6e],ah
00001727  64206861          and [fs:bx+si+0x61],ch
0000172B  7320              jnc 0x174d
0000172D  6C                insb
0000172E  696D697465        imul bp,[di+0x69],0x6574
00001733  64206465          and [fs:si+0x65],ah
00001737  66656E            gs o32 outsb
0000173A  7365              jnc 0x17a1
0000173C  206361            and [bp+di+0x61],ah
0000173F  7061              jo 0x17a2
00001741  62696C            bound bp,[bx+di+0x6c]
00001744  6974792E20        imul si,[si+0x79],0x202e
00001749  49                dec cx
0000174A  745C              jz 0x17a8
0000174C  7320              jnc 0x176e
0000174E  6E                outsb
0000174F  6F                outsw
00001750  7420              jz 0x1772
00001752  7665              jna 0x17b9
00001754  7279              jc 0x17cf
00001756  206475            and [si+0x75],ah
00001759  7261              jc 0x17bc
0000175B  626C65            bound bp,[si+0x65]
0000175E  202D              and [di],ch
00001760  2D2075            sub ax,0x7520
00001763  6E                outsb
00001764  6C                insb
00001765  657373            gs jnc 0x17db
00001768  206974            and [bx+di+0x74],ch
0000176B  5C                pop sp
0000176C  7320              jnc 0x178e
0000176E  7573              jnz 0x17e3
00001770  6564207769        and [fs:bx+0x69],dh
00001775  7468              jz 0x17df
00001777  206772            and [bx+0x72],ah
0000177A  6561              gs popa
0000177C  7420              jz 0x179e
0000177E  736B              jnc 0x17eb
00001780  696C6C2C20        imul bp,[si+0x6c],0x202c
00001785  697420776F        imul si,[si+0x20],0x6f77
0000178A  6E                outsb
0000178B  5C                pop sp
0000178C  7420              jz 0x17ae
0000178E  6C                insb
0000178F  61                popa
00001790  7374              jnc 0x1806
00001792  206C6F            and [si+0x6f],ch
00001795  6E                outsb
00001796  672E204974        and [cs:ecx+0x74],cl
0000179B  5C                pop sp
0000179C  7320              jnc 0x17be
0000179E  626574            bound sp,[di+0x74]
000017A1  7465              jz 0x1808
000017A3  7220              jc 0x17c5
000017A5  7468              jz 0x180f
000017A7  61                popa
000017A8  6E                outsb
000017A9  206E6F            and [bp+0x6f],ch
000017AC  7468              jz 0x1816
000017AE  696E672C20        imul bp,[bp+0x67],0x202c
000017B3  49                dec cx
000017B4  206775            and [bx+0x75],ah
000017B7  657373            gs jnc 0x182d
000017BA  2E110C            adc [cs:si],cx
000017BD  FF                db 0xff
000017BE  FF5765            call word near [bx+0x65]
000017C1  6C                insb
000017C2  6C                insb
000017C3  2C20              sub al,0x20
000017C5  69745C7320        imul si,[si+0x5c],0x2073
000017CA  736C              jnc 0x1838
000017CC  696768746C        imul sp,[bx+0x68],0x6c74
000017D1  7920              jns 0x17f3
000017D3  626574            bound sp,[di+0x74]
000017D6  7465              jz 0x183d
000017D8  7220              jc 0x17fa
000017DA  7468              jz 0x1844
000017DC  61                popa
000017DD  6E                outsb
000017DE  207468            and [si+0x68],dh
000017E1  6520436C          and [gs:bp+di+0x6c],al
000017E5  61                popa
000017E6  7920              jns 0x1808
000017E8  53                push bx
000017E9  686965            push word 0x6569
000017EC  6C                insb
000017ED  642E204C6F        and [cs:si+0x6f],cl
000017F2  6E                outsb
000017F3  67206167          and [ecx+0x67],ah
000017F7  6F                outsw
000017F8  2C20              sub al,0x20
000017FA  61                popa
000017FB  207765            and [bx+0x65],dh
000017FE  6C                insb
000017FF  6C                insb
00001800  2D6B6E            sub ax,0x6e6b
00001803  6F                outsw
00001804  776E              ja 0x1874
00001806  206865            and [bx+si+0x65],ch
00001809  726F              jc 0x187a
0000180B  207573            and [di+0x73],dh
0000180E  6564206974        and [fs:bx+di+0x74],ch
00001813  20666F            and [bp+0x6f],ah
00001816  7220              jc 0x1838
00001818  61                popa
00001819  207368            and [bp+di+0x68],dh
0000181C  6F                outsw
0000181D  7274              jc 0x1893
0000181F  207469            and [si+0x69],dh
00001822  6D                insw
00001823  652E20596F        and [cs:bx+di+0x6f],bl
00001828  7520              jnz 0x184a
0000182A  636F75            arpl [bx+0x75],bp
0000182D  6C                insb
0000182E  6420646F          and [fs:si+0x6f],ah
00001832  206120            and [bx+di+0x20],ah
00001835  6C                insb
00001836  6F                outsw
00001837  7420              jz 0x1859
00001839  776F              ja 0x18aa
0000183B  7273              jc 0x18b0
0000183D  652E110C          adc [cs:si],cx
00001841  FF                db 0xff
00001842  FF5468            call word near [si+0x68]
00001845  6973206F6E        imul si,[bp+di+0x20],0x6e6f
0000184A  65206973          and [gs:bx+di+0x73],ch
0000184E  206D6F            and [di+0x6f],ch
00001851  7265              jc 0x18b8
00001853  206F66            and [bx+0x66],ch
00001856  206120            and [bx+di+0x20],ah
00001859  67656E            gs a32 outsb
0000185C  657261            gs jc 0x18c0
0000185F  6C                insb
00001860  2D7573            sub ax,0x7375
00001863  65207368          and [gs:bp+di+0x68],dh
00001867  69656C642E        imul sp,[di+0x6c],0x2e64
0000186C  204974            and [bx+di+0x74],cl
0000186F  5C                pop sp
00001870  7320              jnc 0x1892
00001872  6E                outsb
00001873  6F                outsw
00001874  7420              jz 0x1896
00001876  7468              jz 0x18e0
00001878  65206265          and [gs:bp+si+0x65],ah
0000187C  7374              jnc 0x18f2
0000187E  206F6E            and [bx+0x6e],ch
00001881  65204920          and [gs:bx+di+0x20],cl
00001885  636172            arpl [bx+di+0x72],sp
00001888  7279              jc 0x1903
0000188A  2E204920          and [cs:bx+di+0x20],cl
0000188E  63616E            arpl [bx+di+0x6e],sp
00001891  5C                pop sp
00001892  7420              jz 0x18b4
00001894  7265              jc 0x18fb
00001896  61                popa
00001897  6C                insb
00001898  6C                insb
00001899  7920              jns 0x18bb
0000189B  7265              jc 0x1902
0000189D  636F6D            arpl [bx+0x6d],bp
000018A0  6D                insw
000018A1  656E              gs outsb
000018A3  64206974          and [fs:bx+di+0x74],ch
000018A7  2C20              sub al,0x20
000018A9  49                dec cx
000018AA  207468            and [si+0x68],dh
000018AD  696E6B2069        imul bp,[bp+0x6b],0x6920
000018B2  7420              jz 0x18d4
000018B4  7769              ja 0x191f
000018B6  6C                insb
000018B7  6C                insb
000018B8  20736F            and [bp+di+0x6f],dh
000018BB  6F                outsw
000018BC  6E                outsb
000018BD  206265            and [bp+si+0x65],ah
000018C0  206F62            and [bx+0x62],ch
000018C3  736F              jnc 0x1934
000018C5  6C                insb
000018C6  657465            gs jz 0x192e
000018C9  2E110C            adc [cs:si],cx
000018CC  FF                db 0xff
000018CD  FF5468            call word near [si+0x68]
000018D0  6973207368        imul si,[bp+di+0x20],0x6873
000018D5  69656C6420        imul sp,[di+0x6c],0x2064
000018DA  697320696E        imul si,[bp+di+0x20],0x6e69
000018DF  206120            and [bx+di+0x20],ah
000018E2  636C61            arpl [si+0x61],bp
000018E5  7373              jnc 0x195a
000018E7  206279            and [bp+si+0x79],ah
000018EA  206974            and [bx+di+0x74],ch
000018ED  7365              jnc 0x1954
000018EF  6C                insb
000018F0  662E204974        o32 and [cs:bx+di+0x74],cl
000018F5  206973            and [bx+di+0x73],ch
000018F8  207374            and [bp+di+0x74],dh
000018FB  726F              jc 0x196c
000018FD  6E                outsb
000018FE  6720616E          and [ecx+0x6e],ah
00001902  64206C69          and [fs:si+0x69],ch
00001906  67687420          a32 push word 0x2074
0000190A  61                popa
0000190B  6E                outsb
0000190C  64206561          and [fs:di+0x61],ah
00001910  7379              jnc 0x198b
00001912  20746F            and [si+0x6f],dh
00001915  207573            and [di+0x73],dh
00001918  652E205468        and [cs:si+0x68],dl
0000191D  6973206973        imul si,[bp+di+0x20],0x7369
00001922  206120            and [bx+di+0x20],ah
00001925  7375              jnc 0x199c
00001927  7065              jo 0x198e
00001929  7269              jc 0x1994
0000192B  6F                outsw
0000192C  7220              jc 0x194e
0000192E  7368              jnc 0x1998
00001930  69656C642C        imul sp,[di+0x6c],0x2c64
00001935  207468            and [si+0x68],dh
00001938  65206C65          and [gs:si+0x65],ch
0000193C  61                popa
0000193D  7374              jnc 0x19b3
0000193F  206120            and [bx+di+0x20],ah
00001942  627261            bound si,[bp+si+0x61]
00001945  7665              jna 0x19ac
00001947  206D61            and [di+0x61],ch
0000194A  6E                outsb
0000194B  207368            and [bp+di+0x68],dh
0000194E  6F                outsw
0000194F  756C              jnz 0x19bd
00001951  64206861          and [fs:bx+si+0x61],ch
00001955  7665              jna 0x19bc
00001957  2E110C            adc [cs:si],cx
0000195A  FF                db 0xff
0000195B  FF486F            dec word [bx+si+0x6f]
0000195E  2120              and [bx+si],sp
00001960  59                pop cx
00001961  6F                outsw
00001962  755C              jnz 0x19c0
00001964  7665              jna 0x19cb
00001966  20676F            and [bx+0x6f],ah
00001969  7420              jz 0x198b
0000196B  7175              jno 0x19e2
0000196D  6974652061        imul si,[si+0x65],0x6120
00001972  6E                outsb
00001973  206579            and [di+0x79],ah
00001976  6520666F          and [gs:bp+0x6f],ah
0000197A  7220              jc 0x199c
0000197C  7468              jz 0x19e6
0000197E  657365            gs jnc 0x19e6
00001981  207468            and [si+0x68],dh
00001984  696E67732C        imul bp,[bp+0x67],0x2c73
00001989  204920            and [bx+di+0x20],cl
0000198C  7365              jnc 0x19f3
0000198E  652E205468        and [cs:si+0x68],dl
00001993  6973207368        imul si,[bp+di+0x20],0x6873
00001998  69656C6420        imul sp,[di+0x6c],0x2064
0000199D  6973206E6F        imul si,[bp+di+0x20],0x6f6e
000019A2  7420              jz 0x19c4
000019A4  6D                insw
000019A5  61                popa
000019A6  6465206F66        and [gs:bx+0x66],ch
000019AB  20636F            and [bp+di+0x6f],ah
000019AE  6D                insw
000019AF  6D                insw
000019B0  6F                outsw
000019B1  6E                outsb
000019B2  206972            and [bx+di+0x72],ch
000019B5  6F                outsw
000019B6  6E                outsb
000019B7  2E204974          and [cs:bx+di+0x74],cl
000019BB  206973            and [bx+di+0x73],ch
000019BE  206D61            and [di+0x61],ch
000019C1  6465206F66        and [gs:bx+0x66],ch
000019C6  206120            and [bx+di+0x20],ah
000019C9  6D                insw
000019CA  61                popa
000019CB  676963206D65      imul sp,[ebx+0x20],0x656d
000019D1  7461              jz 0x1a34
000019D3  6C                insb
000019D4  206361            and [bp+di+0x61],ah
000019D7  6C                insb
000019D8  6C                insb
000019D9  6564204D61        and [fs:di+0x61],cl
000019DE  6761              a32 popa
000019E0  6E                outsb
000019E1  652E204167        and [cs:bx+di+0x67],al
000019E6  61                popa
000019E7  696E737420        imul bp,[bp+0x73],0x2074
000019EC  6F                outsw
000019ED  7264              jc 0x1a53
000019EF  696E617279        imul bp,[bp+0x61],0x7972
000019F4  207765            and [bx+0x65],dh
000019F7  61                popa
000019F8  706F              jo 0x1a69
000019FA  6E                outsb
000019FB  732C              jnc 0x1a29
000019FD  206974            and [bx+di+0x74],ch
00001A00  5C                pop sp
00001A01  7320              jnc 0x1a23
00001A03  756E              jnz 0x1a73
00001A05  627265            bound si,[bp+si+0x65]
00001A08  61                popa
00001A09  6B61626C          imul sp,[bx+di+0x62],0x6c
00001A0D  652E110C          adc [cs:si],cx
00001A11  FF                db 0xff
00001A12  FF5468            call word near [si+0x68]
00001A15  6973207368        imul si,[bp+di+0x20],0x6873
00001A1A  69656C6420        imul sp,[di+0x6c],0x2064
00001A1F  6D                insw
00001A20  61                popa
00001A21  6B657320          imul sp,[di+0x73],0x20
00001A25  7468              jz 0x1a8f
00001A27  65206D69          and [gs:di+0x69],ch
00001A2B  67687469          a32 push word 0x6974
00001A2F  657374            gs jnc 0x1aa6
00001A32  207377            and [bp+di+0x77],dh
00001A35  6F                outsw
00001A36  7264              jc 0x1a9c
00001A38  7320              jnc 0x1a5a
00001A3A  7365              jnc 0x1aa1
00001A3C  656D              gs insw
00001A3E  206C69            and [si+0x69],ch
00001A41  6B652070          imul sp,[di+0x20],0x70
00001A45  61                popa
00001A46  7065              jo 0x1aad
00001A48  722E              jc 0x1a78
00001A4A  204974            and [bx+di+0x74],cl
00001A4D  5C                pop sp
00001A4E  7320              jnc 0x1a70
00001A50  6C                insb
00001A51  6967687420        imul sp,[bx+0x68],0x2074
00001A56  61                popa
00001A57  7320              jnc 0x1a79
00001A59  61                popa
00001A5A  206665            and [bp+0x65],ah
00001A5D  61                popa
00001A5E  7468              jz 0x1ac8
00001A60  657220            gs jc 0x1a83
00001A63  61                popa
00001A64  6E                outsb
00001A65  64206861          and [fs:bx+si+0x61],ch
00001A69  7264              jc 0x1acf
00001A6B  206173            and [bx+di+0x73],ah
00001A6E  206120            and [bx+di+0x20],ah
00001A71  6469616D6F6E      imul sp,[fs:bx+di+0x6d],0x6e6f
00001A77  642E205573        and [cs:di+0x73],dl
00001A7C  6564207765        and [fs:bx+0x65],dh
00001A81  6C                insb
00001A82  6C                insb
00001A83  2C20              sub al,0x20
00001A85  7468              jz 0x1aef
00001A87  6973206F6E        imul si,[bp+di+0x20],0x6e6f
00001A8C  65207769          and [gs:bx+0x69],dh
00001A90  6C                insb
00001A91  6C                insb
00001A92  206C61            and [si+0x61],ch
00001A95  7374              jnc 0x1b0b
00001A97  20796F            and [bx+di+0x6f],bh
00001A9A  7520              jnz 0x1abc
00001A9C  61                popa
00001A9D  206C69            and [si+0x69],ch
00001AA0  66657469          gs jz 0x1b0d
00001AA4  6D                insw
00001AA5  652E110C          adc [cs:si],cx
00001AA9  FF                db 0xff
00001AAA  FF                db 0xff
00001AAB  B9BADD            mov cx,0xddba
00001AAE  BA01BB            mov dx,0xbb01
00001AB1  25BB49            and ax,0x49bb
00001AB4  BB6DBB            mov bx,0xbb6d
00001AB7  91                xchg ax,cx
00001AB8  BBB5BB            mov bx,0xbbb5
00001ABB  D9BB0090          fnstcw [bp+di-0x7000]
00001ABF  0100              add [bx+si],ax
00001AC1  DC05              fadd qword [di]
00001AC3  00901A00          add [bx+si+0x1a],dl
00001AC7  48                dec ax
00001AC8  2601905F00        add [es:bx+si+0x5f],dx
00001ACD  0400              add al,0x0
00001ACF  0032              add [bp+si],dh
00001AD1  0000              add [bx+si],al
00001AD3  96                xchg ax,si
00001AD4  0000              add [bx+si],al
00001AD6  A4                movsb
00001AD7  0B00              or ax,[bx+si]
00001AD9  48                dec ax
00001ADA  2600D0            es add al,dl
00001ADD  3900              cmp [bx+si],ax
00001ADF  789B              js 0x1a7c
00001AE1  0020              add [bx+si],ah
00001AE3  0300              add ax,[bx+si]
00001AE5  DC05              fadd qword [di]
00001AE7  00901A00          add [bx+si+0x1a],dl
00001AEB  48                dec ax
00001AEC  2601A81000        add [es:bx+si+0x10],bp
00001AF1  0400              add al,0x0
00001AF3  0032              add [bp+si],dh
00001AF5  0000              add [bx+si],al
00001AF7  96                xchg ax,si
00001AF8  0000              add [bx+si],al
00001AFA  A4                movsb
00001AFB  0B00              or ax,[bx+si]
00001AFD  48                dec ax
00001AFE  2600D0            es add al,dl
00001B01  3900              cmp [bx+si],ax
00001B03  789B              js 0x1aa0
00001B05  0020              add [bx+si],ah
00001B07  0300              add ax,[bx+si]
00001B09  DC05              fadd qword [di]
00001B0B  00901A00          add [bx+si+0x1a],dl
00001B0F  48                dec ax
00001B10  2601A81000        add [es:bx+si+0x10],bp
00001B15  0400              add al,0x0
00001B17  0005              add [di],al
00001B19  0000              add [bx+si],al
00001B1B  96                xchg ax,si
00001B1C  0000              add [bx+si],al
00001B1E  4C                dec sp
00001B1F  0900              or [bx+si],ax
00001B21  48                dec ax
00001B22  2600D0            es add al,dl
00001B25  3900              cmp [bx+si],ax
00001B27  789B              js 0x1ac4
00001B29  00900100          add [bx+si+0x1],dl
00001B2D  B80B00            mov ax,0xb
00001B30  40                inc ax
00001B31  150048            adc ax,0x4800
00001B34  2601A81000        add [es:bx+si+0x10],bp
00001B39  0400              add al,0x0
00001B3B  0005              add [di],al
00001B3D  0000              add [bx+si],al
00001B3F  3200              xor al,[bx+si]
00001B41  00F4              add ah,dh
00001B43  06                push es
00001B44  004826            add [bx+si+0x26],cl
00001B47  00D0              add al,dl
00001B49  3900              cmp [bx+si],ax
00001B4B  789B              js 0x1ae8
00001B4D  00900100          add [bx+si+0x1],dl
00001B51  B80B00            mov ax,0xb
00001B54  98                cbw
00001B55  1200              adc al,[bx+si]
00001B57  2413              and al,0x13
00001B59  01A81000          add [bx+si+0x10],bp
00001B5D  0400              add al,0x0
00001B5F  0005              add [di],al
00001B61  0000              add [bx+si],al
00001B63  3200              xor al,[bx+si]
00001B65  00F4              add ah,dh
00001B67  06                push es
00001B68  00A01E00          add [bx+si+0x1e],ah
00001B6C  D039              sar byte [bx+di],0x0
00001B6E  00789B            add [bx+si-0x65],bh
00001B71  00C8              add al,cl
00001B73  0000              add [bx+si],al
00001B75  DC05              fadd qword [di]
00001B77  00480D            add [bx+si+0xd],cl
00001B7A  00A01E01          add [bx+si+0x11e],ah
00001B7E  A810              test al,0x10
00001B80  0004              add [si],al
00001B82  0000              add [bx+si],al
00001B84  050000            add ax,0x0
00001B87  1400              adc al,0x0
00001B89  007A03            add [bp+si+0x3],bh
00001B8C  00F8              add al,bh
00001B8E  16                push ss
00001B8F  00D0              add al,dl
00001B91  3900              cmp [bx+si],ax
00001B93  789B              js 0x1b30
00001B95  00C8              add al,cl
00001B97  0000              add [bx+si],al
00001B99  DC05              fadd qword [di]
00001B9B  005005            add [bx+si+0x5],dl
00001B9E  00F8              add al,bh
00001BA0  16                push ss
00001BA1  00F0              add al,dh
00001BA3  8700              xchg ax,[bx+si]
00001BA5  0400              add al,0x0
00001BA7  0005              add [di],al
00001BA9  0000              add [bx+si],al
00001BAB  1400              adc al,0x0
00001BAD  007A03            add [bp+si+0x3],bh
00001BB0  00F8              add al,bh
00001BB2  16                push ss
00001BB3  007828            add [bx+si+0x28],bh
00001BB6  00789B            add [bx+si-0x65],bh
00001BB9  006400            add [si+0x0],ah
00001BBC  00E8              add al,ch
00001BBE  0300              add ax,[bx+si]
00001BC0  50                push ax
00001BC1  050050            add ax,0x5000
00001BC4  0F0020            verr [bx+si]
00001BC7  800004            add byte [bx+si],0x4
00001BCA  0000              add [bx+si],al
00001BCC  050000            add ax,0x0
00001BCF  1400              adc al,0x0
00001BD1  007A03            add [bp+si+0x3],bh
00001BD4  00500F            add [bx+si+0xf],dl
00001BD7  00E8              add al,ch
00001BD9  1C00              sbb al,0x0
00001BDB  387C00            cmp [si+0x0],bh
00001BDE  0A00              or al,[bx+si]
00001BE0  006400            add [si+0x0],ah
00001BE3  00A80200          add [bx+si+0x2],ch
00001BE7  A807              test al,0x7
00001BE9  006874            add [bx+si+0x74],ch
00001BEC  0004              add [si],al
00001BEE  0000              add [bx+si],al
00001BF0  0200              add al,[bx+si]
00001BF2  000A              add [bp+si],cl
00001BF4  0000              add [bx+si],al
00001BF6  2A01              sub al,[bx+di]
00001BF8  00A80700          add [bx+si+0x7],ch
00001BFC  2017              and [bx],dl
00001BFE  00F8              add al,bh
00001C00  5C                pop sp
00001C01  0000              add [bx+si],al
00001C03  0000              add [bx+si],al
00001C05  0000              add [bx+si],al
00001C07  0000              add [bx+si],al
00001C09  0000              add [bx+si],al
00001C0B  0000              add [bx+si],al
00001C0D  0000              add [bx+si],al
00001C0F  0000              add [bx+si],al
00001C11  0000              add [bx+si],al
00001C13  0000              add [bx+si],al
00001C15  0000              add [bx+si],al
00001C17  0000              add [bx+si],al
00001C19  0000              add [bx+si],al
00001C1B  0000              add [bx+si],al
00001C1D  0000              add [bx+si],al
00001C1F  0000              add [bx+si],al
00001C21  0000              add [bx+si],al
00001C23  0000              add [bx+si],al
00001C25  0000              add [bx+si],al
00001C27  0000              add [bx+si],al
00001C29  0000              add [bx+si],al
00001C2B  0000              add [bx+si],al
00001C2D  0000              add [bx+si],al
00001C2F  0000              add [bx+si],al
00001C31  0000              add [bx+si],al
00001C33  0000              add [bx+si],al
00001C35  0000              add [bx+si],al
00001C37  0000              add [bx+si],al
00001C39  0000              add [bx+si],al
00001C3B  0000              add [bx+si],al
00001C3D  0000              add [bx+si],al
00001C3F  0000              add [bx+si],al
00001C41  0000              add [bx+si],al
00001C43  0000              add [bx+si],al
00001C45  0000              add [bx+si],al
00001C47  0000              add [bx+si],al
00001C49  0000              add [bx+si],al
