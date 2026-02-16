00000000  46                inc si
00000001  20F0              and al,dh
00000003  20B721A7          and [bx-0x58df],dh
00000007  22E1              and ah,cl
00000009  22B122EB          and dh,[bx+di-0x14de]
0000000D  227823            and bh,[bx+si+0x23]
00000010  8623              xchg ah,[bp+di]
00000012  DC24              fsub qword [si]
00000014  E624              out byte 0x24,al
00000016  0325              add sp,[di]
00000018  2325              and sp,[di]
0000001A  4C                dec sp
0000001B  25B026            and ax,0x26b0
0000001E  7127              jno 0x47
00000020  8B27              mov sp,[bx]
00000022  D929              fldcw [bx+di]
00000024  682ABB            push word 0xbb2a
00000027  2A0F              sub cl,[bx]
00000029  2B652B            sub sp,[di+0x2b]
0000002C  AE                scasb
0000002D  2BFC              sub di,sp
0000002F  2BFA              sub di,dx
00000031  259125            and ax,0x2591
00000034  A5                movsw
00000035  27                daa
00000036  C6                db 0xc6
00000037  27                daa
00000038  94                xchg ax,sp
00000039  23A728BF          and sp,[bx-0x40d8]
0000003D  285B2C            sub [bp+di+0x2c],bl
00000040  2421              and al,0x21
00000042  C3                ret
00000043  2DF62D            sub ax,0x2df6
00000046  50                push ax
00000047  02FF              add bh,bh
00000049  E8020E            call 0xe4e
0000004C  8BF8              mov di,ax
0000004E  58                pop ax
0000004F  0AC0              or al,al
00000051  7477              jz 0xca
00000053  57                push di
00000054  80E904            sub cl,0x4
00000057  81C70040          add di,0x4000
0000005B  81FF0080          cmp di,0x8000
0000005F  7204              jc 0x65
00000061  81C7A080          add di,0x80a0
00000065  E86200            call 0xca
00000068  5F                pop di
00000069  B80000            mov ax,0x0
0000006C  E83600            call 0xa5
0000006F  B80FF0            mov ax,0xf00f
00000072  E83000            call 0xa5
00000075  51                push cx
00000076  53                push bx
00000077  8ADD              mov bl,ch
00000079  FECB              dec bl
0000007B  32FF              xor bh,bh
0000007D  03DB              add bx,bx
0000007F  32ED              xor ch,ch
00000081  26C605FF          mov byte [es:di],0xff
00000085  26C64101FF        mov byte [es:bx+di+0x1],0xff
0000008A  81C70020          add di,0x2000
0000008E  81FF0080          cmp di,0x8000
00000092  7204              jc 0x98
00000094  81C7A080          add di,0x80a0
00000098  E2E7              loop 0x81
0000009A  5B                pop bx
0000009B  59                pop cx
0000009C  B80FF0            mov ax,0xf00f
0000009F  E80300            call 0xa5
000000A2  B80000            mov ax,0x0
000000A5  57                push di
000000A6  260805            or [es:di],al
000000A9  47                inc di
000000AA  51                push cx
000000AB  8ACD              mov cl,ch
000000AD  32ED              xor ch,ch
000000AF  49                dec cx
000000B0  03C9              add cx,cx
000000B2  B0FF              mov al,0xff
000000B4  F3AA              rep stosb
000000B6  260825            or [es:di],ah
000000B9  59                pop cx
000000BA  5F                pop di
000000BB  81C70020          add di,0x2000
000000BF  81FF0080          cmp di,0x8000
000000C3  7204              jc 0xc9
000000C5  81C7A080          add di,0x80a0
000000C9  C3                ret
000000CA  B800B8            mov ax,0xb800
000000CD  8EC0              mov es,ax
000000CF  51                push cx
000000D0  57                push di
000000D1  51                push cx
000000D2  8ACD              mov cl,ch
000000D4  32ED              xor ch,ch
000000D6  33C0              xor ax,ax
000000D8  F3AB              rep stosw
000000DA  59                pop cx
000000DB  5F                pop di
000000DC  81C70020          add di,0x2000
000000E0  81FF0080          cmp di,0x8000
000000E4  7204              jc 0xea
000000E6  81C7A080          add di,0x80a0
000000EA  FEC9              dec cl
000000EC  75E2              jnz 0xd0
000000EE  59                pop cx
000000EF  C3                ret
000000F0  B800B8            mov ax,0xb800
000000F3  8EC0              mov es,ax
000000F5  BFF841            mov di,0x41f8
000000F8  B90800            mov cx,0x8
000000FB  51                push cx
000000FC  57                push di
000000FD  B91200            mov cx,0x12
00000100  51                push cx
00000101  57                push di
00000102  B93800            mov cx,0x38
00000105  33C0              xor ax,ax
00000107  F3AB              rep stosw
00000109  5F                pop di
0000010A  81C74001          add di,0x140
0000010E  59                pop cx
0000010F  E2EF              loop 0x100
00000111  5F                pop di
00000112  81C70020          add di,0x2000
00000116  81FF0080          cmp di,0x8000
0000011A  7204              jc 0x120
0000011C  81C7A080          add di,0x80a0
00000120  59                pop cx
00000121  E2D8              loop 0xfb
00000123  C3                ret
00000124  B800B8            mov ax,0xb800
00000127  8EC0              mov es,ax
00000129  BEA721            mov si,0x21a7
0000012C  B90800            mov cx,0x8
0000012F  51                push cx
00000130  BFF841            mov di,0x41f8
00000133  AD                lodsw
00000134  57                push di
00000135  B94800            mov cx,0x48
00000138  51                push cx
00000139  57                push di
0000013A  B93800            mov cx,0x38
0000013D  262105            and [es:di],ax
00000140  47                inc di
00000141  47                inc di
00000142  E2F9              loop 0x13d
00000144  5F                pop di
00000145  81C70040          add di,0x4000
00000149  81FF0080          cmp di,0x8000
0000014D  7204              jc 0x153
0000014F  81C7A080          add di,0x80a0
00000153  D1C0              rol ax,0x0
00000155  D1C0              rol ax,0x0
00000157  D1C0              rol ax,0x0
00000159  D1C0              rol ax,0x0
0000015B  D1C0              rol ax,0x0
0000015D  D1C0              rol ax,0x0
0000015F  59                pop cx
00000160  E2D6              loop 0x138
00000162  5F                pop di
00000163  81C70020          add di,0x2000
00000167  81FF0080          cmp di,0x8000
0000016B  7204              jc 0x171
0000016D  81C7A080          add di,0x80a0
00000171  B94800            mov cx,0x48
00000174  51                push cx
00000175  57                push di
00000176  B93800            mov cx,0x38
00000179  262105            and [es:di],ax
0000017C  47                inc di
0000017D  47                inc di
0000017E  E2F9              loop 0x179
00000180  5F                pop di
00000181  59                pop cx
00000182  81C70040          add di,0x4000
00000186  81FF0080          cmp di,0x8000
0000018A  7204              jc 0x190
0000018C  81C7A080          add di,0x80a0
00000190  D1C0              rol ax,0x0
00000192  D1C0              rol ax,0x0
00000194  D1C0              rol ax,0x0
00000196  D1C0              rol ax,0x0
00000198  D1C0              rol ax,0x0
0000019A  D1C0              rol ax,0x0
0000019C  E2D6              loop 0x174
0000019E  B9803E            mov cx,0x3e80
000001A1  E2FE              loop 0x1a1
000001A3  59                pop cx
000001A4  E289              loop 0x12f
000001A6  C3                ret
000001A7  FC                cld
000001A8  FF                db 0xff
000001A9  FC                cld
000001AA  FC                cld
000001AB  CC                int3
000001AC  FC                cld
000001AD  CC                int3
000001AE  CC                int3
000001AF  C0CCC0            ror ah,byte 0xc0
000001B2  C000C0            rol byte [bx+si],byte 0xc0
000001B5  0000              add [bx+si],al
000001B7  2EA2A622          mov [cs:0x22a6],al
000001BB  B800B8            mov ax,0xb800
000001BE  8EC0              mov es,ax
000001C0  80C39E            add bl,0x9e
000001C3  8AF3              mov dh,bl
000001C5  D0CE              ror dh,0x0
000001C7  D0CE              ror dh,0x0
000001C9  D0CE              ror dh,0x0
000001CB  81E20060          and dx,0x6000
000001CF  D0EB              shr bl,0x0
000001D1  D0EB              shr bl,0x0
000001D3  B8A000            mov ax,0xa0
000001D6  F6E3              mul bl
000001D8  03C2              add ax,dx
000001DA  8BF8              mov di,ax
000001DC  8AD7              mov dl,bh
000001DE  80E701            and bh,0x1
000001E1  D0EA              shr dl,0x0
000001E3  80C218            add dl,0x18
000001E6  32F6              xor dh,dh
000001E8  03FA              add di,dx
000001EA  8ACF              mov cl,bh
000001EC  02C9              add cl,cl
000001EE  02C9              add cl,cl
000001F0  B80FFF            mov ax,0xff0f
000001F3  D2EC              shr ah,cl
000001F5  D2E8              shr al,cl
000001F7  F6DF              neg bh
000001F9  80C701            add bh,0x1
000001FC  2AEF              sub ch,bh
000001FE  51                push cx
000001FF  E82C00            call 0x22e
00000202  59                pop cx
00000203  47                inc di
00000204  8ACD              mov cl,ch
00000206  D0E9              shr cl,0x0
00000208  F6C1FF            test cl,0xff
0000020B  740D              jz 0x21a
0000020D  51                push cx
0000020E  B8FFFF            mov ax,0xffff
00000211  E81A00            call 0x22e
00000214  59                pop cx
00000215  47                inc di
00000216  FEC9              dec cl
00000218  75F3              jnz 0x20d
0000021A  80E501            and ch,0x1
0000021D  7501              jnz 0x220
0000021F  C3                ret
00000220  8ACD              mov cl,ch
00000222  02C9              add cl,cl
00000224  02C9              add cl,cl
00000226  B4FF              mov ah,0xff
00000228  D2EC              shr ah,cl
0000022A  F6D4              not ah
0000022C  8AC4              mov al,ah
0000022E  2EF606A622FF      test byte [cs:0x22a6],0xff
00000234  752B              jnz 0x261
00000236  57                push di
00000237  F6D4              not ah
00000239  8AD0              mov dl,al
0000023B  80E211            and dl,0x11
0000023E  B90900            mov cx,0x9
00000241  262025            and [es:di],ah
00000244  260815            or [es:di],dl
00000247  81C70020          add di,0x2000
0000024B  81FF0080          cmp di,0x8000
0000024F  7204              jc 0x255
00000251  81C7A080          add di,0x80a0
00000255  E2EA              loop 0x241
00000257  262025            and [es:di],ah
0000025A  2499              and al,0x99
0000025C  260805            or [es:di],al
0000025F  5F                pop di
00000260  C3                ret
00000261  2E803EA62280      cmp byte [cs:0x22a6],0x80
00000267  7422              jz 0x28b
00000269  57                push di
0000026A  8AE0              mov ah,al
0000026C  F6D4              not ah
0000026E  2477              and al,0x77
00000270  B90A00            mov cx,0xa
00000273  262025            and [es:di],ah
00000276  260805            or [es:di],al
00000279  81C70020          add di,0x2000
0000027D  81FF0080          cmp di,0x8000
00000281  7204              jc 0x287
00000283  81C7A080          add di,0x80a0
00000287  E2EA              loop 0x273
00000289  5F                pop di
0000028A  C3                ret
0000028B  57                push di
0000028C  F6D0              not al
0000028E  B90A00            mov cx,0xa
00000291  262005            and [es:di],al
00000294  81C70020          add di,0x2000
00000298  81FF0080          cmp di,0x8000
0000029C  7204              jc 0x2a2
0000029E  81C7A080          add di,0x80a0
000002A2  E2ED              loop 0x291
000002A4  5F                pop di
000002A5  C3                ret
000002A6  00BF2A79          add [bx+0x792a],bh
000002AA  2E8B1EB200        mov bx,[cs:0xb2]
000002AF  EB05              jmp 0x2b6
000002B1  BF0A7B            mov di,0x7b0a
000002B4  EB00              jmp 0x2b6
000002B6  B800B8            mov ax,0xb800
000002B9  8EC0              mov es,ax
000002BB  E87E00            call 0x33c
000002BE  50                push ax
000002BF  0ADB              or bl,bl
000002C1  7410              jz 0x2d3
000002C3  57                push di
000002C4  B706              mov bh,0x6
000002C6  B044              mov al,0x44
000002C8  B433              mov ah,0x33
000002CA  E89200            call 0x35f
000002CD  FECB              dec bl
000002CF  5F                pop di
000002D0  47                inc di
000002D1  EBEC              jmp 0x2bf
000002D3  58                pop ax
000002D4  0AC0              or al,al
000002D6  7501              jnz 0x2d9
000002D8  C3                ret
000002D9  2444              and al,0x44
000002DB  B433              mov ah,0x33
000002DD  B706              mov bh,0x6
000002DF  EB7E              jmp 0x35f
000002E1  BF2A79            mov di,0x792a
000002E4  2E8B1E9000        mov bx,[cs:0x90]
000002E9  EB05              jmp 0x2f0
000002EB  BF0A7B            mov di,0x7b0a
000002EE  EB00              jmp 0x2f0
000002F0  B800B8            mov ax,0xb800
000002F3  8EC0              mov es,ax
000002F5  E84400            call 0x33c
000002F8  50                push ax
000002F9  53                push bx
000002FA  0ADB              or bl,bl
000002FC  7410              jz 0x30e
000002FE  57                push di
000002FF  B705              mov bh,0x5
00000301  B0AA              mov al,0xaa
00000303  B4FF              mov ah,0xff
00000305  E85700            call 0x35f
00000308  FECB              dec bl
0000030A  5F                pop di
0000030B  47                inc di
0000030C  EBEC              jmp 0x2fa
0000030E  5B                pop bx
0000030F  58                pop ax
00000310  0AC0              or al,al
00000312  740E              jz 0x322
00000314  57                push di
00000315  B705              mov bh,0x5
00000317  24AA              and al,0xaa
00000319  B4FF              mov ah,0xff
0000031B  E84100            call 0x35f
0000031E  5F                pop di
0000031F  47                inc di
00000320  FEC3              inc bl
00000322  B732              mov bh,0x32
00000324  2AFB              sub bh,bl
00000326  7501              jnz 0x329
00000328  C3                ret
00000329  8ADF              mov bl,bh
0000032B  57                push di
0000032C  B705              mov bh,0x5
0000032E  32C0              xor al,al
00000330  B444              mov ah,0x44
00000332  E82A00            call 0x35f
00000335  5F                pop di
00000336  47                inc di
00000337  FECB              dec bl
00000339  75F0              jnz 0x32b
0000033B  C3                ret
0000033C  B82003            mov ax,0x320
0000033F  2BC3              sub ax,bx
00000341  7216              jc 0x359
00000343  D1EB              shr bx,0x0
00000345  D1EB              shr bx,0x0
00000347  8ACB              mov cl,bl
00000349  D1EB              shr bx,0x0
0000034B  D1EB              shr bx,0x0
0000034D  80E102            and cl,0x2
00000350  02C9              add cl,cl
00000352  B0FF              mov al,0xff
00000354  D2E8              shr al,cl
00000356  F6D0              not al
00000358  C3                ret
00000359  BB3200            mov bx,0x32
0000035C  32C0              xor al,al
0000035E  C3                ret
0000035F  262025            and [es:di],ah
00000362  260805            or [es:di],al
00000365  81C70020          add di,0x2000
00000369  81FF0080          cmp di,0x8000
0000036D  7204              jc 0x373
0000036F  81C7A080          add di,0x80a0
00000373  FECF              dec bh
00000375  75E8              jnz 0x35f
00000377  C3                ret
00000378  2EC6066C2EAA      mov byte [cs:0x2e6c],0xaa
0000037E  2EC6066D2E44      mov byte [cs:0x2e6d],0x44
00000384  EB47              jmp 0x3cd
00000386  2EC6066C2EFF      mov byte [cs:0x2e6c],0xff
0000038C  2EC6066D2E88      mov byte [cs:0x2e6d],0x88
00000392  EB39              jmp 0x3cd
00000394  2EC6066C2EFF      mov byte [cs:0x2e6c],0xff
0000039A  2EC6066D2E00      mov byte [cs:0x2e6d],0x0
000003A0  02FF              add bh,bh
000003A2  E8A90A            call 0xe4e
000003A5  8BF8              mov di,ax
000003A7  8AD9              mov bl,cl
000003A9  D1EB              shr bx,0x0
000003AB  83E301            and bx,0x1
000003AE  03FB              add di,bx
000003B0  8AD9              mov bl,cl
000003B2  B800B8            mov ax,0xb800
000003B5  8EC0              mov es,ax
000003B7  AC                lodsb
000003B8  0AC0              or al,al
000003BA  7501              jnz 0x3bd
000003BC  C3                ret
000003BD  53                push bx
000003BE  1E                push ds
000003BF  56                push si
000003C0  80E301            and bl,0x1
000003C3  E83C00            call 0x402
000003C6  5E                pop si
000003C7  1F                pop ds
000003C8  5B                pop bx
000003C9  FEC3              inc bl
000003CB  EBEA              jmp 0x3b7
000003CD  AC                lodsb
000003CE  8AF8              mov bh,al
000003D0  02FF              add bh,bh
000003D2  AC                lodsb
000003D3  8AD8              mov bl,al
000003D5  E8760A            call 0xe4e
000003D8  8BF8              mov di,ax
000003DA  AC                lodsb
000003DB  8AD8              mov bl,al
000003DD  D1E8              shr ax,0x0
000003DF  250100            and ax,0x1
000003E2  03F8              add di,ax
000003E4  AC                lodsb
000003E5  32ED              xor ch,ch
000003E7  8AC8              mov cl,al
000003E9  B800B8            mov ax,0xb800
000003EC  8EC0              mov es,ax
000003EE  51                push cx
000003EF  AC                lodsb
000003F0  53                push bx
000003F1  1E                push ds
000003F2  56                push si
000003F3  80E301            and bl,0x1
000003F6  E80900            call 0x402
000003F9  5E                pop si
000003FA  1F                pop ds
000003FB  5B                pop bx
000003FC  FEC3              inc bl
000003FE  59                pop cx
000003FF  E2ED              loop 0x3ee
00000401  C3                ret
00000402  2C20              sub al,0x20
00000404  32E4              xor ah,ah
00000406  D1E0              shl ax,0x0
00000408  D1E0              shl ax,0x0
0000040A  D1E0              shl ax,0x0
0000040C  8BF0              mov si,ax
0000040E  033604F5          add si,[0xf504]
00000412  02DB              add bl,bl
00000414  02DB              add bl,bl
00000416  8ACB              mov cl,bl
00000418  57                push di
00000419  B308              mov bl,0x8
0000041B  53                push bx
0000041C  AC                lodsb
0000041D  E8A200            call 0x4c2
00000420  50                push ax
00000421  E89E00            call 0x4c2
00000424  5B                pop bx
00000425  8ADC              mov bl,ah
00000427  8AF3              mov dh,bl
00000429  32D2              xor dl,dl
0000042B  D3EB              shr bx,cl
0000042D  D3EA              shr dx,cl
0000042F  8AF2              mov dh,dl
00000431  32D2              xor dl,dl
00000433  53                push bx
00000434  52                push dx
00000435  D1EB              shr bx,0x0
00000437  D1EB              shr bx,0x0
00000439  D1EB              shr bx,0x0
0000043B  D1EB              shr bx,0x0
0000043D  1AC0              sbb al,al
0000043F  D1EA              shr dx,0x0
00000441  D1EA              shr dx,0x0
00000443  D1EA              shr dx,0x0
00000445  D1EA              shr dx,0x0
00000447  24F0              and al,0xf0
00000449  0AF0              or dh,al
0000044B  86FB              xchg bh,bl
0000044D  86F2              xchg dh,dl
0000044F  F7D3              not bx
00000451  F7D2              not dx
00000453  26211D            and [es:di],bx
00000456  26215502          and [es:di+0x2],dx
0000045A  F7D3              not bx
0000045C  F7D2              not dx
0000045E  223E6D2E          and bh,[0x2e6d]
00000462  221E6D2E          and bl,[0x2e6d]
00000466  22366D2E          and dh,[0x2e6d]
0000046A  22166D2E          and dl,[0x2e6d]
0000046E  26091D            or [es:di],bx
00000471  26095502          or [es:di+0x2],dx
00000475  5A                pop dx
00000476  5B                pop bx
00000477  86FB              xchg bh,bl
00000479  86F2              xchg dh,dl
0000047B  F7D3              not bx
0000047D  F7D2              not dx
0000047F  26211D            and [es:di],bx
00000482  26215502          and [es:di+0x2],dx
00000486  F7D3              not bx
00000488  F7D2              not dx
0000048A  223E6C2E          and bh,[0x2e6c]
0000048E  221E6C2E          and bl,[0x2e6c]
00000492  22366C2E          and dh,[0x2e6c]
00000496  22166C2E          and dl,[0x2e6c]
0000049A  26091D            or [es:di],bx
0000049D  26095502          or [es:di+0x2],dx
000004A1  81C70020          add di,0x2000
000004A5  81FF0080          cmp di,0x8000
000004A9  7204              jc 0x4af
000004AB  81C7A080          add di,0x80a0
000004AF  5B                pop bx
000004B0  FECB              dec bl
000004B2  7403              jz 0x4b7
000004B4  E964FF            jmp 0x41b
000004B7  5F                pop di
000004B8  47                inc di
000004B9  47                inc di
000004BA  80F904            cmp cl,0x4
000004BD  7401              jz 0x4c0
000004BF  C3                ret
000004C0  47                inc di
000004C1  C3                ret
000004C2  32E4              xor ah,ah
000004C4  B202              mov dl,0x2
000004C6  02C0              add al,al
000004C8  1AF6              sbb dh,dh
000004CA  80E60F            and dh,0xf
000004CD  02E4              add ah,ah
000004CF  02E4              add ah,ah
000004D1  02E4              add ah,ah
000004D3  02E4              add ah,ah
000004D5  0AE6              or ah,dh
000004D7  FECA              dec dl
000004D9  75EB              jnz 0x4c6
000004DB  C3                ret
000004DC  BB1002            mov bx,0x210
000004DF  32C0              xor al,al
000004E1  B588              mov ch,0x88
000004E3  E9D1FC            jmp 0x1b7
000004E6  1E                push ds
000004E7  2EA18B00          mov ax,[cs:0x8b]
000004EB  33D2              xor dx,dx
000004ED  E88200            call 0x572
000004F0  0E                push cs
000004F1  1F                pop ds
000004F2  BF8C25            mov di,0x258c
000004F5  B90501            mov cx,0x105
000004F8  B8BB26            mov ax,0x26bb
000004FB  BB01FF            mov bx,0xff01
000004FE  E8F900            call 0x5fa
00000501  1F                pop ds
00000502  C3                ret
00000503  1E                push ds
00000504  2EA18600          mov ax,[cs:0x86]
00000508  2E8A168500        mov dl,[cs:0x85]
0000050D  E86200            call 0x572
00000510  0E                push cs
00000511  1F                pop ds
00000512  BF8B25            mov di,0x258b
00000515  B90601            mov cx,0x106
00000518  B8BB13            mov ax,0x13bb
0000051B  BB01FF            mov bx,0xff01
0000051E  E8D900            call 0x5fa
00000521  1F                pop ds
00000522  C3                ret
00000523  1E                push ds
00000524  33DB              xor bx,bx
00000526  2E8A1E9D00        mov bl,[cs:0x9d]
0000052B  FECB              dec bl
0000052D  2E8A87AB00        mov al,[cs:bx+0xab]
00000532  32E4              xor ah,ah
00000534  33D2              xor dx,dx
00000536  E83900            call 0x572
00000539  0E                push cs
0000053A  1F                pop ds
0000053B  BF8E25            mov di,0x258e
0000053E  B90301            mov cx,0x103
00000541  B8BB37            mov ax,0x37bb
00000544  BB01FF            mov bx,0xff01
00000547  E8B000            call 0x5fa
0000054A  1F                pop ds
0000054B  C3                ret
0000054C  2EF6069300FF      test byte [cs:0x93],0xff
00000552  7501              jnz 0x555
00000554  C3                ret
00000555  1E                push ds
00000556  2EA19400          mov ax,[cs:0x94]
0000055A  33D2              xor dx,dx
0000055C  E81300            call 0x572
0000055F  0E                push cs
00000560  1F                pop ds
00000561  BF8E25            mov di,0x258e
00000564  B90301            mov cx,0x103
00000567  B8BB3E            mov ax,0x3ebb
0000056A  BB01FF            mov bx,0xff01
0000056D  E88A00            call 0x5fa
00000570  1F                pop ds
00000571  C3                ret
00000572  BF8A25            mov di,0x258a
00000575  E81900            call 0x591
00000578  B90600            mov cx,0x6
0000057B  2EF605FF          test byte [cs:di],0xff
0000057F  7401              jz 0x582
00000581  C3                ret
00000582  2EC605FF          mov byte [cs:di],0xff
00000586  47                inc di
00000587  E2F2              loop 0x57b
00000589  C3                ret
0000058A  0000              add [bx+si],al
0000058C  0000              add [bx+si],al
0000058E  0000              add [bx+si],al
00000590  00B10FBB          add [bx+di-0x44f1],dh
00000594  40                inc ax
00000595  42                inc dx
00000596  E83E00            call 0x5d7
00000599  2E8835            mov [cs:di],dh
0000059C  B101              mov cl,0x1
0000059E  BBA086            mov bx,0x86a0
000005A1  E83300            call 0x5d7
000005A4  2E887501          mov [cs:di+0x1],dh
000005A8  32C9              xor cl,cl
000005AA  BB1027            mov bx,0x2710
000005AD  E82700            call 0x5d7
000005B0  2E887502          mov [cs:di+0x2],dh
000005B4  BBE803            mov bx,0x3e8
000005B7  E83600            call 0x5f0
000005BA  2E887503          mov [cs:di+0x3],dh
000005BE  BB6400            mov bx,0x64
000005C1  E82C00            call 0x5f0
000005C4  2E887504          mov [cs:di+0x4],dh
000005C8  BB0A00            mov bx,0xa
000005CB  E82200            call 0x5f0
000005CE  2E887505          mov [cs:di+0x5],dh
000005D2  2E884506          mov [cs:di+0x6],al
000005D6  C3                ret
000005D7  32F6              xor dh,dh
000005D9  2AD1              sub dl,cl
000005DB  7210              jc 0x5ed
000005DD  2BC3              sub ax,bx
000005DF  7306              jnc 0x5e7
000005E1  0AD2              or dl,dl
000005E3  7406              jz 0x5eb
000005E5  FECA              dec dl
000005E7  FEC6              inc dh
000005E9  EBEE              jmp 0x5d9
000005EB  03C3              add ax,bx
000005ED  02D1              add dl,cl
000005EF  C3                ret
000005F0  32F6              xor dh,dh
000005F2  F7F3              div bx
000005F4  92                xchg ax,dx
000005F5  8AF2              mov dh,dl
000005F7  32D2              xor dl,dl
000005F9  C3                ret
000005FA  8BF7              mov si,di
000005FC  883E6D2E          mov [0x2e6d],bh
00000600  32FF              xor bh,bh
00000602  8A972E26          mov dl,[bx+0x262e]
00000606  88166C2E          mov [0x2e6c],dl
0000060A  8BD8              mov bx,ax
0000060C  D0ED              shr ch,0x0
0000060E  12FF              adc bh,bh
00000610  E83B08            call 0xe4e
00000613  8BF8              mov di,ax
00000615  32ED              xor ch,ch
00000617  B800B8            mov ax,0xb800
0000061A  8EC0              mov es,ax
0000061C  51                push cx
0000061D  AC                lodsb
0000061E  57                push di
0000061F  56                push si
00000620  1E                push ds
00000621  E81200            call 0x636
00000624  1F                pop ds
00000625  5E                pop si
00000626  5F                pop di
00000627  83C703            add di,0x3
0000062A  59                pop cx
0000062B  E2EF              loop 0x61c
0000062D  C3                ret
0000062E  88FF              mov bh,bh
00000630  CC                int3
00000631  AA                stosb
00000632  BB99EE            mov bx,0xee99
00000635  DD                db 0xdd
00000636  F6066D2EFF        test byte [0x2e6d],0xff
0000063B  7421              jz 0x65e
0000063D  57                push di
0000063E  51                push cx
0000063F  B90700            mov cx,0x7
00000642  26C7051111        mov word [es:di],0x1111
00000647  26C6450211        mov byte [es:di+0x2],0x11
0000064C  81C70020          add di,0x2000
00000650  81FF0080          cmp di,0x8000
00000654  7204              jc 0x65a
00000656  81C7A080          add di,0x80a0
0000065A  E2E6              loop 0x642
0000065C  59                pop cx
0000065D  5F                pop di
0000065E  3CFF              cmp al,0xff
00000660  7501              jnz 0x663
00000662  C3                ret
00000663  32E4              xor ah,ah
00000665  03C0              add ax,ax
00000667  03C0              add ax,ax
00000669  03C0              add ax,ax
0000066B  2E030602F5        add ax,[cs:0xf502]
00000670  8BF0              mov si,ax
00000672  0E                push cs
00000673  1F                pop ds
00000674  B90700            mov cx,0x7
00000677  AC                lodsb
00000678  02C0              add al,al
0000067A  02C0              add al,al
0000067C  E843FE            call 0x4c2
0000067F  2E22266C2E        and ah,[cs:0x2e6c]
00000684  260825            or [es:di],ah
00000687  E838FE            call 0x4c2
0000068A  2E22266C2E        and ah,[cs:0x2e6c]
0000068F  26086501          or [es:di+0x1],ah
00000693  E82CFE            call 0x4c2
00000696  2E22266C2E        and ah,[cs:0x2e6c]
0000069B  26086502          or [es:di+0x2],ah
0000069F  81C70020          add di,0x2000
000006A3  81FF0080          cmp di,0x8000
000006A7  7204              jc 0x6ad
000006A9  81C7A080          add di,0x80a0
000006AD  E2C8              loop 0x677
000006AF  C3                ret
000006B0  1E                push ds
000006B1  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000006B6  FEC8              dec al
000006B8  32E4              xor ah,ah
000006BA  B90E01            mov cx,0x10e
000006BD  F7E1              mul cx
000006BF  030600E2          add ax,[0xe200]
000006C3  8BF0              mov si,ax
000006C5  02FF              add bh,bh
000006C7  02FF              add bh,bh
000006C9  E88207            call 0xe4e
000006CC  8BE8              mov bp,ax
000006CE  B800B8            mov ax,0xb800
000006D1  8EC0              mov es,ax
000006D3  B91200            mov cx,0x12
000006D6  51                push cx
000006D7  8B04              mov ax,[si]
000006D9  86E0              xchg ah,al
000006DB  2EA3722E          mov [cs:0x2e72],ax
000006DF  8B4408            mov ax,[si+0x8]
000006E2  2EA3742E          mov [cs:0x2e74],ax
000006E6  8B440A            mov ax,[si+0xa]
000006E9  86E0              xchg ah,al
000006EB  2EA3762E          mov [cs:0x2e76],ax
000006EF  E86802            call 0x95a
000006F2  26887600          mov [es:bp+0x0],dh
000006F6  26885601          mov [es:bp+0x1],dl
000006FA  E85D02            call 0x95a
000006FD  26887602          mov [es:bp+0x2],dh
00000701  26885603          mov [es:bp+0x3],dl
00000705  8B4402            mov ax,[si+0x2]
00000708  86E0              xchg ah,al
0000070A  2EA3722E          mov [cs:0x2e72],ax
0000070E  8B4406            mov ax,[si+0x6]
00000711  2EA3742E          mov [cs:0x2e74],ax
00000715  8B440C            mov ax,[si+0xc]
00000718  86E0              xchg ah,al
0000071A  2EA3762E          mov [cs:0x2e76],ax
0000071E  E83902            call 0x95a
00000721  26887604          mov [es:bp+0x4],dh
00000725  26885605          mov [es:bp+0x5],dl
00000729  E82E02            call 0x95a
0000072C  26887606          mov [es:bp+0x6],dh
00000730  26885607          mov [es:bp+0x7],dl
00000734  32C0              xor al,al
00000736  8A6404            mov ah,[si+0x4]
00000739  2EA3722E          mov [cs:0x2e72],ax
0000073D  8A6405            mov ah,[si+0x5]
00000740  2EA3742E          mov [cs:0x2e74],ax
00000744  8A640E            mov ah,[si+0xe]
00000747  2EA3762E          mov [cs:0x2e76],ax
0000074B  E80C02            call 0x95a
0000074E  26887608          mov [es:bp+0x8],dh
00000752  26885609          mov [es:bp+0x9],dl
00000756  83C60F            add si,0xf
00000759  81C50020          add bp,0x2000
0000075D  81FD0080          cmp bp,0x8000
00000761  7204              jc 0x767
00000763  81C5A080          add bp,0x80a0
00000767  59                pop cx
00000768  E202              loop 0x76c
0000076A  EB03              jmp 0x76f
0000076C  E967FF            jmp 0x6d6
0000076F  1F                pop ds
00000770  C3                ret
00000771  1E                push ds
00000772  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000777  FEC8              dec al
00000779  32E4              xor ah,ah
0000077B  B9C000            mov cx,0xc0
0000077E  F7E1              mul cx
00000780  030606E2          add ax,[0xe206]
00000784  8BF0              mov si,ax
00000786  E84E01            call 0x8d7
00000789  1F                pop ds
0000078A  C3                ret
0000078B  1E                push ds
0000078C  2E8E1E2CFF        mov ds,word [cs:0xff2c]
00000791  FEC8              dec al
00000793  32E4              xor ah,ah
00000795  B9C000            mov cx,0xc0
00000798  F7E1              mul cx
0000079A  030602E2          add ax,[0xe202]
0000079E  8BF0              mov si,ax
000007A0  E83401            call 0x8d7
000007A3  1F                pop ds
000007A4  C3                ret
000007A5  1E                push ds
000007A6  BEE727            mov si,0x27e7
000007A9  0AC0              or al,al
000007AB  7414              jz 0x7c1
000007AD  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000007B2  FEC8              dec al
000007B4  32E4              xor ah,ah
000007B6  B9C000            mov cx,0xc0
000007B9  F7E1              mul cx
000007BB  03060CE2          add ax,[0xe20c]
000007BF  8BF0              mov si,ax
000007C1  E81301            call 0x8d7
000007C4  1F                pop ds
000007C5  C3                ret
000007C6  1E                push ds
000007C7  BEE727            mov si,0x27e7
000007CA  0AC0              or al,al
000007CC  7414              jz 0x7e2
000007CE  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000007D3  FEC8              dec al
000007D5  32E4              xor ah,ah
000007D7  B9C000            mov cx,0xc0
000007DA  F7E1              mul cx
000007DC  03060AE2          add ax,[0xe20a]
000007E0  8BF0              mov si,ax
000007E2  E8F200            call 0x8d7
000007E5  1F                pop ds
000007E6  C3                ret
000007E7  0000              add [bx+si],al
000007E9  0000              add [bx+si],al
000007EB  FC                cld
000007EC  FF                db 0xff
000007ED  FF                db 0xff
000007EE  3F                aas
000007EF  2AAAAAA8          sub ch,[bp+si-0x5756]
000007F3  0000              add [bx+si],al
000007F5  0000              add [bx+si],al
000007F7  0300              add ax,[bx+si]
000007F9  00C0              add al,al
000007FB  800000            add byte [bx+si],0x0
000007FE  020E38F8          add cl,[0xf838]
00000802  0003              add [bp+di],al
00000804  0000              add [bx+si],al
00000806  C082080802        rol byte [bp+si+0x808],byte 0x2
0000080B  0FBB8E0003        btc [bp+0x300],cx
00000810  0000              add [bx+si],al
00000812  C080888202        rol byte [bx+si-0x7d78],byte 0x2
00000817  0FFB8E0003        psubq mm1,[bp+0x300]
0000081C  0000              add [bx+si],al
0000081E  C080088202        rol byte [bx+si-0x7df8],byte 0x2
00000823  0E                push cs
00000824  FB                sti
00000825  8E00              mov es,word [bx+si]
00000827  0300              add ax,[bx+si]
00000829  00C0              add al,al
0000082B  82                db 0x82
0000082C  0882020E          or [bp+si+0xe02],al
00000830  38F8              cmp al,bh
00000832  0003              add [bp+di],al
00000834  0000              add [bx+si],al
00000836  C082080802        rol byte [bp+si+0x808],byte 0x2
0000083B  0000              add [bx+si],al
0000083D  0000              add [bx+si],al
0000083F  0300              add ax,[bx+si]
00000841  00C0              add al,al
00000843  800000            add byte [bx+si],0x0
00000846  0200              add al,[bx+si]
00000848  0000              add [bx+si],al
0000084A  0003              add [bp+di],al
0000084C  0000              add [bx+si],al
0000084E  C080000002        rol byte [bx+si+0x0],byte 0x2
00000853  0E                push cs
00000854  38FB              cmp bl,bh
00000856  F8                clc
00000857  0300              add ax,[bx+si]
00000859  00C0              add al,al
0000085B  82                db 0x82
0000085C  0808              or [bx+si],cl
0000085E  0A0E3B83          or cl,[0x833b]
00000862  800300            add byte [bp+di],0x0
00000865  00C0              add al,al
00000867  82                db 0x82
00000868  0880820E          or [bx+si+0xe82],al
0000086C  38E3              cmp bl,ah
0000086E  C00300            rol byte [bp+di],byte 0x0
00000871  00C0              add al,al
00000873  82                db 0x82
00000874  0820              or [bx+si],ah
00000876  020E383B          add cl,[0x3b38]
0000087A  800300            add byte [bp+di],0x0
0000087D  00C0              add al,al
0000087F  82                db 0x82
00000880  0808              or [bx+si],cl
00000882  82                db 0x82
00000883  03E3              add sp,bx
00000885  E3F8              jcxz 0x87f
00000887  0300              add ax,[bx+si]
00000889  00C0              add al,al
0000088B  802020            and byte [bx+si],0x20
0000088E  0A00              or al,[bx+si]
00000890  0000              add [bx+si],al
00000892  0003              add [bp+di],al
00000894  0000              add [bx+si],al
00000896  C080000002        rol byte [bx+si+0x0],byte 0x2
0000089B  0000              add [bx+si],al
0000089D  0000              add [bx+si],al
0000089F  FC                cld
000008A0  FF                db 0xff
000008A1  FF                db 0xff
000008A2  3F                aas
000008A3  2AAAAAA8          sub ch,[bp+si-0x5756]
000008A7  1E                push ds
000008A8  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000008AD  32E4              xor ah,ah
000008AF  B9C000            mov cx,0xc0
000008B2  F7E1              mul cx
000008B4  030608E2          add ax,[0xe208]
000008B8  8BF0              mov si,ax
000008BA  E81A00            call 0x8d7
000008BD  1F                pop ds
000008BE  C3                ret
000008BF  1E                push ds
000008C0  2E8E1E2CFF        mov ds,word [cs:0xff2c]
000008C5  32E4              xor ah,ah
000008C7  B9C000            mov cx,0xc0
000008CA  F7E1              mul cx
000008CC  030604E2          add ax,[0xe204]
000008D0  8BF0              mov si,ax
000008D2  E80200            call 0x8d7
000008D5  1F                pop ds
000008D6  C3                ret
000008D7  02FF              add bh,bh
000008D9  E87205            call 0xe4e
000008DC  40                inc ax
000008DD  8BE8              mov bp,ax
000008DF  B800B8            mov ax,0xb800
000008E2  8EC0              mov es,ax
000008E4  B91000            mov cx,0x10
000008E7  51                push cx
000008E8  8B04              mov ax,[si]
000008EA  86E0              xchg ah,al
000008EC  2EA3722E          mov [cs:0x2e72],ax
000008F0  8B4406            mov ax,[si+0x6]
000008F3  2EA3742E          mov [cs:0x2e74],ax
000008F7  8B4408            mov ax,[si+0x8]
000008FA  86E0              xchg ah,al
000008FC  2EA3762E          mov [cs:0x2e76],ax
00000900  E85700            call 0x95a
00000903  26887600          mov [es:bp+0x0],dh
00000907  26885601          mov [es:bp+0x1],dl
0000090B  E84C00            call 0x95a
0000090E  26887602          mov [es:bp+0x2],dh
00000912  26885603          mov [es:bp+0x3],dl
00000916  8B4402            mov ax,[si+0x2]
00000919  86E0              xchg ah,al
0000091B  2EA3722E          mov [cs:0x2e72],ax
0000091F  8B4404            mov ax,[si+0x4]
00000922  2EA3742E          mov [cs:0x2e74],ax
00000926  8B440A            mov ax,[si+0xa]
00000929  86E0              xchg ah,al
0000092B  2EA3762E          mov [cs:0x2e76],ax
0000092F  E82800            call 0x95a
00000932  26887604          mov [es:bp+0x4],dh
00000936  26885605          mov [es:bp+0x5],dl
0000093A  E81D00            call 0x95a
0000093D  26887606          mov [es:bp+0x6],dh
00000941  26885607          mov [es:bp+0x7],dl
00000945  83C60C            add si,0xc
00000948  81C50020          add bp,0x2000
0000094C  81FD0080          cmp bp,0x8000
00000950  7204              jc 0x956
00000952  81C5A080          add bp,0x80a0
00000956  59                pop cx
00000957  E28E              loop 0x8e7
00000959  C3                ret
0000095A  B90400            mov cx,0x4
0000095D  33DB              xor bx,bx
0000095F  2ED106762E        rol word [cs:0x2e76],0x0
00000964  13DB              adc bx,bx
00000966  2ED106742E        rol word [cs:0x2e74],0x0
0000096B  13DB              adc bx,bx
0000096D  2ED106722E        rol word [cs:0x2e72],0x0
00000972  13DB              adc bx,bx
00000974  2ED106762E        rol word [cs:0x2e76],0x0
00000979  13DB              adc bx,bx
0000097B  2ED106742E        rol word [cs:0x2e74],0x0
00000980  13DB              adc bx,bx
00000982  2ED106722E        rol word [cs:0x2e72],0x0
00000987  13DB              adc bx,bx
00000989  03D2              add dx,dx
0000098B  03D2              add dx,dx
0000098D  03D2              add dx,dx
0000098F  03D2              add dx,dx
00000991  2E0A979929        or dl,[cs:bx+0x2999]
00000996  E2C5              loop 0x95d
00000998  C3                ret
00000999  0007              add [bx],al
0000099B  0402              add al,0x2
0000099D  0301              add ax,[bx+di]
0000099F  0805              or [di],al
000009A1  07                pop es
000009A2  0F                db 0x0f
000009A3  0C0E              or al,0xe
000009A5  0B09              or cx,[bx+di]
000009A7  0E                push cs
000009A8  0D040C            or ax,0xc04
000009AB  0C0E              or al,0xe
000009AD  07                pop es
000009AE  05060C            add ax,0xc06
000009B1  020E0E0A          add cl,[0xa0e]
000009B5  0A03              or al,[bp+di]
000009B7  0A07              or al,[bx]
000009B9  030B              add cx,[bp+di]
000009BB  07                pop es
000009BC  0A0B              or cl,[bp+di]
000009BE  090A              or [bp+si],cx
000009C0  0901              or [bx+di],ax
000009C2  0905              or [di],ax
000009C4  0309              add cx,[bx+di]
000009C6  0907              or [bx],ax
000009C8  05080E            add ax,0xe08
000009CB  06                push es
000009CC  0A0A              or cl,[bp+si]
000009CE  07                pop es
000009CF  0E                push cs
000009D0  0C05              or al,0x5
000009D2  0D0C07            or ax,0x70c
000009D5  0905              or [di],ax
000009D7  0C0D              or al,0xd
000009D9  1E                push ds
000009DA  0E                push cs
000009DB  1F                pop ds
000009DC  53                push bx
000009DD  33DB              xor bx,bx
000009DF  8ADC              mov bl,ah
000009E1  8AA72E26          mov ah,[bx+0x262e]
000009E5  88266C2E          mov [0x2e6c],ah
000009E9  5B                pop bx
000009EA  32E4              xor ah,ah
000009EC  2C20              sub al,0x20
000009EE  03C0              add ax,ax
000009F0  03C0              add ax,ax
000009F2  03C0              add ax,ax
000009F4  030600F5          add ax,[0xf500]
000009F8  50                push ax
000009F9  8AC3              mov al,bl
000009FB  2401              and al,0x1
000009FD  A26D2E            mov [0x2e6d],al
00000A00  D1EB              shr bx,0x0
00000A02  8AFB              mov bh,bl
00000A04  8AD9              mov bl,cl
00000A06  E84504            call 0xe4e
00000A09  8BF8              mov di,ax
00000A0B  5E                pop si
00000A0C  B800B8            mov ax,0xb800
00000A0F  8EC0              mov es,ax
00000A11  B90800            mov cx,0x8
00000A14  51                push cx
00000A15  57                push di
00000A16  AC                lodsb
00000A17  50                push ax
00000A18  2E8A0E6D2E        mov cl,[cs:0x2e6d]
00000A1D  D2E8              shr al,cl
00000A1F  E8A0FA            call 0x4c2
00000A22  F6D4              not ah
00000A24  262025            and [es:di],ah
00000A27  F6D4              not ah
00000A29  2E22266C2E        and ah,[cs:0x2e6c]
00000A2E  260825            or [es:di],ah
00000A31  58                pop ax
00000A32  B102              mov cl,0x2
00000A34  2E2A0E6D2E        sub cl,[cs:0x2e6d]
00000A39  D2E0              shl al,cl
00000A3B  47                inc di
00000A3C  B90300            mov cx,0x3
00000A3F  E880FA            call 0x4c2
00000A42  F6D4              not ah
00000A44  262025            and [es:di],ah
00000A47  F6D4              not ah
00000A49  2E22266C2E        and ah,[cs:0x2e6c]
00000A4E  260825            or [es:di],ah
00000A51  47                inc di
00000A52  E2EB              loop 0xa3f
00000A54  5F                pop di
00000A55  81C70020          add di,0x2000
00000A59  81FF0080          cmp di,0x8000
00000A5D  7204              jc 0xa63
00000A5F  81C7A080          add di,0x80a0
00000A63  59                pop cx
00000A64  E2AE              loop 0xa14
00000A66  1F                pop ds
00000A67  C3                ret
00000A68  1E                push ds
00000A69  02FF              add bh,bh
00000A6B  02FF              add bh,bh
00000A6D  E8DE03            call 0xe4e
00000A70  8BF8              mov di,ax
00000A72  8BF7              mov si,di
00000A74  81C60020          add si,0x2000
00000A78  81FE0080          cmp si,0x8000
00000A7C  7204              jc 0xa82
00000A7E  81C6A080          add si,0x80a0
00000A82  B800B8            mov ax,0xb800
00000A85  8EC0              mov es,ax
00000A87  8ED8              mov ds,ax
00000A89  8ADD              mov bl,ch
00000A8B  32FF              xor bh,bh
00000A8D  03DB              add bx,bx
00000A8F  32ED              xor ch,ch
00000A91  51                push cx
00000A92  57                push di
00000A93  56                push si
00000A94  8BCB              mov cx,bx
00000A96  F3A5              rep movsw
00000A98  5E                pop si
00000A99  5F                pop di
00000A9A  81C70020          add di,0x2000
00000A9E  81FF0080          cmp di,0x8000
00000AA2  7204              jc 0xaa8
00000AA4  81C7A080          add di,0x80a0
00000AA8  81C60020          add si,0x2000
00000AAC  81FE0080          cmp si,0x8000
00000AB0  7204              jc 0xab6
00000AB2  81C6A080          add si,0x80a0
00000AB6  59                pop cx
00000AB7  E2D8              loop 0xa91
00000AB9  1F                pop ds
00000ABA  C3                ret
00000ABB  1E                push ds
00000ABC  83C700            add di,0x0
00000ABF  8AF0              mov dh,al
00000AC1  D0CE              ror dh,0x0
00000AC3  D0CE              ror dh,0x0
00000AC5  D0CE              ror dh,0x0
00000AC7  81E20060          and dx,0x6000
00000ACB  D0E8              shr al,0x0
00000ACD  D0E8              shr al,0x0
00000ACF  8ADC              mov bl,ah
00000AD1  B7A0              mov bh,0xa0
00000AD3  F6E7              mul bh
00000AD5  03D0              add dx,ax
00000AD7  32FF              xor bh,bh
00000AD9  03DB              add bx,bx
00000ADB  03DB              add bx,bx
00000ADD  03D3              add dx,bx
00000ADF  8BF2              mov si,dx
00000AE1  8CC8              mov ax,cs
00000AE3  050030            add ax,0x3000
00000AE6  8EC0              mov es,ax
00000AE8  B800B8            mov ax,0xb800
00000AEB  8ED8              mov ds,ax
00000AED  8ADD              mov bl,ch
00000AEF  32FF              xor bh,bh
00000AF1  03DB              add bx,bx
00000AF3  8AEF              mov ch,bh
00000AF5  51                push cx
00000AF6  56                push si
00000AF7  8BCB              mov cx,bx
00000AF9  F3A5              rep movsw
00000AFB  5E                pop si
00000AFC  81C60020          add si,0x2000
00000B00  81FE0080          cmp si,0x8000
00000B04  7204              jc 0xb0a
00000B06  81C6A080          add si,0x80a0
00000B0A  59                pop cx
00000B0B  E2E8              loop 0xaf5
00000B0D  1F                pop ds
00000B0E  C3                ret
00000B0F  1E                push ds
00000B10  8BF7              mov si,di
00000B12  83C600            add si,0x0
00000B15  8AF0              mov dh,al
00000B17  D0CE              ror dh,0x0
00000B19  D0CE              ror dh,0x0
00000B1B  D0CE              ror dh,0x0
00000B1D  81E20060          and dx,0x6000
00000B21  D0E8              shr al,0x0
00000B23  D0E8              shr al,0x0
00000B25  8ADC              mov bl,ah
00000B27  B7A0              mov bh,0xa0
00000B29  F6E7              mul bh
00000B2B  03D0              add dx,ax
00000B2D  32FF              xor bh,bh
00000B2F  03DB              add bx,bx
00000B31  03DB              add bx,bx
00000B33  03D3              add dx,bx
00000B35  8BFA              mov di,dx
00000B37  8CC8              mov ax,cs
00000B39  050030            add ax,0x3000
00000B3C  8ED8              mov ds,ax
00000B3E  B800B8            mov ax,0xb800
00000B41  8EC0              mov es,ax
00000B43  8ADD              mov bl,ch
00000B45  32FF              xor bh,bh
00000B47  03DB              add bx,bx
00000B49  8AEF              mov ch,bh
00000B4B  51                push cx
00000B4C  57                push di
00000B4D  8BCB              mov cx,bx
00000B4F  F3A5              rep movsw
00000B51  5F                pop di
00000B52  81C70020          add di,0x2000
00000B56  81FF0080          cmp di,0x8000
00000B5A  7204              jc 0xb60
00000B5C  81C7A080          add di,0x80a0
00000B60  59                pop cx
00000B61  E2E8              loop 0xb4b
00000B63  1F                pop ds
00000B64  C3                ret
00000B65  2E891E6F2E        mov [cs:0x2e6f],bx
00000B6A  2E880E712E        mov [cs:0x2e71],cl
00000B6F  2EC6066E2E01      mov byte [cs:0x2e6e],0x1
00000B75  AC                lodsb
00000B76  3CFF              cmp al,0xff
00000B78  7501              jnz 0xb7b
00000B7A  C3                ret
00000B7B  3C0D              cmp al,0xd
00000B7D  7417              jz 0xb96
00000B7F  0AC0              or al,al
00000B81  7825              js 0xba8
00000B83  51                push cx
00000B84  53                push bx
00000B85  56                push si
00000B86  2E8A266E2E        mov ah,[cs:0x2e6e]
00000B8B  E84BFE            call 0x9d9
00000B8E  5E                pop si
00000B8F  5B                pop bx
00000B90  59                pop cx
00000B91  83C308            add bx,0x8
00000B94  EBDF              jmp 0xb75
00000B96  2E8006712E08      add byte [cs:0x2e71],0x8
00000B9C  2E8A0E712E        mov cl,[cs:0x2e71]
00000BA1  2E8B1E6F2E        mov bx,[cs:0x2e6f]
00000BA6  EBCD              jmp 0xb75
00000BA8  2EA26E2E          mov [cs:0x2e6e],al
00000BAC  EBC7              jmp 0xb75
00000BAE  1E                push ds
00000BAF  52                push dx
00000BB0  02FF              add bh,bh
00000BB2  02FF              add bh,bh
00000BB4  E89702            call 0xe4e
00000BB7  8BF0              mov si,ax
00000BB9  5B                pop bx
00000BBA  02FF              add bh,bh
00000BBC  02FF              add bh,bh
00000BBE  E88D02            call 0xe4e
00000BC1  8BF8              mov di,ax
00000BC3  B800B8            mov ax,0xb800
00000BC6  8EC0              mov es,ax
00000BC8  8ED8              mov ds,ax
00000BCA  8ADD              mov bl,ch
00000BCC  32FF              xor bh,bh
00000BCE  03DB              add bx,bx
00000BD0  32ED              xor ch,ch
00000BD2  51                push cx
00000BD3  57                push di
00000BD4  56                push si
00000BD5  8BCB              mov cx,bx
00000BD7  F3A5              rep movsw
00000BD9  5E                pop si
00000BDA  5F                pop di
00000BDB  81C70020          add di,0x2000
00000BDF  81FF0080          cmp di,0x8000
00000BE3  7204              jc 0xbe9
00000BE5  81C7A080          add di,0x80a0
00000BE9  81C60020          add si,0x2000
00000BED  81FE0080          cmp si,0x8000
00000BF1  7204              jc 0xbf7
00000BF3  81C6A080          add si,0x80a0
00000BF7  59                pop cx
00000BF8  E2D8              loop 0xbd2
00000BFA  1F                pop ds
00000BFB  C3                ret
00000BFC  53                push bx
00000BFD  33DB              xor bx,bx
00000BFF  8AD8              mov bl,al
00000C01  8A872E26          mov al,[bx+0x262e]
00000C05  2C88              sub al,0x88
00000C07  A26C2E            mov [0x2e6c],al
00000C0A  5B                pop bx
00000C0B  02FF              add bh,bh
00000C0D  E83E02            call 0xe4e
00000C10  8BF8              mov di,ax
00000C12  B800B8            mov ax,0xb800
00000C15  8EC0              mov es,ax
00000C17  E82100            call 0xc3b
00000C1A  B91000            mov cx,0x10
00000C1D  A06C2E            mov al,[0x2e6c]
00000C20  268805            mov [es:di],al
00000C23  26884509          mov [es:di+0x9],al
00000C27  81C70020          add di,0x2000
00000C2B  81FF0080          cmp di,0x8000
00000C2F  7204              jc 0xc35
00000C31  81C7A080          add di,0x80a0
00000C35  E2E6              loop 0xc1d
00000C37  E80100            call 0xc3b
00000C3A  C3                ret
00000C3B  B90200            mov cx,0x2
00000C3E  51                push cx
00000C3F  57                push di
00000C40  A06C2E            mov al,[0x2e6c]
00000C43  B90A00            mov cx,0xa
00000C46  F3AA              rep stosb
00000C48  5F                pop di
00000C49  81C70020          add di,0x2000
00000C4D  81FF0080          cmp di,0x8000
00000C51  7204              jc 0xc57
00000C53  81C7A080          add di,0x80a0
00000C57  59                pop cx
00000C58  E2E4              loop 0xc3e
00000C5A  C3                ret
00000C5B  1E                push ds
00000C5C  56                push si
00000C5D  0E                push cs
00000C5E  1F                pop ds
00000C5F  32E4              xor ah,ah
00000C61  03C0              add ax,ax
00000C63  03C0              add ax,ax
00000C65  8BF0              mov si,ax
00000C67  02FF              add bh,bh
00000C69  E8E201            call 0xe4e
00000C6C  8BF8              mov di,ax
00000C6E  B800B8            mov ax,0xb800
00000C71  8EC0              mov es,ax
00000C73  8B9CB72C          mov bx,[si+0x2cb7]
00000C77  8BB4B92C          mov si,[si+0x2cb9]
00000C7B  B90D00            mov cx,0xd
00000C7E  51                push cx
00000C7F  57                push di
00000C80  8B17              mov dx,[bx]
00000C82  43                inc bx
00000C83  43                inc bx
00000C84  86F2              xchg dh,dl
00000C86  B90800            mov cx,0x8
00000C89  03D2              add dx,dx
00000C8B  1AC0              sbb al,al
00000C8D  24F0              and al,0xf0
00000C8F  03D2              add dx,dx
00000C91  1AE4              sbb ah,ah
00000C93  80E40F            and ah,0xf
00000C96  0AC4              or al,ah
00000C98  262005            and [es:di],al
00000C9B  AC                lodsb
00000C9C  260805            or [es:di],al
00000C9F  47                inc di
00000CA0  E2E7              loop 0xc89
00000CA2  5F                pop di
00000CA3  81C70020          add di,0x2000
00000CA7  81FF0080          cmp di,0x8000
00000CAB  7204              jc 0xcb1
00000CAD  81C7A080          add di,0x80a0
00000CB1  59                pop cx
00000CB2  E2CA              loop 0xc7e
00000CB4  5E                pop si
00000CB5  1F                pop ds
00000CB6  C3                ret
00000CB7  BF2CF3            mov di,0xf32c
00000CBA  2CD9              sub al,0xd9
00000CBC  2C5B              sub al,0x5b
00000CBE  2DFC2F            sub ax,0x2ffc
00000CC1  F0                lock
00000CC2  0F                db 0x0f
00000CC3  F0                lock
00000CC4  0F                db 0x0f
00000CC5  F0                lock
00000CC6  0F                db 0x0f
00000CC7  F0                lock
00000CC8  07                pop es
00000CC9  F0                lock
00000CCA  07                pop es
00000CCB  F0                lock
00000CCC  07                pop es
00000CCD  F0                lock
00000CCE  0F                db 0x0f
00000CCF  F0                lock
00000CD0  0F                db 0x0f
00000CD1  F0                lock
00000CD2  0FF22F            pslld mm5,[bx]
00000CD5  FF                db 0xff
00000CD6  FF                db 0xff
00000CD7  FF                db 0xff
00000CD8  FFF0              push ax
00000CDA  0FE007            pavgb mm0,[bx]
00000CDD  C003C0            rol byte [bp+di],byte 0xc0
00000CE0  03800180          add ax,[bx+si-0x7fff]
00000CE4  01800180          add [bx+si-0x7fff],ax
00000CE8  01C0              add ax,ax
00000CEA  03C0              add ax,ax
00000CEC  03E0              add sp,ax
00000CEE  07                pop es
00000CEF  F0                lock
00000CF0  0FF81F            psubb mm3,[bx]
00000CF3  0000              add [bx+si],al
00000CF5  0000              add [bx+si],al
00000CF7  0000              add [bx+si],al
00000CF9  0000              add [bx+si],al
00000CFB  0000              add [bx+si],al
00000CFD  00DD              add ch,bl
00000CFF  DC00              fadd qword [bx+si]
00000D01  0000              add [bx+si],al
00000D03  0000              add [bx+si],al
00000D05  07                pop es
00000D06  DFF7              fcomip st7
00000D08  C00000            rol byte [bx+si],byte 0x0
00000D0B  0000              add [bx+si],al
00000D0D  0DFFF1            or ax,0xf1ff
00000D10  54                push sp
00000D11  0000              add [bx+si],al
00000D13  0000              add [bx+si],al
00000D15  757F              jnz 0xd96
00000D17  3114              xor [si],dx
00000D19  0000              add [bx+si],al
00000D1B  0000              add [bx+si],al
00000D1D  7411              jz 0xd30
00000D1F  91                xchg ax,cx
00000D20  1C00              sbb al,0x0
00000D22  0000              add [bx+si],al
00000D24  004511            add [di+0x11],al
00000D27  111C              adc [si],bx
00000D29  0000              add [bx+si],al
00000D2B  0000              add [bx+si],al
00000D2D  0C19              or al,0x19
00000D2F  91                xchg ax,cx
00000D30  54                push sp
00000D31  0000              add [bx+si],al
00000D33  0000              add [bx+si],al
00000D35  0449              add al,0x49
00000D37  91                xchg ax,cx
00000D38  C00000            rol byte [bx+si],byte 0x0
00000D3B  0000              add [bx+si],al
00000D3D  004CCC            add [si-0x34],cl
00000D40  0000              add [bx+si],al
00000D42  0000              add [bx+si],al
00000D44  0000              add [bx+si],al
00000D46  0000              add [bx+si],al
00000D48  0000              add [bx+si],al
00000D4A  0000              add [bx+si],al
00000D4C  0000              add [bx+si],al
00000D4E  0000              add [bx+si],al
00000D50  0000              add [bx+si],al
00000D52  0000              add [bx+si],al
00000D54  0000              add [bx+si],al
00000D56  0000              add [bx+si],al
00000D58  0000              add [bx+si],al
00000D5A  0000              add [bx+si],al
00000D5C  0007              add [bx],al
00000D5E  FF                db 0xff
00000D5F  FA                cli
00000D60  2000              and [bx+si],al
00000D62  0000              add [bx+si],al
00000D64  00FF              add bh,bh
00000D66  0000              add [bx+si],al
00000D68  2A00              sub al,[bx+si]
00000D6A  0000              add [bx+si],al
00000D6C  0F707F7002        pshufw mm7,[bx+0x70],0x2
00000D71  2000              and [bx+si],al
00000D73  007F0F            add [bx+0xf],bh
00000D76  F7007022          test word [bx+si],0x2270
00000D7A  0000              add [bx+si],al
00000D7C  F77FF0            idiv word [bx-0x10]
00000D7F  0007              add [bx],al
00000D81  2200              and al,[bx+si]
00000D83  00F0              add al,dh
00000D85  F7004400          test word [bx+si],0x44
00000D89  0A00              or al,[bx+si]
00000D8B  00F0              add al,dh
00000D8D  7004              jo 0xd93
00000D8F  44                inc sp
00000D90  44                inc sp
00000D91  4A                dec dx
00000D92  0000              add [bx+si],al
00000D94  F27444            bnd jz 0xddb
00000D97  CC                int3
00000D98  C47A00            les di,word [bp+si+0x0]
00000D9B  007A47            add [bp+si+0x47],bh
00000D9E  4C                dec sp
00000D9F  CC                int3
00000DA0  C4                db 0xc4
00000DA1  F700000A          test word [bx+si],0xa00
00000DA5  24D7              and al,0xd7
00000DA7  CC                int3
00000DA8  C7                db 0xc7
00000DA9  F00000            lock add [bx+si],al
00000DAC  00A24044          add [bp+si+0x4440],ah
00000DB0  7F00              jg 0xdb2
00000DB2  0000              add [bx+si],al
00000DB4  0002              add [bp+si],al
00000DB6  7227              jc 0xddf
00000DB8  2000              and [bx+si],al
00000DBA  0000              add [bx+si],al
00000DBC  0000              add [bx+si],al
00000DBE  0000              add [bx+si],al
00000DC0  0000              add [bx+si],al
00000DC2  00B800B8          add [bx+si-0x4800],bh
00000DC6  8EC0              mov es,ax
00000DC8  33FF              xor di,di
00000DCA  B90800            mov cx,0x8
00000DCD  51                push cx
00000DCE  57                push di
00000DCF  B91900            mov cx,0x19
00000DD2  51                push cx
00000DD3  57                push di
00000DD4  B95000            mov cx,0x50
00000DD7  33C0              xor ax,ax
00000DD9  F3AB              rep stosw
00000DDB  5F                pop di
00000DDC  81C74001          add di,0x140
00000DE0  59                pop cx
00000DE1  E2EF              loop 0xdd2
00000DE3  5F                pop di
00000DE4  81C70020          add di,0x2000
00000DE8  81FF0080          cmp di,0x8000
00000DEC  7204              jc 0xdf2
00000DEE  81C7A080          add di,0x80a0
00000DF2  59                pop cx
00000DF3  E2D8              loop 0xdcd
00000DF5  C3                ret
00000DF6  51                push cx
00000DF7  1E                push ds
00000DF8  56                push si
00000DF9  8CC8              mov ax,cs
00000DFB  050030            add ax,0x3000
00000DFE  8EC0              mov es,ax
00000E00  B83000            mov ax,0x30
00000E03  F7E1              mul cx
00000E05  8BC8              mov cx,ax
00000E07  BF0000            mov di,0x0
00000E0A  F3A4              rep movsb
00000E0C  5F                pop di
00000E0D  07                pop es
00000E0E  59                pop cx
00000E0F  8CC8              mov ax,cs
00000E11  050030            add ax,0x3000
00000E14  8ED8              mov ds,ax
00000E16  BE0000            mov si,0x0
00000E19  51                push cx
00000E1A  E80400            call 0xe21
00000E1D  59                pop cx
00000E1E  E2F9              loop 0xe19
00000E20  C3                ret
00000E21  B90800            mov cx,0x8
00000E24  51                push cx
00000E25  AD                lodsw
00000E26  86E0              xchg ah,al
00000E28  2EA3722E          mov [cs:0x2e72],ax
00000E2C  AD                lodsw
00000E2D  86E0              xchg ah,al
00000E2F  2EA3742E          mov [cs:0x2e74],ax
00000E33  AD                lodsw
00000E34  86E0              xchg ah,al
00000E36  2EA3762E          mov [cs:0x2e76],ax
00000E3A  E81DFB            call 0x95a
00000E3D  8BC2              mov ax,dx
00000E3F  86E0              xchg ah,al
00000E41  AB                stosw
00000E42  E815FB            call 0x95a
00000E45  8BC2              mov ax,dx
00000E47  86E0              xchg ah,al
00000E49  AB                stosw
00000E4A  59                pop cx
00000E4B  E2D7              loop 0xe24
00000E4D  C3                ret
00000E4E  8AF3              mov dh,bl
00000E50  D0CE              ror dh,0x0
00000E52  D0CE              ror dh,0x0
00000E54  D0CE              ror dh,0x0
00000E56  81E20060          and dx,0x6000
00000E5A  B8A000            mov ax,0xa0
00000E5D  D0EB              shr bl,0x0
00000E5F  D0EB              shr bl,0x0
00000E61  F6E3              mul bl
00000E63  03C2              add ax,dx
00000E65  8ADF              mov bl,bh
00000E67  32FF              xor bh,bh
00000E69  03C3              add ax,bx
00000E6B  C3                ret
00000E6C  0000              add [bx+si],al
00000E6E  0000              add [bx+si],al
00000E70  0000              add [bx+si],al
00000E72  0000              add [bx+si],al
00000E74  0000              add [bx+si],al
00000E76  0000              add [bx+si],al
