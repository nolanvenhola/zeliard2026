00000000  E9C201            jmp 0x1c5
00000003  E94A01            jmp 0x150
00000006  E90F0E            jmp 0xe18
00000009  E9F104            jmp 0x4fd
0000000C  840A              test [bp+si],cl
0000000E  17                pop ss
0000000F  0FAC062307B6      shrd [0x723],ax,byte 0xb6
00000015  07                pop es
00000016  8108EF08          or word [bx+si],0x8ef
0000001A  1809              sbb [bx+di],cl
0000001C  D6                salc
0000001D  092D              or [di],bp
0000001F  099E082E          or [bp+0x2e08],bx
00000023  F606BE02FF        test byte [0x2be],0xff
00000028  7416              jz 0x40
0000002A  2EF60616FF01      test byte [cs:0xff16],0x1
00000030  741C              jz 0x4e
00000032  2EC606BE0200      mov byte [cs:0x2be],0x0
00000038  2EC6061DFFFF      mov byte [cs:0xff1d],0xff
0000003E  EB0E              jmp 0x4e
00000040  2EF60616FF01      test byte [cs:0xff16],0x1
00000046  7506              jnz 0x4e
00000048  2EC606BE02FF      mov byte [cs:0x2be],0xff
0000004E  2EF606BF02FF      test byte [cs:0x2bf],0xff
00000054  7416              jz 0x6c
00000056  2EF60616FF02      test byte [cs:0xff16],0x2
0000005C  7501              jnz 0x5f
0000005E  C3                ret
0000005F  2EC606BF0200      mov byte [cs:0x2bf],0x0
00000065  2EC6061EFFFF      mov byte [cs:0xff1e],0xff
0000006B  C3                ret
0000006C  2EF60616FF02      test byte [cs:0xff16],0x2
00000072  7401              jz 0x75
00000074  C3                ret
00000075  2EC606BF02FF      mov byte [cs:0x2bf],0xff
0000007B  C3                ret
0000007C  2EF6063BFFFF      test byte [cs:0xff3b],0xff
00000082  7501              jnz 0x85
00000084  C3                ret
00000085  2EF6060AFFFF      test byte [cs:0xff0a],0xff
0000008B  7501              jnz 0x8e
0000008D  C3                ret
0000008E  BA0102            mov dx,0x201
00000091  EC                in al,dx
00000092  E80200            call 0x97
00000095  EB26              jmp 0xbd
00000097  2EF606C002FF      test byte [cs:0x2c0],0xff
0000009D  7412              jz 0xb1
0000009F  A810              test al,0x10
000000A1  7401              jz 0xa4
000000A3  C3                ret
000000A4  2EC606C00200      mov byte [cs:0x2c0],0x0
000000AA  2EC6061DFFFF      mov byte [cs:0xff1d],0xff
000000B0  C3                ret
000000B1  A810              test al,0x10
000000B3  7501              jnz 0xb6
000000B5  C3                ret
000000B6  2EC606C002FF      mov byte [cs:0x2c0],0xff
000000BC  C3                ret
000000BD  2EF606C102FF      test byte [cs:0x2c1],0xff
000000C3  7412              jz 0xd7
000000C5  A820              test al,0x20
000000C7  7401              jz 0xca
000000C9  C3                ret
000000CA  2EC606C10200      mov byte [cs:0x2c1],0x0
000000D0  2EC6061EFFFF      mov byte [cs:0xff1e],0xff
000000D6  C3                ret
000000D7  A820              test al,0x20
000000D9  7501              jnz 0xdc
000000DB  C3                ret
000000DC  2EC606C102FF      mov byte [cs:0x2c1],0xff
000000E2  C3                ret
000000E3  2EF606C202FF      test byte [cs:0x2c2],0xff
000000E9  7421              jz 0x10c
000000EB  2E813E18FF0010    cmp word [cs:0xff18],0x1000
000000F2  7527              jnz 0x11b
000000F4  2EC60675FF01      mov byte [cs:0xff75],0x1
000000FA  2EC606C20200      mov byte [cs:0x2c2],0x0
00000100  2E8A0E28FF        mov cl,[cs:0xff28]
00000105  B80200            mov ax,0x2
00000108  CD60              int byte 0x60
0000010A  EB0F              jmp 0x11b
0000010C  2E813E18FF0010    cmp word [cs:0xff18],0x1000
00000113  7406              jz 0x11b
00000115  2EC606C202FF      mov byte [cs:0x2c2],0xff
0000011B  2EF606C302FF      test byte [cs:0x2c3],0xff
00000121  741C              jz 0x13f
00000123  2E813E18FF0020    cmp word [cs:0xff18],0x2000
0000012A  7401              jz 0x12d
0000012C  C3                ret
0000012D  2EC606C30200      mov byte [cs:0x2c3],0x0
00000133  2EF61627FF        not byte [cs:0xff27]
00000138  2EC60675FF01      mov byte [cs:0xff75],0x1
0000013E  C3                ret
0000013F  2E813E18FF0020    cmp word [cs:0xff18],0x2000
00000146  7501              jnz 0x149
00000148  C3                ret
00000149  2EC606C302FF      mov byte [cs:0x2c3],0xff
0000014F  C3                ret
00000150  50                push ax
00000151  53                push bx
00000152  51                push cx
00000153  52                push dx
00000154  57                push di
00000155  56                push si
00000156  55                push bp
00000157  1E                push ds
00000158  06                push es
00000159  FC                cld
0000015A  2EFF1E10FF        call word far [cs:0xff10]
0000015F  2EFF1E0CFF        call word far [cs:0xff0c]
00000164  2EFE0EBC02        dec byte [cs:0x2bc]
00000169  750F              jnz 0x17a
0000016B  2EC606BC0205      mov byte [cs:0x2bc],0x5
00000171  E86FFF            call 0xe3
00000174  E8ABFE            call 0x22
00000177  E802FF            call 0x7c
0000017A  2EFE061AFF        inc byte [cs:0xff1a]
0000017F  2EFF0650FF        inc word [cs:0xff50]
00000184  2EFF061BFF        inc word [cs:0xff1b]
00000189  2EFE06C402        inc byte [cs:0x2c4]
0000018E  2EF60620FFFF      test byte [cs:0xff20],0xff
00000194  7405              jz 0x19b
00000196  2EFF161FFF        call word near [cs:0xff1f]
0000019B  07                pop es
0000019C  1F                pop ds
0000019D  5D                pop bp
0000019E  5E                pop si
0000019F  5F                pop di
000001A0  5A                pop dx
000001A1  59                pop cx
000001A2  5B                pop bx
000001A3  2EFE0EBD02        dec byte [cs:0x2bd]
000001A8  7406              jz 0x1b0
000001AA  B020              mov al,0x20
000001AC  E620              out byte 0x20,al
000001AE  58                pop ax
000001AF  CF                iret
000001B0  2EC606BD020D      mov byte [cs:0x2bd],0xd
000001B6  58                pop ax
000001B7  2EFF2E04FF        jmp word far [cs:0xff04]
000001BC  0A0D              or cl,[di]
000001BE  0000              add [bx+si],al
000001C0  0000              add [bx+si],al
000001C2  0000              add [bx+si],al
000001C4  005053            add [bx+si+0x53],dl
000001C7  51                push cx
000001C8  52                push dx
000001C9  56                push si
000001CA  57                push di
000001CB  1E                push ds
000001CC  06                push es
000001CD  8CC8              mov ax,cs
000001CF  8ED8              mov ds,ax
000001D1  E460              in al,byte 0x60
000001D3  3CFF              cmp al,0xff
000001D5  7420              jz 0x1f7
000001D7  3CFE              cmp al,0xfe
000001D9  741C              jz 0x1f7
000001DB  E84800            call 0x226
000001DE  B401              mov ah,0x1
000001E0  CD16              int byte 0x16
000001E2  7406              jz 0x1ea
000001E4  32E4              xor ah,ah
000001E6  CD16              int byte 0x16
000001E8  EBF4              jmp 0x1de
000001EA  07                pop es
000001EB  1F                pop ds
000001EC  5F                pop di
000001ED  5E                pop si
000001EE  5A                pop dx
000001EF  59                pop cx
000001F0  5B                pop bx
000001F1  58                pop ax
000001F2  2EFF2E79FF        jmp word far [cs:0xff79]
000001F7  E461              in al,byte 0x61
000001F9  0C80              or al,0x80
000001FB  E661              out byte 0x61,al
000001FD  247F              and al,0x7f
000001FF  E661              out byte 0x61,al
00000201  2EC606C10500      mov byte [cs:0x5c1],0x0
00000207  2EC606C20500      mov byte [cs:0x5c2],0x0
0000020D  2EC606C30500      mov byte [cs:0x5c3],0x0
00000213  2EC606C40500      mov byte [cs:0x5c4],0x0
00000219  B020              mov al,0x20
0000021B  E620              out byte 0x20,al
0000021D  07                pop es
0000021E  1F                pop ds
0000021F  5F                pop di
00000220  5E                pop si
00000221  5A                pop dx
00000222  59                pop cx
00000223  5B                pop bx
00000224  58                pop ax
00000225  CF                iret
00000226  50                push ax
00000227  E8A601            call 0x3d0
0000022A  58                pop ax
0000022B  3CE0              cmp al,0xe0
0000022D  7201              jc 0x230
0000022F  C3                ret
00000230  8AE0              mov ah,al
00000232  247F              and al,0x7f
00000234  B108              mov cl,0x8
00000236  3C4D              cmp al,0x4d
00000238  7422              jz 0x25c
0000023A  3C4E              cmp al,0x4e
0000023C  741E              jz 0x25c
0000023E  B104              mov cl,0x4
00000240  3C4B              cmp al,0x4b
00000242  7418              jz 0x25c
00000244  3C2B              cmp al,0x2b
00000246  7414              jz 0x25c
00000248  B102              mov cl,0x2
0000024A  3C50              cmp al,0x50
0000024C  740E              jz 0x25c
0000024E  3C4A              cmp al,0x4a
00000250  740A              jz 0x25c
00000252  B101              mov cl,0x1
00000254  3C48              cmp al,0x48
00000256  7404              jz 0x25c
00000258  3C29              cmp al,0x29
0000025A  7513              jnz 0x26f
0000025C  080EC105          or [0x5c1],cl
00000260  F6C480            test ah,0x80
00000263  7503              jnz 0x268
00000265  E92F01            jmp 0x397
00000268  300EC105          xor [0x5c1],cl
0000026C  E92801            jmp 0x397
0000026F  B105              mov cl,0x5
00000271  3C47              cmp al,0x47
00000273  7412              jz 0x287
00000275  B190              mov cl,0x90
00000277  3C49              cmp al,0x49
00000279  740C              jz 0x287
0000027B  B160              mov cl,0x60
0000027D  3C4F              cmp al,0x4f
0000027F  7406              jz 0x287
00000281  B10A              mov cl,0xa
00000283  3C51              cmp al,0x51
00000285  7513              jnz 0x29a
00000287  080EC205          or [0x5c2],cl
0000028B  F6C480            test ah,0x80
0000028E  7503              jnz 0x293
00000290  E90401            jmp 0x397
00000293  300EC205          xor [0x5c2],cl
00000297  E9FD00            jmp 0x397
0000029A  F60674FFFF        test byte [0xff74],0xff
0000029F  740C              jz 0x2ad
000002A1  C606C30500        mov byte [0x5c3],0x0
000002A6  C606C40500        mov byte [0x5c4],0x0
000002AB  EB4E              jmp 0x2fb
000002AD  B108              mov cl,0x8
000002AF  3C25              cmp al,0x25
000002B1  7412              jz 0x2c5
000002B3  B104              mov cl,0x4
000002B5  3C23              cmp al,0x23
000002B7  740C              jz 0x2c5
000002B9  B102              mov cl,0x2
000002BB  3C32              cmp al,0x32
000002BD  7406              jz 0x2c5
000002BF  B101              mov cl,0x1
000002C1  3C16              cmp al,0x16
000002C3  750F              jnz 0x2d4
000002C5  080EC305          or [0x5c3],cl
000002C9  F6C480            test ah,0x80
000002CC  7448              jz 0x316
000002CE  300EC305          xor [0x5c3],cl
000002D2  EB42              jmp 0x316
000002D4  B105              mov cl,0x5
000002D6  3C15              cmp al,0x15
000002D8  7412              jz 0x2ec
000002DA  B190              mov cl,0x90
000002DC  3C17              cmp al,0x17
000002DE  740C              jz 0x2ec
000002E0  B160              mov cl,0x60
000002E2  3C31              cmp al,0x31
000002E4  7406              jz 0x2ec
000002E6  B10A              mov cl,0xa
000002E8  3C33              cmp al,0x33
000002EA  750F              jnz 0x2fb
000002EC  080EC405          or [0x5c4],cl
000002F0  F6C480            test ah,0x80
000002F3  7421              jz 0x316
000002F5  300EC405          xor [0x5c4],cl
000002F9  EB1B              jmp 0x316
000002FB  B101              mov cl,0x1
000002FD  3C39              cmp al,0x39
000002FF  7406              jz 0x307
00000301  B102              mov cl,0x2
00000303  3C38              cmp al,0x38
00000305  750F              jnz 0x316
00000307  080E16FF          or [0xff16],cl
0000030B  F6C480            test ah,0x80
0000030E  7406              jz 0x316
00000310  300E16FF          xor [0xff16],cl
00000314  EB00              jmp 0x316
00000316  B90008            mov cx,0x800
00000319  3C25              cmp al,0x25
0000031B  746D              jz 0x38a
0000031D  B90004            mov cx,0x400
00000320  3C13              cmp al,0x13
00000322  7466              jz 0x38a
00000324  B90002            mov cx,0x200
00000327  3C12              cmp al,0x12
00000329  745F              jz 0x38a
0000032B  B90001            mov cx,0x100
0000032E  3C24              cmp al,0x24
00000330  7458              jz 0x38a
00000332  B98000            mov cx,0x80
00000335  3C1F              cmp al,0x1f
00000337  7451              jz 0x38a
00000339  B94000            mov cx,0x40
0000033C  3C31              cmp al,0x31
0000033E  744A              jz 0x38a
00000340  B92000            mov cx,0x20
00000343  3C15              cmp al,0x15
00000345  7443              jz 0x38a
00000347  B91000            mov cx,0x10
0000034A  3C10              cmp al,0x10
0000034C  743C              jz 0x38a
0000034E  B90800            mov cx,0x8
00000351  3C01              cmp al,0x1
00000353  7435              jz 0x38a
00000355  B90400            mov cx,0x4
00000358  3C1D              cmp al,0x1d
0000035A  742E              jz 0x38a
0000035C  B90200            mov cx,0x2
0000035F  3C36              cmp al,0x36
00000361  7427              jz 0x38a
00000363  3C2A              cmp al,0x2a
00000365  7423              jz 0x38a
00000367  B90100            mov cx,0x1
0000036A  3C1C              cmp al,0x1c
0000036C  741C              jz 0x38a
0000036E  B90010            mov cx,0x1000
00000371  3C3B              cmp al,0x3b
00000373  7415              jz 0x38a
00000375  B90020            mov cx,0x2000
00000378  3C3C              cmp al,0x3c
0000037A  740E              jz 0x38a
0000037C  B90040            mov cx,0x4000
0000037F  3C41              cmp al,0x41
00000381  7407              jz 0x38a
00000383  B90080            mov cx,0x8000
00000386  3C43              cmp al,0x43
00000388  750D              jnz 0x397
0000038A  090E18FF          or [0xff18],cx
0000038E  F6C480            test ah,0x80
00000391  7404              jz 0x397
00000393  310E18FF          xor [0xff18],cx
00000397  A0C105            mov al,[0x5c1]
0000039A  0A06C305          or al,[0x5c3]
0000039E  8A26C205          mov ah,[0x5c2]
000003A2  80E40F            and ah,0xf
000003A5  0AC4              or al,ah
000003A7  8A26C205          mov ah,[0x5c2]
000003AB  D0EC              shr ah,0x0
000003AD  D0EC              shr ah,0x0
000003AF  D0EC              shr ah,0x0
000003B1  D0EC              shr ah,0x0
000003B3  0AC4              or al,ah
000003B5  8A26C405          mov ah,[0x5c4]
000003B9  80E40F            and ah,0xf
000003BC  0AC4              or al,ah
000003BE  8A26C405          mov ah,[0x5c4]
000003C2  D0EC              shr ah,0x0
000003C4  D0EC              shr ah,0x0
000003C6  D0EC              shr ah,0x0
000003C8  D0EC              shr ah,0x0
000003CA  0AC4              or al,ah
000003CC  A217FF            mov [0xff17],al
000003CF  C3                ret
000003D0  3CE0              cmp al,0xe0
000003D2  7207              jc 0x3db
000003D4  2EC606C505FF      mov byte [cs:0x5c5],0xff
000003DA  C3                ret
000003DB  2EF606C505FF      test byte [cs:0x5c5],0xff
000003E1  2EC606C50500      mov byte [cs:0x5c5],0x0
000003E7  7401              jz 0x3ea
000003E9  C3                ret
000003EA  0AC0              or al,al
000003EC  7901              jns 0x3ef
000003EE  C3                ret
000003EF  3C54              cmp al,0x54
000003F1  7201              jc 0x3f4
000003F3  C3                ret
000003F4  FEC8              dec al
000003F6  33DB              xor bx,bx
000003F8  8AD8              mov bl,al
000003FA  BF1105            mov di,0x511
000003FD  2EF70618FF0200    test word [cs:0xff18],0x2
00000404  7403              jz 0x409
00000406  BF6905            mov di,0x569
00000409  2E8A01            mov al,[cs:bx+di]
0000040C  2EA229FF          mov [cs:0xff29],al
00000410  C3                ret
00000411  0031              add [bx+di],dh
00000413  3233              xor dh,[bp+di]
00000415  3435              xor al,0x35
00000417  3637              ss aaa
00000419  3839              cmp [bx+di],bh
0000041B  3000              xor [bx+si],al
0000041D  0008              add [bx+si],cl
0000041F  005157            add [bx+di+0x57],dl
00000422  45                inc bp
00000423  52                push dx
00000424  54                push sp
00000425  59                pop cx
00000426  55                push bp
00000427  49                dec cx
00000428  4F                dec di
00000429  50                push ax
0000042A  0000              add [bx+si],al
0000042C  0D0041            or ax,0x4100
0000042F  53                push bx
00000430  44                inc sp
00000431  46                inc si
00000432  47                inc di
00000433  48                dec ax
00000434  4A                dec dx
00000435  4B                dec bx
00000436  4C                dec sp
00000437  0000              add [bx+si],al
00000439  0000              add [bx+si],al
0000043B  005A58            add [bp+si+0x58],bl
0000043E  43                inc bx
0000043F  56                push si
00000440  42                inc dx
00000441  4E                dec si
00000442  4D                dec bp
00000443  0000              add [bx+si],al
00000445  0000              add [bx+si],al
00000447  0000              add [bx+si],al
00000449  0000              add [bx+si],al
0000044B  0000              add [bx+si],al
0000044D  0000              add [bx+si],al
0000044F  0000              add [bx+si],al
00000451  0000              add [bx+si],al
00000453  0000              add [bx+si],al
00000455  0000              add [bx+si],al
00000457  0000              add [bx+si],al
00000459  0000              add [bx+si],al
0000045B  0000              add [bx+si],al
0000045D  0000              add [bx+si],al
0000045F  0000              add [bx+si],al
00000461  0000              add [bx+si],al
00000463  0000              add [bx+si],al
00000465  0000              add [bx+si],al
00000467  0000              add [bx+si],al
00000469  0021              add [bx+di],ah
0000046B  40                inc ax
0000046C  0024              add [si],ah
0000046E  250000            and ax,0x0
00000471  0028              add [bx+si],ch
00000473  2900              sub [bx+si],ax
00000475  0008              add [bx+si],cl
00000477  005157            add [bx+di+0x57],dl
0000047A  45                inc bp
0000047B  52                push dx
0000047C  54                push sp
0000047D  59                pop cx
0000047E  55                push bp
0000047F  49                dec cx
00000480  4F                dec di
00000481  50                push ax
00000482  7B7D              jpo 0x501
00000484  0D0041            or ax,0x4100
00000487  53                push bx
00000488  44                inc sp
00000489  46                inc si
0000048A  47                inc di
0000048B  48                dec ax
0000048C  4A                dec dx
0000048D  4B                dec bx
0000048E  4C                dec sp
0000048F  3A00              cmp al,[bx+si]
00000491  0000              add [bx+si],al
00000493  005A58            add [bp+si+0x58],bl
00000496  43                inc bx
00000497  56                push si
00000498  42                inc dx
00000499  4E                dec si
0000049A  4D                dec bp
0000049B  0000              add [bx+si],al
0000049D  0000              add [bx+si],al
0000049F  0000              add [bx+si],al
000004A1  0000              add [bx+si],al
000004A3  0000              add [bx+si],al
000004A5  0000              add [bx+si],al
000004A7  0000              add [bx+si],al
000004A9  0000              add [bx+si],al
000004AB  0000              add [bx+si],al
000004AD  0000              add [bx+si],al
000004AF  0000              add [bx+si],al
000004B1  0000              add [bx+si],al
000004B3  0000              add [bx+si],al
000004B5  0000              add [bx+si],al
000004B7  0000              add [bx+si],al
000004B9  0000              add [bx+si],al
000004BB  0000              add [bx+si],al
000004BD  0000              add [bx+si],al
000004BF  0000              add [bx+si],al
000004C1  0000              add [bx+si],al
000004C3  0000              add [bx+si],al
000004C5  0000              add [bx+si],al
000004C7  0000              add [bx+si],al
000004C9  00BA0102          add [bp+si+0x201],bh
000004CD  33F6              xor si,si
000004CF  33FF              xor di,di
000004D1  B101              mov cl,0x1
000004D3  B502              mov ch,0x2
000004D5  32FF              xor bh,bh
000004D7  FA                cli
000004D8  B403              mov ah,0x3
000004DA  EE                out dx,al
000004DB  B306              mov bl,0x6
000004DD  EC                in al,dx
000004DE  32C4              xor al,ah
000004E0  7404              jz 0x4e6
000004E2  FECB              dec bl
000004E4  75F7              jnz 0x4dd
000004E6  EC                in al,dx
000004E7  8AE0              mov ah,al
000004E9  22E5              and ah,ch
000004EB  D0EC              shr ah,0x0
000004ED  8AD8              mov bl,al
000004EF  22D9              and bl,cl
000004F1  03F3              add si,bx
000004F3  8ADC              mov bl,ah
000004F5  03FB              add di,bx
000004F7  2403              and al,0x3
000004F9  75EB              jnz 0x4e6
000004FB  FB                sti
000004FC  C3                ret
000004FD  53                push bx
000004FE  51                push cx
000004FF  52                push dx
00000500  2EC60648FF00      mov byte [cs:0xff48],0x0
00000506  2EC60649FF00      mov byte [cs:0xff49],0x0
0000050C  2EA03BFF          mov al,[cs:0xff3b]
00000510  22060AFF          and al,[0xff0a]
00000514  7403              jz 0x519
00000516  E81700            call 0x530
00000519  2EA017FF          mov al,[cs:0xff17]
0000051D  2E0A0648FF        or al,[cs:0xff48]
00000522  2E8A2616FF        mov ah,[cs:0xff16]
00000527  2E0A2649FF        or ah,[cs:0xff49]
0000052C  5A                pop dx
0000052D  59                pop cx
0000052E  5B                pop bx
0000052F  CF                iret
00000530  56                push si
00000531  57                push di
00000532  51                push cx
00000533  E894FF            call 0x4ca
00000536  2E8B0EC605        mov cx,[cs:0x5c6]
0000053B  83C108            add cx,0x8
0000053E  7303              jnc 0x543
00000540  B9FFFF            mov cx,0xffff
00000543  3BF1              cmp si,cx
00000545  7206              jc 0x54d
00000547  2E800E48FF08      or byte [cs:0xff48],0x8
0000054D  2E8B0EC605        mov cx,[cs:0x5c6]
00000552  D1E9              shr cx,0x0
00000554  83E908            sub cx,0x8
00000557  7302              jnc 0x55b
00000559  33C9              xor cx,cx
0000055B  3BF1              cmp si,cx
0000055D  7706              ja 0x565
0000055F  2E800E48FF04      or byte [cs:0xff48],0x4
00000565  2E8B0EC805        mov cx,[cs:0x5c8]
0000056A  83C108            add cx,0x8
0000056D  7303              jnc 0x572
0000056F  B9FFFF            mov cx,0xffff
00000572  3BF9              cmp di,cx
00000574  7206              jc 0x57c
00000576  2E800E48FF02      or byte [cs:0xff48],0x2
0000057C  2E8B0EC805        mov cx,[cs:0x5c8]
00000581  D1E9              shr cx,0x0
00000583  83E908            sub cx,0x8
00000586  7302              jnc 0x58a
00000588  33C9              xor cx,cx
0000058A  3BF9              cmp di,cx
0000058C  7706              ja 0x594
0000058E  2E800E48FF01      or byte [cs:0xff48],0x1
00000594  BA0102            mov dx,0x201
00000597  EC                in al,dx
00000598  F6D0              not al
0000059A  D0E8              shr al,0x0
0000059C  D0E8              shr al,0x0
0000059E  D0E8              shr al,0x0
000005A0  D0E8              shr al,0x0
000005A2  2403              and al,0x3
000005A4  2EA249FF          mov [cs:0xff49],al
000005A8  59                pop cx
000005A9  5F                pop di
000005AA  5E                pop si
000005AB  C3                ret
000005AC  2E833E18FF14      cmp word [cs:0xff18],0x14
000005B2  7401              jz 0x5b5
000005B4  C3                ret
000005B5  1E                push ds
000005B6  E8E302            call 0x89c
000005B9  B1FF              mov cl,0xff
000005BB  B80300            mov ax,0x3
000005BE  CD60              int byte 0x60
000005C0  0E                push cs
000005C1  1F                pop ds
000005C2  BE0A07            mov si,0x70a
000005C5  BB7400            mov bx,0x74
000005C8  B152              mov cl,0x52
000005CA  2EFF162A20        call word near [cs:0x202a]
000005CF  1F                pop ds
000005D0  2EA118FF          mov ax,[cs:0xff18]
000005D4  A96000            test ax,0x60
000005D7  74F7              jz 0x5d0
000005D9  A92000            test ax,0x20
000005DC  751D              jnz 0x5fb
000005DE  E8DC02            call 0x8bd
000005E1  32C9              xor cl,cl
000005E3  B80300            mov ax,0x3
000005E6  CD60              int byte 0x60
000005E8  2EC60617FF00      mov byte [cs:0xff17],0x0
000005EE  2EC6061DFF00      mov byte [cs:0xff1d],0x0
000005F4  2EC6061EFF00      mov byte [cs:0xff1e],0x0
000005FA  C3                ret
000005FB  2EF60609FFFF      test byte [cs:0xff09],0xff
00000601  74F8              jz 0x5fb
00000603  33C0              xor ax,ax
00000605  2EFF2E00FF        jmp word far [cs:0xff00]
0000060A  45                inc bp
0000060B  7869              js 0x676
0000060D  7420              jz 0x62f
0000060F  746F              jz 0x680
00000611  20444F            and [si+0x4f],al
00000614  53                push bx
00000615  2E0D2053          cs or ax,0x5320
00000619  7572              jnz 0x68d
0000061B  653F              gs aas
0000061D  28592F            sub [bx+di+0x2f],bl
00000620  4E                dec si
00000621  29FF              sub di,di
00000623  2EF70618FF0800    test word [cs:0xff18],0x8
0000062A  7501              jnz 0x62d
0000062C  C3                ret
0000062D  1E                push ds
0000062E  2EC60675FF02      mov byte [cs:0xff75],0x2
00000634  B81E10            mov ax,0x101e
00000637  B91008            mov cx,0x810
0000063A  BF803C            mov di,0x3c80
0000063D  2EFF162620        call word near [cs:0x2026]
00000642  2E833E18FF0E      cmp word [cs:0xff18],0xe
00000648  741C              jz 0x666
0000064A  BB1E20            mov bx,0x201e
0000064D  B91010            mov cx,0x1010
00000650  B0FF              mov al,0xff
00000652  2EFF160020        call word near [cs:0x2000]
00000657  0E                push cs
00000658  1F                pop ds
00000659  BEB007            mov si,0x7b0
0000065C  BB8C00            mov bx,0x8c
0000065F  B122              mov cl,0x22
00000661  2EFF162A20        call word near [cs:0x202a]
00000666  B1FF              mov cl,0xff
00000668  B80300            mov ax,0x3
0000066B  CD60              int byte 0x60
0000066D  1F                pop ds
0000066E  2E833E18FF0E      cmp word [cs:0xff18],0xe
00000674  7503              jnz 0x679
00000676  E82900            call 0x6a2
00000679  2EF6061DFFFF      test byte [cs:0xff1d],0xff
0000067F  750A              jnz 0x68b
00000681  2EF6061EFFFF      test byte [cs:0xff1e],0xff
00000687  7502              jnz 0x68b
00000689  EBE3              jmp 0x66e
0000068B  E81400            call 0x6a2
0000068E  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000694  2EC6061EFF00      mov byte [cs:0xff1e],0x0
0000069A  32C9              xor cl,cl
0000069C  B80300            mov ax,0x3
0000069F  CD60              int byte 0x60
000006A1  C3                ret
000006A2  B81E10            mov ax,0x101e
000006A5  B91008            mov cx,0x810
000006A8  BF803C            mov di,0x3c80
000006AB  2EFF262820        jmp word near [cs:0x2028]
000006B0  50                push ax
000006B1  41                inc cx
000006B2  55                push bp
000006B3  53                push bx
000006B4  45                inc bp
000006B5  FF2EF706          jmp word far [0x6f7]
000006B9  18FF              sbb bh,bh
000006BB  00807501          add [bx+si+0x175],al
000006BF  C3                ret
000006C0  E8D901            call 0x89c
000006C3  0E                push cs
000006C4  1F                pop ds
000006C5  BE4508            mov si,0x845
000006C8  BB7400            mov bx,0x74
000006CB  B152              mov cl,0x52
000006CD  2EFF162A20        call word near [cs:0x202a]
000006D2  2EF70618FF0080    test word [cs:0xff18],0x8000
000006D9  75F7              jnz 0x6d2
000006DB  A033FF            mov al,[0xff33]
000006DE  F6D8              neg al
000006E0  040A              add al,0xa
000006E2  E87900            call 0x75e
000006E5  50                push ax
000006E6  0430              add al,0x30
000006E8  B401              mov ah,0x1
000006EA  BBCC00            mov bx,0xcc
000006ED  B15A              mov cl,0x5a
000006EF  2EFF162220        call word near [cs:0x2022]
000006F4  58                pop ax
000006F5  F6D8              neg al
000006F7  040A              add al,0xa
000006F9  A233FF            mov [0xff33],al
000006FC  2EC60675FF01      mov byte [cs:0xff75],0x1
00000702  E8C601            call 0x8cb
00000705  2EC60617FF00      mov byte [cs:0xff17],0x0
0000070B  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000711  2EC6061EFF00      mov byte [cs:0xff1e],0x0
00000717  B2FF              mov dl,0xff
00000719  B406              mov ah,0x6
0000071B  CD21              int byte 0x21
0000071D  7510              jnz 0x72f
0000071F  2EA017FF          mov al,[cs:0xff17]
00000723  2E0A061DFF        or al,[cs:0xff1d]
00000728  2E0A061EFF        or al,[cs:0xff1e]
0000072D  74E8              jz 0x717
0000072F  E88B01            call 0x8bd
00000732  2EC60617FF00      mov byte [cs:0xff17],0x0
00000738  2EC6061DFF00      mov byte [cs:0xff1d],0x0
0000073E  2EC6061EFF00      mov byte [cs:0xff1e],0x0
00000744  C3                ret
00000745  53                push bx
00000746  7065              jo 0x7ad
00000748  6564206368        and [fs:bp+di+0x68],ah
0000074D  61                popa
0000074E  6E                outsb
0000074F  67650D5365        gs a32 or ax,0x6553
00000754  6C                insb
00000755  65637420          arpl [gs:si+0x20],si
00000759  302D              xor [di],ch
0000075B  393A              cmp [bp+si],di
0000075D  FFC6              inc si
0000075F  06                push es
00000760  29FF              sub di,di
00000762  00F6              add dh,dh
00000764  06                push es
00000765  29FF              sub di,di
00000767  FF74F9            push word [si-0x7]
0000076A  8A2629FF          mov ah,[0xff29]
0000076E  80FC1B            cmp ah,0x1b
00000771  F9                stc
00000772  7501              jnz 0x775
00000774  C3                ret
00000775  80EC30            sub ah,0x30
00000778  80FC0A            cmp ah,0xa
0000077B  73E6              jnc 0x763
0000077D  F8                clc
0000077E  8AC4              mov al,ah
00000780  C3                ret
00000781  2E813E18FF0401    cmp word [cs:0xff18],0x104
00000788  7401              jz 0x78b
0000078A  C3                ret
0000078B  E81000            call 0x79e
0000078E  2EC60617FF00      mov byte [cs:0xff17],0x0
00000794  2E813E18FF0401    cmp word [cs:0xff18],0x104
0000079B  74F7              jz 0x794
0000079D  C3                ret
0000079E  2EF6063BFFFF      test byte [cs:0xff3b],0xff
000007A4  7401              jz 0x7a7
000007A6  C3                ret
000007A7  2EF6060AFFFF      test byte [cs:0xff0a],0xff
000007AD  7501              jnz 0x7b0
000007AF  C3                ret
000007B0  B90301            mov cx,0x103
000007B3  D2E5              shl ch,cl
000007B5  91                xchg ax,cx
000007B6  B9FFFF            mov cx,0xffff
000007B9  BA0102            mov dx,0x201
000007BC  EC                in al,dx
000007BD  84C4              test ah,al
000007BF  E0FB              loopne 0x7bc
000007C1  E32B              jcxz 0x7ee
000007C3  E804FD            call 0x4ca
000007C6  83FEFF            cmp si,0xffffffffffffffff
000007C9  7423              jz 0x7ee
000007CB  83FFFF            cmp di,0xffffffffffffffff
000007CE  741E              jz 0x7ee
000007D0  0BF6              or si,si
000007D2  741A              jz 0x7ee
000007D4  0BFF              or di,di
000007D6  7416              jz 0x7ee
000007D8  2E8936C605        mov [cs:0x5c6],si
000007DD  2E893EC805        mov [cs:0x5c8],di
000007E2  2EC6063BFFFF      mov byte [cs:0xff3b],0xff
000007E8  2EC60675FF01      mov byte [cs:0xff75],0x1
000007EE  C3                ret
000007EF  2E813E18FF0408    cmp word [cs:0xff18],0x804
000007F6  7401              jz 0x7f9
000007F8  C3                ret
000007F9  2EF6063BFFFF      test byte [cs:0xff3b],0xff
000007FF  7501              jnz 0x802
00000801  C3                ret
00000802  2EC60675FF01      mov byte [cs:0xff75],0x1
00000808  2EC6063BFF00      mov byte [cs:0xff3b],0x0
0000080E  2E813E18FF0408    cmp word [cs:0xff18],0x804
00000815  74F7              jz 0x80e
00000817  C3                ret
00000818  2EA11BFF          mov ax,[cs:0xff1b]
0000081C  02C4              add al,ah
0000081E  80D400            adc ah,0x0
00000821  2E03062B09        add ax,[cs:0x92b]
00000826  2EA32B09          mov [cs:0x92b],ax
0000082A  C3                ret
0000082B  0000              add [bx+si],al
0000082D  2E813E18FF0040    cmp word [cs:0xff18],0x4000
00000834  F8                clc
00000835  7401              jz 0x838
00000837  C3                ret
00000838  1E                push ds
00000839  E86000            call 0x89c
0000083C  B1FF              mov cl,0xff
0000083E  B80300            mov ax,0x3
00000841  CD60              int byte 0x60
00000843  0E                push cs
00000844  1F                pop ds
00000845  BE8309            mov si,0x983
00000848  BB7400            mov bx,0x74
0000084B  B152              mov cl,0x52
0000084D  2EFF162A20        call word near [cs:0x202a]
00000852  1F                pop ds
00000853  2EA118FF          mov ax,[cs:0xff18]
00000857  A96000            test ax,0x60
0000085A  74F7              jz 0x853
0000085C  A92000            test ax,0x20
0000085F  9C                pushf
00000860  E85A00            call 0x8bd
00000863  2EC60617FF00      mov byte [cs:0xff17],0x0
00000869  2EC6061DFF00      mov byte [cs:0xff1d],0x0
0000086F  2EC6061EFF00      mov byte [cs:0xff1e],0x0
00000875  32C9              xor cl,cl
00000877  B80300            mov ax,0x3
0000087A  CD60              int byte 0x60
0000087C  9D                popf
0000087D  F9                stc
0000087E  7401              jz 0x881
00000880  C3                ret
00000881  F8                clc
00000882  C3                ret
00000883  52                push dx
00000884  657374            gs jnc 0x8fb
00000887  6F                outsw
00000888  7265              jc 0x8ef
0000088A  204761            and [bx+0x61],al
0000088D  6D                insw
0000088E  650D2053          gs or ax,0x5320
00000892  7572              jnz 0x906
00000894  653F              gs aas
00000896  28592F            sub [bx+di+0x2f],bl
00000899  4E                dec si
0000089A  29FF              sub di,di
0000089C  2EC60675FF02      mov byte [cs:0xff75],0x2
000008A2  B8460C            mov ax,0xc46
000008A5  B92810            mov cx,0x1028
000008A8  BF803C            mov di,0x3c80
000008AB  2EFF162620        call word near [cs:0x2026]
000008B0  BB461A            mov bx,0x1a46
000008B3  B9281E            mov cx,0x1e28
000008B6  B0FF              mov al,0xff
000008B8  2EFF260020        jmp word near [cs:0x2000]
000008BD  B8460C            mov ax,0xc46
000008C0  B92810            mov cx,0x1028
000008C3  BF803C            mov di,0x3c80
000008C6  2EFF262820        jmp word near [cs:0x2028]
000008CB  52                push dx
000008CC  B2FF              mov dl,0xff
000008CE  B406              mov ah,0x6
000008D0  CD21              int byte 0x21
000008D2  75F8              jnz 0x8cc
000008D4  5A                pop dx
000008D5  C3                ret
000008D6  1E                push ds
000008D7  2E893E510A        mov [cs:0xa51],di
000008DC  2E8C06530A        mov word [cs:0xa53],es
000008E1  2E8916550A        mov [cs:0xa55],dx
000008E6  2E8C1E570A        mov word [cs:0xa57],ds
000008EB  B9F60A            mov cx,0xaf6
000008EE  32C0              xor al,al
000008F0  F3AA              rep stosb
000008F2  2E8B3E510A        mov di,[cs:0xa51]
000008F7  8BC7              mov ax,di
000008F9  47                inc di
000008FA  050102            add ax,0x201
000008FD  B9FF00            mov cx,0xff
00000900  AB                stosw
00000901  050900            add ax,0x9
00000904  E2FA              loop 0x900
00000906  0E                push cs
00000907  1F                pop ds
00000908  BA590A            mov dx,0xa59
0000090B  B41A              mov ah,0x1a
0000090D  CD21              int byte 0x21
0000090F  2EC516550A        lds dx,word [cs:0xa55]
00000914  8BCA              mov cx,dx
00000916  B44E              mov ah,0x4e
00000918  CD21              int byte 0x21
0000091A  7233              jc 0x94f
0000091C  0E                push cs
0000091D  1F                pop ds
0000091E  2EC43E510A        les di,word [cs:0xa51]
00000923  81C70102          add di,0x201
00000927  B9FE00            mov cx,0xfe
0000092A  51                push cx
0000092B  57                push di
0000092C  2E8B1E510A        mov bx,[cs:0xa51]
00000931  26FE07            inc byte [es:bx]
00000934  BE770A            mov si,0xa77
00000937  B90800            mov cx,0x8
0000093A  AC                lodsb
0000093B  3C2E              cmp al,0x2e
0000093D  7403              jz 0x942
0000093F  AA                stosb
00000940  E2F8              loop 0x93a
00000942  5F                pop di
00000943  59                pop cx
00000944  B44F              mov ah,0x4f
00000946  CD21              int byte 0x21
00000948  7205              jc 0x94f
0000094A  83C709            add di,0x9
0000094D  E2DB              loop 0x92a
0000094F  1F                pop ds
00000950  C3                ret
00000951  0000              add [bx+si],al
00000953  0000              add [bx+si],al
00000955  0000              add [bx+si],al
00000957  0000              add [bx+si],al
00000959  0000              add [bx+si],al
0000095B  0000              add [bx+si],al
0000095D  0000              add [bx+si],al
0000095F  0000              add [bx+si],al
00000961  0000              add [bx+si],al
00000963  0000              add [bx+si],al
00000965  0000              add [bx+si],al
00000967  0000              add [bx+si],al
00000969  0000              add [bx+si],al
0000096B  0000              add [bx+si],al
0000096D  0000              add [bx+si],al
0000096F  0000              add [bx+si],al
00000971  0000              add [bx+si],al
00000973  0000              add [bx+si],al
00000975  0000              add [bx+si],al
00000977  0000              add [bx+si],al
00000979  0000              add [bx+si],al
0000097B  0000              add [bx+si],al
0000097D  0000              add [bx+si],al
0000097F  0000              add [bx+si],al
00000981  0000              add [bx+si],al
00000983  003C              add [si],bh
00000985  007503            add [di+0x3],dh
00000988  E97601            jmp 0xb01
0000098B  57                push di
0000098C  56                push si
0000098D  1E                push ds
0000098E  06                push es
0000098F  2E89365C0F        mov [cs:0xf5c],si
00000994  2E8C1E5E0F        mov word [cs:0xf5e],ds
00000999  2E893E600F        mov [cs:0xf60],di
0000099E  2E8C06620F        mov word [cs:0xf62],es
000009A3  9C                pushf
000009A4  FC                cld
000009A5  3C07              cmp al,0x7
000009A7  730F              jnc 0x9b8
000009A9  FEC8              dec al
000009AB  33C9              xor cx,cx
000009AD  8AC8              mov cl,al
000009AF  8BE9              mov bp,cx
000009B1  03ED              add bp,bp
000009B3  2EFF96CA0A        call word near [cs:bp+0xaca]
000009B8  5B                pop bx
000009B9  9C                pushf
000009BA  58                pop ax
000009BB  83E3FE            and bx,0xfffffffffffffffe
000009BE  250100            and ax,0x1
000009C1  0BC3              or ax,bx
000009C3  50                push ax
000009C4  9D                popf
000009C5  07                pop es
000009C6  1F                pop ds
000009C7  5E                pop si
000009C8  5F                pop di
000009C9  C3                ret
000009CA  D6                salc
000009CB  0AFF              or bh,bh
000009CD  0A2F              or ch,[bx]
000009CF  0C6F              or al,0x6f
000009D1  0BAE0B24          or bp,[bp+0x240b]
000009D5  0C2E              or al,0x2e
000009D7  C706600F00C0      mov word [0xf60],0xc000
000009DD  2E8C0E620F        mov word [cs:0xf62],cs
000009E2  8AC4              mov al,ah
000009E4  0AC0              or al,al
000009E6  7904              jns 0x9ec
000009E8  247F              and al,0x7f
000009EA  0420              add al,0x20
000009EC  B10B              mov cl,0xb
000009EE  F6E1              mul cl
000009F0  05680F            add ax,0xf68
000009F3  2EA35C0F          mov [cs:0xf5c],ax
000009F7  2E8C0E5E0F        mov word [cs:0xf5e],cs
000009FC  E93001            jmp 0xb2f
000009FF  2EC43E600F        les di,word [cs:0xf60]
00000A04  57                push di
00000A05  06                push es
00000A06  2EC706600F0000    mov word [cs:0xf60],0x0
00000A0D  8CC8              mov ax,cs
00000A0F  050030            add ax,0x3000
00000A12  8EC0              mov es,ax
00000A14  2EA3620F          mov [cs:0xf62],ax
00000A18  E82701            call 0xb42
00000A1B  8BD8              mov bx,ax
00000A1D  B90100            mov cx,0x1
00000A20  E86102            call 0xc84
00000A23  2E8B0E640F        mov cx,[cs:0xf64]
00000A28  49                dec cx
00000A29  26803E000000      cmp byte [es:0x0],0x0
00000A2F  742A              jz 0xa5b
00000A31  2EC706600F0000    mov word [cs:0xf60],0x0
00000A38  B90400            mov cx,0x4
00000A3B  E84602            call 0xc84
00000A3E  268B0E0000        mov cx,[es:0x0]
00000A43  2E803E14FF00      cmp byte [cs:0xff14],0x0
00000A49  7410              jz 0xa5b
00000A4B  8BD1              mov dx,cx
00000A4D  B001              mov al,0x1
00000A4F  B90000            mov cx,0x0
00000A52  B442              mov ah,0x42
00000A54  CD21              int byte 0x21
00000A56  268B0E0200        mov cx,[es:0x2]
00000A5B  2EC706600F0000    mov word [cs:0xf60],0x0
00000A62  E81F02            call 0xc84
00000A65  50                push ax
00000A66  E82A02            call 0xc93
00000A69  5A                pop dx
00000A6A  07                pop es
00000A6B  5F                pop di
00000A6C  E92E02            jmp 0xc9d
00000A6F  8ADC              mov bl,ah
00000A71  32FF              xor bh,bh
00000A73  03DB              add bx,bx
00000A75  2E8BB7A00B        mov si,[cs:bx+0xba0]
00000A7A  8CC8              mov ax,cs
00000A7C  050010            add ax,0x1000
00000A7F  8EC0              mov es,ax
00000A81  050010            add ax,0x1000
00000A84  8ED8              mov ds,ax
00000A86  8B34              mov si,[si]
00000A88  BF00B0            mov di,0xb000
00000A8B  B90008            mov cx,0x800
00000A8E  F3A5              rep movsw
00000A90  BF00B0            mov di,0xb000
00000A93  B90F00            mov cx,0xf
00000A96  26810500B0        add word [es:di],0xb000
00000A9B  47                inc di
00000A9C  47                inc di
00000A9D  E2F7              loop 0xa96
00000A9F  C3                ret
00000AA0  0018              add [bx+si],bl
00000AA2  0018              add [bx+si],bl
00000AA4  0018              add [bx+si],bl
00000AA6  0018              add [bx+si],bl
00000AA8  0218              add bl,[bx+si]
00000AAA  0218              add bl,[bx+si]
00000AAC  0418              add al,0x18
00000AAE  2EC43E600F        les di,word [cs:0xf60]
00000AB3  57                push di
00000AB4  06                push es
00000AB5  2EC706600F0000    mov word [cs:0xf60],0x0
00000ABC  8CC8              mov ax,cs
00000ABE  050030            add ax,0x3000
00000AC1  8EC0              mov es,ax
00000AC3  2EA3620F          mov [cs:0xf62],ax
00000AC7  E87800            call 0xb42
00000ACA  8BD8              mov bx,ax
00000ACC  B90400            mov cx,0x4
00000ACF  E8B201            call 0xc84
00000AD2  268B0E0000        mov cx,[es:0x0]
00000AD7  2EF60615FFFF      test byte [cs:0xff15],0xff
00000ADD  7510              jnz 0xaef
00000ADF  8BD1              mov dx,cx
00000AE1  B001              mov al,0x1
00000AE3  B90000            mov cx,0x0
00000AE6  B442              mov ah,0x42
00000AE8  CD21              int byte 0x21
00000AEA  268B0E0200        mov cx,[es:0x2]
00000AEF  07                pop es
00000AF0  5F                pop di
00000AF1  2E893E600F        mov [cs:0xf60],di
00000AF6  2E8C06620F        mov word [cs:0xf62],es
00000AFB  E88601            call 0xc84
00000AFE  E99201            jmp 0xc93
00000B01  1E                push ds
00000B02  53                push bx
00000B03  8CC8              mov ax,cs
00000B05  050020            add ax,0x2000
00000B08  8ED8              mov ds,ax
00000B0A  0E                push cs
00000B0B  07                pop es
00000B0C  BE0090            mov si,0x9000
00000B0F  BF0030            mov di,0x3000
00000B12  B90038            mov cx,0x3800
00000B15  AD                lodsw
00000B16  268B15            mov dx,[es:di]
00000B19  AB                stosw
00000B1A  8954FE            mov [si-0x2],dx
00000B1D  E2F6              loop 0xb15
00000B1F  5B                pop bx
00000B20  1F                pop ds
00000B21  2EFF27            jmp word near [cs:bx]
00000B24  E81B00            call 0xb42
00000B27  7301              jnc 0xb2a
00000B29  C3                ret
00000B2A  8BD8              mov bx,ax
00000B2C  E96401            jmp 0xc93
00000B2F  E81000            call 0xb42
00000B32  7301              jnc 0xb35
00000B34  C3                ret
00000B35  2E8B0E640F        mov cx,[cs:0xf64]
00000B3A  8BD8              mov bx,ax
00000B3C  E84501            call 0xc84
00000B3F  E95101            jmp 0xc93
00000B42  2EC706640FFFFF    mov word [cs:0xf64],0xffff
00000B49  2EC706660FFFFF    mov word [cs:0xf66],0xffff
00000B50  2EC51E5C0F        lds bx,word [cs:0xf5c]
00000B55  8A07              mov al,[bx]
00000B57  0431              add al,0x31
00000B59  2EA2410D          mov [cs:0xd41],al
00000B5D  2EA25E0D          mov [cs:0xd5e],al
00000B61  43                inc bx
00000B62  8A07              mov al,[bx]
00000B64  43                inc bx
00000B65  8BD3              mov dx,bx
00000B67  2EA2790D          mov [cs:0xd79],al
00000B6B  0AC0              or al,al
00000B6D  7405              jz 0xb74
00000B6F  0E                push cs
00000B70  1F                pop ds
00000B71  BA3B0D            mov dx,0xd3b
00000B74  B8003D            mov ax,0x3d00
00000B77  CD21              int byte 0x21
00000B79  7361              jnc 0xbdc
00000B7B  3D0200            cmp ax,0x2
00000B7E  7403              jz 0xb83
00000B80  E9CF02            jmp 0xe52
00000B83  2EF60678FFFF      test byte [cs:0xff78],0xff
00000B89  7542              jnz 0xbcd
00000B8B  06                push es
00000B8C  E813FD            call 0x8a2
00000B8F  0E                push cs
00000B90  1F                pop ds
00000B91  BE470D            mov si,0xd47
00000B94  BB6C00            mov bx,0x6c
00000B97  B14A              mov cl,0x4a
00000B99  2EFF162A20        call word near [cs:0x202a]
00000B9E  E82AFD            call 0x8cb
00000BA1  52                push dx
00000BA2  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000BA8  B2FF              mov dl,0xff
00000BAA  B406              mov ah,0x6
00000BAC  CD21              int byte 0x21
00000BAE  7508              jnz 0xbb8
00000BB0  2EF6061DFFFF      test byte [cs:0xff1d],0xff
00000BB6  74F0              jz 0xba8
00000BB8  5A                pop dx
00000BB9  E801FD            call 0x8bd
00000BBC  07                pop es
00000BBD  0E                push cs
00000BBE  1F                pop ds
00000BBF  B40D              mov ah,0xd
00000BC1  CD21              int byte 0x21
00000BC3  BA7E0D            mov dx,0xd7e
00000BC6  B410              mov ah,0x10
00000BC8  CD21              int byte 0x21
00000BCA  E975FF            jmp 0xb42
00000BCD  0E                push cs
00000BCE  1F                pop ds
00000BCF  B40D              mov ah,0xd
00000BD1  CD21              int byte 0x21
00000BD3  BA7E0D            mov dx,0xd7e
00000BD6  B410              mov ah,0x10
00000BD8  CD21              int byte 0x21
00000BDA  F9                stc
00000BDB  C3                ret
00000BDC  2EC6061DFF00      mov byte [cs:0xff1d],0x0
00000BE2  2EF606790DFF      test byte [cs:0xd79],0xff
00000BE8  7501              jnz 0xbeb
00000BEA  C3                ret
00000BEB  50                push ax
00000BEC  8BD8              mov bx,ax
00000BEE  2EA0790D          mov al,[cs:0xd79]
00000BF2  32E4              xor ah,ah
00000BF4  48                dec ax
00000BF5  03C0              add ax,ax
00000BF7  03C0              add ax,ax
00000BF9  8BD0              mov dx,ax
00000BFB  B000              mov al,0x0
00000BFD  B90000            mov cx,0x0
00000C00  B442              mov ah,0x42
00000C02  CD21              int byte 0x21
00000C04  7303              jnc 0xc09
00000C06  E94902            jmp 0xe52
00000C09  0E                push cs
00000C0A  1F                pop ds
00000C0B  BA7A0D            mov dx,0xd7a
00000C0E  B90400            mov cx,0x4
00000C11  B43F              mov ah,0x3f
00000C13  CD21              int byte 0x21
00000C15  7303              jnc 0xc1a
00000C17  E93802            jmp 0xe52
00000C1A  8B167A0D          mov dx,[0xd7a]
00000C1E  8B0E7C0D          mov cx,[0xd7c]
00000C22  B000              mov al,0x0
00000C24  B442              mov ah,0x42
00000C26  CD21              int byte 0x21
00000C28  0E                push cs
00000C29  1F                pop ds
00000C2A  BA640F            mov dx,0xf64
00000C2D  B90400            mov cx,0x4
00000C30  B43F              mov ah,0x3f
00000C32  CD21              int byte 0x21
00000C34  7303              jnc 0xc39
00000C36  E91902            jmp 0xe52
00000C39  58                pop ax
00000C3A  C3                ret
00000C3B  7A65              jpe 0xca2
00000C3D  6C                insb
00000C3E  7265              jc 0xca5
00000C40  7331              jnc 0xc73
00000C42  2E7361            {pn} jnc 0xca6
00000C45  7200              jc 0xc47
00000C47  2020              and [bx+si],ah
00000C49  2020              and [bx+si],ah
00000C4B  50                push ax
00000C4C  6C                insb
00000C4D  6561              gs popa
00000C4F  7365              jnc 0xcb6
00000C51  0D2069            or ax,0x6920
00000C54  6E                outsb
00000C55  7365              jnc 0xcbc
00000C57  7274              jc 0xccd
00000C59  204449            and [si+0x49],al
00000C5C  53                push bx
00000C5D  4B                dec bx
00000C5E  310D              xor [di],cx
00000C60  2020              and [bx+si],ah
00000C62  2020              and [bx+si],ah
00000C64  2020              and [bx+si],ah
00000C66  61                popa
00000C67  6E                outsb
00000C68  640D2070          fs or ax,0x7020
00000C6C  7265              jc 0xcd3
00000C6E  7373              jnc 0xce3
00000C70  20616E            and [bx+di+0x6e],ah
00000C73  7920              jns 0xc95
00000C75  6B6579FF          imul sp,[di+0x79],0xffffffffffffffff
00000C79  0000              add [bx+si],al
00000C7B  0000              add [bx+si],al
00000C7D  006475            add [si+0x75],ah
00000C80  6D                insw
00000C81  6D                insw
00000C82  7900              jns 0xc84
00000C84  2EC516600F        lds dx,word [cs:0xf60]
00000C89  B43F              mov ah,0x3f
00000C8B  CD21              int byte 0x21
00000C8D  7303              jnc 0xc92
00000C8F  E9C001            jmp 0xe52
00000C92  C3                ret
00000C93  B43E              mov ah,0x3e
00000C95  CD21              int byte 0x21
00000C97  7303              jnc 0xc9c
00000C99  E9B601            jmp 0xe52
00000C9C  C3                ret
00000C9D  1E                push ds
00000C9E  8CC8              mov ax,cs
00000CA0  050030            add ax,0x3000
00000CA3  8ED8              mov ds,ax
00000CA5  BE0000            mov si,0x0
00000CA8  E80200            call 0xcad
00000CAB  1F                pop ds
00000CAC  C3                ret
00000CAD  33DB              xor bx,bx
00000CAF  AC                lodsb
00000CB0  4A                dec dx
00000CB1  2407              and al,0x7
00000CB3  8AD8              mov bl,al
00000CB5  03DB              add bx,bx
00000CB7  2EFFA7BC0D        jmp word near [cs:bx+0xdbc]
00000CBC  CC                int3
00000CBD  0DD10D            or ax,0xdd1
00000CC0  130E340E          adc cx,[0xe34]
00000CC4  730E              jnc 0xcd4
00000CC6  9C                pushf
00000CC7  0E                push cs
00000CC8  BA0EF5            mov dx,0xf50e
00000CCB  0E                push cs
00000CCC  8BCA              mov cx,dx
00000CCE  F3A4              rep movsb
00000CD0  C3                ret
00000CD1  8BEE              mov bp,si
00000CD3  E83200            call 0xd08
00000CD6  AC                lodsb
00000CD7  E80600            call 0xce0
00000CDA  F3AA              rep stosb
00000CDC  4A                dec dx
00000CDD  75F7              jnz 0xcd6
00000CDF  C3                ret
00000CE0  55                push bp
00000CE1  8AE0              mov ah,al
00000CE3  80E4F0            and ah,0xf0
00000CE6  B90100            mov cx,0x1
00000CE9  3EF646000F        test byte [ds:bp+0x0],0xf
00000CEE  7516              jnz 0xd06
00000CF0  3E3A6600          cmp ah,[ds:bp+0x0]
00000CF4  7404              jz 0xcfa
00000CF6  45                inc bp
00000CF7  45                inc bp
00000CF8  EBEF              jmp 0xce9
00000CFA  8AC8              mov cl,al
00000CFC  3E8A4601          mov al,[ds:bp+0x1]
00000D00  83E10F            and cx,0xf
00000D03  83C102            add cx,0x2
00000D06  5D                pop bp
00000D07  C3                ret
00000D08  AC                lodsb
00000D09  4A                dec dx
00000D0A  3CFF              cmp al,0xff
00000D0C  7501              jnz 0xd0f
00000D0E  C3                ret
00000D0F  46                inc si
00000D10  4A                dec dx
00000D11  EBF5              jmp 0xd08
00000D13  AC                lodsb
00000D14  4A                dec dx
00000D15  8AE0              mov ah,al
00000D17  AC                lodsb
00000D18  B90100            mov cx,0x1
00000D1B  8AD8              mov bl,al
00000D1D  80E3F0            and bl,0xf0
00000D20  3ADC              cmp bl,ah
00000D22  750A              jnz 0xd2e
00000D24  8AC8              mov cl,al
00000D26  83E10F            and cx,0xf
00000D29  83C103            add cx,0x3
00000D2C  AC                lodsb
00000D2D  4A                dec dx
00000D2E  F3AA              rep stosb
00000D30  4A                dec dx
00000D31  75E4              jnz 0xd17
00000D33  C3                ret
00000D34  8BEE              mov bp,si
00000D36  E8CFFF            call 0xd08
00000D39  AC                lodsb
00000D3A  E80600            call 0xd43
00000D3D  F3AA              rep stosb
00000D3F  4A                dec dx
00000D40  75F7              jnz 0xd39
00000D42  C3                ret
00000D43  55                push bp
00000D44  8AE0              mov ah,al
00000D46  80E40F            and ah,0xf
00000D49  B90100            mov cx,0x1
00000D4C  3EF64600F0        test byte [ds:bp+0x0],0xf0
00000D51  751E              jnz 0xd71
00000D53  3E3A6600          cmp ah,[ds:bp+0x0]
00000D57  7404              jz 0xd5d
00000D59  45                inc bp
00000D5A  45                inc bp
00000D5B  EBEF              jmp 0xd4c
00000D5D  D0E8              shr al,0x0
00000D5F  D0E8              shr al,0x0
00000D61  D0E8              shr al,0x0
00000D63  D0E8              shr al,0x0
00000D65  8AC8              mov cl,al
00000D67  3E8A4601          mov al,[ds:bp+0x1]
00000D6B  83E10F            and cx,0xf
00000D6E  83C102            add cx,0x2
00000D71  5D                pop bp
00000D72  C3                ret
00000D73  AC                lodsb
00000D74  4A                dec dx
00000D75  8AE0              mov ah,al
00000D77  AC                lodsb
00000D78  B90100            mov cx,0x1
00000D7B  8AD8              mov bl,al
00000D7D  80E30F            and bl,0xf
00000D80  3ADC              cmp bl,ah
00000D82  7512              jnz 0xd96
00000D84  D0E8              shr al,0x0
00000D86  D0E8              shr al,0x0
00000D88  D0E8              shr al,0x0
00000D8A  D0E8              shr al,0x0
00000D8C  8AC8              mov cl,al
00000D8E  83E10F            and cx,0xf
00000D91  83C103            add cx,0x3
00000D94  AC                lodsb
00000D95  4A                dec dx
00000D96  F3AA              rep stosb
00000D98  4A                dec dx
00000D99  75DC              jnz 0xd77
00000D9B  C3                ret
00000D9C  AC                lodsb
00000D9D  B90100            mov cx,0x1
00000DA0  3804              cmp [si],al
00000DA2  7510              jnz 0xdb4
00000DA4  8A4C01            mov cl,[si+0x1]
00000DA7  81E1FF00          and cx,0xff
00000DAB  83C102            add cx,0x2
00000DAE  83C602            add si,0x2
00000DB1  83EA02            sub dx,0x2
00000DB4  F3AA              rep stosb
00000DB6  4A                dec dx
00000DB7  75E3              jnz 0xd9c
00000DB9  C3                ret
00000DBA  8BEE              mov bp,si
00000DBC  AD                lodsw
00000DBD  83EA02            sub dx,0x2
00000DC0  3DFFFF            cmp ax,0xffff
00000DC3  75F7              jnz 0xdbc
00000DC5  AC                lodsb
00000DC6  E80600            call 0xdcf
00000DC9  F3AA              rep stosb
00000DCB  4A                dec dx
00000DCC  75F7              jnz 0xdc5
00000DCE  C3                ret
00000DCF  55                push bp
00000DD0  B90100            mov cx,0x1
00000DD3  3E837E00FF        cmp word [ds:bp+0x0],0xffffffffffffffff
00000DD8  7419              jz 0xdf3
00000DDA  3E3A4600          cmp al,[ds:bp+0x0]
00000DDE  7404              jz 0xde4
00000DE0  45                inc bp
00000DE1  45                inc bp
00000DE2  EBEF              jmp 0xdd3
00000DE4  AC                lodsb
00000DE5  4A                dec dx
00000DE6  8AC8              mov cl,al
00000DE8  3E8A4601          mov al,[ds:bp+0x1]
00000DEC  81E1FF00          and cx,0xff
00000DF0  83C102            add cx,0x2
00000DF3  5D                pop bp
00000DF4  C3                ret
00000DF5  AC                lodsb
00000DF6  4A                dec dx
00000DF7  8AE0              mov ah,al
00000DF9  AC                lodsb
00000DFA  B90100            mov cx,0x1
00000DFD  3AC4              cmp al,ah
00000DFF  7510              jnz 0xe11
00000E01  AC                lodsb
00000E02  8AC8              mov cl,al
00000E04  AC                lodsb
00000E05  86C1              xchg al,cl
00000E07  81E1FF00          and cx,0xff
00000E0B  83C103            add cx,0x3
00000E0E  83EA02            sub dx,0x2
00000E11  F3AA              rep stosb
00000E13  4A                dec dx
00000E14  75E3              jnz 0xdf9
00000E16  C3                ret
00000E17  C3                ret
00000E18  FB                sti
00000E19  50                push ax
00000E1A  53                push bx
00000E1B  51                push cx
00000E1C  52                push dx
00000E1D  57                push di
00000E1E  56                push si
00000E1F  55                push bp
00000E20  1E                push ds
00000E21  06                push es
00000E22  57                push di
00000E23  58                pop ax
00000E24  0AC0              or al,al
00000E26  7804              js 0xe2c
00000E28  3C02              cmp al,0x2
00000E2A  740C              jz 0xe38
00000E2C  07                pop es
00000E2D  1F                pop ds
00000E2E  5D                pop bp
00000E2F  5E                pop si
00000E30  5F                pop di
00000E31  5A                pop dx
00000E32  59                pop cx
00000E33  5B                pop bx
00000E34  58                pop ax
00000E35  32C0              xor al,al
00000E37  CF                iret
00000E38  2EC606C40200      mov byte [cs:0x2c4],0x0
00000E3E  2E803EC402F0      cmp byte [cs:0x2c4],0xf0
00000E44  72F8              jc 0xe3e
00000E46  07                pop es
00000E47  1F                pop ds
00000E48  5D                pop bp
00000E49  5E                pop si
00000E4A  5F                pop di
00000E4B  5A                pop dx
00000E4C  59                pop cx
00000E4D  5B                pop bx
00000E4E  58                pop ax
00000E4F  B001              mov al,0x1
00000E51  CF                iret
00000E52  2EC5165C0F        lds dx,word [cs:0xf5c]
00000E57  2EFF2E00FF        jmp word far [cs:0xff00]
00000E5C  0000              add [bx+si],al
00000E5E  0000              add [bx+si],al
00000E60  0000              add [bx+si],al
00000E62  0000              add [bx+si],al
00000E64  0000              add [bx+si],al
00000E66  0000              add [bx+si],al
00000E68  0215              add dl,[di]
00000E6A  4D                dec bp
00000E6B  50                push ax
00000E6C  3130              xor [bx+si],si
00000E6E  2E4D              cs dec bp
00000E70  44                inc sp
00000E71  54                push sp
00000E72  0002              add [bp+si],al
00000E74  16                push ss
00000E75  4D                dec bp
00000E76  50                push ax
00000E77  31442E            xor [si+0x2e],ax
00000E7A  4D                dec bp
00000E7B  44                inc sp
00000E7C  54                push sp
00000E7D  0002              add [bp+si],al
00000E7F  17                pop ss
00000E80  4D                dec bp
00000E81  50                push ax
00000E82  3230              xor dh,[bx+si]
00000E84  2E4D              cs dec bp
00000E86  44                inc sp
00000E87  54                push sp
00000E88  0002              add [bp+si],al
00000E8A  184D50            sbb [di+0x50],cl
00000E8D  3231              xor dh,[bx+di]
00000E8F  2E4D              cs dec bp
00000E91  44                inc sp
00000E92  54                push sp
00000E93  0002              add [bp+si],al
00000E95  194D50            sbb [di+0x50],cx
00000E98  32442E            xor al,[si+0x2e]
00000E9B  4D                dec bp
00000E9C  44                inc sp
00000E9D  54                push sp
00000E9E  0002              add [bp+si],al
00000EA0  1A4D50            sbb cl,[di+0x50]
00000EA3  3330              xor si,[bx+si]
00000EA5  2E4D              cs dec bp
00000EA7  44                inc sp
00000EA8  54                push sp
00000EA9  0002              add [bp+si],al
00000EAB  1B4D50            sbb cx,[di+0x50]
00000EAE  3331              xor si,[bx+di]
00000EB0  2E4D              cs dec bp
00000EB2  44                inc sp
00000EB3  54                push sp
00000EB4  0002              add [bp+si],al
00000EB6  1C4D              sbb al,0x4d
00000EB8  50                push ax
00000EB9  33442E            xor ax,[si+0x2e]
00000EBC  4D                dec bp
00000EBD  44                inc sp
00000EBE  54                push sp
00000EBF  0002              add [bp+si],al
00000EC1  1D4D50            sbb ax,0x504d
00000EC4  3430              xor al,0x30
00000EC6  2E4D              cs dec bp
00000EC8  44                inc sp
00000EC9  54                push sp
00000ECA  0002              add [bp+si],al
00000ECC  1E                push ds
00000ECD  4D                dec bp
00000ECE  50                push ax
00000ECF  3431              xor al,0x31
00000ED1  2E4D              cs dec bp
00000ED3  44                inc sp
00000ED4  54                push sp
00000ED5  0002              add [bp+si],al
00000ED7  1F                pop ds
00000ED8  4D                dec bp
00000ED9  50                push ax
00000EDA  3444              xor al,0x44
00000EDC  2E4D              cs dec bp
00000EDE  44                inc sp
00000EDF  54                push sp
00000EE0  0002              add [bp+si],al
00000EE2  204D50            and [di+0x50],cl
00000EE5  35302E            xor ax,0x2e30
00000EE8  4D                dec bp
00000EE9  44                inc sp
00000EEA  54                push sp
00000EEB  0002              add [bp+si],al
00000EED  214D50            and [di+0x50],cx
00000EF0  35312E            xor ax,0x2e31
00000EF3  4D                dec bp
00000EF4  44                inc sp
00000EF5  54                push sp
00000EF6  0002              add [bp+si],al
00000EF8  224D50            and cl,[di+0x50]
00000EFB  35442E            xor ax,0x2e44
00000EFE  4D                dec bp
00000EFF  44                inc sp
00000F00  54                push sp
00000F01  0002              add [bp+si],al
00000F03  234D50            and cx,[di+0x50]
00000F06  36302E4D44        xor [ss:0x444d],ch
00000F0B  54                push sp
00000F0C  0002              add [bp+si],al
00000F0E  244D              and al,0x4d
00000F10  50                push ax
00000F11  36312E4D44        xor [ss:0x444d],bp
00000F16  54                push sp
00000F17  0002              add [bp+si],al
00000F19  254D50            and ax,0x504d
00000F1C  36322E4D44        xor ch,[ss:0x444d]
00000F21  54                push sp
00000F22  0002              add [bp+si],al
00000F24  264D              es dec bp
00000F26  50                push ax
00000F27  3644              ss inc sp
00000F29  2E4D              cs dec bp
00000F2B  44                inc sp
00000F2C  54                push sp
00000F2D  0002              add [bp+si],al
00000F2F  27                daa
00000F30  4D                dec bp
00000F31  50                push ax
00000F32  37                aaa
00000F33  302E4D44          xor [0x444d],ch
00000F37  54                push sp
00000F38  0002              add [bp+si],al
00000F3A  284D50            sub [di+0x50],cl
00000F3D  37                aaa
00000F3E  312E4D44          xor [0x444d],bp
00000F42  54                push sp
00000F43  0002              add [bp+si],al
00000F45  294D50            sub [di+0x50],cx
00000F48  37                aaa
00000F49  322E4D44          xor ch,[0x444d]
00000F4D  54                push sp
00000F4E  0002              add [bp+si],al
00000F50  2A4D50            sub cl,[di+0x50]
00000F53  37                aaa
00000F54  332E4D44          xor bp,[0x444d]
00000F58  54                push sp
00000F59  0002              add [bp+si],al
00000F5B  2B4D50            sub cx,[di+0x50]
00000F5E  37                aaa
00000F5F  44                inc sp
00000F60  2E4D              cs dec bp
00000F62  44                inc sp
00000F63  54                push sp
00000F64  0002              add [bp+si],al
00000F66  2C4D              sub al,0x4d
00000F68  50                push ax
00000F69  3830              cmp [bx+si],dh
00000F6B  2E4D              cs dec bp
00000F6D  44                inc sp
00000F6E  54                push sp
00000F6F  0002              add [bp+si],al
00000F71  2D4D50            sub ax,0x504d
00000F74  3831              cmp [bx+di],dh
00000F76  2E4D              cs dec bp
00000F78  44                inc sp
00000F79  54                push sp
00000F7A  0002              add [bp+si],al
00000F7C  2E4D              cs dec bp
00000F7E  50                push ax
00000F7F  3832              cmp [bp+si],dh
00000F81  2E4D              cs dec bp
00000F83  44                inc sp
00000F84  54                push sp
00000F85  0002              add [bp+si],al
00000F87  2F                das
00000F88  4D                dec bp
00000F89  50                push ax
00000F8A  3833              cmp [bp+di],dh
00000F8C  2E4D              cs dec bp
00000F8E  44                inc sp
00000F8F  54                push sp
00000F90  0002              add [bp+si],al
00000F92  304D50            xor [di+0x50],cl
00000F95  3834              cmp [si],dh
00000F97  2E4D              cs dec bp
00000F99  44                inc sp
00000F9A  54                push sp
00000F9B  0002              add [bp+si],al
00000F9D  314D50            xor [di+0x50],cx
00000FA0  38442E            cmp [si+0x2e],al
00000FA3  4D                dec bp
00000FA4  44                inc sp
00000FA5  54                push sp
00000FA6  0002              add [bp+si],al
00000FA8  324D50            xor cl,[di+0x50]
00000FAB  3930              cmp [bx+si],si
00000FAD  2E4D              cs dec bp
00000FAF  44                inc sp
00000FB0  54                push sp
00000FB1  0002              add [bp+si],al
00000FB3  334D50            xor cx,[di+0x50]
00000FB6  41                inc cx
00000FB7  302E4D44          xor [0x444d],ch
00000FBB  54                push sp
00000FBC  0001              add [bx+di],al
00000FBE  0020              add [bx+si],ah
00000FC0  2020              and [bx+si],ah
00000FC2  2020              and [bx+si],ah
00000FC4  2020              and [bx+si],ah
00000FC6  2000              and [bx+si],al
00000FC8  0125              add [di],sp
00000FCA  43                inc bx
00000FCB  4D                dec bp
00000FCC  41                inc cx
00000FCD  50                push ax
00000FCE  2E4D              cs dec bp
00000FD0  44                inc sp
00000FD1  54                push sp
00000FD2  0001              add [bx+di],al
00000FD4  264D              es dec bp
00000FD6  52                push dx
00000FD7  4D                dec bp
00000FD8  50                push ax
00000FD9  2E4D              cs dec bp
00000FDB  44                inc sp
00000FDC  54                push sp
00000FDD  0001              add [bx+di],al
00000FDF  27                daa
00000FE0  53                push bx
00000FE1  54                push sp
00000FE2  4D                dec bp
00000FE3  50                push ax
00000FE4  2E4D              cs dec bp
00000FE6  44                inc sp
00000FE7  54                push sp
00000FE8  0001              add [bx+di],al
00000FEA  284253            sub [bp+si+0x53],al
00000FED  4D                dec bp
00000FEE  50                push ax
00000FEF  2E4D              cs dec bp
00000FF1  44                inc sp
00000FF2  54                push sp
00000FF3  0001              add [bx+di],al
00000FF5  29484C            sub [bx+si+0x4c],cx
00000FF8  4D                dec bp
00000FF9  50                push ax
00000FFA  2E4D              cs dec bp
00000FFC  44                inc sp
00000FFD  54                push sp
00000FFE  0001              add [bx+di],al
00001000  2A544D            sub dl,[si+0x4d]
00001003  4D                dec bp
00001004  50                push ax
00001005  2E4D              cs dec bp
00001007  44                inc sp
00001008  54                push sp
00001009  0001              add [bx+di],al
0000100B  2B4452            sub ax,[si+0x52]
0000100E  4D                dec bp
0000100F  50                push ax
00001010  2E4D              cs dec bp
00001012  44                inc sp
00001013  54                push sp
00001014  0001              add [bx+di],al
00001016  2C4C              sub al,0x4c
00001018  4C                dec sp
00001019  4D                dec bp
0000101A  50                push ax
0000101B  2E4D              cs dec bp
0000101D  44                inc sp
0000101E  54                push sp
0000101F  0001              add [bx+di],al
00001021  2D5052            sub ax,0x5250
00001024  4D                dec bp
00001025  50                push ax
00001026  2E4D              cs dec bp
00001028  44                inc sp
00001029  54                push sp
0000102A  0001              add [bx+di],al
0000102C  2E45              cs inc bp
0000102E  53                push bx
0000102F  4D                dec bp
00001030  50                push ax
00001031  2E4D              cs dec bp
00001033  44                inc sp
00001034  54                push sp
00001035  00                db 0x00
