00000000  97                xchg ax,di
00000001  2100              and [bx+si],ax
00000003  002C              add [si],ch
00000005  30473A            xor [bx+0x3a],al
00000008  A03FAF            mov al,[0xaf3f]
0000000B  3EEE              ds out dx,al
0000000D  41                inc cx
0000000E  5A                pop dx
0000000F  46                inc si
00000010  69406C3267        imul ax,[bx+si+0x6c],0x6732
00000015  388A42AE          cmp [bp+si-0x51be],cl
00000019  41                inc cx
0000001A  313A              xor [bp+si],di
0000001C  D04375            rol byte [bp+di+0x75],0x0
0000001F  46                inc si
00000020  BD46BA            mov bp,0xba46
00000023  47                inc di
00000024  9F                lahf
00000025  41                inc cx
00000026  DD4A2D            fisttp qword [bp+si+0x2d]
00000029  4B                dec bx
0000002A  B44C              mov ah,0x4c
0000002C  6650              push eax
0000002E  6650              push eax
00000030  0E                push cs
00000031  07                pop es
00000032  BF9750            mov di,0x5097
00000035  33C0              xor ax,ax
00000037  B98000            mov cx,0x80
0000003A  F3AB              rep stosw
0000003C  FE067850          inc byte [0x5078]
00000040  C70669506C04      mov word [0x5069],0x46c
00000046  8B3631FF          mov si,[0xff31]
0000004A  83EE21            sub si,0x21
0000004D  E86516            call 0x16b5
00000050  33DB              xor bx,bx
00000052  F60480            test byte [si],0x80
00000055  7403              jz 0x5a
00000057  E80703            call 0x361
0000005A  46                inc si
0000005B  B90600            mov cx,0x6
0000005E  51                push cx
0000005F  F60480            test byte [si],0x80
00000062  7403              jz 0x67
00000064  E83703            call 0x39e
00000067  46                inc si
00000068  43                inc bx
00000069  F60480            test byte [si],0x80
0000006C  7403              jz 0x71
0000006E  E82D03            call 0x39e
00000071  46                inc si
00000072  43                inc bx
00000073  F60480            test byte [si],0x80
00000076  7403              jz 0x7b
00000078  E82303            call 0x39e
0000007B  46                inc si
0000007C  43                inc bx
0000007D  F60480            test byte [si],0x80
00000080  7403              jz 0x85
00000082  E81903            call 0x39e
00000085  46                inc si
00000086  43                inc bx
00000087  59                pop cx
00000088  E2D4              loop 0x5e
0000008A  F60480            test byte [si],0x80
0000008D  7403              jz 0x92
0000008F  E80C03            call 0x39e
00000092  46                inc si
00000093  43                inc bx
00000094  F60480            test byte [si],0x80
00000097  7403              jz 0x9c
00000099  E80203            call 0x39e
0000009C  46                inc si
0000009D  43                inc bx
0000009E  F60480            test byte [si],0x80
000000A1  7403              jz 0xa6
000000A3  E8F802            call 0x39e
000000A6  46                inc si
000000A7  F60480            test byte [si],0x80
000000AA  7403              jz 0xaf
000000AC  E83303            call 0x3e2
000000AF  8B3631FF          mov si,[0xff31]
000000B3  BF00E9            mov di,0xe900
000000B6  C6066D5012        mov byte [0x506d],0x12
000000BB  E8BC0D            call 0xe7a
000000BE  33DB              xor bx,bx
000000C0  83C603            add si,0x3
000000C3  AC                lodsb
000000C4  0AC0              or al,al
000000C6  7903              jns 0xcb
000000C8  E84F03            call 0x41a
000000CB  B90600            mov cx,0x6
000000CE  51                push cx
000000CF  A6                cmpsb
000000D0  7403              jz 0xd5
000000D2  E85300            call 0x128
000000D5  43                inc bx
000000D6  A6                cmpsb
000000D7  7403              jz 0xdc
000000D9  E84C00            call 0x128
000000DC  43                inc bx
000000DD  A6                cmpsb
000000DE  7403              jz 0xe3
000000E0  E84500            call 0x128
000000E3  43                inc bx
000000E4  A6                cmpsb
000000E5  7403              jz 0xea
000000E7  E83E00            call 0x128
000000EA  43                inc bx
000000EB  59                pop cx
000000EC  E2E0              loop 0xce
000000EE  A6                cmpsb
000000EF  7403              jz 0xf4
000000F1  E83400            call 0x128
000000F4  43                inc bx
000000F5  A6                cmpsb
000000F6  7403              jz 0xfb
000000F8  E82D00            call 0x128
000000FB  43                inc bx
000000FC  A6                cmpsb
000000FD  7403              jz 0x102
000000FF  E82600            call 0x128
00000102  43                inc bx
00000103  AC                lodsb
00000104  47                inc di
00000105  0AC0              or al,al
00000107  7903              jns 0x10c
00000109  E90604            jmp 0x512
0000010C  263A45FF          cmp al,[es:di-0x1]
00000110  7403              jz 0x115
00000112  E81300            call 0x128
00000115  83C604            add si,0x4
00000118  E88E15            call 0x16a9
0000011B  810669508002      add word [0x5069],0x280
00000121  FE0E6D50          dec byte [0x506d]
00000125  7594              jnz 0xbb
00000127  C3                ret
00000128  8A44FF            mov al,[si-0x1]
0000012B  0AC0              or al,al
0000012D  7903              jns 0x132
0000012F  E96903            jmp 0x49b
00000132  26807DFFFC        cmp byte [es:di-0x1],0xfc
00000137  7507              jnz 0x140
00000139  26C645FFFF        mov byte [es:di-0x1],0xff
0000013E  EB1A              jmp 0x15a
00000140  26FE45FF          inc byte [es:di-0x1]
00000144  26C645FFFE        mov byte [es:di-0x1],0xfe
00000149  740F              jz 0x15a
0000014B  268845FF          mov [es:di-0x1],al
0000014F  8BD3              mov dx,bx
00000151  03D2              add dx,dx
00000153  03166950          add dx,[0x5069]
00000157  E81601            call 0x270
0000015A  A012C0            mov al,[0xc012]
0000015D  2C05              sub al,0x5
0000015F  7301              jnc 0x162
00000161  C3                ret
00000162  3C04              cmp al,0x4
00000164  7201              jc 0x167
00000166  C3                ret
00000167  53                push bx
00000168  8AD8              mov bl,al
0000016A  32FF              xor bh,bh
0000016C  03DB              add bx,bx
0000016E  FF977031          call word near [bx+0x3170]
00000172  5B                pop bx
00000173  C3                ret
00000174  7831              js 0x1a7
00000176  98                cbw
00000177  31CE              xor si,cx
00000179  314C32            xor [si+0x32],cx
0000017C  8A44FF            mov al,[si-0x1]
0000017F  2C1B              sub al,0x1b
00000181  3C02              cmp al,0x2
00000183  7201              jc 0x186
00000185  C3                ret
00000186  C645FFFE          mov byte [di-0x1],0xfe
0000018A  F606785001        test byte [0x5078],0x1
0000018F  7501              jnz 0x192
00000191  C3                ret
00000192  FEC0              inc al
00000194  2401              and al,0x1
00000196  041B              add al,0x1b
00000198  8844FF            mov [si-0x1],al
0000019B  C3                ret
0000019C  8A44FF            mov al,[si-0x1]
0000019F  2C1D              sub al,0x1d
000001A1  3C06              cmp al,0x6
000001A3  7201              jc 0x1a6
000001A5  C3                ret
000001A6  C645FFFE          mov byte [di-0x1],0xfe
000001AA  3C04              cmp al,0x4
000001AC  731A              jnc 0x1c8
000001AE  0AC0              or al,al
000001B0  750C              jnz 0x1be
000001B2  50                push ax
000001B3  2EFF161A01        call word near [cs:0x11a]
000001B8  2403              and al,0x3
000001BA  58                pop ax
000001BB  7401              jz 0x1be
000001BD  C3                ret
000001BE  FEC0              inc al
000001C0  2403              and al,0x3
000001C2  041D              add al,0x1d
000001C4  8844FF            mov [si-0x1],al
000001C7  C3                ret
000001C8  FEC0              inc al
000001CA  2401              and al,0x1
000001CC  0421              add al,0x21
000001CE  8844FF            mov [si-0x1],al
000001D1  C3                ret
000001D2  8A44FF            mov al,[si-0x1]
000001D5  2C2C              sub al,0x2c
000001D7  3C02              cmp al,0x2
000001D9  7316              jnc 0x1f1
000001DB  C645FFFE          mov byte [di-0x1],0xfe
000001DF  F606785001        test byte [0x5078],0x1
000001E4  7501              jnz 0x1e7
000001E6  C3                ret
000001E7  FEC0              inc al
000001E9  2401              and al,0x1
000001EB  042C              add al,0x2c
000001ED  8844FF            mov [si-0x1],al
000001F0  C3                ret
000001F1  8A44FF            mov al,[si-0x1]
000001F4  3C3E              cmp al,0x3e
000001F6  7201              jc 0x1f9
000001F8  C3                ret
000001F9  B333              mov bl,0x33
000001FB  3C0E              cmp al,0xe
000001FD  7441              jz 0x240
000001FF  B336              mov bl,0x36
00000201  3C0D              cmp al,0xd
00000203  743B              jz 0x240
00000205  B339              mov bl,0x39
00000207  3C0F              cmp al,0xf
00000209  7435              jz 0x240
0000020B  B33C              mov bl,0x3c
0000020D  3C0C              cmp al,0xc
0000020F  742F              jz 0x240
00000211  B33D              mov bl,0x3d
00000213  3C10              cmp al,0x10
00000215  7429              jz 0x240
00000217  2C33              sub al,0x33
00000219  7301              jnc 0x21c
0000021B  C3                ret
0000021C  B30E              mov bl,0xe
0000021E  3C02              cmp al,0x2
00000220  741E              jz 0x240
00000222  B30D              mov bl,0xd
00000224  3C05              cmp al,0x5
00000226  7418              jz 0x240
00000228  B30F              mov bl,0xf
0000022A  3C08              cmp al,0x8
0000022C  7412              jz 0x240
0000022E  B30C              mov bl,0xc
00000230  3C09              cmp al,0x9
00000232  740C              jz 0x240
00000234  B310              mov bl,0x10
00000236  3C0A              cmp al,0xa
00000238  7406              jz 0x240
0000023A  FEC0              inc al
0000023C  0433              add al,0x33
0000023E  8AD8              mov bl,al
00000240  C645FFFE          mov byte [di-0x1],0xfe
00000244  F606785001        test byte [0x5078],0x1
00000249  7501              jnz 0x24c
0000024B  C3                ret
0000024C  885CFF            mov [si-0x1],bl
0000024F  C3                ret
00000250  8A44FF            mov al,[si-0x1]
00000253  2C25              sub al,0x25
00000255  3C04              cmp al,0x4
00000257  7201              jc 0x25a
00000259  C3                ret
0000025A  C645FFFE          mov byte [di-0x1],0xfe
0000025E  F606785001        test byte [0x5078],0x1
00000263  7501              jnz 0x266
00000265  C3                ret
00000266  FEC0              inc al
00000268  2403              and al,0x3
0000026A  0425              add al,0x25
0000026C  8844FF            mov [si-0x1],al
0000026F  C3                ret
00000270  06                push es
00000271  1E                push ds
00000272  57                push di
00000273  56                push si
00000274  53                push bx
00000275  8BFA              mov di,dx
00000277  0AC0              or al,al
00000279  7503              jnz 0x27e
0000027B  E9B400            jmp 0x332
0000027E  8AD8              mov bl,al
00000280  32FF              xor bh,bh
00000282  03DB              add bx,bx
00000284  F7879750FFFF      test word [bx+0x5097],0xffff
0000028A  7554              jnz 0x2e0
0000028C  89BF9750          mov [bx+0x5097],di
00000290  B130              mov cl,0x30
00000292  F6E1              mul cl
00000294  050080            add ax,0x8000
00000297  8BF0              mov si,ax
00000299  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000029E  B800A0            mov ax,0xa000
000002A1  8EC0              mov es,ax
000002A3  BAC403            mov dx,0x3c4
000002A6  B002              mov al,0x2
000002A8  EE                out dx,al
000002A9  42                inc dx
000002AA  BB4E00            mov bx,0x4e
000002AD  B90400            mov cx,0x4
000002B0  B001              mov al,0x1
000002B2  EE                out dx,al
000002B3  A5                movsw
000002B4  B002              mov al,0x2
000002B6  EE                out dx,al
000002B7  AD                lodsw
000002B8  268945FE          mov [es:di-0x2],ax
000002BC  4F                dec di
000002BD  4F                dec di
000002BE  B004              mov al,0x4
000002C0  EE                out dx,al
000002C1  A5                movsw
000002C2  03FB              add di,bx
000002C4  B001              mov al,0x1
000002C6  EE                out dx,al
000002C7  A5                movsw
000002C8  B002              mov al,0x2
000002CA  EE                out dx,al
000002CB  AD                lodsw
000002CC  268945FE          mov [es:di-0x2],ax
000002D0  4F                dec di
000002D1  4F                dec di
000002D2  B004              mov al,0x4
000002D4  EE                out dx,al
000002D5  A5                movsw
000002D6  03FB              add di,bx
000002D8  E2D6              loop 0x2b0
000002DA  5B                pop bx
000002DB  5E                pop si
000002DC  5F                pop di
000002DD  1F                pop ds
000002DE  07                pop es
000002DF  C3                ret
000002E0  8BB79750          mov si,[bx+0x5097]
000002E4  BAC403            mov dx,0x3c4
000002E7  B80207            mov ax,0x702
000002EA  EF                out dx,ax
000002EB  BACE03            mov dx,0x3ce
000002EE  B80501            mov ax,0x105
000002F1  EF                out dx,ax
000002F2  B800A0            mov ax,0xa000
000002F5  8EC0              mov es,ax
000002F7  8ED8              mov ds,ax
000002F9  BB4E00            mov bx,0x4e
000002FC  A4                movsb
000002FD  A4                movsb
000002FE  03FB              add di,bx
00000300  03F3              add si,bx
00000302  A4                movsb
00000303  A4                movsb
00000304  03FB              add di,bx
00000306  03F3              add si,bx
00000308  A4                movsb
00000309  A4                movsb
0000030A  03FB              add di,bx
0000030C  03F3              add si,bx
0000030E  A4                movsb
0000030F  A4                movsb
00000310  03FB              add di,bx
00000312  03F3              add si,bx
00000314  A4                movsb
00000315  A4                movsb
00000316  03FB              add di,bx
00000318  03F3              add si,bx
0000031A  A4                movsb
0000031B  A4                movsb
0000031C  03FB              add di,bx
0000031E  03F3              add si,bx
00000320  A4                movsb
00000321  A4                movsb
00000322  03FB              add di,bx
00000324  03F3              add si,bx
00000326  A4                movsb
00000327  A4                movsb
00000328  B80500            mov ax,0x5
0000032B  EF                out dx,ax
0000032C  5B                pop bx
0000032D  5E                pop si
0000032E  5F                pop di
0000032F  1F                pop ds
00000330  07                pop es
00000331  C3                ret
00000332  B800A0            mov ax,0xa000
00000335  8EC0              mov es,ax
00000337  BAC403            mov dx,0x3c4
0000033A  B80207            mov ax,0x702
0000033D  EF                out dx,ax
0000033E  33C0              xor ax,ax
00000340  BB4E00            mov bx,0x4e
00000343  AB                stosw
00000344  03FB              add di,bx
00000346  AB                stosw
00000347  03FB              add di,bx
00000349  AB                stosw
0000034A  03FB              add di,bx
0000034C  AB                stosw
0000034D  03FB              add di,bx
0000034F  AB                stosw
00000350  03FB              add di,bx
00000352  AB                stosw
00000353  03FB              add di,bx
00000355  AB                stosw
00000356  03FB              add di,bx
00000358  AB                stosw
00000359  03FB              add di,bx
0000035B  5B                pop bx
0000035C  5E                pop si
0000035D  5F                pop di
0000035E  1F                pop ds
0000035F  07                pop es
00000360  C3                ret
00000361  803E00E9FF        cmp byte [0xe900],0xff
00000366  7501              jnz 0x369
00000368  C3                ret
00000369  803E00E9FC        cmp byte [0xe900],0xfc
0000036E  7501              jnz 0x371
00000370  C3                ret
00000371  56                push si
00000372  53                push bx
00000373  C60600E9FF        mov byte [0xe900],0xff
00000378  8A0C              mov cl,[si]
0000037A  83C625            add si,0x25
0000037D  E82913            call 0x16a9
00000380  8A04              mov al,[si]
00000382  0AC0              or al,al
00000384  7903              jns 0x389
00000386  E81004            call 0x799
00000389  50                push ax
0000038A  8AC1              mov al,cl
0000038C  E81104            call 0x7a0
0000038F  83C603            add si,0x3
00000392  58                pop ax
00000393  8A24              mov ah,[si]
00000395  BA6C04            mov dx,0x46c
00000398  E82802            call 0x5c3
0000039B  5B                pop bx
0000039C  5E                pop si
0000039D  C3                ret
0000039E  56                push si
0000039F  53                push bx
000003A0  8BCB              mov cx,bx
000003A2  8BFB              mov di,bx
000003A4  81C700E9          add di,0xe900
000003A8  BB8A50            mov bx,0x508a
000003AB  B0FF              mov al,0xff
000003AD  8605              xchg al,[di]
000003AF  8807              mov [bx],al
000003B1  C6470100          mov byte [bx+0x1],0x0
000003B5  C64501FF          mov byte [di+0x1],0xff
000003B9  8BD1              mov dx,cx
000003BB  03D2              add dx,dx
000003BD  81C26C04          add dx,0x46c
000003C1  8A0C              mov cl,[si]
000003C3  83C624            add si,0x24
000003C6  E8E012            call 0x16a9
000003C9  BB8E50            mov bx,0x508e
000003CC  AD                lodsw
000003CD  8907              mov [bx],ax
000003CF  8AC1              mov al,cl
000003D1  E8CC03            call 0x7a0
000003D4  46                inc si
000003D5  46                inc si
000003D6  BF8E50            mov di,0x508e
000003D9  BD8A50            mov bp,0x508a
000003DC  E8B701            call 0x596
000003DF  5B                pop bx
000003E0  5E                pop si
000003E1  C3                ret
000003E2  803E1BE9FF        cmp byte [0xe91b],0xff
000003E7  7501              jnz 0x3ea
000003E9  C3                ret
000003EA  803E1BE9FC        cmp byte [0xe91b],0xfc
000003EF  7501              jnz 0x3f2
000003F1  C3                ret
000003F2  C6061BE9FF        mov byte [0xe91b],0xff
000003F7  8A0C              mov cl,[si]
000003F9  83C624            add si,0x24
000003FC  E8AA12            call 0x16a9
000003FF  8A04              mov al,[si]
00000401  0AC0              or al,al
00000403  7903              jns 0x408
00000405  E89103            call 0x799
00000408  50                push ax
00000409  8AC1              mov al,cl
0000040B  E89203            call 0x7a0
0000040E  83C602            add si,0x2
00000411  58                pop ax
00000412  8A24              mov ah,[si]
00000414  BAA204            mov dx,0x4a2
00000417  E9A901            jmp 0x5c3
0000041A  56                push si
0000041B  57                push di
0000041C  53                push bx
0000041D  53                push bx
0000041E  BB8A50            mov bx,0x508a
00000421  B0FF              mov al,0xff
00000423  8605              xchg al,[di]
00000425  8807              mov [bx],al
00000427  B0FF              mov al,0xff
00000429  86451C            xchg al,[di+0x1c]
0000042C  884701            mov [bx+0x1],al
0000042F  8A4CFF            mov cl,[si-0x1]
00000432  8A14              mov dl,[si]
00000434  83C624            add si,0x24
00000437  E86F12            call 0x16a9
0000043A  8A34              mov dh,[si]
0000043C  8AC1              mov al,cl
0000043E  E85F03            call 0x7a0
00000441  46                inc si
00000442  8BDA              mov bx,dx
00000444  5A                pop dx
00000445  03D2              add dx,dx
00000447  03166950          add dx,[0x5069]
0000044B  803E8A50FF        cmp byte [0x508a],0xff
00000450  741B              jz 0x46d
00000452  803E8A50FC        cmp byte [0x508a],0xfc
00000457  7414              jz 0x46d
00000459  8A24              mov ah,[si]
0000045B  8AC3              mov al,bl
0000045D  53                push bx
0000045E  56                push si
0000045F  52                push dx
00000460  0AC0              or al,al
00000462  7903              jns 0x467
00000464  E83203            call 0x799
00000467  E85901            call 0x5c3
0000046A  5A                pop dx
0000046B  5E                pop si
0000046C  5B                pop bx
0000046D  81C28002          add dx,0x280
00000471  803E6D5001        cmp byte [0x506d],0x1
00000476  741F              jz 0x497
00000478  803E8B50FF        cmp byte [0x508b],0xff
0000047D  7418              jz 0x497
0000047F  803E8B50FC        cmp byte [0x508b],0xfc
00000484  7411              jz 0x497
00000486  46                inc si
00000487  46                inc si
00000488  AC                lodsb
00000489  8AE0              mov ah,al
0000048B  8AC7              mov al,bh
0000048D  0AC0              or al,al
0000048F  7903              jns 0x494
00000491  E80503            call 0x799
00000494  E82C01            call 0x5c3
00000497  5B                pop bx
00000498  5F                pop di
00000499  5E                pop si
0000049A  C3                ret
0000049B  56                push si
0000049C  57                push di
0000049D  53                push bx
0000049E  53                push bx
0000049F  BB8A50            mov bx,0x508a
000004A2  B8FEFF            mov ax,0xfffe
000004A5  8745FF            xchg ax,[di-0x1]
000004A8  8907              mov [bx],ax
000004AA  B8FFFF            mov ax,0xffff
000004AD  87451B            xchg ax,[di+0x1b]
000004B0  894702            mov [bx+0x2],ax
000004B3  8A4CFF            mov cl,[si-0x1]
000004B6  BB8E50            mov bx,0x508e
000004B9  8A04              mov al,[si]
000004BB  884701            mov [bx+0x1],al
000004BE  83C624            add si,0x24
000004C1  E8E511            call 0x16a9
000004C4  8B44FF            mov ax,[si-0x1]
000004C7  894702            mov [bx+0x2],ax
000004CA  5A                pop dx
000004CB  88166E50          mov [0x506e],dl
000004CF  A06D50            mov al,[0x506d]
000004D2  F6D8              neg al
000004D4  0412              add al,0x12
000004D6  A26F50            mov [0x506f],al
000004D9  03D2              add dx,dx
000004DB  03166950          add dx,[0x5069]
000004DF  8AC1              mov al,cl
000004E1  E8BC02            call 0x7a0
000004E4  BF8E50            mov di,0x508e
000004E7  8805              mov [di],al
000004E9  BD8A50            mov bp,0x508a
000004EC  E8A700            call 0x596
000004EF  803E6D5001        cmp byte [0x506d],0x1
000004F4  7418              jz 0x50e
000004F6  81C27C02          add dx,0x27c
000004FA  E89900            call 0x596
000004FD  F60634FFFF        test byte [0xff34],0xff
00000502  740A              jz 0x50e
00000504  F6062FFFFF        test byte [0xff2f],0xff
00000509  7403              jz 0x50e
0000050B  E8E302            call 0x7f1
0000050E  5B                pop bx
0000050F  5F                pop di
00000510  5E                pop si
00000511  C3                ret
00000512  56                push si
00000513  57                push di
00000514  53                push bx
00000515  53                push bx
00000516  BB8A50            mov bx,0x508a
00000519  B0FE              mov al,0xfe
0000051B  8645FF            xchg al,[di-0x1]
0000051E  8807              mov [bx],al
00000520  B0FF              mov al,0xff
00000522  86451B            xchg al,[di+0x1b]
00000525  884701            mov [bx+0x1],al
00000528  8A4CFF            mov cl,[si-0x1]
0000052B  83C624            add si,0x24
0000052E  E87811            call 0x16a9
00000531  8A54FF            mov dl,[si-0x1]
00000534  8AC1              mov al,cl
00000536  E86702            call 0x7a0
00000539  8AD8              mov bl,al
0000053B  8AFA              mov bh,dl
0000053D  5A                pop dx
0000053E  03D2              add dx,dx
00000540  03166950          add dx,[0x5069]
00000544  803E8A50FF        cmp byte [0x508a],0xff
00000549  741B              jz 0x566
0000054B  803E8A50FC        cmp byte [0x508a],0xfc
00000550  7414              jz 0x566
00000552  8A24              mov ah,[si]
00000554  8AC3              mov al,bl
00000556  53                push bx
00000557  56                push si
00000558  52                push dx
00000559  0AC0              or al,al
0000055B  7903              jns 0x560
0000055D  E83902            call 0x799
00000560  E86000            call 0x5c3
00000563  5A                pop dx
00000564  5E                pop si
00000565  5B                pop bx
00000566  81C28002          add dx,0x280
0000056A  803E6D5001        cmp byte [0x506d],0x1
0000056F  741F              jz 0x590
00000571  803E8B50FF        cmp byte [0x508b],0xff
00000576  7418              jz 0x590
00000578  803E8B50FC        cmp byte [0x508b],0xfc
0000057D  7411              jz 0x590
0000057F  46                inc si
00000580  46                inc si
00000581  AC                lodsb
00000582  8AE0              mov ah,al
00000584  8AC7              mov al,bh
00000586  0AC0              or al,al
00000588  7903              jns 0x58d
0000058A  E80C02            call 0x799
0000058D  E83300            call 0x5c3
00000590  5B                pop bx
00000591  5F                pop di
00000592  5E                pop si
00000593  E97FFB            jmp 0x115
00000596  E80000            call 0x599
00000599  3E807E00FF        cmp byte [ds:bp+0x0],0xff
0000059E  741D              jz 0x5bd
000005A0  3E807E00FC        cmp byte [ds:bp+0x0],0xfc
000005A5  7416              jz 0x5bd
000005A7  8A24              mov ah,[si]
000005A9  8A05              mov al,[di]
000005AB  0AC0              or al,al
000005AD  7903              jns 0x5b2
000005AF  E8E701            call 0x799
000005B2  55                push bp
000005B3  56                push si
000005B4  57                push di
000005B5  52                push dx
000005B6  E80A00            call 0x5c3
000005B9  5A                pop dx
000005BA  5F                pop di
000005BB  5E                pop si
000005BC  5D                pop bp
000005BD  46                inc si
000005BE  47                inc di
000005BF  45                inc bp
000005C0  42                inc dx
000005C1  42                inc dx
000005C2  C3                ret
000005C3  06                push es
000005C4  1E                push ds
000005C5  8A1E7050          mov bl,[0x5070]
000005C9  0AC0              or al,al
000005CB  7405              jz 0x5d2
000005CD  7803              js 0x5d2
000005CF  80CB80            or bl,0x80
000005D2  8AC8              mov cl,al
000005D4  8AC4              mov al,ah
000005D6  B520              mov ch,0x20
000005D8  F6E5              mul ch
000005DA  050040            add ax,0x4000
000005DD  8BF0              mov si,ax
000005DF  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000005E4  8BFA              mov di,dx
000005E6  B800A0            mov ax,0xa000
000005E9  8EC0              mov es,ax
000005EB  8AEB              mov ch,bl
000005ED  80E37F            and bl,0x7f
000005F0  32FF              xor bh,bh
000005F2  03DB              add bx,bx
000005F4  2E8B875A50        mov ax,[cs:bx+0x505a]
000005F9  2EA36750          mov [cs:0x5067],ax
000005FD  8AC1              mov al,cl
000005FF  0AED              or ch,ch
00000601  7816              js 0x619
00000603  57                push di
00000604  BF803E            mov di,0x3e80
00000607  E8C100            call 0x6cb
0000060A  5F                pop di
0000060B  BE803E            mov si,0x3e80
0000060E  B800A0            mov ax,0xa000
00000611  8ED8              mov ds,ax
00000613  E81A01            call 0x730
00000616  1F                pop ds
00000617  07                pop es
00000618  C3                ret
00000619  57                push di
0000061A  BF803E            mov di,0x3e80
0000061D  E80F00            call 0x62f
00000620  5F                pop di
00000621  BE803E            mov si,0x3e80
00000624  B800A0            mov ax,0xa000
00000627  8ED8              mov ds,ax
00000629  E80401            call 0x730
0000062C  1F                pop ds
0000062D  07                pop es
0000062E  C3                ret
0000062F  56                push si
00000630  57                push di
00000631  B030              mov al,0x30
00000633  F6E1              mul cl
00000635  050080            add ax,0x8000
00000638  8BF0              mov si,ax
0000063A  E82B01            call 0x768
0000063D  5F                pop di
0000063E  5E                pop si
0000063F  EB00              jmp 0x641
00000641  BAC403            mov dx,0x3c4
00000644  B80207            mov ax,0x702
00000647  EF                out dx,ax
00000648  BACE03            mov dx,0x3ce
0000064B  B80502            mov ax,0x205
0000064E  EF                out dx,ax
0000064F  B90800            mov cx,0x8
00000652  51                push cx
00000653  AD                lodsw
00000654  86C4              xchg al,ah
00000656  8BD8              mov bx,ax
00000658  AD                lodsw
00000659  86C4              xchg al,ah
0000065B  8BC8              mov cx,ax
0000065D  B80300            mov ax,0x3
00000660  EF                out dx,ax
00000661  B008              mov al,0x8
00000663  EE                out dx,al
00000664  42                inc dx
00000665  8BC3              mov ax,bx
00000667  0BC1              or ax,cx
00000669  8BE8              mov bp,ax
0000066B  D1E5              shl bp,0x0
0000066D  0BC5              or ax,bp
0000066F  D1ED              shr bp,0x0
00000671  D1ED              shr bp,0x0
00000673  0BC5              or ax,bp
00000675  86C4              xchg al,ah
00000677  EE                out dx,al
00000678  32C0              xor al,al
0000067A  268605            xchg al,[es:di]
0000067D  8AC4              mov al,ah
0000067F  EE                out dx,al
00000680  32C0              xor al,al
00000682  26864501          xchg al,[es:di+0x1]
00000686  4A                dec dx
00000687  B80310            mov ax,0x1003
0000068A  EF                out dx,ax
0000068B  B008              mov al,0x8
0000068D  EE                out dx,al
0000068E  42                inc dx
0000068F  8AC7              mov al,bh
00000691  EE                out dx,al
00000692  2EA06750          mov al,[cs:0x5067]
00000696  268605            xchg al,[es:di]
00000699  8AC3              mov al,bl
0000069B  EE                out dx,al
0000069C  2EA06750          mov al,[cs:0x5067]
000006A0  26864501          xchg al,[es:di+0x1]
000006A4  8AC5              mov al,ch
000006A6  EE                out dx,al
000006A7  2EA06850          mov al,[cs:0x5068]
000006AB  268605            xchg al,[es:di]
000006AE  8AC1              mov al,cl
000006B0  EE                out dx,al
000006B1  2EA06850          mov al,[cs:0x5068]
000006B5  26864501          xchg al,[es:di+0x1]
000006B9  4A                dec dx
000006BA  47                inc di
000006BB  47                inc di
000006BC  59                pop cx
000006BD  E293              loop 0x652
000006BF  B80300            mov ax,0x3
000006C2  EF                out dx,ax
000006C3  B005              mov al,0x5
000006C5  EF                out dx,ax
000006C6  B808FF            mov ax,0xff08
000006C9  EF                out dx,ax
000006CA  C3                ret
000006CB  BAC403            mov dx,0x3c4
000006CE  B80207            mov ax,0x702
000006D1  EF                out dx,ax
000006D2  BACE03            mov dx,0x3ce
000006D5  B80502            mov ax,0x205
000006D8  EF                out dx,ax
000006D9  B90800            mov cx,0x8
000006DC  B80300            mov ax,0x3
000006DF  EF                out dx,ax
000006E0  B808FF            mov ax,0xff08
000006E3  EF                out dx,ax
000006E4  32C0              xor al,al
000006E6  268605            xchg al,[es:di]
000006E9  32C0              xor al,al
000006EB  26864501          xchg al,[es:di+0x1]
000006EF  B80310            mov ax,0x1003
000006F2  EF                out dx,ax
000006F3  B008              mov al,0x8
000006F5  EE                out dx,al
000006F6  42                inc dx
000006F7  AD                lodsw
000006F8  EE                out dx,al
000006F9  2EA06750          mov al,[cs:0x5067]
000006FD  268605            xchg al,[es:di]
00000700  8AC4              mov al,ah
00000702  EE                out dx,al
00000703  2EA06750          mov al,[cs:0x5067]
00000707  26864501          xchg al,[es:di+0x1]
0000070B  AD                lodsw
0000070C  EE                out dx,al
0000070D  2EA06850          mov al,[cs:0x5068]
00000711  268605            xchg al,[es:di]
00000714  8AC4              mov al,ah
00000716  EE                out dx,al
00000717  2EA06850          mov al,[cs:0x5068]
0000071B  26864501          xchg al,[es:di+0x1]
0000071F  4A                dec dx
00000720  47                inc di
00000721  47                inc di
00000722  E2B8              loop 0x6dc
00000724  B80300            mov ax,0x3
00000727  EF                out dx,ax
00000728  B005              mov al,0x5
0000072A  EF                out dx,ax
0000072B  B808FF            mov ax,0xff08
0000072E  EF                out dx,ax
0000072F  C3                ret
00000730  BAC403            mov dx,0x3c4
00000733  B80207            mov ax,0x702
00000736  EF                out dx,ax
00000737  BACE03            mov dx,0x3ce
0000073A  B80501            mov ax,0x105
0000073D  EF                out dx,ax
0000073E  A4                movsb
0000073F  A4                movsb
00000740  83C74E            add di,0x4e
00000743  A4                movsb
00000744  A4                movsb
00000745  83C74E            add di,0x4e
00000748  A4                movsb
00000749  A4                movsb
0000074A  83C74E            add di,0x4e
0000074D  A4                movsb
0000074E  A4                movsb
0000074F  83C74E            add di,0x4e
00000752  A4                movsb
00000753  A4                movsb
00000754  83C74E            add di,0x4e
00000757  A4                movsb
00000758  A4                movsb
00000759  83C74E            add di,0x4e
0000075C  A4                movsb
0000075D  A4                movsb
0000075E  83C74E            add di,0x4e
00000761  A4                movsb
00000762  A4                movsb
00000763  B80500            mov ax,0x5
00000766  EF                out dx,ax
00000767  C3                ret
00000768  BAC403            mov dx,0x3c4
0000076B  B002              mov al,0x2
0000076D  EE                out dx,al
0000076E  42                inc dx
0000076F  B90800            mov cx,0x8
00000772  B001              mov al,0x1
00000774  EE                out dx,al
00000775  A5                movsw
00000776  B002              mov al,0x2
00000778  EE                out dx,al
00000779  AD                lodsw
0000077A  268945FE          mov [es:di-0x2],ax
0000077E  4F                dec di
0000077F  4F                dec di
00000780  B004              mov al,0x4
00000782  EE                out dx,al
00000783  A5                movsw
00000784  E2EC              loop 0x772
00000786  C3                ret
00000787  BAC403            mov dx,0x3c4
0000078A  B80207            mov ax,0x702
0000078D  EF                out dx,ax
0000078E  33C0              xor ax,ax
00000790  AB                stosw
00000791  AB                stosw
00000792  AB                stosw
00000793  AB                stosw
00000794  AB                stosw
00000795  AB                stosw
00000796  AB                stosw
00000797  AB                stosw
00000798  C3                ret
00000799  247F              and al,0x7f
0000079B  BB20ED            mov bx,0xed20
0000079E  D7                xlatb
0000079F  C3                ret
000007A0  247F              and al,0x7f
000007A2  8AD8              mov bl,al
000007A4  32FF              xor bh,bh
000007A6  8A8F20ED          mov cl,[bx-0x12e0]
000007AA  B510              mov ch,0x10
000007AC  F6E5              mul ch
000007AE  030610C0          add ax,[0xc010]
000007B2  8BE8              mov bp,ax
000007B4  3E8A4606          mov al,[ds:bp+0x6]
000007B8  240F              and al,0xf
000007BA  B505              mov ch,0x5
000007BC  F6E5              mul ch
000007BE  BE70A0            mov si,0xa070
000007C1  3EF6460580        test byte [ds:bp+0x5],0x80
000007C6  7503              jnz 0x7cb
000007C8  BE30A0            mov si,0xa030
000007CB  3E8A5E04          mov bl,[ds:bp+0x4]
000007CF  80E31F            and bl,0x1f
000007D2  02DB              add bl,bl
000007D4  32FF              xor bh,bh
000007D6  0300              add ax,[bx+si]
000007D8  8BF0              mov si,ax
000007DA  AC                lodsb
000007DB  F60634FFFF        test byte [0xff34],0xff
000007E0  7509              jnz 0x7eb
000007E2  3EF6460520        test byte [ds:bp+0x5],0x20
000007E7  7402              jz 0x7eb
000007E9  0403              add al,0x3
000007EB  A27050            mov [0x5070],al
000007EE  8AC1              mov al,cl
000007F0  C3                ret
000007F1  803E6F5010        cmp byte [0x506f],0x10
000007F6  7201              jc 0x7f9
000007F8  C3                ret
000007F9  0E                push cs
000007FA  07                pop es
000007FB  2EFF161A01        call word near [cs:0x11a]
00000800  240F              and al,0xf
00000802  3C0E              cmp al,0xe
00000804  7301              jnc 0x807
00000806  C3                ret
00000807  BFA0ED            mov di,0xeda0
0000080A  32C9              xor cl,cl
0000080C  803DFF            cmp byte [di],0xff
0000080F  7407              jz 0x818
00000811  83C704            add di,0x4
00000814  FEC1              inc cl
00000816  EBF4              jmp 0x80c
00000818  80F920            cmp cl,0x20
0000081B  7201              jc 0x81e
0000081D  C3                ret
0000081E  2EFF161A01        call word near [cs:0x11a]
00000823  2403              and al,0x3
00000825  3C03              cmp al,0x3
00000827  74F5              jz 0x81e
00000829  FEC8              dec al
0000082B  02066E50          add al,[0x506e]
0000082F  3CFF              cmp al,0xff
00000831  7502              jnz 0x835
00000833  B004              mov al,0x4
00000835  3C1B              cmp al,0x1b
00000837  7202              jc 0x83b
00000839  B01A              mov al,0x1a
0000083B  AA                stosb
0000083C  2EFF161A01        call word near [cs:0x11a]
00000841  2403              and al,0x3
00000843  3C03              cmp al,0x3
00000845  74F5              jz 0x83c
00000847  FEC8              dec al
00000849  02066F50          add al,[0x506f]
0000084D  3CFF              cmp al,0xff
0000084F  7502              jnz 0x853
00000851  32C0              xor al,al
00000853  AA                stosb
00000854  B003              mov al,0x3
00000856  AA                stosb
00000857  2EFF161A01        call word near [cs:0x11a]
0000085C  2403              and al,0x3
0000085E  BB6338            mov bx,0x3863
00000861  D7                xlatb
00000862  AA                stosb
00000863  B0FF              mov al,0xff
00000865  AA                stosb
00000866  C3                ret
00000867  02060706          add al,[0x607]
0000086B  0E                push cs
0000086C  07                pop es
0000086D  BFA0ED            mov di,0xeda0
00000870  8BF7              mov si,di
00000872  803CFF            cmp byte [si],0xff
00000875  7504              jnz 0x87b
00000877  C605FF            mov byte [di],0xff
0000087A  C3                ret
0000087B  8A4401            mov al,[si+0x1]
0000087E  B11C              mov cl,0x1c
00000880  F6E1              mul cl
00000882  8A0C              mov cl,[si]
00000884  32ED              xor ch,ch
00000886  03C1              add ax,cx
00000888  57                push di
00000889  0500E9            add ax,0xe900
0000088C  8BF8              mov di,ax
0000088E  B0FE              mov al,0xfe
00000890  AA                stosb
00000891  AA                stosb
00000892  83C71A            add di,0x1a
00000895  AA                stosb
00000896  AA                stosb
00000897  5F                pop di
00000898  8A6401            mov ah,[si+0x1]
0000089B  32C0              xor al,al
0000089D  8BD8              mov bx,ax
0000089F  03C0              add ax,ax
000008A1  D1EB              shr bx,0x0
000008A3  03C3              add ax,bx
000008A5  8A0C              mov cl,[si]
000008A7  32ED              xor ch,ch
000008A9  03C9              add cx,cx
000008AB  03C1              add ax,cx
000008AD  056C04            add ax,0x46c
000008B0  56                push si
000008B1  57                push di
000008B2  06                push es
000008B3  50                push ax
000008B4  8A4403            mov al,[si+0x3]
000008B7  A27150            mov [0x5071],al
000008BA  8A5C02            mov bl,[si+0x2]
000008BD  80E303            and bl,0x3
000008C0  02DB              add bl,bl
000008C2  32FF              xor bh,bh
000008C4  8BB72939          mov si,[bx+0x3929]
000008C8  5F                pop di
000008C9  B800A0            mov ax,0xa000
000008CC  8EC0              mov es,ax
000008CE  BAC403            mov dx,0x3c4
000008D1  B80207            mov ax,0x702
000008D4  EF                out dx,ax
000008D5  BACE03            mov dx,0x3ce
000008D8  B80502            mov ax,0x205
000008DB  EF                out dx,ax
000008DC  B008              mov al,0x8
000008DE  EE                out dx,al
000008DF  42                inc dx
000008E0  B91000            mov cx,0x10
000008E3  AD                lodsw
000008E4  EE                out dx,al
000008E5  A07150            mov al,[0x5071]
000008E8  268605            xchg al,[es:di]
000008EB  8AC4              mov al,ah
000008ED  EE                out dx,al
000008EE  A07150            mov al,[0x5071]
000008F1  26864501          xchg al,[es:di+0x1]
000008F5  AD                lodsw
000008F6  EE                out dx,al
000008F7  A07150            mov al,[0x5071]
000008FA  26864502          xchg al,[es:di+0x2]
000008FE  8AC4              mov al,ah
00000900  EE                out dx,al
00000901  A07150            mov al,[0x5071]
00000904  26864503          xchg al,[es:di+0x3]
00000908  83C750            add di,0x50
0000090B  E2D6              loop 0x8e3
0000090D  4A                dec dx
0000090E  B80500            mov ax,0x5
00000911  EF                out dx,ax
00000912  B808FF            mov ax,0xff08
00000915  EF                out dx,ax
00000916  07                pop es
00000917  5F                pop di
00000918  5E                pop si
00000919  FE4C02            dec byte [si+0x2]
0000091C  807C02FF          cmp byte [si+0x2],0xff
00000920  7405              jz 0x927
00000922  A5                movsw
00000923  A5                movsw
00000924  83EE04            sub si,0x4
00000927  83C604            add si,0x4
0000092A  E945FF            jmp 0x872
0000092D  F1                int1
0000092E  39B13971          cmp [bx+di+0x7139],si
00000932  3931              cmp [bx+di],si
00000934  3900              cmp [bx+si],ax
00000936  0000              add [bx+si],al
00000938  0000              add [bx+si],al
0000093A  0000              add [bx+si],al
0000093C  0000              add [bx+si],al
0000093E  0000              add [bx+si],al
00000940  0000              add [bx+si],al
00000942  0000              add [bx+si],al
00000944  0000              add [bx+si],al
00000946  0BD0              or dx,ax
00000948  0000              add [bx+si],al
0000094A  5F                pop di
0000094B  FA                cli
0000094C  0000              add [bx+si],al
0000094E  7FFE              jg 0x94e
00000950  0000              add [bx+si],al
00000952  FF                db 0xff
00000953  FF00              inc word [bx+si]
00000955  00FF              add bh,bh
00000957  FF00              inc word [bx+si]
00000959  007FFE            add [bx-0x2],bh
0000095C  0000              add [bx+si],al
0000095E  5F                pop di
0000095F  FA                cli
00000960  0000              add [bx+si],al
00000962  0BD0              or dx,ax
00000964  0000              add [bx+si],al
00000966  0000              add [bx+si],al
00000968  0000              add [bx+si],al
0000096A  0000              add [bx+si],al
0000096C  0000              add [bx+si],al
0000096E  0000              add [bx+si],al
00000970  0000              add [bx+si],al
00000972  0000              add [bx+si],al
00000974  0000              add [bx+si],al
00000976  0000              add [bx+si],al
00000978  0000              add [bx+si],al
0000097A  0000              add [bx+si],al
0000097C  0000              add [bx+si],al
0000097E  2F                das
0000097F  F4                hlt
00000980  0000              add [bx+si],al
00000982  FF                db 0xff
00000983  FF00              inc word [bx+si]
00000985  03FF              add di,di
00000987  FFC0              inc ax
00000989  07                pop es
0000098A  FF                db 0xff
0000098B  FF                db 0xff
0000098C  E00F              loopne 0x99d
0000098E  FA                cli
0000098F  5F                pop di
00000990  F0                lock
00000991  0F                db 0x0f
00000992  F0                lock
00000993  0F                db 0x0f
00000994  F0                lock
00000995  0F                db 0x0f
00000996  F0                lock
00000997  0F                db 0x0f
00000998  F0                lock
00000999  0FFA5FF0          psubd mm3,[bx-0x10]
0000099D  07                pop es
0000099E  FF                db 0xff
0000099F  FF                db 0xff
000009A0  E003              loopne 0x9a5
000009A2  FF                db 0xff
000009A3  FFC0              inc ax
000009A5  00FF              add bh,bh
000009A7  FF00              inc word [bx+si]
000009A9  002F              add [bx],ch
000009AB  F4                hlt
000009AC  0000              add [bx+si],al
000009AE  0000              add [bx+si],al
000009B0  0000              add [bx+si],al
000009B2  0000              add [bx+si],al
000009B4  0000              add [bx+si],al
000009B6  2F                das
000009B7  F4                hlt
000009B8  0001              add [bx+di],al
000009BA  7FFE              jg 0x9ba
000009BC  8007FF            add byte [bx],0xff
000009BF  FF                db 0xff
000009C0  E00F              loopne 0x9d1
000009C2  FF                db 0xff
000009C3  FFF0              push ax
000009C5  3F                aas
000009C6  F4                hlt
000009C7  2F                das
000009C8  FC                cld
000009C9  7FA0              jg 0x96b
000009CB  05FE7F            add ax,0x7ffe
000009CE  8001FE            add byte [bx+di],0xfe
000009D1  FF00              inc word [bx+si]
000009D3  00FF              add bh,bh
000009D5  FF00              inc word [bx+si]
000009D7  00FF              add bh,bh
000009D9  7F80              jg 0x95b
000009DB  01FE              add si,di
000009DD  7FA0              jg 0x97f
000009DF  05FE3F            add ax,0x3ffe
000009E2  F4                hlt
000009E3  2F                das
000009E4  FC                cld
000009E5  0FFFFF            ud0 di,di
000009E8  F0                lock
000009E9  07                pop es
000009EA  FF                db 0xff
000009EB  FF                db 0xff
000009EC  E001              loopne 0x9ef
000009EE  7FFE              jg 0x9ee
000009F0  80002F            add byte [bx+si],0x2f
000009F3  F4                hlt
000009F4  0000              add [bx+si],al
000009F6  2F                das
000009F7  F4                hlt
000009F8  0001              add [bx+di],al
000009FA  7FFE              jg 0x9fa
000009FC  8007D0            add byte [bx],0xd0
000009FF  0BE0              or sp,ax
00000A01  0F0000            sldt word [bx+si]
00000A04  F0                lock
00000A05  3C00              cmp al,0x0
00000A07  003C              add [si],bh
00000A09  7800              js 0xa0b
00000A0B  001E7000          add [0x70],bl
00000A0F  000EF000          add [0xf0],cl
00000A13  000F              add [bx],cl
00000A15  F00000            lock add [bx+si],al
00000A18  0F700000          pshufw mm0,[bx+si],0x0
00000A1C  0E                push cs
00000A1D  7800              js 0xa1f
00000A1F  001E3C00          add [0x3c],bl
00000A23  003C              add [si],bh
00000A25  0F0000            sldt word [bx+si]
00000A28  F0                lock
00000A29  07                pop es
00000A2A  D00B              ror byte [bp+di],0x0
00000A2C  E001              loopne 0xa2f
00000A2E  7FFE              jg 0xa2e
00000A30  80002F            add byte [bx+si],0x2f
00000A33  F4                hlt
00000A34  00BF8E50          add [bx+0x508e],bh
00000A38  0E                push cs
00000A39  07                pop es
00000A3A  33C0              xor ax,ax
00000A3C  AB                stosw
00000A3D  AB                stosw
00000A3E  AB                stosw
00000A3F  AB                stosw
00000A40  AA                stosb
00000A41  BF7A50            mov di,0x507a
00000A44  B90800            mov cx,0x8
00000A47  F3AB              rep stosw
00000A49  EB3C              jmp 0xa87
00000A4B  E8FD03            call 0xe4b
00000A4E  BF7A50            mov di,0x507a
00000A51  8A1635FF          mov dl,[0xff35]
00000A55  FECA              dec dl
00000A57  B90400            mov cx,0x4
00000A5A  51                push cx
00000A5B  80E23F            and dl,0x3f
00000A5E  B024              mov al,0x24
00000A60  F6E2              mul dl
00000A62  8BD8              mov bx,ax
00000A64  81C300E0          add bx,0xe000
00000A68  A08300            mov al,[0x83]
00000A6B  0403              add al,0x3
00000A6D  32E4              xor ah,ah
00000A6F  03D8              add bx,ax
00000A71  B90400            mov cx,0x4
00000A74  8A07              mov al,[bx]
00000A76  0AC0              or al,al
00000A78  7802              js 0xa7c
00000A7A  32C0              xor al,al
00000A7C  8805              mov [di],al
00000A7E  43                inc bx
00000A7F  47                inc di
00000A80  E2F2              loop 0xa74
00000A82  FEC2              inc dl
00000A84  59                pop cx
00000A85  E2D3              loop 0xa5a
00000A87  A08400            mov al,[0x84]
00000A8A  32E4              xor ah,ah
00000A8C  B98002            mov cx,0x280
00000A8F  F7E1              mul cx
00000A91  8A0E8300          mov cl,[0x83]
00000A95  32ED              xor ch,ch
00000A97  03C9              add cx,cx
00000A99  03C1              add ax,cx
00000A9B  056C04            add ax,0x46c
00000A9E  A36B50            mov [0x506b],ax
00000AA1  C6066E5000        mov byte [0x506e],0x0
00000AA6  BE8E50            mov si,0x508e
00000AA9  BF7A50            mov di,0x507a
00000AAC  B90300            mov cx,0x3
00000AAF  51                push cx
00000AB0  B90300            mov cx,0x3
00000AB3  51                push cx
00000AB4  B8123B            mov ax,0x3b12
00000AB7  50                push ax
00000AB8  8A05              mov al,[di]
00000ABA  0A4501            or al,[di+0x1]
00000ABD  0A4504            or al,[di+0x4]
00000AC0  0A4505            or al,[di+0x5]
00000AC3  7503              jnz 0xac8
00000AC5  E9F202            jmp 0xdba
00000AC8  F605FF            test byte [di],0xff
00000ACB  740F              jz 0xadc
00000ACD  8A05              mov al,[di]
00000ACF  56                push si
00000AD0  E8CDFC            call 0x7a0
00000AD3  46                inc si
00000AD4  46                inc si
00000AD5  46                inc si
00000AD6  8A04              mov al,[si]
00000AD8  5E                pop si
00000AD9  E91703            jmp 0xdf3
00000ADC  F64501FF          test byte [di+0x1],0xff
00000AE0  740F              jz 0xaf1
00000AE2  8A4501            mov al,[di+0x1]
00000AE5  56                push si
00000AE6  E8B7FC            call 0x7a0
00000AE9  46                inc si
00000AEA  46                inc si
00000AEB  8A04              mov al,[si]
00000AED  5E                pop si
00000AEE  E90203            jmp 0xdf3
00000AF1  F64504FF          test byte [di+0x4],0xff
00000AF5  740E              jz 0xb05
00000AF7  8A4504            mov al,[di+0x4]
00000AFA  56                push si
00000AFB  E8A2FC            call 0x7a0
00000AFE  46                inc si
00000AFF  8A04              mov al,[si]
00000B01  5E                pop si
00000B02  E9EE02            jmp 0xdf3
00000B05  8A4505            mov al,[di+0x5]
00000B08  56                push si
00000B09  E894FC            call 0x7a0
00000B0C  8A0C              mov cl,[si]
00000B0E  5E                pop si
00000B0F  8804              mov [si],al
00000B11  8AC1              mov al,cl
00000B13  E9DD02            jmp 0xdf3
00000B16  FE066E50          inc byte [0x506e]
00000B1A  47                inc di
00000B1B  46                inc si
00000B1C  59                pop cx
00000B1D  E294              loop 0xab3
00000B1F  59                pop cx
00000B20  47                inc di
00000B21  E28C              loop 0xaaf
00000B23  8A1E36FF          mov bl,[0xff36]
00000B27  80E303            and bl,0x3
00000B2A  32FF              xor bh,bh
00000B2C  03DB              add bx,bx
00000B2E  2E8B875A50        mov ax,[cs:bx+0x505a]
00000B33  2EA36750          mov [cs:0x5067],ax
00000B37  2E8E062CFF        mov es,word [cs:0xff2c]
00000B3C  A0E800            mov al,[0xe8]
00000B3F  0A0639FF          or al,[0xff39]
00000B43  0A063AFF          or al,[0xff3a]
00000B47  7403              jz 0xb4c
00000B49  E9C200            jmp 0xc0e
00000B4C  B1FF              mov cl,0xff
00000B4E  BE1761            mov si,0x6117
00000B51  F606C20001        test byte [0xc2],0x1
00000B56  7405              jz 0xb5d
00000B58  32C9              xor cl,cl
00000B5A  BEB961            mov si,0x61b9
00000B5D  F60640FFFF        test byte [0xff40],0xff
00000B62  7442              jz 0xba6
00000B64  FEC1              inc cl
00000B66  751A              jnz 0xb82
00000B68  A03FFF            mov al,[0xff3f]
00000B6B  D0E8              shr al,0x0
00000B6D  B109              mov cl,0x9
00000B6F  F6E1              mul cl
00000B71  50                push ax
00000B72  E83302            call 0xda8
00000B75  B124              mov cl,0x24
00000B77  F6E1              mul cl
00000B79  5E                pop si
00000B7A  03F0              add si,ax
00000B7C  81C6C762          add si,0x62c7
00000B80  EB6D              jmp 0xbef
00000B82  A03FFF            mov al,[0xff3f]
00000B85  D0E8              shr al,0x0
00000B87  B109              mov cl,0x9
00000B89  F6E1              mul cl
00000B8B  052400            add ax,0x24
00000B8E  8A1641FF          mov dl,[0xff41]
00000B92  FECA              dec dl
00000B94  7505              jnz 0xb9b
00000B96  052400            add ax,0x24
00000B99  EB07              jmp 0xba2
00000B9B  FECA              dec dl
00000B9D  7503              jnz 0xba2
00000B9F  B86300            mov ax,0x63
00000BA2  03F0              add si,ax
00000BA4  EB49              jmp 0xbef
00000BA6  E8FF01            call 0xda8
00000BA9  0AC0              or al,al
00000BAB  7424              jz 0xbd1
00000BAD  FEC8              dec al
00000BAF  8AC8              mov cl,al
00000BB1  F606C20001        test byte [0xc2],0x1
00000BB6  7519              jnz 0xbd1
00000BB8  B86C00            mov ax,0x6c
00000BBB  8A1638FF          mov dl,[0xff38]
00000BBF  80E209            and dl,0x9
00000BC2  32F6              xor dh,dh
00000BC4  03C2              add ax,dx
00000BC6  0AC9              or cl,cl
00000BC8  7403              jz 0xbcd
00000BCA  051B00            add ax,0x1b
00000BCD  03F0              add si,ax
00000BCF  EB1E              jmp 0xbef
00000BD1  F60638FFFF        test byte [0xff38],0xff
00000BD6  7536              jnz 0xc0e
00000BD8  A0E700            mov al,[0xe7]
00000BDB  3C80              cmp al,0x80
00000BDD  742F              jz 0xc0e
00000BDF  0402              add al,0x2
00000BE1  2403              and al,0x3
00000BE3  A801              test al,0x1
00000BE5  7527              jnz 0xc0e
00000BE7  B109              mov cl,0x9
00000BE9  F6E1              mul cl
00000BEB  03F0              add si,ax
00000BED  EB14              jmp 0xc03
00000BEF  F60638FFFF        test byte [0xff38],0xff
00000BF4  740D              jz 0xc03
00000BF6  B90600            mov cx,0x6
00000BF9  C6066E5003        mov byte [0x506e],0x3
00000BFE  E86901            call 0xd6a
00000C01  EB0B              jmp 0xc0e
00000C03  B90900            mov cx,0x9
00000C06  C6066E5000        mov byte [0x506e],0x0
00000C0B  E85C01            call 0xd6a
00000C0E  BE0E61            mov si,0x610e
00000C11  F6063AFFFF        test byte [0xff3a],0xff
00000C16  7568              jnz 0xc80
00000C18  BEEA60            mov si,0x60ea
00000C1B  F60639FFFF        test byte [0xff39],0xff
00000C20  7553              jnz 0xc75
00000C22  BE7560            mov si,0x6075
00000C25  F606C20001        test byte [0xc2],0x1
00000C2A  7503              jnz 0xc2f
00000C2C  BE0060            mov si,0x6000
00000C2F  F606E800FF        test byte [0xe8],0xff
00000C34  7405              jz 0xc3b
00000C36  83C65A            add si,0x5a
00000C39  EB3A              jmp 0xc75
00000C3B  B82D00            mov ax,0x2d
00000C3E  F60638FFFF        test byte [0xff38],0xff
00000C43  7539              jnz 0xc7e
00000C45  B83F00            mov ax,0x3f
00000C48  F6063DFF80        test byte [0xff3d],0x80
00000C4D  752F              jnz 0xc7e
00000C4F  8A0E42FF          mov cl,[0xff42]
00000C53  B84800            mov ax,0x48
00000C56  FEC9              dec cl
00000C58  7424              jz 0xc7e
00000C5A  B85100            mov ax,0x51
00000C5D  FEC9              dec cl
00000C5F  741D              jz 0xc7e
00000C61  B83600            mov ax,0x36
00000C64  803E3DFF7F        cmp byte [0xff3d],0x7f
00000C69  7413              jz 0xc7e
00000C6B  B82400            mov ax,0x24
00000C6E  803EE70080        cmp byte [0xe7],0x80
00000C73  7409              jz 0xc7e
00000C75  A0E700            mov al,[0xe7]
00000C78  2403              and al,0x3
00000C7A  B109              mov cl,0x9
00000C7C  F6E1              mul cl
00000C7E  03F0              add si,ax
00000C80  B90900            mov cx,0x9
00000C83  C6066E5000        mov byte [0x506e],0x0
00000C88  E8DF00            call 0xd6a
00000C8B  F606E800FF        test byte [0xe8],0xff
00000C90  7401              jz 0xc93
00000C92  C3                ret
00000C93  B1FF              mov cl,0xff
00000C95  BEB961            mov si,0x61b9
00000C98  F606C20001        test byte [0xc2],0x1
00000C9D  7505              jnz 0xca4
00000C9F  32C9              xor cl,cl
00000CA1  BE1761            mov si,0x6117
00000CA4  A039FF            mov al,[0xff39]
00000CA7  0A063AFF          or al,[0xff3a]
00000CAB  7417              jz 0xcc4
00000CAD  E8F800            call 0xda8
00000CB0  0AC0              or al,al
00000CB2  7501              jnz 0xcb5
00000CB4  C3                ret
00000CB5  FEC8              dec al
00000CB7  D0E8              shr al,0x0
00000CB9  1AC0              sbb al,al
00000CBB  241B              and al,0x1b
00000CBD  047E              add al,0x7e
00000CBF  32E4              xor ah,ah
00000CC1  E98900            jmp 0xd4d
00000CC4  F60640FFFF        test byte [0xff40],0xff
00000CC9  7442              jz 0xd0d
00000CCB  FEC1              inc cl
00000CCD  751A              jnz 0xce9
00000CCF  A03FFF            mov al,[0xff3f]
00000CD2  D0E8              shr al,0x0
00000CD4  B109              mov cl,0x9
00000CD6  F6E1              mul cl
00000CD8  50                push ax
00000CD9  E8CC00            call 0xda8
00000CDC  B124              mov cl,0x24
00000CDE  F6E1              mul cl
00000CE0  5E                pop si
00000CE1  03F0              add si,ax
00000CE3  81C65B62          add si,0x625b
00000CE7  EB66              jmp 0xd4f
00000CE9  A03FFF            mov al,[0xff3f]
00000CEC  D0E8              shr al,0x0
00000CEE  B109              mov cl,0x9
00000CF0  F6E1              mul cl
00000CF2  052400            add ax,0x24
00000CF5  8A1641FF          mov dl,[0xff41]
00000CF9  FECA              dec dl
00000CFB  7505              jnz 0xd02
00000CFD  052400            add ax,0x24
00000D00  EB07              jmp 0xd09
00000D02  FECA              dec dl
00000D04  7503              jnz 0xd09
00000D06  B86300            mov ax,0x63
00000D09  03F0              add si,ax
00000D0B  EB42              jmp 0xd4f
00000D0D  F606C20001        test byte [0xc2],0x1
00000D12  741F              jz 0xd33
00000D14  E89100            call 0xda8
00000D17  0AC0              or al,al
00000D19  7418              jz 0xd33
00000D1B  FEC8              dec al
00000D1D  8AC8              mov cl,al
00000D1F  A038FF            mov al,[0xff38]
00000D22  2409              and al,0x9
00000D24  046C              add al,0x6c
00000D26  32E4              xor ah,ah
00000D28  0AC9              or cl,cl
00000D2A  7403              jz 0xd2f
00000D2C  051B00            add ax,0x1b
00000D2F  03F0              add si,ax
00000D31  EB1C              jmp 0xd4f
00000D33  B81B00            mov ax,0x1b
00000D36  F60638FFFF        test byte [0xff38],0xff
00000D3B  7510              jnz 0xd4d
00000D3D  8A0EE700          mov cl,[0xe7]
00000D41  80F980            cmp cl,0x80
00000D44  7407              jz 0xd4d
00000D46  80E103            and cl,0x3
00000D49  B009              mov al,0x9
00000D4B  F6E1              mul cl
00000D4D  03F0              add si,ax
00000D4F  F60638FFFF        test byte [0xff38],0xff
00000D54  740A              jz 0xd60
00000D56  B90600            mov cx,0x6
00000D59  C6066E5003        mov byte [0x506e],0x3
00000D5E  EB0A              jmp 0xd6a
00000D60  B90900            mov cx,0x9
00000D63  C6066E5000        mov byte [0x506e],0x0
00000D68  EB00              jmp 0xd6a
00000D6A  51                push cx
00000D6B  268A04            mov al,[es:si]
00000D6E  0AC0              or al,al
00000D70  742D              jz 0xd9f
00000D72  06                push es
00000D73  1E                push ds
00000D74  56                push si
00000D75  57                push di
00000D76  B520              mov ch,0x20
00000D78  F6E5              mul ch
00000D7A  053363            add ax,0x6333
00000D7D  8BF0              mov si,ax
00000D7F  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000D84  8BFA              mov di,dx
00000D86  B800A0            mov ax,0xa000
00000D89  8EC0              mov es,ax
00000D8B  2EA06E50          mov al,[cs:0x506e]
00000D8F  B110              mov cl,0x10
00000D91  F6E1              mul cl
00000D93  05903E            add ax,0x3e90
00000D96  8BF8              mov di,ax
00000D98  E8A6F8            call 0x641
00000D9B  5F                pop di
00000D9C  5E                pop si
00000D9D  1F                pop ds
00000D9E  07                pop es
00000D9F  46                inc si
00000DA0  FE066E50          inc byte [0x506e]
00000DA4  59                pop cx
00000DA5  E2C3              loop 0xd6a
00000DA7  C3                ret
00000DA8  A09300            mov al,[0x93]
00000DAB  0AC0              or al,al
00000DAD  7501              jnz 0xdb0
00000DAF  C3                ret
00000DB0  3C04              cmp al,0x4
00000DB2  B001              mov al,0x1
00000DB4  7301              jnc 0xdb7
00000DB6  C3                ret
00000DB7  B002              mov al,0x2
00000DB9  C3                ret
00000DBA  8A04              mov al,[si]
00000DBC  1E                push ds
00000DBD  56                push si
00000DBE  57                push di
00000DBF  50                push ax
00000DC0  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000DC5  B800A0            mov ax,0xa000
00000DC8  8EC0              mov es,ax
00000DCA  2EA06E50          mov al,[cs:0x506e]
00000DCE  B110              mov cl,0x10
00000DD0  F6E1              mul cl
00000DD2  05903E            add ax,0x3e90
00000DD5  8BF8              mov di,ax
00000DD7  58                pop ax
00000DD8  0AC0              or al,al
00000DDA  7410              jz 0xdec
00000DDC  B130              mov cl,0x30
00000DDE  F6E1              mul cl
00000DE0  050080            add ax,0x8000
00000DE3  8BF0              mov si,ax
00000DE5  E880F9            call 0x768
00000DE8  5F                pop di
00000DE9  5E                pop si
00000DEA  1F                pop ds
00000DEB  C3                ret
00000DEC  E898F9            call 0x787
00000DEF  5F                pop di
00000DF0  5E                pop si
00000DF1  1F                pop ds
00000DF2  C3                ret
00000DF3  1E                push ds
00000DF4  56                push si
00000DF5  57                push di
00000DF6  8AC8              mov cl,al
00000DF8  8A04              mov al,[si]
00000DFA  0AC0              or al,al
00000DFC  7903              jns 0xe01
00000DFE  E898F9            call 0x799
00000E01  50                push ax
00000E02  8A1E7050          mov bl,[0x5070]
00000E06  32FF              xor bh,bh
00000E08  03DB              add bx,bx
00000E0A  2E8B975A50        mov dx,[cs:bx+0x505a]
00000E0F  2E89166750        mov [cs:0x5067],dx
00000E14  8AC1              mov al,cl
00000E16  B520              mov ch,0x20
00000E18  F6E5              mul ch
00000E1A  050040            add ax,0x4000
00000E1D  8BF0              mov si,ax
00000E1F  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000E24  B800A0            mov ax,0xa000
00000E27  8EC0              mov es,ax
00000E29  2EA06E50          mov al,[cs:0x506e]
00000E2D  B110              mov cl,0x10
00000E2F  F6E1              mul cl
00000E31  05903E            add ax,0x3e90
00000E34  8BF8              mov di,ax
00000E36  58                pop ax
00000E37  0AC0              or al,al
00000E39  7409              jz 0xe44
00000E3B  8AC8              mov cl,al
00000E3D  E8EFF7            call 0x62f
00000E40  5F                pop di
00000E41  5E                pop si
00000E42  1F                pop ds
00000E43  C3                ret
00000E44  E884F8            call 0x6cb
00000E47  5F                pop di
00000E48  5E                pop si
00000E49  1F                pop ds
00000E4A  C3                ret
00000E4B  8A0E8400          mov cl,[0x84]
00000E4F  B024              mov al,0x24
00000E51  F6E1              mul cl
00000E53  8A0E8300          mov cl,[0x83]
00000E57  80C104            add cl,0x4
00000E5A  32ED              xor ch,ch
00000E5C  03C1              add ax,cx
00000E5E  030631FF          add ax,[0xff31]
00000E62  8BF0              mov si,ax
00000E64  E84208            call 0x16a9
00000E67  BF8E50            mov di,0x508e
00000E6A  0E                push cs
00000E6B  07                pop es
00000E6C  B90300            mov cx,0x3
00000E6F  A5                movsw
00000E70  A4                movsb
00000E71  83C621            add si,0x21
00000E74  E83208            call 0x16a9
00000E77  E2F6              loop 0xe6f
00000E79  C3                ret
00000E7A  A06D50            mov al,[0x506d]
00000E7D  F6D8              neg al
00000E7F  0412              add al,0x12
00000E81  8AC8              mov cl,al
00000E83  F60643FFFF        test byte [0xff43],0xff
00000E88  750D              jnz 0xe97
00000E8A  A08400            mov al,[0x84]
00000E8D  2C02              sub al,0x2
00000E8F  3AC1              cmp al,cl
00000E91  7503              jnz 0xe96
00000E93  E81C03            call 0x11b2
00000E96  C3                ret
00000E97  A08400            mov al,[0x84]
00000E9A  2C05              sub al,0x5
00000E9C  3AC8              cmp cl,al
00000E9E  7301              jnc 0xea1
00000EA0  C3                ret
00000EA1  7506              jnz 0xea9
00000EA3  E8FE00            call 0xfa4
00000EA6  E90903            jmp 0x11b2
00000EA9  040A              add al,0xa
00000EAB  3AC1              cmp al,cl
00000EAD  7401              jz 0xeb0
00000EAF  C3                ret
00000EB0  E9BA01            jmp 0x106d
00000EB3  F60643FFFF        test byte [0xff43],0xff
00000EB8  7501              jnz 0xebb
00000EBA  C3                ret
00000EBB  06                push es
00000EBC  56                push si
00000EBD  57                push di
00000EBE  53                push bx
00000EBF  2E8E062CFF        mov es,word [cs:0xff2c]
00000EC4  FE0646FF          inc byte [0xff46]
00000EC8  A045FF            mov al,[0xff45]
00000ECB  0AC0              or al,al
00000ECD  745C              jz 0xf2b
00000ECF  FEC8              dec al
00000ED1  742D              jz 0xf00
00000ED3  803E46FF05        cmp byte [0xff46],0x5
00000ED8  7203              jc 0xedd
00000EDA  E9B800            jmp 0xf95
00000EDD  32C9              xor cl,cl
00000EDF  BE6EB1            mov si,0xb16e
00000EE2  C706765001FF      mov word [0x5076],0xff01
00000EE8  BA7E02            mov dx,0x27e
00000EEB  F606C20001        test byte [0xc2],0x1
00000EF0  7577              jnz 0xf69
00000EF2  BEBEB0            mov si,0xb0be
00000EF5  C70676500100      mov word [0x5076],0x1
00000EFB  BA8002            mov dx,0x280
00000EFE  EB69              jmp 0xf69
00000F00  803E46FF05        cmp byte [0xff46],0x5
00000F05  7203              jc 0xf0a
00000F07  E98B00            jmp 0xf95
00000F0A  8A1E46FF          mov bl,[0xff46]
00000F0E  FECB              dec bl
00000F10  32FF              xor bh,bh
00000F12  8ACB              mov cl,bl
00000F14  03DB              add bx,bx
00000F16  BF9EB1            mov di,0xb19e
00000F19  BE2EB1            mov si,0xb12e
00000F1C  F606C20001        test byte [0xc2],0x1
00000F21  752E              jnz 0xf51
00000F23  BF8AB1            mov di,0xb18a
00000F26  BE7EB0            mov si,0xb07e
00000F29  EB26              jmp 0xf51
00000F2B  803E46FF07        cmp byte [0xff46],0x7
00000F30  7363              jnc 0xf95
00000F32  8A1E46FF          mov bl,[0xff46]
00000F36  FECB              dec bl
00000F38  32FF              xor bh,bh
00000F3A  8ACB              mov cl,bl
00000F3C  03DB              add bx,bx
00000F3E  BF92B1            mov di,0xb192
00000F41  BECEB0            mov si,0xb0ce
00000F44  F606C20001        test byte [0xc2],0x1
00000F49  7506              jnz 0xf51
00000F4B  BF7EB1            mov di,0xb17e
00000F4E  BE1EB0            mov si,0xb01e
00000F51  268B19            mov bx,[es:bx+di]
00000F54  891E7650          mov [0x5076],bx
00000F58  8AC3              mov al,bl
00000F5A  98                cbw
00000F5B  BA8002            mov dx,0x280
00000F5E  F7EA              imul dx
00000F60  8BD0              mov dx,ax
00000F62  8AC7              mov al,bh
00000F64  98                cbw
00000F65  03C0              add ax,ax
00000F67  03D0              add dx,ax
00000F69  8B3E6B50          mov di,[0x506b]
00000F6D  03FA              add di,dx
00000F6F  F60638FFFF        test byte [0xff38],0xff
00000F74  7404              jz 0xf7a
00000F76  81C78002          add di,0x280
00000F7A  893E7250          mov [0x5072],di
00000F7E  32ED              xor ch,ch
00000F80  03C9              add cx,cx
00000F82  03C9              add cx,cx
00000F84  03C9              add cx,cx
00000F86  03C9              add cx,cx
00000F88  03F1              add si,cx
00000F8A  89367450          mov [0x5074],si
00000F8E  5B                pop bx
00000F8F  5F                pop di
00000F90  5E                pop si
00000F91  07                pop es
00000F92  E9D800            jmp 0x106d
00000F95  C60643FF00        mov byte [0xff43],0x0
00000F9A  C60646FF00        mov byte [0xff46],0x0
00000F9F  5B                pop bx
00000FA0  5F                pop di
00000FA1  5E                pop si
00000FA2  07                pop es
00000FA3  C3                ret
00000FA4  F60644FFFF        test byte [0xff44],0xff
00000FA9  7501              jnz 0xfac
00000FAB  C3                ret
00000FAC  06                push es
00000FAD  1E                push ds
00000FAE  57                push di
00000FAF  56                push si
00000FB0  53                push bx
00000FB1  E83D00            call 0xff1
00000FB4  5B                pop bx
00000FB5  5E                pop si
00000FB6  5F                pop di
00000FB7  1F                pop ds
00000FB8  07                pop es
00000FB9  C60644FF00        mov byte [0xff44],0x0
00000FBE  C3                ret
00000FBF  2E8B367250        mov si,[cs:0x5072]
00000FC4  B800A0            mov ax,0xa000
00000FC7  8EC0              mov es,ax
00000FC9  8ED8              mov ds,ax
00000FCB  BF203F            mov di,0x3f20
00000FCE  BAC403            mov dx,0x3c4
00000FD1  B80207            mov ax,0x702
00000FD4  EF                out dx,ax
00000FD5  BACE03            mov dx,0x3ce
00000FD8  B80501            mov ax,0x105
00000FDB  EF                out dx,ax
00000FDC  B92000            mov cx,0x20
00000FDF  A4                movsb
00000FE0  A4                movsb
00000FE1  A4                movsb
00000FE2  A4                movsb
00000FE3  A4                movsb
00000FE4  A4                movsb
00000FE5  A4                movsb
00000FE6  A4                movsb
00000FE7  83C648            add si,0x48
00000FEA  E2F3              loop 0xfdf
00000FEC  B80500            mov ax,0x5
00000FEF  EF                out dx,ax
00000FF0  C3                ret
00000FF1  2E8B3E7250        mov di,[cs:0x5072]
00000FF6  B800A0            mov ax,0xa000
00000FF9  8EC0              mov es,ax
00000FFB  8ED8              mov ds,ax
00000FFD  BE203F            mov si,0x3f20
00001000  BAC403            mov dx,0x3c4
00001003  B80207            mov ax,0x702
00001006  EF                out dx,ax
00001007  BACE03            mov dx,0x3ce
0000100A  B80501            mov ax,0x105
0000100D  EF                out dx,ax
0000100E  B92000            mov cx,0x20
00001011  A4                movsb
00001012  A4                movsb
00001013  A4                movsb
00001014  A4                movsb
00001015  A4                movsb
00001016  A4                movsb
00001017  A4                movsb
00001018  A4                movsb
00001019  83C748            add di,0x48
0000101C  E2F3              loop 0x1011
0000101E  B80500            mov ax,0x5
00001021  EF                out dx,ax
00001022  C3                ret
00001023  A08400            mov al,[0x84]
00001026  02067650          add al,[0x5076]
0000102A  243F              and al,0x3f
0000102C  B124              mov cl,0x24
0000102E  F6E1              mul cl
00001030  8A0E8300          mov cl,[0x83]
00001034  020E7750          add cl,[0x5077]
00001038  80C104            add cl,0x4
0000103B  32ED              xor ch,ch
0000103D  03C1              add ax,cx
0000103F  8BF0              mov si,ax
00001041  033631FF          add si,[0xff31]
00001045  E86106            call 0x16a9
00001048  B90400            mov cx,0x4
0000104B  51                push cx
0000104C  B90400            mov cx,0x4
0000104F  51                push cx
00001050  8A1C              mov bl,[si]
00001052  46                inc si
00001053  80E37F            and bl,0x7f
00001056  32FF              xor bh,bh
00001058  03DB              add bx,bx
0000105A  C78797500000      mov word [bx+0x5097],0x0
00001060  59                pop cx
00001061  E2EC              loop 0x104f
00001063  83C620            add si,0x20
00001066  E84006            call 0x16a9
00001069  59                pop cx
0000106A  E2DF              loop 0x104b
0000106C  C3                ret
0000106D  F60643FFFF        test byte [0xff43],0xff
00001072  7501              jnz 0x1075
00001074  C3                ret
00001075  C60644FFFF        mov byte [0xff44],0xff
0000107A  06                push es
0000107B  1E                push ds
0000107C  57                push di
0000107D  56                push si
0000107E  53                push bx
0000107F  E8A1FF            call 0x1023
00001082  E83AFF            call 0xfbf
00001085  2E8A1E9200        mov bl,[cs:0x92]
0000108A  FECB              dec bl
0000108C  32FF              xor bh,bh
0000108E  2E8A879941        mov al,[cs:bx+0x4199]
00001093  2EA27150          mov [cs:0x5071],al
00001097  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000109C  B800A0            mov ax,0xa000
0000109F  8EC0              mov es,ax
000010A1  2E8B3E7250        mov di,[cs:0x5072]
000010A6  2E8B367450        mov si,[cs:0x5074]
000010AB  BAC403            mov dx,0x3c4
000010AE  B80207            mov ax,0x702
000010B1  EF                out dx,ax
000010B2  BACE03            mov dx,0x3ce
000010B5  B80502            mov ax,0x205
000010B8  EF                out dx,ax
000010B9  B008              mov al,0x8
000010BB  EE                out dx,al
000010BC  42                inc dx
000010BD  B90400            mov cx,0x4
000010C0  51                push cx
000010C1  B90400            mov cx,0x4
000010C4  51                push cx
000010C5  AC                lodsb
000010C6  56                push si
000010C7  BB8002            mov bx,0x280
000010CA  3CFF              cmp al,0xff
000010CC  7503              jnz 0x10d1
000010CE  E9A600            jmp 0x1177
000010D1  32E4              xor ah,ah
000010D3  03C0              add ax,ax
000010D5  03C0              add ax,ax
000010D7  03C0              add ax,ax
000010D9  03C0              add ax,ax
000010DB  8BF0              mov si,ax
000010DD  033600B0          add si,[0xb000]
000010E1  2E8A0E7150        mov cl,[cs:0x5071]
000010E6  BB5000            mov bx,0x50
000010E9  AD                lodsw
000010EA  EE                out dx,al
000010EB  8AC1              mov al,cl
000010ED  268605            xchg al,[es:di]
000010F0  8AC4              mov al,ah
000010F2  EE                out dx,al
000010F3  8AC1              mov al,cl
000010F5  26864501          xchg al,[es:di+0x1]
000010F9  03FB              add di,bx
000010FB  AD                lodsw
000010FC  EE                out dx,al
000010FD  8AC1              mov al,cl
000010FF  268605            xchg al,[es:di]
00001102  8AC4              mov al,ah
00001104  EE                out dx,al
00001105  8AC1              mov al,cl
00001107  26864501          xchg al,[es:di+0x1]
0000110B  03FB              add di,bx
0000110D  AD                lodsw
0000110E  EE                out dx,al
0000110F  8AC1              mov al,cl
00001111  268605            xchg al,[es:di]
00001114  8AC4              mov al,ah
00001116  EE                out dx,al
00001117  8AC1              mov al,cl
00001119  26864501          xchg al,[es:di+0x1]
0000111D  03FB              add di,bx
0000111F  AD                lodsw
00001120  EE                out dx,al
00001121  8AC1              mov al,cl
00001123  268605            xchg al,[es:di]
00001126  8AC4              mov al,ah
00001128  EE                out dx,al
00001129  8AC1              mov al,cl
0000112B  26864501          xchg al,[es:di+0x1]
0000112F  03FB              add di,bx
00001131  AD                lodsw
00001132  EE                out dx,al
00001133  8AC1              mov al,cl
00001135  268605            xchg al,[es:di]
00001138  8AC4              mov al,ah
0000113A  EE                out dx,al
0000113B  8AC1              mov al,cl
0000113D  26864501          xchg al,[es:di+0x1]
00001141  03FB              add di,bx
00001143  AD                lodsw
00001144  EE                out dx,al
00001145  8AC1              mov al,cl
00001147  268605            xchg al,[es:di]
0000114A  8AC4              mov al,ah
0000114C  EE                out dx,al
0000114D  8AC1              mov al,cl
0000114F  26864501          xchg al,[es:di+0x1]
00001153  03FB              add di,bx
00001155  AD                lodsw
00001156  EE                out dx,al
00001157  8AC1              mov al,cl
00001159  268605            xchg al,[es:di]
0000115C  8AC4              mov al,ah
0000115E  EE                out dx,al
0000115F  8AC1              mov al,cl
00001161  26864501          xchg al,[es:di+0x1]
00001165  03FB              add di,bx
00001167  AD                lodsw
00001168  EE                out dx,al
00001169  8AC1              mov al,cl
0000116B  268605            xchg al,[es:di]
0000116E  8AC4              mov al,ah
00001170  EE                out dx,al
00001171  8AC1              mov al,cl
00001173  26864501          xchg al,[es:di+0x1]
00001177  03FB              add di,bx
00001179  5E                pop si
0000117A  59                pop cx
0000117B  E202              loop 0x117f
0000117D  EB03              jmp 0x1182
0000117F  E942FF            jmp 0x10c4
00001182  81C702F6          add di,0xf602
00001186  59                pop cx
00001187  E202              loop 0x118b
00001189  EB03              jmp 0x118e
0000118B  E932FF            jmp 0x10c0
0000118E  4A                dec dx
0000118F  B80500            mov ax,0x5
00001192  EF                out dx,ax
00001193  B808FF            mov ax,0xff08
00001196  EF                out dx,ax
00001197  5B                pop bx
00001198  5E                pop si
00001199  5F                pop di
0000119A  1F                pop ds
0000119B  07                pop es
0000119C  C3                ret
0000119D  0104              add [si],ax
0000119F  0301              add ax,[bx+di]
000011A1  0406              add al,0x6
000011A3  B050              mov al,0x50
000011A5  F6E3              mul bl
000011A7  8ADF              mov bl,bh
000011A9  32FF              xor bh,bh
000011AB  03C3              add ax,bx
000011AD  A36B50            mov [0x506b],ax
000011B0  EB0D              jmp 0x11bf
000011B2  F60637FFFF        test byte [0xff37],0xff
000011B7  7401              jz 0x11ba
000011B9  C3                ret
000011BA  C60637FFFF        mov byte [0xff37],0xff
000011BF  06                push es
000011C0  1E                push ds
000011C1  56                push si
000011C2  57                push di
000011C3  53                push bx
000011C4  B800A0            mov ax,0xa000
000011C7  8EC0              mov es,ax
000011C9  8ED8              mov ds,ax
000011CB  BE903E            mov si,0x3e90
000011CE  2E8B3E6B50        mov di,[cs:0x506b]
000011D3  B90300            mov cx,0x3
000011D6  51                push cx
000011D7  B90300            mov cx,0x3
000011DA  51                push cx
000011DB  57                push di
000011DC  E851F5            call 0x730
000011DF  5F                pop di
000011E0  47                inc di
000011E1  47                inc di
000011E2  59                pop cx
000011E3  E2F5              loop 0x11da
000011E5  81C77A02          add di,0x27a
000011E9  59                pop cx
000011EA  E2EA              loop 0x11d6
000011EC  5B                pop bx
000011ED  5F                pop di
000011EE  5E                pop si
000011EF  1F                pop ds
000011F0  07                pop es
000011F1  C3                ret
000011F2  1E                push ds
000011F3  56                push si
000011F4  B130              mov cl,0x30
000011F6  F6E1              mul cl
000011F8  050080            add ax,0x8000
000011FB  8BF0              mov si,ax
000011FD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001202  BAC403            mov dx,0x3c4
00001205  B80207            mov ax,0x702
00001208  EF                out dx,ax
00001209  BACE03            mov dx,0x3ce
0000120C  B80502            mov ax,0x205
0000120F  EF                out dx,ax
00001210  B800A0            mov ax,0xa000
00001213  8EC0              mov es,ax
00001215  B90800            mov cx,0x8
00001218  51                push cx
00001219  B80300            mov ax,0x3
0000121C  EF                out dx,ax
0000121D  B008              mov al,0x8
0000121F  EE                out dx,al
00001220  42                inc dx
00001221  AD                lodsw
00001222  8BC8              mov cx,ax
00001224  AD                lodsw
00001225  8BD8              mov bx,ax
00001227  AD                lodsw
00001228  8BE8              mov bp,ax
0000122A  0BC1              or ax,cx
0000122C  0BC3              or ax,bx
0000122E  EE                out dx,al
0000122F  32C0              xor al,al
00001231  268605            xchg al,[es:di]
00001234  8AC4              mov al,ah
00001236  EE                out dx,al
00001237  32C0              xor al,al
00001239  26864501          xchg al,[es:di+0x1]
0000123D  4A                dec dx
0000123E  B80310            mov ax,0x1003
00001241  EF                out dx,ax
00001242  B008              mov al,0x8
00001244  EE                out dx,al
00001245  42                inc dx
00001246  8AC1              mov al,cl
00001248  EE                out dx,al
00001249  B001              mov al,0x1
0000124B  268605            xchg al,[es:di]
0000124E  8AC5              mov al,ch
00001250  EE                out dx,al
00001251  B001              mov al,0x1
00001253  26864501          xchg al,[es:di+0x1]
00001257  8AC3              mov al,bl
00001259  EE                out dx,al
0000125A  B002              mov al,0x2
0000125C  268605            xchg al,[es:di]
0000125F  8AC7              mov al,bh
00001261  EE                out dx,al
00001262  B002              mov al,0x2
00001264  26864501          xchg al,[es:di+0x1]
00001268  8BC5              mov ax,bp
0000126A  EE                out dx,al
0000126B  B004              mov al,0x4
0000126D  268605            xchg al,[es:di]
00001270  8AC4              mov al,ah
00001272  EE                out dx,al
00001273  B004              mov al,0x4
00001275  26864501          xchg al,[es:di+0x1]
00001279  4A                dec dx
0000127A  83C750            add di,0x50
0000127D  59                pop cx
0000127E  E298              loop 0x1218
00001280  B80300            mov ax,0x3
00001283  EF                out dx,ax
00001284  B005              mov al,0x5
00001286  EF                out dx,ax
00001287  B808FF            mov ax,0xff08
0000128A  EF                out dx,ax
0000128B  5E                pop si
0000128C  1F                pop ds
0000128D  C3                ret
0000128E  C60644FF00        mov byte [0xff44],0x0
00001293  B800A0            mov ax,0xa000
00001296  8EC0              mov es,ax
00001298  C606785008        mov byte [0x5078],0x8
0000129D  C70669506C04      mov word [0x5069],0x46c
000012A3  C6061AFF00        mov byte [0xff1a],0x0
000012A8  8B3631FF          mov si,[0xff31]
000012AC  BF00E9            mov di,0xe900
000012AF  B91200            mov cx,0x12
000012B2  51                push cx
000012B3  83C604            add si,0x4
000012B6  33DB              xor bx,bx
000012B8  B91C00            mov cx,0x1c
000012BB  51                push cx
000012BC  AC                lodsb
000012BD  E82A00            call 0x12ea
000012C0  47                inc di
000012C1  FEC3              inc bl
000012C3  59                pop cx
000012C4  E2F5              loop 0x12bb
000012C6  83C604            add si,0x4
000012C9  E8DD03            call 0x16a9
000012CC  810669508002      add word [0x5069],0x280
000012D2  59                pop cx
000012D3  E2DD              loop 0x12b2
000012D5  803E1AFF10        cmp byte [0xff1a],0x10
000012DA  72F9              jc 0x12d5
000012DC  FE0E7850          dec byte [0x5078]
000012E0  75BB              jnz 0x129d
000012E2  BACE03            mov dx,0x3ce
000012E5  B808FF            mov ax,0xff08
000012E8  EF                out dx,ax
000012E9  C3                ret
000012EA  803DFF            cmp byte [di],0xff
000012ED  7501              jnz 0x12f0
000012EF  C3                ret
000012F0  803DFC            cmp byte [di],0xfc
000012F3  7501              jnz 0x12f6
000012F5  C3                ret
000012F6  1E                push ds
000012F7  57                push di
000012F8  56                push si
000012F9  53                push bx
000012FA  50                push ax
000012FB  8A267850          mov ah,[0x5078]
000012FF  FECC              dec ah
00001301  D0EC              shr ah,0x0
00001303  D0EC              shr ah,0x0
00001305  D0EC              shr ah,0x0
00001307  1AE4              sbb ah,ah
00001309  80F4CC            xor ah,0xcc
0000130C  BACE03            mov dx,0x3ce
0000130F  B008              mov al,0x8
00001311  EF                out dx,ax
00001312  03DB              add bx,bx
00001314  031E6950          add bx,[0x5069]
00001318  8BFB              mov di,bx
0000131A  58                pop ax
0000131B  A8FF              test al,0xff
0000131D  745E              jz 0x137d
0000131F  B130              mov cl,0x30
00001321  F6E1              mul cl
00001323  050080            add ax,0x8000
00001326  8BF0              mov si,ax
00001328  2E8E1E2CFF        mov ds,word [cs:0xff2c]
0000132D  BAC403            mov dx,0x3c4
00001330  B002              mov al,0x2
00001332  EE                out dx,al
00001333  42                inc dx
00001334  56                push si
00001335  57                push di
00001336  2EA07850          mov al,[cs:0x5078]
0000133A  2403              and al,0x3
0000133C  F6D8              neg al
0000133E  0403              add al,0x3
00001340  E87200            call 0x13b5
00001343  E81300            call 0x1359
00001346  5F                pop di
00001347  5E                pop si
00001348  2EA07850          mov al,[cs:0x5078]
0000134C  E86600            call 0x13b5
0000134F  47                inc di
00001350  46                inc si
00001351  E80500            call 0x1359
00001354  5B                pop bx
00001355  5E                pop si
00001356  5F                pop di
00001357  1F                pop ds
00001358  C3                ret
00001359  B90200            mov cx,0x2
0000135C  B001              mov al,0x1
0000135E  EE                out dx,al
0000135F  AC                lodsb
00001360  268605            xchg al,[es:di]
00001363  46                inc si
00001364  B002              mov al,0x2
00001366  EE                out dx,al
00001367  AC                lodsb
00001368  268605            xchg al,[es:di]
0000136B  46                inc si
0000136C  B004              mov al,0x4
0000136E  EE                out dx,al
0000136F  AC                lodsb
00001370  268605            xchg al,[es:di]
00001373  81C74001          add di,0x140
00001377  83C613            add si,0x13
0000137A  E2E0              loop 0x135c
0000137C  C3                ret
0000137D  BAC403            mov dx,0x3c4
00001380  B80207            mov ax,0x702
00001383  EF                out dx,ax
00001384  57                push di
00001385  2EA07850          mov al,[cs:0x5078]
00001389  2403              and al,0x3
0000138B  F6D8              neg al
0000138D  0403              add al,0x3
0000138F  E82300            call 0x13b5
00001392  E81100            call 0x13a6
00001395  5F                pop di
00001396  2EA07850          mov al,[cs:0x5078]
0000139A  E81800            call 0x13b5
0000139D  47                inc di
0000139E  E80500            call 0x13a6
000013A1  5B                pop bx
000013A2  5E                pop si
000013A3  5F                pop di
000013A4  1F                pop ds
000013A5  C3                ret
000013A6  32C0              xor al,al
000013A8  268605            xchg al,[es:di]
000013AB  81C74001          add di,0x140
000013AF  32C0              xor al,al
000013B1  268605            xchg al,[es:di]
000013B4  C3                ret
000013B5  2403              and al,0x3
000013B7  02C0              add al,al
000013B9  32E4              xor ah,ah
000013BB  BBC843            mov bx,0x43c8
000013BE  03D8              add bx,ax
000013C0  2E8A07            mov al,[cs:bx]
000013C3  03F0              add si,ax
000013C5  2E8A4701          mov al,[cs:bx+0x1]
000013C9  03F8              add di,ax
000013CB  C3                ret
000013CC  0000              add [bx+si],al
000013CE  06                push es
000013CF  50                push ax
000013D0  0CA0              or al,0xa0
000013D2  12F0              adc dh,al
000013D4  A08300            mov al,[0x83]
000013D7  02C0              add al,al
000013D9  02C0              add al,al
000013DB  02C0              add al,al
000013DD  8A268400          mov ah,[0x84]
000013E1  02E4              add ah,ah
000013E3  02E4              add ah,ah
000013E5  02E4              add ah,ah
000013E7  A26750            mov [0x5067],al
000013EA  88266850          mov [0x5068],ah
000013EE  E82302            call 0x1614
000013F1  C606785006        mov byte [0x5078],0x6
000013F6  E80B00            call 0x1404
000013F9  C606785000        mov byte [0x5078],0x0
000013FE  E80300            call 0x1404
00001401  E91002            jmp 0x1614
00001404  A06750            mov al,[0x5067]
00001407  FEC8              dec al
00001409  8AD8              mov bl,al
0000140B  0419              add al,0x19
0000140D  8AD0              mov dl,al
0000140F  A06850            mov al,[0x5068]
00001412  FEC8              dec al
00001414  8AF8              mov bh,al
00001416  0419              add al,0x19
00001418  8AF0              mov dh,al
0000141A  E82F00            call 0x144c
0000141D  A06750            mov al,[0x5067]
00001420  2C05              sub al,0x5
00001422  8AD8              mov bl,al
00001424  0421              add al,0x21
00001426  8AD0              mov dl,al
00001428  A06850            mov al,[0x5068]
0000142B  2C05              sub al,0x5
0000142D  8AF8              mov bh,al
0000142F  0421              add al,0x21
00001431  8AF0              mov dh,al
00001433  E81600            call 0x144c
00001436  A06750            mov al,[0x5067]
00001439  2C09              sub al,0x9
0000143B  8AD8              mov bl,al
0000143D  0429              add al,0x29
0000143F  8AD0              mov dl,al
00001441  A06850            mov al,[0x5068]
00001444  2C09              sub al,0x9
00001446  8AF8              mov bh,al
00001448  0429              add al,0x29
0000144A  8AF0              mov dh,al
0000144C  B90900            mov cx,0x9
0000144F  51                push cx
00001450  52                push dx
00001451  53                push bx
00001452  E82900            call 0x147e
00001455  5B                pop bx
00001456  5A                pop dx
00001457  80EB0C            sub bl,0xc
0000145A  7302              jnc 0x145e
0000145C  32DB              xor bl,bl
0000145E  80EF0C            sub bh,0xc
00001461  7302              jnc 0x1465
00001463  32FF              xor bh,bh
00001465  80C20C            add dl,0xc
00001468  7302              jnc 0x146c
0000146A  B2FF              mov dl,0xff
0000146C  80C60C            add dh,0xc
0000146F  7302              jnc 0x1473
00001471  B6FF              mov dh,0xff
00001473  52                push dx
00001474  53                push bx
00001475  E86901            call 0x15e1
00001478  5B                pop bx
00001479  5A                pop dx
0000147A  59                pop cx
0000147B  E2D2              loop 0x144f
0000147D  C3                ret
0000147E  52                push dx
0000147F  B800A0            mov ax,0xa000
00001482  8EC0              mov es,ax
00001484  BAC403            mov dx,0x3c4
00001487  B80207            mov ax,0x702
0000148A  EF                out dx,ax
0000148B  BACE03            mov dx,0x3ce
0000148E  B80502            mov ax,0x205
00001491  EF                out dx,ax
00001492  5A                pop dx
00001493  52                push dx
00001494  53                push bx
00001495  8AF7              mov dh,bh
00001497  E88800            call 0x1522
0000149A  5B                pop bx
0000149B  5A                pop dx
0000149C  52                push dx
0000149D  53                push bx
0000149E  8AFE              mov bh,dh
000014A0  E87F00            call 0x1522
000014A3  5B                pop bx
000014A4  5A                pop dx
000014A5  52                push dx
000014A6  53                push bx
000014A7  8AD3              mov dl,bl
000014A9  E81300            call 0x14bf
000014AC  5B                pop bx
000014AD  5A                pop dx
000014AE  8ADA              mov bl,dl
000014B0  E80C00            call 0x14bf
000014B3  BACE03            mov dx,0x3ce
000014B6  B80500            mov ax,0x5
000014B9  EF                out dx,ax
000014BA  B808FF            mov ax,0xff08
000014BD  EF                out dx,ax
000014BE  C3                ret
000014BF  3AF7              cmp dh,bh
000014C1  7302              jnc 0x14c5
000014C3  87D3              xchg dx,bx
000014C5  0ADB              or bl,bl
000014C7  7501              jnz 0x14ca
000014C9  C3                ret
000014CA  80FBDF            cmp bl,0xdf
000014CD  7201              jc 0x14d0
000014CF  C3                ret
000014D0  0AFF              or bh,bh
000014D2  7502              jnz 0x14d6
000014D4  B701              mov bh,0x1
000014D6  80FE8F            cmp dh,0x8f
000014D9  7202              jc 0x14dd
000014DB  B68E              mov dh,0x8e
000014DD  8AC6              mov al,dh
000014DF  2AC7              sub al,bh
000014E1  FEC0              inc al
000014E3  50                push ax
000014E4  8AC7              mov al,bh
000014E6  E8EE00            call 0x15d7
000014E9  8AC3              mov al,bl
000014EB  D0E8              shr al,0x0
000014ED  D0E8              shr al,0x0
000014EF  32E4              xor ah,ah
000014F1  03F8              add di,ax
000014F3  59                pop cx
000014F4  32ED              xor ch,ch
000014F6  80E303            and bl,0x3
000014F9  7413              jz 0x150e
000014FB  80FB02            cmp bl,0x2
000014FE  720A              jc 0x150a
00001500  7404              jz 0x1506
00001502  B403              mov ah,0x3
00001504  EB0A              jmp 0x1510
00001506  B40C              mov ah,0xc
00001508  EB06              jmp 0x1510
0000150A  B430              mov ah,0x30
0000150C  EB02              jmp 0x1510
0000150E  B4C0              mov ah,0xc0
00001510  BACE03            mov dx,0x3ce
00001513  B008              mov al,0x8
00001515  EF                out dx,ax
00001516  A07850            mov al,[0x5078]
00001519  268605            xchg al,[es:di]
0000151C  83C750            add di,0x50
0000151F  E2F5              loop 0x1516
00001521  C3                ret
00001522  3AD3              cmp dl,bl
00001524  7302              jnc 0x1528
00001526  87D3              xchg dx,bx
00001528  0AFF              or bh,bh
0000152A  7501              jnz 0x152d
0000152C  C3                ret
0000152D  80FF8F            cmp bh,0x8f
00001530  7201              jc 0x1533
00001532  C3                ret
00001533  0ADB              or bl,bl
00001535  7502              jnz 0x1539
00001537  B301              mov bl,0x1
00001539  80FADF            cmp dl,0xdf
0000153C  7202              jc 0x1540
0000153E  B2DE              mov dl,0xde
00001540  8AC7              mov al,bh
00001542  E89200            call 0x15d7
00001545  8AC3              mov al,bl
00001547  D0E8              shr al,0x0
00001549  D0E8              shr al,0x0
0000154B  32E4              xor ah,ah
0000154D  03F8              add di,ax
0000154F  8AE2              mov ah,dl
00001551  D0EC              shr ah,0x0
00001553  D0EC              shr ah,0x0
00001555  2AE0              sub ah,al
00001557  8ACC              mov cl,ah
00001559  32ED              xor ch,ch
0000155B  80E303            and bl,0x3
0000155E  7413              jz 0x1573
00001560  80FB02            cmp bl,0x2
00001563  720A              jc 0x156f
00001565  7404              jz 0x156b
00001567  B003              mov al,0x3
00001569  EB0A              jmp 0x1575
0000156B  B00F              mov al,0xf
0000156D  EB06              jmp 0x1575
0000156F  B03F              mov al,0x3f
00001571  EB02              jmp 0x1575
00001573  B0FF              mov al,0xff
00001575  80E203            and dl,0x3
00001578  7413              jz 0x158d
0000157A  80FA02            cmp dl,0x2
0000157D  720A              jc 0x1589
0000157F  7404              jz 0x1585
00001581  B4FF              mov ah,0xff
00001583  EB0A              jmp 0x158f
00001585  B4FC              mov ah,0xfc
00001587  EB06              jmp 0x158f
00001589  B4F0              mov ah,0xf0
0000158B  EB02              jmp 0x158f
0000158D  B4C0              mov ah,0xc0
0000158F  50                push ax
00001590  BACE03            mov dx,0x3ce
00001593  B008              mov al,0x8
00001595  EE                out dx,al
00001596  42                inc dx
00001597  58                pop ax
00001598  E333              jcxz 0x15cd
0000159A  49                dec cx
0000159B  E31E              jcxz 0x15bb
0000159D  EE                out dx,al
0000159E  A07850            mov al,[0x5078]
000015A1  268605            xchg al,[es:di]
000015A4  47                inc di
000015A5  B0FF              mov al,0xff
000015A7  EE                out dx,al
000015A8  A07850            mov al,[0x5078]
000015AB  268605            xchg al,[es:di]
000015AE  47                inc di
000015AF  E2F7              loop 0x15a8
000015B1  8AC4              mov al,ah
000015B3  EE                out dx,al
000015B4  A07850            mov al,[0x5078]
000015B7  268605            xchg al,[es:di]
000015BA  C3                ret
000015BB  EE                out dx,al
000015BC  A07850            mov al,[0x5078]
000015BF  268605            xchg al,[es:di]
000015C2  47                inc di
000015C3  8AC4              mov al,ah
000015C5  EE                out dx,al
000015C6  A07850            mov al,[0x5078]
000015C9  268605            xchg al,[es:di]
000015CC  C3                ret
000015CD  22C4              and al,ah
000015CF  EE                out dx,al
000015D0  A07850            mov al,[0x5078]
000015D3  268605            xchg al,[es:di]
000015D6  C3                ret
000015D7  B450              mov ah,0x50
000015D9  F6E4              mul ah
000015DB  BF6C04            mov di,0x46c
000015DE  03F8              add di,ax
000015E0  C3                ret
000015E1  8A0E33FF          mov cl,[0xff33]
000015E5  D0E9              shr cl,0x0
000015E7  FEC1              inc cl
000015E9  B001              mov al,0x1
000015EB  F6E1              mul cl
000015ED  50                push ax
000015EE  2EFF161001        call word near [cs:0x110]
000015F3  2EFF161201        call word near [cs:0x112]
000015F8  2EFF161401        call word near [cs:0x114]
000015FD  2EFF161601        call word near [cs:0x116]
00001602  2EFF161801        call word near [cs:0x118]
00001607  58                pop ax
00001608  38061AFF          cmp [0xff1a],al
0000160C  72DF              jc 0x15ed
0000160E  C6061AFF00        mov byte [0xff1a],0x0
00001613  C3                ret
00001614  B800A0            mov ax,0xa000
00001617  8EC0              mov es,ax
00001619  BAC403            mov dx,0x3c4
0000161C  B80207            mov ax,0x702
0000161F  EF                out dx,ax
00001620  BACE03            mov dx,0x3ce
00001623  B80318            mov ax,0x1803
00001626  EF                out dx,ax
00001627  B80502            mov ax,0x205
0000162A  EF                out dx,ax
0000162B  BF6C04            mov di,0x46c
0000162E  B90800            mov cx,0x8
00001631  51                push cx
00001632  57                push di
00001633  B91200            mov cx,0x12
00001636  51                push cx
00001637  57                push di
00001638  B93800            mov cx,0x38
0000163B  B002              mov al,0x2
0000163D  268605            xchg al,[es:di]
00001640  47                inc di
00001641  E2F8              loop 0x163b
00001643  5F                pop di
00001644  81C78002          add di,0x280
00001648  59                pop cx
00001649  E2EB              loop 0x1636
0000164B  5F                pop di
0000164C  83C750            add di,0x50
0000164F  59                pop cx
00001650  E2DF              loop 0x1631
00001652  BACE03            mov dx,0x3ce
00001655  B80300            mov ax,0x3
00001658  EF                out dx,ax
00001659  B80500            mov ax,0x5
0000165C  EF                out dx,ax
0000165D  C3                ret
0000165E  243F              and al,0x3f
00001660  8ADC              mov bl,ah
00001662  32E4              xor ah,ah
00001664  BA8002            mov dx,0x280
00001667  F7E2              mul dx
00001669  80EB04            sub bl,0x4
0000166C  32FF              xor bh,bh
0000166E  03DB              add bx,bx
00001670  03C3              add ax,bx
00001672  8BF8              mov di,ax
00001674  81C76C04          add di,0x46c
00001678  C3                ret
00001679  8A1E9D00          mov bl,[0x9d]
0000167D  0ADB              or bl,bl
0000167F  7501              jnz 0x1682
00001681  C3                ret
00001682  80FB07            cmp bl,0x7
00001685  7501              jnz 0x1688
00001687  C3                ret
00001688  FECB              dec bl
0000168A  32FF              xor bh,bh
0000168C  03DB              add bx,bx
0000168E  1E                push ds
0000168F  8CC8              mov ax,cs
00001691  050010            add ax,0x1000
00001694  8EC0              mov es,ax
00001696  8CC8              mov ax,cs
00001698  050020            add ax,0x2000
0000169B  8ED8              mov ds,ax
0000169D  8B37              mov si,[bx]
0000169F  BF5093            mov di,0x9350
000016A2  B98004            mov cx,0x480
000016A5  F3A4              rep movsb
000016A7  1F                pop ds
000016A8  C3                ret
000016A9  81FE00E9          cmp si,0xe900
000016AD  7301              jnc 0x16b0
000016AF  C3                ret
000016B0  81EE0009          sub si,0x900
000016B4  C3                ret
000016B5  81FE00E0          cmp si,0xe000
000016B9  7201              jc 0x16bc
000016BB  C3                ret
000016BC  81C60009          add si,0x900
000016C0  C3                ret
000016C1  56                push si
000016C2  1E                push ds
000016C3  BE2E47            mov si,0x472e
000016C6  BF8C0C            mov di,0xc8c
000016C9  B800A0            mov ax,0xa000
000016CC  8EC0              mov es,ax
000016CE  BAC403            mov dx,0x3c4
000016D1  B80207            mov ax,0x702
000016D4  EF                out dx,ax
000016D5  BACE03            mov dx,0x3ce
000016D8  B80502            mov ax,0x205
000016DB  EF                out dx,ax
000016DC  B008              mov al,0x8
000016DE  EE                out dx,al
000016DF  42                inc dx
000016E0  B90500            mov cx,0x5
000016E3  51                push cx
000016E4  B91C00            mov cx,0x1c
000016E7  51                push cx
000016E8  AC                lodsb
000016E9  1E                push ds
000016EA  56                push si
000016EB  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000016F0  32E4              xor ah,ah
000016F2  03C0              add ax,ax
000016F4  03C0              add ax,ax
000016F6  03C0              add ax,ax
000016F8  03C0              add ax,ax
000016FA  050040            add ax,0x4000
000016FD  8BF0              mov si,ax
000016FF  57                push di
00001700  B90800            mov cx,0x8
00001703  AC                lodsb
00001704  EE                out dx,al
00001705  B002              mov al,0x2
00001707  268605            xchg al,[es:di]
0000170A  47                inc di
0000170B  AC                lodsb
0000170C  EE                out dx,al
0000170D  B002              mov al,0x2
0000170F  268605            xchg al,[es:di]
00001712  83C74F            add di,0x4f
00001715  E2EC              loop 0x1703
00001717  5F                pop di
00001718  47                inc di
00001719  47                inc di
0000171A  5E                pop si
0000171B  1F                pop ds
0000171C  59                pop cx
0000171D  E2C8              loop 0x16e7
0000171F  81C74802          add di,0x248
00001723  59                pop cx
00001724  E2BD              loop 0x16e3
00001726  4A                dec dx
00001727  B80500            mov ax,0x5
0000172A  EF                out dx,ax
0000172B  B808FF            mov ax,0xff08
0000172E  EF                out dx,ax
0000172F  1F                pop ds
00001730  5E                pop si
00001731  C3                ret
00001732  0001              add [bx+di],al
00001734  0204              add al,[si]
00001736  07                pop es
00001737  090D              or [di],cx
00001739  1004              adc [si],al
0000173B  15171C            adc ax,0x1c17
0000173E  1E                push ds
0000173F  0407              add al,0x7
00001741  0922              or [bp+si],sp
00001743  0225              add ah,[di]
00001745  0802              or [bp+si],al
00001747  2802              sub [bp+si],al
00001749  2D3136            sub ax,0x3631
0000174C  3B4000            cmp ax,[bx+si+0x0]
0000174F  0103              add [bp+di],ax
00001751  06                push es
00001752  080A              or [bp+si],cl
00001754  0E                push cs
00001755  11060818          adc [0x1808],ax
00001759  0E                push cs
0000175A  1E                push ds
0000175B  0408              add al,0x8
0000175D  0A23              or ah,[bp+di]
0000175F  2426              and al,0x26
00001761  0827              or [bx],ah
00001763  292A              sub [bp+si],bp
00001765  0432              add al,0x32
00001767  37                aaa
00001768  3C06              cmp al,0x6
0000176A  0001              add [bx+di],al
0000176C  0205              add al,[di]
0000176E  0802              or [bp+si],al
00001770  0E                push cs
00001771  12060819          adc al,[0x1908]
00001775  0E                push cs
00001776  1E                push ds
00001777  0408              add al,0x8
00001779  0223              add ah,[bp+di]
0000177B  2426              and al,0x26
0000177D  0825              or [di],ah
0000177F  2902              sub [bp+si],ax
00001781  2E3338            xor di,[cs:bx+si]
00001784  3D0600            cmp ax,0x6
00001787  0103              add [bp+di],ax
00001789  06                push es
0000178A  080B              or [bp+di],cl
0000178C  0E                push cs
0000178D  1306081A          adc ax,[0x1a08]
00001791  0E                push cs
00001792  1F                pop ds
00001793  0408              add al,0x8
00001795  0B23              or sp,[bp+di]
00001797  2426              and al,0x26
00001799  0827              or [bx],ah
0000179B  292B              sub [bp+di],bp
0000179D  2F                das
0000179E  3439              xor al,0x39
000017A0  3E06              ds push es
000017A2  0001              add [bx+di],al
000017A4  0204              add al,[si]
000017A6  080C              or [si],cl
000017A8  0F1404            unpcklps xmm0,oword [si]
000017AB  16                push ss
000017AC  1B1D              sbb bx,[di]
000017AE  2021              and [bx+di],ah
000017B0  080C              or [si],cl
000017B2  2324              and sp,[si]
000017B4  260802            or [es:bp+si],al
000017B7  282C              sub [si],ch
000017B9  3035              xor [di],dh
000017BB  3A3F              cmp bh,[bx]
000017BD  06                push es
000017BE  A27850            mov [0x5078],al
000017C1  BEE548            mov si,0x48e5
000017C4  C70669506C04      mov word [0x5069],0x46c
000017CA  B91200            mov cx,0x12
000017CD  51                push cx
000017CE  B91C00            mov cx,0x1c
000017D1  51                push cx
000017D2  AC                lodsb
000017D3  56                push si
000017D4  E81300            call 0x17ea
000017D7  5E                pop si
000017D8  8306695002        add word [0x5069],0x2
000017DD  59                pop cx
000017DE  E2F1              loop 0x17d1
000017E0  810669504802      add word [0x5069],0x248
000017E6  59                pop cx
000017E7  E2E4              loop 0x17cd
000017E9  C3                ret
000017EA  1E                push ds
000017EB  B130              mov cl,0x30
000017ED  F6E1              mul cl
000017EF  050080            add ax,0x8000
000017F2  8BF0              mov si,ax
000017F4  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000017F9  B800A0            mov ax,0xa000
000017FC  8EC0              mov es,ax
000017FE  2E8B3E6950        mov di,[cs:0x5069]
00001803  BAC403            mov dx,0x3c4
00001806  B002              mov al,0x2
00001808  EE                out dx,al
00001809  42                inc dx
0000180A  BB4E00            mov bx,0x4e
0000180D  B90400            mov cx,0x4
00001810  B001              mov al,0x1
00001812  EE                out dx,al
00001813  A5                movsw
00001814  B002              mov al,0x2
00001816  EE                out dx,al
00001817  AD                lodsw
00001818  268945FE          mov [es:di-0x2],ax
0000181C  4F                dec di
0000181D  4F                dec di
0000181E  B004              mov al,0x4
00001820  EE                out dx,al
00001821  A5                movsw
00001822  03FB              add di,bx
00001824  B001              mov al,0x1
00001826  EE                out dx,al
00001827  A5                movsw
00001828  B002              mov al,0x2
0000182A  EE                out dx,al
0000182B  AD                lodsw
0000182C  268945FE          mov [es:di-0x2],ax
00001830  4F                dec di
00001831  4F                dec di
00001832  B004              mov al,0x4
00001834  EE                out dx,al
00001835  A5                movsw
00001836  03FB              add di,bx
00001838  E2D6              loop 0x1810
0000183A  B007              mov al,0x7
0000183C  EE                out dx,al
0000183D  BACE03            mov dx,0x3ce
00001840  B8050A            mov ax,0xa05
00001843  EF                out dx,ax
00001844  2E8A1E7850        mov bl,[cs:0x5078]
00001849  32FF              xor bh,bh
0000184B  03DB              add bx,bx
0000184D  2EFF975C48        call word near [cs:bx+0x485c]
00001852  B808FF            mov ax,0xff08
00001855  EF                out dx,ax
00001856  B8020F            mov ax,0xf02
00001859  EF                out dx,ax
0000185A  B80500            mov ax,0x5
0000185D  EF                out dx,ax
0000185E  1F                pop ds
0000185F  C3                ret
00001860  6648              dec eax
00001862  7748              ja 0x18ac
00001864  7F48              jg 0x18ae
00001866  90                nop
00001867  48                dec ax
00001868  AA                stosb
00001869  48                dec ax
0000186A  B80206            mov ax,0x602
0000186D  EF                out dx,ax
0000186E  B303              mov bl,0x3
00001870  E85500            call 0x18c8
00001873  B80207            mov ax,0x702
00001876  EF                out dx,ax
00001877  B305              mov bl,0x5
00001879  EB4D              jmp 0x18c8
0000187B  B80204            mov ax,0x402
0000187E  EF                out dx,ax
0000187F  B302              mov bl,0x2
00001881  EB45              jmp 0x18c8
00001883  B80204            mov ax,0x402
00001886  EF                out dx,ax
00001887  B305              mov bl,0x5
00001889  E83C00            call 0x18c8
0000188C  B80207            mov ax,0x702
0000188F  EF                out dx,ax
00001890  B304              mov bl,0x4
00001892  EB34              jmp 0x18c8
00001894  B80204            mov ax,0x402
00001897  EF                out dx,ax
00001898  B303              mov bl,0x3
0000189A  E82B00            call 0x18c8
0000189D  B80207            mov ax,0x702
000018A0  EF                out dx,ax
000018A1  B305              mov bl,0x5
000018A3  E82200            call 0x18c8
000018A6  B80206            mov ax,0x602
000018A9  EF                out dx,ax
000018AA  B307              mov bl,0x7
000018AC  EB1A              jmp 0x18c8
000018AE  B80207            mov ax,0x702
000018B1  EF                out dx,ax
000018B2  B305              mov bl,0x5
000018B4  E81100            call 0x18c8
000018B7  B80204            mov ax,0x402
000018BA  EF                out dx,ax
000018BB  B307              mov bl,0x7
000018BD  E80800            call 0x18c8
000018C0  B80206            mov ax,0x602
000018C3  EF                out dx,ax
000018C4  B304              mov bl,0x4
000018C6  EB00              jmp 0x18c8
000018C8  2E8B366950        mov si,[cs:0x5069]
000018CD  BF4F00            mov di,0x4f
000018D0  B008              mov al,0x8
000018D2  B90800            mov cx,0x8
000018D5  268A24            mov ah,[es:si]
000018D8  EF                out dx,ax
000018D9  26881C            mov [es:si],bl
000018DC  46                inc si
000018DD  268A24            mov ah,[es:si]
000018E0  EF                out dx,ax
000018E1  26881C            mov [es:si],bl
000018E4  03F7              add si,di
000018E6  E2ED              loop 0x18d5
000018E8  C3                ret
000018E9  07                pop es
000018EA  0809              or [bx+di],cl
000018EC  0A07              or al,[bx]
000018EE  080B              or [bp+di],cl
000018F0  0C07              or al,0x7
000018F2  0809              or [bx+di],cl
000018F4  0A19              or bl,[bx+di]
000018F6  3D6127            cmp ax,0x2761
000018F9  1D1E1D            sbb ax,0x1d1e
000018FC  1E                push ds
000018FD  1F                pop ds
000018FE  201F              and [bx],bl
00001900  201D              and [di],bl
00001902  1E                push ds
00001903  1F                pop ds
00001904  200D              and [di],cl
00001906  0E                push cs
00001907  0F100F            movups xmm1,oword [bx]
0000190A  100D              adc [di],cl
0000190C  0E                push cs
0000190D  0F1017            movups xmm2,oword [bx]
00001910  183E5C62          sbb [0x625c],bh
00001914  262A25            sub ah,[es:di]
00001917  2122              and [bp+si],sp
00001919  2122              and [bp+si],sp
0000191B  2324              and sp,[si]
0000191D  2122              and [bp+si],sp
0000191F  2122              and [bp+si],sp
00001921  090A              or [bp+si],cx
00001923  07                pop es
00001924  0807              or [bx],al
00001926  0809              or [bx+di],cl
00001928  0A07              or al,[bx]
0000192A  0819              or [bx+di],bl
0000192C  54                push sp
0000192D  59                pop cx
0000192E  5D                pop bp
0000192F  6332              arpl [bp+si],si
00001931  2F                das
00001932  2E1F              cs pop ds
00001934  201F              and [bx],bl
00001936  201D              and [di],bl
00001938  1E                push ds
00001939  1F                pop ds
0000193A  201F              and [bx],bl
0000193C  200F              and [bx],cl
0000193E  1011              adc [bx+di],dl
00001940  120F              adc cl,[bx]
00001942  100D              adc [di],cl
00001944  0E                push cs
00001945  17                pop ss
00001946  185055            sbb [bx+si+0x55],dl
00001949  5A                pop dx
0000194A  5E                pop si
0000194B  64662830          o32 sub [fs:bx+si],dh
0000194F  2324              and sp,[si]
00001951  2122              and [bp+si],sp
00001953  2324              and sp,[si]
00001955  2122              and [bp+si],sp
00001957  2324              and sp,[si]
00001959  07                pop es
0000195A  080A              or [bp+si],cl
0000195C  0C07              or al,0x7
0000195E  0809              or [bx+di],cl
00001960  0A1A              or bl,[bp+si]
00001962  3451              xor al,0x51
00001964  56                push si
00001965  5B                pop bx
00001966  5F                pop di
00001967  65672F            gs a32 das
0000196A  2D1D1E            sub ax,0x1e1d
0000196D  1F                pop ds
0000196E  201D              and [di],bl
00001970  1E                push ds
00001971  1F                pop ds
00001972  201D              and [di],bl
00001974  1E                push ds
00001975  0F100D            movups xmm1,oword [di]
00001978  0E                push cs
00001979  0D0E17            or ax,0x170e
0000197C  18494D            sbb [bx+di+0x4d],cl
0000197F  52                push dx
00001980  57                push di
00001981  006069            add [bx+si+0x69],ah
00001984  686A6B            push word 0x6b6a
00001987  28262122          sub [0x2221],ah
0000198B  2B262122          sub sp,[0x2221]
0000198F  2122              and [bp+si],sp
00001991  07                pop es
00001992  0809              or [bx+di],cl
00001994  0A09              or cl,[bx+di]
00001996  0A1B              or bl,[bp+di]
00001998  46                inc si
00001999  4A                dec dx
0000199A  4E                dec si
0000199B  53                push bx
0000199C  58                pop ax
0000199D  0000              add [bx+si],al
0000199F  0000              add [bx+si],al
000019A1  696C312D1F        imul bp,[si+0x31],0x1f2d
000019A6  202C              and [si],ch
000019A8  2D1F20            sub ax,0x201f
000019AB  1F                pop ds
000019AC  2013              and [bp+di],dl
000019AE  1413              adc al,0x13
000019B0  1417              adc al,0x17
000019B2  184347            sbb [bp+di+0x47],al
000019B5  4B                dec bx
000019B6  4F                dec di
000019B7  0000              add [bx+si],al
000019B9  0000              add [bx+si],al
000019BB  0000              add [bx+si],al
000019BD  006D6E            add [di+0x6e],ch
000019C0  6F                outsw
000019C1  29262122          sub [0x2221],sp
000019C5  2A25              sub ah,[di]
000019C7  2122              and [bp+si],sp
000019C9  151615            adc ax,0x1516
000019CC  16                push ss
000019CD  1C35              sbb al,0x35
000019CF  44                inc sp
000019D0  48                dec ax
000019D1  4C                dec sp
000019D2  0000              add [bx+si],al
000019D4  0000              add [bx+si],al
000019D6  0000              add [bx+si],al
000019D8  0000              add [bx+si],al
000019DA  006971            add [bx+di+0x71],ch
000019DD  7374              jnc 0x1a53
000019DF  1F                pop ds
000019E0  202C              and [si],ch
000019E2  27                daa
000019E3  1F                pop ds
000019E4  2017              and [bx],dl
000019E6  1838              sbb [bx+si],bh
000019E8  3A3F              cmp bh,[bx]
000019EA  42                inc dx
000019EB  45                inc bp
000019EC  0000              add [bx+si],al
000019EE  0000              add [bx+si],al
000019F0  0000              add [bx+si],al
000019F2  0000              add [bx+si],al
000019F4  0000              add [bx+si],al
000019F6  0000              add [bx+si],al
000019F8  6D                insw
000019F9  7577              jnz 0x1a72
000019FB  796F              jns 0x1a6c
000019FD  2B262926          sub sp,[0x2629]
00001A01  1A34              sbb dh,[si]
00001A03  393B              cmp [bp+di],di
00001A05  40                inc ax
00001A06  41                inc cx
00001A07  0000              add [bx+si],al
00001A09  0000              add [bx+si],al
00001A0B  0000              add [bx+si],al
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  0000              add [bx+si],al
00001A13  0000              add [bx+si],al
00001A15  7678              jna 0x1a8f
00001A17  7A7B              jpe 0x1a94
00001A19  3132              xor [bp+si],si
00001A1B  2F                das
00001A1C  2D3336            sub ax,0x3633
00001A1F  37                aaa
00001A20  3C00              cmp al,0x0
00001A22  0000              add [bx+si],al
00001A24  0000              add [bx+si],al
00001A26  0000              add [bx+si],al
00001A28  0000              add [bx+si],al
00001A2A  0000              add [bx+si],al
00001A2C  0000              add [bx+si],al
00001A2E  0000              add [bx+si],al
00001A30  0000              add [bx+si],al
00001A32  0000              add [bx+si],al
00001A34  6D                insw
00001A35  7170              jno 0x1aa7
00001A37  7270              jc 0x1aa9
00001A39  0000              add [bx+si],al
00001A3B  0000              add [bx+si],al
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  0000              add [bx+si],al
00001A43  0000              add [bx+si],al
00001A45  0000              add [bx+si],al
00001A47  0000              add [bx+si],al
00001A49  0000              add [bx+si],al
00001A4B  0000              add [bx+si],al
00001A4D  0000              add [bx+si],al
00001A4F  0000              add [bx+si],al
00001A51  0000              add [bx+si],al
00001A53  0000              add [bx+si],al
00001A55  0000              add [bx+si],al
00001A57  0000              add [bx+si],al
00001A59  0000              add [bx+si],al
00001A5B  0000              add [bx+si],al
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  0000              add [bx+si],al
00001A63  0000              add [bx+si],al
00001A65  0000              add [bx+si],al
00001A67  0000              add [bx+si],al
00001A69  0000              add [bx+si],al
00001A6B  0000              add [bx+si],al
00001A6D  0000              add [bx+si],al
00001A6F  0000              add [bx+si],al
00001A71  0000              add [bx+si],al
00001A73  0000              add [bx+si],al
00001A75  0000              add [bx+si],al
00001A77  0000              add [bx+si],al
00001A79  0000              add [bx+si],al
00001A7B  0000              add [bx+si],al
00001A7D  0000              add [bx+si],al
00001A7F  0000              add [bx+si],al
00001A81  0000              add [bx+si],al
00001A83  0000              add [bx+si],al
00001A85  0000              add [bx+si],al
00001A87  0000              add [bx+si],al
00001A89  0000              add [bx+si],al
00001A8B  0000              add [bx+si],al
00001A8D  0102              add [bp+si],ax
00001A8F  0102              add [bp+si],ax
00001A91  0102              add [bp+si],ax
00001A93  0102              add [bp+si],ax
00001A95  0102              add [bp+si],ax
00001A97  0102              add [bp+si],ax
00001A99  0102              add [bp+si],ax
00001A9B  0102              add [bp+si],ax
00001A9D  0102              add [bp+si],ax
00001A9F  0102              add [bp+si],ax
00001AA1  0102              add [bp+si],ax
00001AA3  0102              add [bp+si],ax
00001AA5  0102              add [bp+si],ax
00001AA7  0102              add [bp+si],ax
00001AA9  0304              add ax,[si]
00001AAB  0304              add ax,[si]
00001AAD  0304              add ax,[si]
00001AAF  0304              add ax,[si]
00001AB1  0304              add ax,[si]
00001AB3  0304              add ax,[si]
00001AB5  0304              add ax,[si]
00001AB7  0304              add ax,[si]
00001AB9  0304              add ax,[si]
00001ABB  0304              add ax,[si]
00001ABD  0304              add ax,[si]
00001ABF  0304              add ax,[si]
00001AC1  0304              add ax,[si]
00001AC3  0304              add ax,[si]
00001AC5  050605            add ax,0x506
00001AC8  06                push es
00001AC9  050605            add ax,0x506
00001ACC  06                push es
00001ACD  050605            add ax,0x506
00001AD0  06                push es
00001AD1  050605            add ax,0x506
00001AD4  06                push es
00001AD5  050605            add ax,0x506
00001AD8  06                push es
00001AD9  050606            add ax,0x606
00001ADC  050506            add ax,0x605
00001ADF  05061E            add ax,0x1e06
00001AE2  50                push ax
00001AE3  B85000            mov ax,0x50
00001AE6  F6E3              mul bl
00001AE8  8ADF              mov bl,bh
00001AEA  32FF              xor bh,bh
00001AEC  03C3              add ax,bx
00001AEE  8BF8              mov di,ax
00001AF0  58                pop ax
00001AF1  B120              mov cl,0x20
00001AF3  F6E1              mul cl
00001AF5  050060            add ax,0x6000
00001AF8  8BF0              mov si,ax
00001AFA  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00001AFF  B800A0            mov ax,0xa000
00001B02  8EC0              mov es,ax
00001B04  BAC403            mov dx,0x3c4
00001B07  B002              mov al,0x2
00001B09  EE                out dx,al
00001B0A  42                inc dx
00001B0B  BB4E00            mov bx,0x4e
00001B0E  B90400            mov cx,0x4
00001B11  B001              mov al,0x1
00001B13  EE                out dx,al
00001B14  A5                movsw
00001B15  B002              mov al,0x2
00001B17  EE                out dx,al
00001B18  AD                lodsw
00001B19  268945FE          mov [es:di-0x2],ax
00001B1D  03FB              add di,bx
00001B1F  B001              mov al,0x1
00001B21  EE                out dx,al
00001B22  A5                movsw
00001B23  B002              mov al,0x2
00001B25  EE                out dx,al
00001B26  AD                lodsw
00001B27  268945FE          mov [es:di-0x2],ax
00001B2B  03FB              add di,bx
00001B2D  E2E2              loop 0x1b11
00001B2F  1F                pop ds
00001B30  C3                ret
00001B31  1E                push ds
00001B32  8A1E9200          mov bl,[0x92]
00001B36  FECB              dec bl
00001B38  32FF              xor bh,bh
00001B3A  03DB              add bx,bx
00001B3C  8BB7884B          mov si,[bx+0x4b88]
00001B40  BF041B            mov di,0x1b04
00001B43  B800A0            mov ax,0xa000
00001B46  8EC0              mov es,ax
00001B48  BAC403            mov dx,0x3c4
00001B4B  B80207            mov ax,0x702
00001B4E  EF                out dx,ax
00001B4F  BACE03            mov dx,0x3ce
00001B52  B80502            mov ax,0x205
00001B55  EF                out dx,ax
00001B56  B008              mov al,0x8
00001B58  EE                out dx,al
00001B59  42                inc dx
00001B5A  B91800            mov cx,0x18
00001B5D  AC                lodsb
00001B5E  EE                out dx,al
00001B5F  B001              mov al,0x1
00001B61  268605            xchg al,[es:di]
00001B64  47                inc di
00001B65  AC                lodsb
00001B66  EE                out dx,al
00001B67  B001              mov al,0x1
00001B69  268605            xchg al,[es:di]
00001B6C  47                inc di
00001B6D  AC                lodsb
00001B6E  EE                out dx,al
00001B6F  B001              mov al,0x1
00001B71  268605            xchg al,[es:di]
00001B74  47                inc di
00001B75  AC                lodsb
00001B76  EE                out dx,al
00001B77  B001              mov al,0x1
00001B79  268605            xchg al,[es:di]
00001B7C  83C74D            add di,0x4d
00001B7F  E2DC              loop 0x1b5d
00001B81  4A                dec dx
00001B82  B80500            mov ax,0x5
00001B85  EF                out dx,ax
00001B86  B808FF            mov ax,0xff08
00001B89  EF                out dx,ax
00001B8A  1F                pop ds
00001B8B  C3                ret
00001B8C  94                xchg ax,sp
00001B8D  4B                dec bx
00001B8E  94                xchg ax,sp
00001B8F  4B                dec bx
00001B90  94                xchg ax,sp
00001B91  4B                dec bx
00001B92  F4                hlt
00001B93  4B                dec bx
00001B94  F4                hlt
00001B95  4B                dec bx
00001B96  54                push sp
00001B97  4C                dec sp
00001B98  0000              add [bx+si],al
00001B9A  0000              add [bx+si],al
00001B9C  0000              add [bx+si],al
00001B9E  0000              add [bx+si],al
00001BA0  0000              add [bx+si],al
00001BA2  0000              add [bx+si],al
00001BA4  0000              add [bx+si],al
00001BA6  0000              add [bx+si],al
00001BA8  0000              add [bx+si],al
00001BAA  0000              add [bx+si],al
00001BAC  0000              add [bx+si],al
00001BAE  0000              add [bx+si],al
00001BB0  0000              add [bx+si],al
00001BB2  0000              add [bx+si],al
00001BB4  0000              add [bx+si],al
00001BB6  0000              add [bx+si],al
00001BB8  0000              add [bx+si],al
00001BBA  0000              add [bx+si],al
00001BBC  0000              add [bx+si],al
00001BBE  0000              add [bx+si],al
00001BC0  0000              add [bx+si],al
00001BC2  0000              add [bx+si],al
00001BC4  0002              add [bp+si],al
00001BC6  0000              add [bx+si],al
00001BC8  00060000          add [0x0],al
00001BCC  00060000          add [0x0],al
00001BD0  000E0000          add [0x0],cl
00001BD4  000E0000          add [0x0],cl
00001BD8  000C              add [si],cl
00001BDA  0000              add [bx+si],al
00001BDC  000E0000          add [0x0],cl
00001BE0  001C              add [si],bl
00001BE2  0000              add [bx+si],al
00001BE4  000C              add [si],cl
00001BE6  0000              add [bx+si],al
00001BE8  001C              add [si],bl
00001BEA  0000              add [bx+si],al
00001BEC  001C              add [si],bl
00001BEE  0000              add [bx+si],al
00001BF0  001C              add [si],bl
00001BF2  0000              add [bx+si],al
00001BF4  001C              add [si],bl
00001BF6  0000              add [bx+si],al
00001BF8  0000              add [bx+si],al
00001BFA  0000              add [bx+si],al
00001BFC  0000              add [bx+si],al
00001BFE  0000              add [bx+si],al
00001C00  0000              add [bx+si],al
00001C02  0000              add [bx+si],al
00001C04  0000              add [bx+si],al
00001C06  800000            add byte [bx+si],0x0
00001C09  01800000          add [bx+si+0x0],ax
00001C0D  03800000          add ax,[bx+si+0x0]
00001C11  0300              add ax,[bx+si]
00001C13  0000              add [bx+si],al
00001C15  07                pop es
00001C16  800000            add byte [bx+si],0x0
00001C19  07                pop es
00001C1A  0000              add [bx+si],al
00001C1C  0007              add [bx],al
00001C1E  0000              add [bx+si],al
00001C20  000F              add [bx],cl
00001C22  0000              add [bx+si],al
00001C24  000E0000          add [0x0],cl
00001C28  000F              add [bx],cl
00001C2A  0000              add [bx+si],al
00001C2C  001E0000          add [0x0],bl
00001C30  000E0000          add [0x0],cl
00001C34  001F              add [bx],bl
00001C36  0000              add [bx+si],al
00001C38  001E0000          add [0x0],bl
00001C3C  001F              add [bx],bl
00001C3E  0000              add [bx+si],al
00001C40  001E0000          add [0x0],bl
00001C44  001E0000          add [0x0],bl
00001C48  001E0000          add [0x0],bl
00001C4C  001E0000          add [0x0],bl
00001C50  001C              add [si],bl
00001C52  0000              add [bx+si],al
00001C54  003F              add [bx],bh
00001C56  0000              add [bx+si],al
00001C58  0000              add [bx+si],al
00001C5A  0000              add [bx+si],al
00001C5C  0000              add [bx+si],al
00001C5E  0000              add [bx+si],al
00001C60  0000              add [bx+si],al
00001C62  40                inc ax
00001C63  0000              add [bx+si],al
00001C65  00C0              add al,al
00001C67  0000              add [bx+si],al
00001C69  01C0              add ax,ax
00001C6B  0000              add [bx+si],al
00001C6D  03800000          add ax,[bx+si+0x0]
00001C71  03800000          add ax,[bx+si+0x0]
00001C75  07                pop es
00001C76  800000            add byte [bx+si],0x0
00001C79  07                pop es
00001C7A  0000              add [bx+si],al
00001C7C  0007              add [bx],al
00001C7E  0000              add [bx+si],al
00001C80  000F              add [bx],cl
00001C82  0000              add [bx+si],al
00001C84  000F              add [bx],cl
00001C86  0000              add [bx+si],al
00001C88  000E0000          add [0x0],cl
00001C8C  001F              add [bx],bl
00001C8E  0000              add [bx+si],al
00001C90  000E0000          add [0x0],cl
00001C94  001F              add [bx],bl
00001C96  0000              add [bx+si],al
00001C98  001E0000          add [0x0],bl
00001C9C  001F              add [bx],bl
00001C9E  0000              add [bx+si],al
00001CA0  001E0000          add [0x0],bl
00001CA4  001F              add [bx],bl
00001CA6  0000              add [bx+si],al
00001CA8  001F              add [bx],bl
00001CAA  0000              add [bx+si],al
00001CAC  001E0000          add [0x0],bl
00001CB0  031C              add bx,[si]
00001CB2  C00000            rol byte [bx+si],byte 0x0
00001CB5  FF00              inc word [bx+si]
00001CB7  001E0AC0          add [0xc00a],bl
00001CBB  7810              js 0x1ccd
00001CBD  2403              and al,0x3
00001CBF  B240              mov dl,0x40
00001CC1  F6E2              mul dl
00001CC3  055A4D            add ax,0x4d5a
00001CC6  8BF0              mov si,ax
00001CC8  BD0100            mov bp,0x1
00001CCB  EB0E              jmp 0x1cdb
00001CCD  2401              and al,0x1
00001CCF  8AE0              mov ah,al
00001CD1  32C0              xor al,al
00001CD3  055A4E            add ax,0x4e5a
00001CD6  8BF0              mov si,ax
00001CD8  BD0400            mov bp,0x4
00001CDB  8AC3              mov al,bl
00001CDD  2403              and al,0x3
00001CDF  02C0              add al,al
00001CE1  A27950            mov [0x5079],al
00001CE4  D1EB              shr bx,0x0
00001CE6  D1EB              shr bx,0x0
00001CE8  B050              mov al,0x50
00001CEA  F6E1              mul cl
00001CEC  03C3              add ax,bx
00001CEE  8BF8              mov di,ax
00001CF0  B800A0            mov ax,0xa000
00001CF3  8EC0              mov es,ax
00001CF5  BAC403            mov dx,0x3c4
00001CF8  B80207            mov ax,0x702
00001CFB  EF                out dx,ax
00001CFC  BACE03            mov dx,0x3ce
00001CFF  B80502            mov ax,0x205
00001D02  EF                out dx,ax
00001D03  B008              mov al,0x8
00001D05  EE                out dx,al
00001D06  42                inc dx
00001D07  8BCD              mov cx,bp
00001D09  BD4C00            mov bp,0x4c
00001D0C  51                push cx
00001D0D  57                push di
00001D0E  B91000            mov cx,0x10
00001D11  51                push cx
00001D12  B90200            mov cx,0x2
00001D15  51                push cx
00001D16  AD                lodsw
00001D17  8AF8              mov bh,al
00001D19  32DB              xor bl,bl
00001D1B  2E8A0E7950        mov cl,[cs:0x5079]
00001D20  D3EB              shr bx,cl
00001D22  32C0              xor al,al
00001D24  D3E8              shr ax,cl
00001D26  0ADC              or bl,ah
00001D28  8AE0              mov ah,al
00001D2A  8AC7              mov al,bh
00001D2C  EE                out dx,al
00001D2D  B001              mov al,0x1
00001D2F  268605            xchg al,[es:di]
00001D32  47                inc di
00001D33  8AC3              mov al,bl
00001D35  EE                out dx,al
00001D36  B001              mov al,0x1
00001D38  268605            xchg al,[es:di]
00001D3B  47                inc di
00001D3C  8AC4              mov al,ah
00001D3E  EE                out dx,al
00001D3F  B001              mov al,0x1
00001D41  268605            xchg al,[es:di]
00001D44  59                pop cx
00001D45  E2CE              loop 0x1d15
00001D47  03FD              add di,bp
00001D49  59                pop cx
00001D4A  E2C5              loop 0x1d11
00001D4C  5F                pop di
00001D4D  83C704            add di,0x4
00001D50  59                pop cx
00001D51  E2B9              loop 0x1d0c
00001D53  4A                dec dx
00001D54  B80500            mov ax,0x5
00001D57  EF                out dx,ax
00001D58  B808FF            mov ax,0xff08
00001D5B  EF                out dx,ax
00001D5C  1F                pop ds
00001D5D  C3                ret
00001D5E  0000              add [bx+si],al
00001D60  0000              add [bx+si],al
00001D62  0000              add [bx+si],al
00001D64  0000              add [bx+si],al
00001D66  0000              add [bx+si],al
00001D68  0000              add [bx+si],al
00001D6A  0000              add [bx+si],al
00001D6C  0000              add [bx+si],al
00001D6E  0000              add [bx+si],al
00001D70  0000              add [bx+si],al
00001D72  0000              add [bx+si],al
00001D74  1000              adc [bx+si],al
00001D76  0010              add [bx+si],dl
00001D78  60                pusha
00001D79  0000              add [bx+si],al
00001D7B  07                pop es
00001D7C  C00000            rol byte [bx+si],byte 0x0
00001D7F  07                pop es
00001D80  C00000            rol byte [bx+si],byte 0x0
00001D83  07                pop es
00001D84  C00000            rol byte [bx+si],byte 0x0
00001D87  0C10              or al,0x10
00001D89  0000              add [bx+si],al
00001D8B  1000              adc [bx+si],al
00001D8D  0000              add [bx+si],al
00001D8F  0000              add [bx+si],al
00001D91  0000              add [bx+si],al
00001D93  0000              add [bx+si],al
00001D95  0000              add [bx+si],al
00001D97  0000              add [bx+si],al
00001D99  0000              add [bx+si],al
00001D9B  0000              add [bx+si],al
00001D9D  0000              add [bx+si],al
00001D9F  0000              add [bx+si],al
00001DA1  0000              add [bx+si],al
00001DA3  0000              add [bx+si],al
00001DA5  0000              add [bx+si],al
00001DA7  0100              add [bx+si],ax
00001DA9  0000              add [bx+si],al
00001DAB  0100              add [bx+si],ax
00001DAD  0000              add [bx+si],al
00001DAF  40                inc ax
00001DB0  0400              add al,0x0
00001DB2  0001              add [bx+di],al
00001DB4  0000              add [bx+si],al
00001DB6  0009              add [bx+di],cl
00001DB8  2000              and [bx+si],al
00001DBA  0003              add [bp+di],al
00001DBC  800004            add byte [bx+si],0x4
00001DBF  57                push di
00001DC0  D480              aam byte 0x80
00001DC2  0003              add [bp+di],al
00001DC4  800000            add byte [bx+si],0x0
00001DC7  0920              or [bx+si],sp
00001DC9  0000              add [bx+si],al
00001DCB  0100              add [bx+si],ax
00001DCD  0000              add [bx+si],al
00001DCF  40                inc ax
00001DD0  0400              add al,0x0
00001DD2  0001              add [bx+di],al
00001DD4  0000              add [bx+si],al
00001DD6  0001              add [bx+di],al
00001DD8  0000              add [bx+si],al
00001DDA  0000              add [bx+si],al
00001DDC  0000              add [bx+si],al
00001DDE  0001              add [bx+di],al
00001DE0  0000              add [bx+si],al
00001DE2  0001              add [bx+di],al
00001DE4  0000              add [bx+si],al
00001DE6  0001              add [bx+di],al
00001DE8  0000              add [bx+si],al
00001DEA  0002              add [bp+si],al
00001DEC  800000            add byte [bx+si],0x0
00001DEF  8380000023        add word [bx+si+0x0],0x23
00001DF4  8800              mov [bx+si],al
00001DF6  000D              add [di],cl
00001DF8  B000              mov al,0x0
00001DFA  000B              add [bp+di],cl
00001DFC  E80096            call 0xb3ff
00001DFF  FF                db 0xff
00001E00  FF                db 0xff
00001E01  B90017            mov cx,0x1700
00001E04  E80000            call 0x1e07
00001E07  0B5800            or bx,[bx+si+0x0]
00001E0A  0023              add [bp+di],ah
00001E0C  82                db 0x82
00001E0D  0000              add [bx+si],al
00001E0F  02808002          add al,[bx+si+0x280]
00001E13  0100              add [bx+si],ax
00001E15  0000              add [bx+si],al
00001E17  0100              add [bx+si],ax
00001E19  0000              add [bx+si],al
00001E1B  0100              add [bx+si],ax
00001E1D  0000              add [bx+si],al
00001E1F  0000              add [bx+si],al
00001E21  0000              add [bx+si],al
00001E23  0000              add [bx+si],al
00001E25  1010              adc [bx+si],dl
00001E27  0000              add [bx+si],al
00001E29  0004              add [si],al
00001E2B  0000              add [bx+si],al
00001E2D  800080            add byte [bx+si],0x80
00001E30  0300              add ax,[bx+si]
00001E32  00710C            add [bx+di+0xc],dh
00001E35  0000              add [bx+si],al
00001E37  3D3800            cmp ax,0x38
00001E3A  0007              add [bx],al
00001E3C  F00000            lock add [bx+si],al
00001E3F  97                xchg ax,di
00001E40  E500              in ax,byte 0x0
00001E42  000F              add [bx],cl
00001E44  F00000            lock add [bx+si],al
00001E47  1F                pop ds
00001E48  3800              cmp [bx+si],al
00001E4A  0039              add [bx+di],bh
00001E4C  0E                push cs
00001E4D  0000              add [bx+si],al
00001E4F  E101              loope 0x1e52
00001E51  800100            add byte [bx+di],0x0
00001E54  004004            add [bx+si+0x4],al
00001E57  0000              add [bx+si],al
00001E59  0810              or [bx+si],dl
00001E5B  0000              add [bx+si],al
00001E5D  0000              add [bx+si],al
00001E5F  0000              add [bx+si],al
00001E61  0000              add [bx+si],al
00001E63  0000              add [bx+si],al
00001E65  0000              add [bx+si],al
00001E67  0000              add [bx+si],al
00001E69  0000              add [bx+si],al
00001E6B  0000              add [bx+si],al
00001E6D  0000              add [bx+si],al
00001E6F  0000              add [bx+si],al
00001E71  0000              add [bx+si],al
00001E73  0000              add [bx+si],al
00001E75  0000              add [bx+si],al
00001E77  0000              add [bx+si],al
00001E79  0000              add [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  00924AAA          add [bp+si-0x55b6],dl
00001E81  EB00              jmp 0x1e83
00001E83  0000              add [bx+si],al
00001E85  0000              add [bx+si],al
00001E87  0000              add [bx+si],al
00001E89  0000              add [bx+si],al
00001E8B  0000              add [bx+si],al
00001E8D  0000              add [bx+si],al
00001E8F  0000              add [bx+si],al
00001E91  0000              add [bx+si],al
00001E93  0000              add [bx+si],al
00001E95  0000              add [bx+si],al
00001E97  0000              add [bx+si],al
00001E99  0000              add [bx+si],al
00001E9B  0000              add [bx+si],al
00001E9D  0000              add [bx+si],al
00001E9F  0000              add [bx+si],al
00001EA1  0000              add [bx+si],al
00001EA3  0000              add [bx+si],al
00001EA5  0100              add [bx+si],ax
00001EA7  0000              add [bx+si],al
00001EA9  0100              add [bx+si],ax
00001EAB  0001              add [bx+di],al
00001EAD  0100              add [bx+si],ax
00001EAF  0000              add [bx+si],al
00001EB1  82                db 0x82
00001EB2  0000              add [bx+si],al
00001EB4  00AB0000          add [bp+di+0x0],ch
00001EB8  015D04            add [di+0x4],bx
00001EBB  24AE              and al,0xae
00001EBD  EF                out dx,ax
00001EBE  FF                db 0xff
00001EBF  FF                db 0xff
00001EC0  FF                db 0xff
00001EC1  FF04              inc word [si]
00001EC3  24AB              and al,0xab
00001EC5  EF                out dx,ax
00001EC6  0000              add [bx+si],al
00001EC8  015D00            add [di+0x0],bx
00001ECB  0000              add [bx+si],al
00001ECD  2200              and al,[bx+si]
00001ECF  0000              add [bx+si],al
00001ED1  81000000          add word [bx+si],0x0
00001ED5  0100              add [bx+si],ax
00001ED7  0000              add [bx+si],al
00001ED9  0100              add [bx+si],ax
00001EDB  0000              add [bx+si],al
00001EDD  0000              add [bx+si],al
00001EDF  0000              add [bx+si],al
00001EE1  0000              add [bx+si],al
00001EE3  0000              add [bx+si],al
00001EE5  0000              add [bx+si],al
00001EE7  0000              add [bx+si],al
00001EE9  0000              add [bx+si],al
00001EEB  0000              add [bx+si],al
00001EED  00810000          add [bx+di+0x0],al
00001EF1  00C4              add ah,al
00001EF3  0000              add [bx+si],al
00001EF5  00BC0000          add [si+0x0],bh
00001EF9  00EE              add dh,ch
00001EFB  EA2420FFFF        jmp word 0xffff:word 0x2024
00001F00  FF                db 0xff
00001F01  FF                db 0xff
00001F02  FB                sti
00001F03  AA                stosb
00001F04  2420              and al,0x20
00001F06  FD                std
00001F07  40                inc ax
00001F08  0000              add [bx+si],al
00001F0A  E600              out byte 0x0,al
00001F0C  0000              add [bx+si],al
00001F0E  40                inc ax
00001F0F  800000            add byte [bx+si],0x0
00001F12  0020              add [bx+si],ah
00001F14  0000              add [bx+si],al
00001F16  0000              add [bx+si],al
00001F18  0000              add [bx+si],al
00001F1A  0000              add [bx+si],al
00001F1C  0000              add [bx+si],al
00001F1E  0000              add [bx+si],al
00001F20  0000              add [bx+si],al
00001F22  0000              add [bx+si],al
00001F24  0000              add [bx+si],al
00001F26  0000              add [bx+si],al
00001F28  0000              add [bx+si],al
00001F2A  0000              add [bx+si],al
00001F2C  0000              add [bx+si],al
00001F2E  0000              add [bx+si],al
00001F30  0000              add [bx+si],al
00001F32  0000              add [bx+si],al
00001F34  0000              add [bx+si],al
00001F36  0000              add [bx+si],al
00001F38  0000              add [bx+si],al
00001F3A  0000              add [bx+si],al
00001F3C  0000              add [bx+si],al
00001F3E  D7                xlatb
00001F3F  55                push bp
00001F40  52                push dx
00001F41  49                dec cx
00001F42  0000              add [bx+si],al
00001F44  0000              add [bx+si],al
00001F46  0000              add [bx+si],al
00001F48  0000              add [bx+si],al
00001F4A  0000              add [bx+si],al
00001F4C  0000              add [bx+si],al
00001F4E  0000              add [bx+si],al
00001F50  0000              add [bx+si],al
00001F52  0000              add [bx+si],al
00001F54  0000              add [bx+si],al
00001F56  0000              add [bx+si],al
00001F58  0000              add [bx+si],al
00001F5A  0000              add [bx+si],al
00001F5C  0000              add [bx+si],al
00001F5E  0000              add [bx+si],al
00001F60  0000              add [bx+si],al
00001F62  0000              add [bx+si],al
00001F64  0000              add [bx+si],al
00001F66  0000              add [bx+si],al
00001F68  0000              add [bx+si],al
00001F6A  0000              add [bx+si],al
00001F6C  0000              add [bx+si],al
00001F6E  0000              add [bx+si],al
00001F70  0000              add [bx+si],al
00001F72  0000              add [bx+si],al
00001F74  0000              add [bx+si],al
00001F76  0000              add [bx+si],al
00001F78  0000              add [bx+si],al
00001F7A  0000              add [bx+si],al
00001F7C  0000              add [bx+si],al
00001F7E  A7                cmpsw
00001F7F  54                push sp
00001F80  90                nop
00001F81  0400              add al,0x0
00001F83  0000              add [bx+si],al
00001F85  0000              add [bx+si],al
00001F87  0000              add [bx+si],al
00001F89  0000              add [bx+si],al
00001F8B  0000              add [bx+si],al
00001F8D  0000              add [bx+si],al
00001F8F  0000              add [bx+si],al
00001F91  0000              add [bx+si],al
00001F93  0000              add [bx+si],al
00001F95  0000              add [bx+si],al
00001F97  0000              add [bx+si],al
00001F99  0000              add [bx+si],al
00001F9B  0000              add [bx+si],al
00001F9D  0000              add [bx+si],al
00001F9F  0000              add [bx+si],al
00001FA1  0000              add [bx+si],al
00001FA3  0000              add [bx+si],al
00001FA5  0000              add [bx+si],al
00001FA7  0010              add [bx+si],dl
00001FA9  0000              add [bx+si],al
00001FAB  0004              add [si],al
00001FAD  0000              add [bx+si],al
00001FAF  0000              add [bx+si],al
00001FB1  800000            add byte [bx+si],0x0
00001FB4  007100            add [bx+di+0x0],dh
00001FB7  0000              add [bx+si],al
00001FB9  3D0000            cmp ax,0x0
00001FBC  0007              add [bx],al
00001FBE  1004              adc [si],al
00001FC0  00970000          add [bx+0x0],dl
00001FC4  000F              add [bx],cl
00001FC6  0000              add [bx+si],al
00001FC8  001F              add [bx],bl
00001FCA  0000              add [bx+si],al
00001FCC  0039              add [bx+di],bh
00001FCE  0000              add [bx+si],al
00001FD0  00E1              add cl,ah
00001FD2  0000              add [bx+si],al
00001FD4  0100              add [bx+si],ax
00001FD6  0000              add [bx+si],al
00001FD8  0400              add al,0x0
00001FDA  0000              add [bx+si],al
00001FDC  1000              adc [bx+si],al
00001FDE  0000              add [bx+si],al
00001FE0  0000              add [bx+si],al
00001FE2  0010              add [bx+si],dl
00001FE4  0000              add [bx+si],al
00001FE6  0000              add [bx+si],al
00001FE8  0000              add [bx+si],al
00001FEA  00800000          add [bx+si+0x0],al
00001FEE  0300              add ax,[bx+si]
00001FF0  0000              add [bx+si],al
00001FF2  0C00              or al,0x0
00001FF4  0000              add [bx+si],al
00001FF6  3800              cmp [bx+si],al
00001FF8  0000              add [bx+si],al
00001FFA  F00000            lock add [bx+si],al
00001FFD  00E5              add ch,ah
00001FFF  0200              add al,[bx+si]
00002001  10F0              adc al,dh
00002003  0000              add [bx+si],al
00002005  003C              add [si],bh
00002007  0000              add [bx+si],al
00002009  0007              add [bx],al
0000200B  0000              add [bx+si],al
0000200D  0000              add [bx+si],al
0000200F  C00000            rol byte [bx+si],byte 0x0
00002012  0020              add [bx+si],ah
00002014  0000              add [bx+si],al
00002016  0004              add [si],al
00002018  0000              add [bx+si],al
0000201A  0000              add [bx+si],al
0000201C  0000              add [bx+si],al
0000201E  0000              add [bx+si],al
00002020  0000              add [bx+si],al
00002022  0000              add [bx+si],al
00002024  0000              add [bx+si],al
00002026  0000              add [bx+si],al
00002028  0000              add [bx+si],al
0000202A  0000              add [bx+si],al
0000202C  0000              add [bx+si],al
0000202E  0000              add [bx+si],al
00002030  0000              add [bx+si],al
00002032  0000              add [bx+si],al
00002034  0000              add [bx+si],al
00002036  0000              add [bx+si],al
00002038  0000              add [bx+si],al
0000203A  0000              add [bx+si],al
0000203C  0000              add [bx+si],al
0000203E  2009              and [bx+di],cl
00002040  2AE5              sub ah,ch
00002042  0000              add [bx+si],al
00002044  0000              add [bx+si],al
00002046  0000              add [bx+si],al
00002048  0000              add [bx+si],al
0000204A  0000              add [bx+si],al
0000204C  0000              add [bx+si],al
0000204E  0000              add [bx+si],al
00002050  0000              add [bx+si],al
00002052  0000              add [bx+si],al
00002054  0000              add [bx+si],al
00002056  0000              add [bx+si],al
00002058  0000              add [bx+si],al
0000205A  0000              add [bx+si],al
0000205C  0000              add [bx+si],al
0000205E  0102              add [bp+si],ax
00002060  0204              add al,[si]
00002062  0104              add [si],ax
00002064  050606            add ax,0x606
00002067  050506            add ax,0x605
0000206A  C3                ret
0000206B  0000              add [bx+si],al
0000206D  0000              add [bx+si],al
0000206F  0000              add [bx+si],al
00002071  0000              add [bx+si],al
00002073  0000              add [bx+si],al
00002075  0000              add [bx+si],al
00002077  0000              add [bx+si],al
00002079  0000              add [bx+si],al
0000207B  0000              add [bx+si],al
0000207D  0000              add [bx+si],al
0000207F  0000              add [bx+si],al
00002081  0000              add [bx+si],al
00002083  0000              add [bx+si],al
00002085  0000              add [bx+si],al
00002087  0000              add [bx+si],al
00002089  0000              add [bx+si],al
0000208B  0000              add [bx+si],al
0000208D  0000              add [bx+si],al
0000208F  0000              add [bx+si],al
00002091  0000              add [bx+si],al
00002093  0000              add [bx+si],al
00002095  0000              add [bx+si],al
00002097  0000              add [bx+si],al
00002099  0000              add [bx+si],al
0000209B  0000              add [bx+si],al
0000209D  0000              add [bx+si],al
0000209F  0000              add [bx+si],al
000020A1  0000              add [bx+si],al
000020A3  0000              add [bx+si],al
000020A5  0000              add [bx+si],al
000020A7  0000              add [bx+si],al
000020A9  0000              add [bx+si],al
000020AB  0000              add [bx+si],al
000020AD  0000              add [bx+si],al
000020AF  0000              add [bx+si],al
000020B1  0000              add [bx+si],al
000020B3  0000              add [bx+si],al
000020B5  0000              add [bx+si],al
000020B7  0000              add [bx+si],al
000020B9  0000              add [bx+si],al
000020BB  0000              add [bx+si],al
000020BD  0000              add [bx+si],al
000020BF  0000              add [bx+si],al
000020C1  0000              add [bx+si],al
000020C3  0000              add [bx+si],al
000020C5  0000              add [bx+si],al
000020C7  0000              add [bx+si],al
000020C9  0000              add [bx+si],al
000020CB  0000              add [bx+si],al
000020CD  0000              add [bx+si],al
000020CF  0000              add [bx+si],al
000020D1  0000              add [bx+si],al
000020D3  0000              add [bx+si],al
000020D5  0000              add [bx+si],al
000020D7  0000              add [bx+si],al
000020D9  0000              add [bx+si],al
000020DB  0000              add [bx+si],al
000020DD  0000              add [bx+si],al
000020DF  0000              add [bx+si],al
000020E1  0000              add [bx+si],al
000020E3  0000              add [bx+si],al
000020E5  0000              add [bx+si],al
000020E7  0000              add [bx+si],al
000020E9  0000              add [bx+si],al
000020EB  0000              add [bx+si],al
000020ED  0000              add [bx+si],al
000020EF  0000              add [bx+si],al
000020F1  0000              add [bx+si],al
000020F3  0000              add [bx+si],al
000020F5  0000              add [bx+si],al
000020F7  0000              add [bx+si],al
000020F9  0000              add [bx+si],al
000020FB  0000              add [bx+si],al
000020FD  0000              add [bx+si],al
000020FF  0000              add [bx+si],al
00002101  0000              add [bx+si],al
00002103  0000              add [bx+si],al
00002105  0000              add [bx+si],al
00002107  0000              add [bx+si],al
00002109  0000              add [bx+si],al
0000210B  0000              add [bx+si],al
0000210D  0000              add [bx+si],al
0000210F  0000              add [bx+si],al
00002111  0000              add [bx+si],al
00002113  0000              add [bx+si],al
00002115  0000              add [bx+si],al
00002117  0000              add [bx+si],al
00002119  0000              add [bx+si],al
0000211B  0000              add [bx+si],al
0000211D  0000              add [bx+si],al
0000211F  0000              add [bx+si],al
00002121  0000              add [bx+si],al
00002123  0000              add [bx+si],al
00002125  0000              add [bx+si],al
00002127  0000              add [bx+si],al
00002129  0000              add [bx+si],al
0000212B  0000              add [bx+si],al
0000212D  0000              add [bx+si],al
0000212F  0000              add [bx+si],al
00002131  0000              add [bx+si],al
00002133  0000              add [bx+si],al
00002135  0000              add [bx+si],al
00002137  0000              add [bx+si],al
00002139  0000              add [bx+si],al
0000213B  0000              add [bx+si],al
0000213D  0000              add [bx+si],al
0000213F  0000              add [bx+si],al
00002141  0000              add [bx+si],al
00002143  0000              add [bx+si],al
00002145  0000              add [bx+si],al
00002147  0000              add [bx+si],al
00002149  0000              add [bx+si],al
0000214B  0000              add [bx+si],al
0000214D  0000              add [bx+si],al
0000214F  0000              add [bx+si],al
00002151  0000              add [bx+si],al
00002153  0000              add [bx+si],al
00002155  0000              add [bx+si],al
00002157  0000              add [bx+si],al
00002159  0000              add [bx+si],al
0000215B  0000              add [bx+si],al
0000215D  0000              add [bx+si],al
0000215F  0000              add [bx+si],al
00002161  0000              add [bx+si],al
00002163  0000              add [bx+si],al
00002165  0000              add [bx+si],al
00002167  0000              add [bx+si],al
00002169  0000              add [bx+si],al
0000216B  0000              add [bx+si],al
0000216D  0000              add [bx+si],al
0000216F  0000              add [bx+si],al
00002171  0000              add [bx+si],al
00002173  0000              add [bx+si],al
00002175  0000              add [bx+si],al
00002177  0000              add [bx+si],al
00002179  0000              add [bx+si],al
0000217B  0000              add [bx+si],al
0000217D  0000              add [bx+si],al
0000217F  0000              add [bx+si],al
00002181  0000              add [bx+si],al
00002183  0000              add [bx+si],al
00002185  0000              add [bx+si],al
00002187  0000              add [bx+si],al
00002189  0000              add [bx+si],al
0000218B  0000              add [bx+si],al
0000218D  0000              add [bx+si],al
0000218F  0000              add [bx+si],al
00002191  0000              add [bx+si],al
00002193  0000              add [bx+si],al
00002195  0000              add [bx+si],al
00002197  0000              add [bx+si],al
00002199  0000              add [bx+si],al
