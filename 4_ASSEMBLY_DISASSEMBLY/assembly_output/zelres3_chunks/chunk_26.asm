00000000  AA                stosb
00000001  1100              adc [bx+si],ax
00000003  00A3CECC          add [bp+di-0x3332],ah
00000007  0071CD            add [bx+di-0x33],dh
0000000A  79CD              jns 0xffd9
0000000C  7BCD              jpo 0xffdb
0000000E  84CD              test ch,cl
00000010  2ECE              cs into
00000012  91                xchg ax,cx
00000013  CE                into
00000014  A8CE              test al,0xce
00000016  03BC0015          add di,[si+0x1500]
0000001A  0A00              or al,[bx+si]
0000001C  0071CD            add [bx+di-0x33],dh
0000001F  340F              xor al,0xf
00000021  D2D3              rcl bl,cl
00000023  080F              or [bx],cl
00000025  0A0F              or cl,[bx]
00000027  D2D3              rcl bl,cl
00000029  1B0F              sbb cx,[bx]
0000002B  D2D3              rcl bl,cl
0000002D  140F              adc al,0xf
0000002F  3F                aas
00000030  101A              adc [bp+si],bl
00000032  11D8              adc ax,bx
00000034  0811              or [bx+di],dl
00000036  D80E11D8          fmul dword [0xd811]
0000003A  0911              or [bx+di],dx
0000003C  9BD902            wait fld dword [bp+si]
0000003F  1586D9            adc ax,0xd986
00000042  0115              add [di],dx
00000044  8D                db 0x8d
00000045  D902              fld dword [bp+si]
00000047  15879B            adc ax,0x9b87
0000004A  0315              add dx,[di]
0000004C  CC                int3
0000004D  8502              test [bp+si],ax
0000004F  158D03            adc ax,0x38d
00000052  15879B            adc ax,0x9b87
00000055  0315              add dx,[di]
00000057  8602              xchg al,[bp+si]
00000059  15CC8C            adc ax,0x8ccc
0000005C  C8021587          enter word 0x1502,byte 0x87
00000060  9B0315            wait add dx,[di]
00000063  86C4              xchg al,ah
00000065  0115              add [di],dx
00000067  8D                db 0x8d
00000068  C402              les ax,word [bp+si]
0000006A  15CC86            adc ax,0x86cc
0000006D  C88AC98F          enter word 0xc98a,byte 0x8f
00000071  C3                ret
00000072  0215              add dl,[di]
00000074  86C4              xchg al,ah
00000076  0115              add [di],dx
00000078  8D                db 0x8d
00000079  C4                db 0xc4
0000007A  C8D5DA87          enter word 0xdad5,byte 0x87
0000007E  C4                db 0xc4
0000007F  C889C4C8          enter word 0xc489,byte 0xc8
00000083  8EC4              mov es,sp
00000085  C80115CC          enter word 0x1501,byte 0xcc
00000089  85C4              test sp,ax
0000008B  CAD58D            retf word 0x8dd5
0000008E  43                inc bx
0000008F  D588              aad byte 0x88
00000091  43                inc bx
00000092  89438E            mov [bp+di-0x72],ax
00000095  43                inc bx
00000096  C8D586C4          enter word 0x86d5,byte 0xc4
0000009A  0115              add [di],dx
0000009C  8D43C8            lea ax,[bp+di-0x38]
0000009F  884389            mov [bp+di-0x77],al
000000A2  43                inc bx
000000A3  C88DC4C9          enter word 0xc48d,byte 0xc9
000000A7  C4                db 0xc4
000000A8  C88643C8          enter word 0x4386,byte 0xc8
000000AC  8D43CA            lea ax,[bp+di-0x36]
000000AF  8843C8            mov [bp+di-0x38],al
000000B2  8843C8            mov [bp+di-0x38],al
000000B5  8D43CA            lea ax,[bp+di-0x36]
000000B8  D586              aad byte 0x86
000000BA  43                inc bx
000000BB  CA8D43            retf word 0x438d
000000BE  D588              aad byte 0x88
000000C0  53                push bx
000000C1  88C9              mov cl,cl
000000C3  43                inc bx
000000C4  8D4301            lea ax,[bp+di+0x1]
000000C7  158643            adc ax,0x4386
000000CA  D58D              aad byte 0x8d
000000CC  43                inc bx
000000CD  C8CC86C3          enter word 0x86cc,byte 0xc3
000000D1  53                push bx
000000D2  8843C5            mov [bp+di-0x3b],al
000000D5  4A                dec dx
000000D6  8B43C8            mov ax,[bp+di-0x38]
000000D9  DA8643C8          fiadd dword [bp-0x37bd]
000000DD  8D                db 0x8d
000000DE  C9                leave
000000DF  43                inc bx
000000E0  87C4              xchg ax,sp
000000E2  53                push bx
000000E3  88C4              mov ah,al
000000E5  C5                db 0xc5
000000E6  C4                db 0xc4
000000E7  CA8C53            retf word 0x538c
000000EA  87C9              xchg cx,cx
000000EC  43                inc bx
000000ED  8D53C8            lea dx,[bp+di-0x38]
000000F0  86C4              xchg al,ah
000000F2  C9                leave
000000F3  C4                db 0xc4
000000F4  CA8853            retf word 0x5388
000000F7  5A                pop dx
000000F8  8AC9              mov cl,cl
000000FA  C4                db 0xc4
000000FB  C54A85            lds cx,word [bp+si-0x7b]
000000FE  C4                db 0xc4
000000FF  C9                leave
00000100  43                inc bx
00000101  CA8BC4            retf word 0xc48b
00000104  C9                leave
00000105  43                inc bx
00000106  86C4              xchg al,ah
00000108  C4                db 0xc4
00000109  C54A87            lds cx,word [bp+si-0x79]
0000010C  C9                leave
0000010D  44                inc sp
0000010E  C4                db 0xc4
0000010F  C88B53C8          enter word 0x538b,byte 0xc8
00000113  8653CA            xchg dl,[bp+di-0x36]
00000116  8C53CA            mov word [bp+di-0x36],ss
00000119  86C4              xchg al,ah
0000011B  43                inc bx
0000011C  C88853C5          enter word 0x5388,byte 0xc5
00000120  CA8BC4            retf word 0xc48b
00000123  C6C4CA            mov ah,0xca
00000126  8643CA            xchg al,[bp+di-0x36]
00000129  8D43CA            lea ax,[bp+di-0x36]
0000012C  CC                int3
0000012D  86C4              xchg al,ah
0000012F  53                push bx
00000130  C87C8243          enter word 0x827c,byte 0x43
00000134  C5                db 0xc5
00000135  C44A8A            les cx,word [bp+si-0x76]
00000138  43                inc bx
00000139  CA87C4            retf word 0xc487
0000013C  44                inc sp
0000013D  CB                retf
0000013E  8CC4              mov sp,es
00000140  CAD587            retf word 0x87d5
00000143  C4637D            les sp,word [bp+di+0x7d]
00000146  82                db 0x82
00000147  63C8              arpl ax,cx
00000149  8BC4              mov ax,sp
0000014B  CAD586            retf word 0x86d5
0000014E  C643C88D          mov byte [bp+di-0x38],0x8d
00000152  C401              les ax,word [bx+di]
00000154  1587C6            adc ax,0xc687
00000157  7305              jnc 0x15e
00000159  0FC4C6C4          pinsrw mm0,si,0xc4
0000015D  49                dec cx
0000015E  8BC4              mov ax,sp
00000160  0115              add [di],dx
00000162  8663CA            xchg ah,[bp+di-0x36]
00000165  8C43C8            mov word [bp+di-0x38],es
00000168  87C9              xchg cx,cx
0000016A  7305              jnc 0x171
0000016C  0F43C5            cmovnc ax,bp
0000016F  4A                dec dx
00000170  8B43C8            mov ax,[bp+di-0x38]
00000173  8653CA            xchg dl,[bp+di-0x36]
00000176  8D4344            lea ax,[bp+di+0x44]
00000179  4A                dec dx
0000017A  84C4              test ah,al
0000017C  C4                db 0xc4
0000017D  C6                db 0xc6
0000017E  53                push bx
0000017F  051063            add ax,0x6310
00000182  8C53C8            mov word [bp+di-0x38],ss
00000185  CA8443            retf word 0x4384
00000188  0115              add [di],dx
0000018A  8D53CA            lea dx,[bp+di-0x36]
0000018D  86C4              xchg al,ah
0000018F  63061163          arpl [0x6311],ax
00000193  8CC4              mov sp,es
00000195  C6C4CA            mov ah,0xca
00000198  85C9              test cx,cx
0000019A  C4                db 0xc4
0000019B  C8DA8DC4          enter word 0x8dda,byte 0xc4
0000019F  CAD587            retf word 0x87d5
000001A2  C453CA            les dx,word [bp+di-0x36]
000001A5  87C9              xchg cx,cx
000001A7  43                inc bx
000001A8  CA8C43            retf word 0x438c
000001AB  D586              aad byte 0x86
000001AD  43                inc bx
000001AE  44                inc sp
000001AF  4A                dec dx
000001B0  8BC4              mov ax,sp
000001B2  0115              add [di],dx
000001B4  87C4              xchg ax,sp
000001B6  53                push bx
000001B7  88C4              mov ah,al
000001B9  C9                leave
000001BA  C484C388          les ax,word [si-0x773d]
000001BE  53                push bx
000001BF  C88543C6          enter word 0x4385,byte 0xc6
000001C3  43                inc bx
000001C4  8C43D5            mov word [bp+di-0x2b],es
000001C7  87C4              xchg ax,sp
000001C9  C9                leave
000001CA  C4                db 0xc4
000001CB  CA8853            retf word 0x5388
000001CE  84C4              test ah,al
000001D0  88C9              mov cl,cl
000001D2  43                inc bx
000001D3  CA8573            retf word 0x7385
000001D6  CA8B53            retf word 0x538b
000001D9  CA86C4            retf word 0xc486
000001DC  43                inc bx
000001DD  4A                dec dx
000001DE  8743CA            xchg ax,[bp+di-0x36]
000001E1  84C4              test ah,al
000001E3  C887C4C9          enter word 0xc487,byte 0xc9
000001E7  DA8653CA          fiadd dword [bp-0x35ad]
000001EB  8D43CA            lea ax,[bp+di-0x36]
000001EE  87C4              xchg ax,sp
000001F0  43                inc bx
000001F1  C888C9C4          enter word 0xc988,byte 0xc4
000001F5  854387            test [bp+di-0x79],ax
000001F8  43                inc bx
000001F9  C88643CA          enter word 0x4386,byte 0xca
000001FD  8EC4              mov es,sp
000001FF  CADA87            retf word 0x87da
00000202  C6C444            mov ah,0x44
00000205  4A                dec dx
00000206  864385            xchg al,[bp+di-0x7b]
00000209  43                inc bx
0000020A  CA8643            retf word 0x4386
0000020D  CA86C9            retf word 0xc986
00000210  C46160            les sp,word [bx+di+0x60]
00000213  C2C1C2            ret word 0xc2c1
00000216  50                push ax
00000217  81438943CA        add word [bp+di-0x77],0xca43
0000021C  88C4              mov ah,al
0000021E  CA85C9            retf word 0xc985
00000221  C4                db 0xc4
00000222  D486              aam byte 0x86
00000224  C4                db 0xc4
00000225  CA8743            retf word 0x4387
00000228  8F                db 0x8f
00000229  C9                leave
0000022A  C4                db 0xc4
0000022B  C888C4CA          enter word 0xc488,byte 0xca
0000022F  89C4              mov sp,ax
00000231  865386            xchg dl,[bp+di-0x7a]
00000234  C48843CA          les cx,word [bx+si-0x35bd]
00000238  84C3              test bl,al
0000023A  89C6              mov si,ax
0000023C  43                inc bx
0000023D  88CA              mov dl,cl
0000023F  8ACA              mov cl,dl
00000241  8653C8            xchg dl,[bp+di-0x38]
00000244  85CA              test dx,cx
00000246  884385            mov [bp+di-0x7b],al
00000249  C48953C8          les cx,word [bx+di-0x37ad]
0000024D  8792C4C6          xchg dx,[bp+si-0x393c]
00000251  43                inc bx
00000252  8EC4              mov es,sp
00000254  CA85C4            retf word 0xc485
00000257  89C4              mov sp,ax
00000259  C6444A85          mov byte [si+0x4a],0x85
0000025D  06                push es
0000025E  01C2              add dx,ax
00000260  50                push ax
00000261  41                inc cx
00000262  50                push ax
00000263  82                db 0x82
00000264  635150            arpl [bx+di+0x50],dx
00000267  C240C2            ret word 0xc240
0000026A  40                inc ax
0000026B  82                db 0x82
0000026C  C486C489          les ax,word [bp-0x763c]
00000270  C9                leave
00000271  53                push bx
00000272  49                dec cx
00000273  41                inc cx
00000274  40                inc ax
00000275  C29253            ret word 0x5392
00000278  8F                db 0x8f
00000279  C9                leave
0000027A  85C3              test bx,ax
0000027C  C44A87            les cx,word [bp+si-0x79]
0000027F  C4                db 0xc4
00000280  D4C9              aam byte 0xc9
00000282  CB                retf
00000283  87C4              xchg ax,sp
00000285  91                xchg ax,cx
00000286  43                inc bx
00000287  D58F              aad byte 0x8f
00000289  C9                leave
0000028A  854389            test [bp+di-0x77],ax
0000028D  43                inc bx
0000028E  CA8843            retf word 0x4388
00000291  90                nop
00000292  C401              les ax,word [bx+di]
00000294  158FC9            adc ax,0xc98f
00000297  854389            test [bp+di-0x77],ax
0000029A  43                inc bx
0000029B  894390            mov [bp+di-0x70],ax
0000029E  C4                db 0xc4
0000029F  C8D58FCA          enter word 0x8fd5,byte 0xca
000002A3  84C3              test bl,al
000002A5  43                inc bx
000002A6  CA8843            retf word 0x4388
000002A9  D488              aam byte 0x88
000002AB  43                inc bx
000002AC  90                nop
000002AD  43                inc bx
000002AE  C89443D5          enter word 0x4394,byte 0xd5
000002B2  8943D5            mov [bp+di-0x2b],ax
000002B5  88538F            mov [bp+di-0x71],dl
000002B8  C9                leave
000002B9  43                inc bx
000002BA  C893C4C9          enter word 0xc493,byte 0xc9
000002BE  C4                db 0xc4
000002BF  C88843D5          enter word 0x4388,byte 0xd5
000002C3  88538F            mov [bp+di-0x71],dl
000002C6  43                inc bx
000002C7  C9                leave
000002C8  C49363CA          les dx,word [bp+di-0x359d]
000002CC  8743D5            xchg ax,[bp+di-0x2b]
000002CF  C887638E          enter word 0x6387,byte 0x8e
000002D3  634941            arpl [bx+di+0x41],cx
000002D6  60                pusha
000002D7  C270C2            ret word 0xc270
000002DA  50                push ax
000002DB  8143C9C488        add word [bp+di-0x37],0x88c4
000002E0  C6C4D5            mov ah,0xd5
000002E3  C687638E43        mov byte [bx-0x719d],0x43
000002E8  CA94C9            retf word 0xc994
000002EB  43                inc bx
000002EC  CA8843            retf word 0x4388
000002EF  D5C4              aad byte 0xc4
000002F1  87738D            xchg si,[bp+di-0x73]
000002F4  43                inc bx
000002F5  47                inc di
000002F6  8BC4              mov ax,sp
000002F8  8743CA            xchg ax,[bp+di-0x36]
000002FB  896387            mov [bp+di-0x79],sp
000002FE  738D              jnc 0x28d
00000300  43                inc bx
00000301  CAD48B            retf word 0x8bd4
00000304  C487C4CA          les ax,word [bx-0x353c]
00000308  D589              aad byte 0x89
0000030A  C4                db 0xc4
0000030B  C6C4D5            mov ah,0xd5
0000030E  D486              aam byte 0x86
00000310  738D              jnc 0x29f
00000312  43                inc bx
00000313  0115              add [di],dx
00000315  8AC6              mov al,dh
00000317  C487C401          les ax,word [bx+0x1c4]
0000031B  15CC88            adc ax,0x88cc
0000031E  53                push bx
0000031F  0115              add [di],dx
00000321  86738D            xchg dh,[bp+di-0x73]
00000324  43                inc bx
00000325  C8D58A43          enter word 0x8ad5,byte 0x43
00000329  87C4              xchg ax,sp
0000032B  C8D58943          enter word 0x89d5,byte 0x43
0000032F  0215              add dl,[di]
00000331  86738D            xchg dh,[bp+di-0x73]
00000334  53                push bx
00000335  C88A4387          enter word 0x438a,byte 0x87
00000339  43                inc bx
0000033A  C8894302          enter word 0x4389,byte 0x2
0000033E  158663            adc ax,0x6386
00000341  8E63C8            mov fs,word [bp+di-0x38]
00000344  894387            mov [bp+di-0x79],ax
00000347  53                push bx
00000348  C88843C8          enter word 0x4388,byte 0xc8
0000034C  0115              add [di],dx
0000034E  86638E            xchg ah,[bp+di-0x72]
00000351  C4                db 0xc4
00000352  C9                leave
00000353  C4444A            les ax,word [si+0x4a]
00000356  8743C8            xchg ax,[bp+di-0x38]
00000359  86C4              xchg al,ah
0000035B  C9                leave
0000035C  C4                db 0xc4
0000035D  CB                retf
0000035E  885301            mov [bp+di+0x1],dl
00000361  158663            adc ax,0x6386
00000364  8E53CA            mov ss,word [bp+di-0x36]
00000367  8AC4              mov al,ah
00000369  C9                leave
0000036A  C48653CA          les ax,word [bp-0x35ad]
0000036E  88C6              mov dh,al
00000370  C4                db 0xc4
00000371  C9                leave
00000372  C8D58653          enter word 0x86d5,byte 0x53
00000376  D58E              aad byte 0x8e
00000378  43                inc bx
00000379  CAD58A            retf word 0x8ad5
0000037C  C4                db 0xc4
0000037D  C6C4CA            mov ah,0xca
00000380  855389            test [bp+di-0x77],dx
00000383  53                push bx
00000384  CAD586            retf word 0x86d5
00000387  53                push bx
00000388  D58E              aad byte 0x8e
0000038A  43                inc bx
0000038B  0115              add [di],dx
0000038D  8AC9              mov cl,cl
0000038F  C4                db 0xc4
00000390  CA8643            retf word 0x4386
00000393  C54A87            lds cx,word [bp+si-0x79]
00000396  43                inc bx
00000397  CA0115            retf word 0x1501
0000039A  8653D5            xchg dl,[bp+di-0x2b]
0000039D  8EC9              mov cs,cx
0000039F  C401              les ax,word [bx+di]
000003A1  158A43            adc ax,0x438a
000003A4  87C9              xchg cx,cx
000003A6  43                inc bx
000003A7  CA8843            retf word 0x4388
000003AA  0215              add dl,[di]
000003AC  8653D5            xchg dl,[bp+di-0x2b]
000003AF  8EC4              mov es,sp
000003B1  CA0115            retf word 0x1501
000003B4  8A43CA            mov al,[bp+di-0x36]
000003B7  8643CA            xchg al,[bp+di-0x36]
000003BA  89C4              mov sp,ax
000003BC  C9                leave
000003BD  0215              add dl,[di]
000003BF  8653D5            xchg dl,[bp+di-0x2b]
000003C2  8EC4              mov es,sp
000003C4  0215              add dl,[di]
000003C6  8AC4              mov al,ah
000003C8  CA8743            retf word 0x4387
000003CB  D589              aad byte 0x89
000003CD  53                push bx
000003CE  0115              add [di],dx
000003D0  8653D5            xchg dl,[bp+di-0x2b]
000003D3  8EC4              mov es,sp
000003D5  0215              add dl,[di]
000003D7  8AC4              mov al,ah
000003D9  D587              aad byte 0x87
000003DB  C4                db 0xc4
000003DC  CAD589            retf word 0x89d5
000003DF  53                push bx
000003E0  CAD586            retf word 0x86d5
000003E3  43                inc bx
000003E4  0115              add [di],dx
000003E6  8EC4              mov es,sp
000003E8  0215              add dl,[di]
000003EA  8AC4              mov al,ah
000003EC  D587              aad byte 0x87
000003EE  C401              les ax,word [bx+di]
000003F0  158943            adc ax,0x4389
000003F3  54                push sp
000003F4  CB                retf
000003F5  854301            test [bp+di+0x1],ax
000003F8  158EC6            adc ax,0xc68e
000003FB  0215              add dl,[di]
000003FD  8ACA              mov cl,dl
000003FF  D5CC              aad byte 0xcc
00000401  86C4              xchg al,ah
00000403  0115              add [di],dx
00000405  89C4              mov sp,ax
00000407  D5CA              aad byte 0xca
00000409  0115              add [di],dx
0000040B  86C4              xchg al,ah
0000040D  0215              add dl,[di]
0000040F  8E03              mov es,word [bp+di]
00000411  158A01            adc ax,0x18a
00000414  1587CA            adc ax,0xca87
00000417  0115              add [di],dx
00000419  89C4              mov sp,ax
0000041B  0315              add dx,[di]
0000041D  86C4              xchg al,ah
0000041F  0215              add dl,[di]
00000421  8E03              mov es,word [bp+di]
00000423  158A01            adc ax,0x18a
00000426  158702            adc ax,0x287
00000429  15CC88            adc ax,0x88cc
0000042C  CA0315            retf word 0x1503
0000042F  86810215          xchg al,[bx+di+0x1502]
00000433  8E03              mov es,word [bp+di]
00000435  158A01            adc ax,0x18a
00000438  158702            adc ax,0x287
0000043B  158904            adc ax,0x489
0000043E  158681            adc ax,0x8186
00000441  D6                salc
00000442  0115              add [di],dx
00000444  8ED6              mov ss,si
00000446  0215              add dl,[di]
00000448  8AD6              mov dl,dh
0000044A  D587              aad byte 0x87
0000044C  D6                salc
0000044D  0115              add [di],dx
0000044F  89D6              mov si,dx
00000451  0315              add dx,[di]
00000453  86CD              xchg cl,ch
00000455  D7                xlatb
00000456  0F                db 0x0f
00000457  0DD70C            or ax,0xcd7
0000045A  0DD707            or ax,0x7d7
0000045D  0DD708            or ax,0x8d7
00000460  0D82D7            or ax,0xd782
00000463  080D              or [di],cl
00000465  D1D0              rcl ax,0x0
00000467  310E820A          xor [0xa82],cx
0000046B  0E                push cs
0000046C  16                push ss
0000046D  0FD2D3            psrld mm2,mm3
00000470  26                es
00000471  0F                db 0x0f
00000472  3F                aas
00000473  0F07              sysret
00000475  0FD2D3            psrld mm2,mm3
00000478  240F              and al,0xf
0000047A  D2D3              rcl bl,cl
0000047C  0E                push cs
0000047D  0F                db 0x0f
0000047E  3F                aas
0000047F  1009              adc [bx+di],cl
00000481  11D8              adc ax,bx
00000483  0F11D8            movups xmm0,xmm3
00000486  16                push ss
00000487  11D8              adc ax,bx
00000489  0B11              or dx,[bx+di]
0000048B  8AD9              mov bl,cl
0000048D  0215              add dl,[di]
0000048F  8D                db 0x8d
00000490  D903              fld dword [bp+di]
00000492  1593D9            adc ax,0xd993
00000495  0115              add [di],dx
00000497  8A8A0315          mov cl,[bp+si+0x1503]
0000049B  8D04              lea ax,[si]
0000049D  159302            adc ax,0x293
000004A0  158A8A            adc ax,0x8a8a
000004A3  0315              add dx,[di]
000004A5  8D                db 0x8d
000004A6  C3                ret
000004A7  0315              add dx,[di]
000004A9  93                xchg ax,bx
000004AA  0215              add dl,[di]
000004AC  8A6041            mov ah,[bx+si+0x41]
000004AF  50                push ax
000004B0  810115C6          add word [bx+di],0xc615
000004B4  C54140            lds ax,word [bx+di+0x40]
000004B7  C20501            ret word 0x105
000004BA  82                db 0x82
000004BB  43                inc bx
000004BC  C8011593          enter word 0x1501,byte 0x93
000004C0  C3                ret
000004C1  C6C551            mov ch,0x51
000004C4  50                push ax
000004C5  C2508A            ret word 0x8a50
000004C8  0315              add dx,[di]
000004CA  8D63CA            lea sp,[bp+di-0x36]
000004CD  41                inc cx
000004CE  50                push ax
000004CF  C20601            ret word 0x106
000004D2  41                inc cx
000004D3  50                push ax
000004D4  81C40115          add sp,0x1501
000004D8  8A8AC302          mov cl,[bp+si+0x2c3]
000004DC  1585C3            adc ax,0xc385
000004DF  8753CA            xchg dx,[bp+di-0x36]
000004E2  D593              aad byte 0x93
000004E4  43                inc bx
000004E5  D587              aad byte 0x87
000004E7  C4828AC4          les ax,word [bp+si-0x3b76]
000004EB  0215              add dl,[di]
000004ED  854386            test [bp+di-0x7a],ax
000004F0  53                push bx
000004F1  0115              add [di],dx
000004F3  8AC3              mov al,bl
000004F5  C487C4C9          les ax,word [bx-0x363c]
000004F9  D587              aad byte 0x87
000004FB  C4828AC4          les ax,word [bp+si-0x3b76]
000004FF  0115              add [di],dx
00000501  DA8543D4          fiadd dword [di-0x2bbd]
00000505  85C9              test cx,cx
00000507  C4                db 0xc4
00000508  CA0115            retf word 0x1501
0000050B  8A43C5            mov al,[bp+di-0x3b]
0000050E  C9                leave
0000050F  CB                retf
00000510  8443D5            test [bp+di-0x2b],al
00000513  87C4              xchg ax,sp
00000515  82                db 0x82
00000516  8AC4              mov al,ah
00000518  C8D58643          enter word 0x86d5,byte 0x43
0000051C  C8854301          enter word 0x4385,byte 0x1
00000520  154A89            adc ax,0x894a
00000523  43                inc bx
00000524  CA86C9            retf word 0xc986
00000527  43                inc bx
00000528  874381            xchg ax,[bp+di-0x7f]
0000052B  8A43D5            mov al,[bp+di-0x2b]
0000052E  8643CA            xchg al,[bp+di-0x36]
00000531  8543C8            test [bp+di-0x38],ax
00000534  0115              add [di],dx
00000536  8AC4              mov al,ah
00000538  D487              aam byte 0x87
0000053A  C4                db 0xc4
0000053B  C54A86            lds cx,word [bp+si-0x7a]
0000053E  43                inc bx
0000053F  818AC9C4C886      or word [bp+si-0x3b37],0x86c8
00000545  C4                db 0xc4
00000546  C6                db 0xc6
00000547  D585              aad byte 0x85
00000549  53                push bx
0000054A  0115              add [di],dx
0000054C  8A43C8            mov al,[bp+di-0x38]
0000054F  8653CA            xchg dl,[bp+di-0x36]
00000552  864381            xchg al,[bp+di-0x7f]
00000555  8AC4              mov al,ah
00000557  C9                leave
00000558  C54A84            lds cx,word [bp+si-0x7c]
0000055B  43                inc bx
0000055C  C54A83            lds cx,word [bp+si-0x7d]
0000055F  53                push bx
00000560  0115              add [di],dx
00000562  8AC9              mov cl,cl
00000564  43                inc bx
00000565  8643CA            xchg al,[bp+di-0x36]
00000568  87C9              xchg cx,cx
0000056A  C4                db 0xc4
0000056B  D48A              aam byte 0x8a
0000056D  53                push bx
0000056E  8653C8            xchg dl,[bp+di-0x38]
00000571  84CA              test dl,cl
00000573  43                inc bx
00000574  C8D58AC4          enter word 0x8ad5,byte 0xc4
00000578  C9                leave
00000579  C5                db 0xc5
0000057A  C885C401          enter word 0xc485,byte 0x1
0000057E  158743            adc ax,0x4387
00000581  D5C8              aad byte 0xc8
00000583  8953CA            mov [bp+di-0x36],dx
00000586  8543DA            test [bp+di-0x26],ax
00000589  C483DDDF          les ax,word [bp+di-0x2023]
0000058D  C4                db 0xc4
0000058E  C9                leave
0000058F  C4                db 0xc4
00000590  D58A              aad byte 0x8a
00000592  53                push bx
00000593  CA8543            retf word 0x4385
00000596  D587              aad byte 0x87
00000598  53                push bx
00000599  4A                dec dx
0000059A  88C4              mov ah,al
0000059C  CAD586            retf word 0x86d5
0000059F  53                push bx
000005A0  CA83DD            retf word 0xdd83
000005A3  DF53C8            fist word [bp+di-0x38]
000005A6  8A5386            mov dl,[bp+di-0x7a]
000005A9  53                push bx
000005AA  C88653C8          enter word 0x5386,byte 0xc8
000005AE  89C4              mov sp,ax
000005B0  0115              add [di],dx
000005B2  86C4              xchg al,ah
000005B4  C6C4CB            mov ah,0xcb
000005B7  83DDDF            sbb bp,0xffffffffffffffdf
000005BA  43                inc bx
000005BB  C5                db 0xc5
000005BC  C6                db 0xc6
000005BD  8AC4              mov al,ah
000005BF  C9                leave
000005C0  C4                db 0xc4
000005C1  C88553C5          enter word 0x5385,byte 0xc5
000005C5  CB                retf
000005C6  85C4              test sp,ax
000005C8  44                inc sp
000005C9  CA8943            retf word 0x4389
000005CC  C88643CA          enter word 0x4386,byte 0xca
000005D0  CB                retf
000005D1  83DDDF            sbb bp,0xffffffffffffffdf
000005D4  C4                db 0xc4
000005D5  C6C4C9            mov ah,0xc9
000005D8  CB                retf
000005D9  896385            mov [bp+di-0x7b],sp
000005DC  C4                db 0xc4
000005DD  C9                leave
000005DE  C5                db 0xc5
000005DF  C46C82            les bp,word [si-0x7e]
000005E2  53                push bx
000005E3  6A86              push word 0xffffffffffffff86
000005E5  43                inc bx
000005E6  C5                db 0xc5
000005E7  CB                retf
000005E8  85C6              test si,ax
000005EA  C4                db 0xc4
000005EB  D5CC              aad byte 0xcc
000005ED  83DDDF            sbb bp,0xffffffffffffffdf
000005F0  638A43DA          arpl [bp+si-0x25bd],cx
000005F4  CA8563            retf word 0x6385
000005F7  6D                insw
000005F8  82                db 0x82
000005F9  43                inc bx
000005FA  C5                db 0xc5
000005FB  C4                db 0xc4
000005FC  C88853C8          enter word 0x5388,byte 0xc8
00000600  8543D5            test [bp+di-0x2b],ax
00000603  84DD              test ch,bl
00000605  DF53C5            fist word [bp+di-0x3b]
00000608  4A                dec dx
00000609  8843C8            mov [bp+di-0x38],al
0000060C  8643C9            xchg al,[bp+di-0x37]
0000060F  C405              les ax,word [di]
00000611  0FC4C9C4          pinsrw mm1,cx,0xc4
00000615  43                inc bx
00000616  CA87C4            retf word 0xc487
00000619  C6438543          mov byte [bp+di-0x7b],0x43
0000061D  DA84DDDF          fiadd dword [si-0x2023]
00000621  53                push bx
00000622  CA8A43            retf word 0x438a
00000625  CA8663            retf word 0x6386
00000628  051043            add ax,0x4310
0000062B  D5C4              aad byte 0xc4
0000062D  CA8853            retf word 0x5388
00000630  CA85C4            retf word 0xc485
00000633  CA85DD            retf word 0xdd85
00000636  DF53D5            fist word [bp+di-0x2b]
00000639  8ACA              mov cl,dl
0000063B  DA876305          fiadd dword [bx+0x563]
0000063F  11C4              adc sp,ax
00000641  C5                db 0xc5
00000642  C4                db 0xc4
00000643  C54A87            lds cx,word [bp+si-0x79]
00000646  43                inc bx
00000647  CACC85            retf word 0x85cc
0000064A  C487C6C9          les ax,word [bx-0x363a]
0000064E  C4                db 0xc4
0000064F  CAD591            retf word 0x91d5
00000652  DDDE              fstp st6
00000654  DFC4              ffreep st4
00000656  C54A85            lds cx,word [bp+si-0x7b]
00000659  43                inc bx
0000065A  C54388            lds ax,word [bp+di-0x78]
0000065D  43                inc bx
0000065E  DA86C487          fiadd dword [bp-0x783c]
00000662  53                push bx
00000663  D5DA              aad byte 0xda
00000665  91                xchg ax,cx
00000666  DDDE              fstp st6
00000668  DFC5              ffreep st5
0000066A  43                inc bx
0000066B  86534A            xchg dl,[bp+di+0x4a]
0000066E  8853CA            mov [bp+di-0x36],dl
00000671  85C6              test si,ax
00000673  8753D5            xchg dx,[bp+di-0x2b]
00000676  92                xchg ax,dx
00000677  DDDE              fstp st6
00000679  DF43CB            fild word [bp+di-0x35]
0000067C  86C9              xchg cl,cl
0000067E  43                inc bx
0000067F  C4                db 0xc4
00000680  CA88C4            retf word 0xc488
00000683  C6C48E            mov ah,0x8e
00000686  53                push bx
00000687  C892DDDE          enter word 0xdd92,byte 0xde
0000068B  DF43CA            fild word [bp+di-0x36]
0000068E  86C4              xchg al,ah
00000690  C9                leave
00000691  C4                db 0xc4
00000692  D589              aad byte 0x89
00000694  43                inc bx
00000695  CA5150            retf word 0x5051
00000698  C240C2            ret word 0xc240
0000069B  50                push ax
0000069C  81C4C6C4          add sp,0xc4c6
000006A0  CA92DD            retf word 0xdd92
000006A3  DE                db 0xde
000006A4  DF4387            fild word [bp+di-0x79]
000006A7  43                inc bx
000006A8  D5D5              aad byte 0xd5
000006AA  89C9              mov cx,cx
000006AC  C48F53DA          les cx,word [bx-0x25ad]
000006B0  94                xchg ax,sp
000006B1  48                dec ax
000006B2  C48743CA          les ax,word [bx-0x35bd]
000006B6  D589              aad byte 0x89
000006B8  43                inc bx
000006B9  8F                db 0x8f
000006BA  C9                leave
000006BB  43                inc bx
000006BC  95                xchg ax,bp
000006BD  43                inc bx
000006BE  CA87C4            retf word 0xc487
000006C1  0115              add [di],dx
000006C3  D589              aad byte 0x89
000006C5  C4                db 0xc4
000006C6  DA8F5395          fimul dword [bx-0x6aad]
000006CA  C4                db 0xc4
000006CB  CA88C4            retf word 0xc488
000006CE  0115              add [di],dx
000006D0  D589              aad byte 0x89
000006D2  E090              loopne 0x664
000006D4  C4                db 0xc4
000006D5  C6                db 0xc6
000006D6  CA95C4            retf word 0xc495
000006D9  89C4              mov sp,ax
000006DB  C8D5D589          enter word 0xd5d5,byte 0x89
000006DF  C490438D          les dx,word [bx+si-0x72bd]
000006E3  C3                ret
000006E4  88CA              mov dl,cl
000006E6  8943C8            mov [bp+di-0x38],ax
000006E9  CA89E0            retf word 0xe089
000006EC  90                nop
000006ED  43                inc bx
000006EE  41                inc cx
000006EF  50                push ax
000006F0  C2C1C2            ret word 0xc2c1
000006F3  60                pusha
000006F4  81C4C891          add sp,0x91c8
000006F8  C643D589          mov byte [bp+di-0x2b],0x89
000006FC  C490C4CA          les dx,word [bx+si-0x353c]
00000700  8D4351            lea ax,[bp+di+0x51]
00000703  50                push ax
00000704  C26041            ret word 0x4160
00000707  50                push ax
00000708  8153CA89E0        adc word [bp+di-0x36],0xe089
0000070D  89C3              mov bx,ax
0000070F  86C4              xchg al,ah
00000711  85C8              test ax,cx
00000713  8843C8            mov [bp+di-0x38],al
00000716  90                nop
00000717  53                push bx
00000718  D589              aad byte 0x89
0000071A  C4                db 0xc4
0000071B  CA88C4            retf word 0xc488
0000071E  86CA              xchg cl,dl
00000720  84C3              test bl,al
00000722  C488C4C6          les cx,word [bx+si-0x393c]
00000726  C49043CA          les dx,word [bx+si-0x35bd]
0000072A  D589              aad byte 0x89
0000072C  C4                db 0xc4
0000072D  D488              aam byte 0x88
0000072F  C48B43C8          les cx,word [bp+di-0x37bd]
00000733  875390            xchg dx,[bp+di-0x70]
00000736  CAC4D5            retf word 0xd5c4
00000739  D5D4              aad byte 0xd4
0000073B  88C4              mov ah,al
0000073D  CACB87            retf word 0x87cb
00000740  C45160            les dx,word [bx+di+0x60]
00000743  C24081            ret word 0x8140
00000746  43                inc bx
00000747  CA8753            retf word 0x5387
0000074A  90                nop
0000074B  C6C4C9            mov ah,0xc9
0000074E  C4                db 0xc4
0000074F  D588              aad byte 0x88
00000751  43                inc bx
00000752  CA87C4            retf word 0xc487
00000755  C88AC4CA          enter word 0xc48a,byte 0xca
00000759  88C9              mov cl,cl
0000075B  43                inc bx
0000075C  C88F53C4          enter word 0x538f,byte 0xc4
00000760  C8C5CB86          enter word 0xcbc5,byte 0x86
00000764  C444CB            les ax,word [si-0x35]
00000767  86438A            xchg al,[bp+di-0x76]
0000076A  C4                db 0xc4
0000076B  D5D4              aad byte 0xd4
0000076D  8753CA            xchg dx,[bp+di-0x36]
00000770  8F                db 0x8f
00000771  53                push bx
00000772  43                inc bx
00000773  885387            mov [bp+di-0x79],dl
00000776  43                inc bx
00000777  8AC4              mov al,ah
00000779  C8D58743          enter word 0x87d5,byte 0x43
0000077D  CA9043            retf word 0x4390
00000780  C64388C9          mov byte [bp+di-0x78],0xc9
00000784  43                inc bx
00000785  C88643C8          enter word 0x4386,byte 0xc8
00000789  8943C8            mov [bp+di-0x38],ax
0000078C  8743D5            xchg ax,[bp+di-0x2b]
0000078F  90                nop
00000790  53                push bx
00000791  0115              add [di],dx
00000793  8843C6            mov [bp+di-0x3a],al
00000796  C486C4C9          les ax,word [bp-0x363c]
0000079A  C489C4C6          les cx,word [bx+di-0x393c]
0000079E  C4                db 0xc4
0000079F  CA86C4            retf word 0xc486
000007A2  C9                leave
000007A3  D590              aad byte 0x90
000007A5  53                push bx
000007A6  0115              add [di],dx
000007A8  8843CA            mov [bp+di-0x36],al
000007AB  8753CA            xchg dx,[bp+di-0x36]
000007AE  88C6              mov dh,al
000007B0  C4                db 0xc4
000007B1  CA8743            retf word 0x4387
000007B4  C89043D5          enter word 0x4390,byte 0xd5
000007B8  0115              add [di],dx
000007BA  88C4              mov ah,al
000007BC  CA8853            retf word 0x5388
000007BF  8943C9            mov [bp+di-0x37],ax
000007C2  8753C8            xchg dx,[bp+di-0x38]
000007C5  4A                dec dx
000007C6  8D5343            lea dx,[bp+di+0x43]
000007C9  C887C4D5          enter word 0xc487,byte 0xd5
000007CD  8843CA            mov [bp+di-0x36],al
000007D0  895387            mov [bp+di-0x79],dx
000007D3  638F53C4          arpl [bx-0x3bad],cx
000007D7  CA88C4            retf word 0xc488
000007DA  C888C4C6          enter word 0xc488,byte 0xc6
000007DE  C5                db 0xc5
000007DF  CB                retf
000007E0  884344            mov [bp+di+0x44],al
000007E3  4A                dec dx
000007E4  8453CA            test [bp+di-0x36],dl
000007E7  8F43C9            pop word [bp+di-0x37]
000007EA  C4                db 0xc4
000007EB  D588              aad byte 0x88
000007ED  53                push bx
000007EE  CA86C9            retf word 0xc986
000007F1  C4                db 0xc4
000007F2  C88953C8          enter word 0x5389,byte 0xc8
000007F6  865390            xchg dl,[bp+di-0x70]
000007F9  C643C4D5          mov byte [bp+di-0x3c],0xd5
000007FD  88C4              mov ah,al
000007FF  C6C487            mov ah,0x87
00000802  43                inc bx
00000803  CA89C4            retf word 0xc489
00000806  C6C4CA            mov ah,0xca
00000809  86C6              xchg al,dh
0000080B  43                inc bx
0000080C  90                nop
0000080D  C9                leave
0000080E  43                inc bx
0000080F  CAD588            retf word 0x88d5
00000812  C9                leave
00000813  C4                db 0xc4
00000814  CA87C4            retf word 0xc487
00000817  CAD5CC            retf word 0xccd5
0000081A  8843D5            mov [bp+di-0x2b],al
0000081D  874344            xchg ax,[bp+di+0x44]
00000820  4A                dec dx
00000821  8D5301            lea dx,[bp+di+0x1]
00000824  15CC87            adc ax,0x87cc
00000827  43                inc bx
00000828  88C4              mov ah,al
0000082A  0115              add [di],dx
0000082C  8943C8            mov [bp+di-0x38],ax
0000082F  875390            xchg dx,[bp+di-0x70]
00000832  43                inc bx
00000833  D5D5              aad byte 0xd5
00000835  CB                retf
00000836  88C4              mov ah,al
00000838  CA8843            retf word 0x4388
0000083B  C889C4C9          enter word 0xc489,byte 0xc9
0000083F  C5                db 0xc5
00000840  C8CB8543          enter word 0x85cb,byte 0x43
00000844  D590              aad byte 0x90
00000846  43                inc bx
00000847  C8011588          enter word 0x1501,byte 0x88
0000084B  C489C943          les cx,word [bx+di+0x43c9]
0000084F  CA8853            retf word 0x5388
00000852  CA8643            retf word 0x4386
00000855  D590              aad byte 0x90
00000857  53                push bx
00000858  C8D588CA          enter word 0x88d5,byte 0xca
0000085C  8943CA            mov [bp+di-0x36],ax
0000085F  895387            mov [bp+di-0x79],dx
00000862  C401              les ax,word [bx+di]
00000864  15D48F            adc ax,0x8fd4
00000867  C4                db 0xc4
00000868  C6C444            mov ah,0x44
0000086B  4A                dec dx
0000086C  90                nop
0000086D  C4                db 0xc4
0000086E  C54A88            lds cx,word [bp+si-0x78]
00000871  C9                leave
00000872  C4                db 0xc4
00000873  CA87C4            retf word 0xc487
00000876  0215              add dl,[di]
00000878  8F                db 0x8f
00000879  53                push bx
0000087A  CAC9C5            retf word 0xc5c9
0000087D  61                popa
0000087E  40                inc ax
0000087F  C20701            ret word 0x107
00000882  82                db 0x82
00000883  C4                db 0xc4
00000884  CAD589            retf word 0x89d5
00000887  43                inc bx
00000888  D587              aad byte 0x87
0000088A  C60215            mov byte [bp+si],0x15
0000088D  8F                db 0x8f
0000088E  53                push bx
0000088F  0115              add [di],dx
00000891  92                xchg ax,dx
00000892  C401              les ax,word [bx+di]
00000894  158943            adc ax,0x4389
00000897  D587              aad byte 0x87
00000899  0315              add dx,[di]
0000089B  8FC4              pop sp
0000089D  CAD501            retf word 0x1d5
000008A0  1592C4            adc ax,0xc492
000008A3  0115              add [di],dx
000008A5  89C4              mov sp,ax
000008A7  CAD587            retf word 0x87d5
000008AA  0315              add dx,[di]
000008AC  8FC4              pop sp
000008AE  0115              add [di],dx
000008B0  0115              add [di],dx
000008B2  CC                int3
000008B3  91                xchg ax,cx
000008B4  CA0115            retf word 0x1501
000008B7  CC                int3
000008B8  88C4              mov ah,al
000008BA  0115              add [di],dx
000008BC  8703              xchg ax,[bp+di]
000008BE  158FCA            adc ax,0xca8f
000008C1  0115              add [di],dx
000008C3  0115              add [di],dx
000008C5  CC                int3
000008C6  91                xchg ax,cx
000008C7  0215              add dl,[di]
000008C9  89CA              mov dx,cx
000008CB  0115              add [di],dx
000008CD  8703              xchg ax,[bp+di]
000008CF  158F02            adc ax,0x28f
000008D2  150115            adc ax,0x1501
000008D5  92                xchg ax,dx
000008D6  0215              add dl,[di]
000008D8  8902              mov [bp+si],ax
000008DA  158703            adc ax,0x387
000008DD  158F02            adc ax,0x28f
000008E0  150115            adc ax,0x1501
000008E3  CC                int3
000008E4  91                xchg ax,cx
000008E5  D6                salc
000008E6  0115              add [di],dx
000008E8  89D6              mov si,dx
000008EA  0115              add [di],dx
000008EC  87D6              xchg dx,si
000008EE  0215              add dl,[di]
000008F0  8F                db 0x8f
000008F1  D6                salc
000008F2  0115              add [di],dx
000008F4  130D              adc cx,[di]
000008F6  D7                xlatb
000008F7  080D              or [di],cl
000008F9  82                db 0x82
000008FA  D7                xlatb
000008FB  080D              or [di],cl
000008FD  D7                xlatb
000008FE  110D              adc [di],cx
00000900  D7                xlatb
00000901  4C                dec sp
00000902  1D0E82            sbb ax,0x820e
00000905  1F                pop ds
00000906  0E                push cs
00000907  1E                push ds
00000908  0FD2D3            psrld mm2,mm3
0000090B  1E                push ds
0000090C  0F2D0F            cvtps2pi mm1,qword [bx]
0000090F  D2D3              rcl bl,cl
00000911  0F                db 0x0f
00000912  0F08              invd
00000914  0FD2D3            psrld mm2,mm3
00000917  100F              adc [bx],cl
00000919  D2D3              rcl bl,cl
0000091B  210F              and [bx],cx
0000091D  3F                aas
0000091E  1010              adc [bx+si],dl
00000920  11D8              adc ax,bx
00000922  0C11              or al,0x11
00000924  D80E11D8          fmul dword [0xd811]
00000928  0911              or [bx+di],dx
0000092A  D804              fadd dword [si]
0000092C  1191D902          adc [bx+di+0x2d9],dx
00000930  158AD9            adc ax,0xd98a
00000933  0215              add dl,[di]
00000935  8CD9              mov cx,ds
00000937  0215              add dl,[di]
00000939  87D9              xchg bx,cx
0000093B  0215              add dl,[di]
0000093D  82                db 0x82
0000093E  91                xchg ax,cx
0000093F  0315              add dx,[di]
00000941  8A03              mov al,[bp+di]
00000943  158C03            adc ax,0x38c
00000946  158703            adc ax,0x387
00000949  15CC81            adc ax,0x81cc
0000094C  91                xchg ax,cx
0000094D  0315              add dx,[di]
0000094F  8A03              mov al,[bp+di]
00000951  158C03            adc ax,0x38c
00000954  158703            adc ax,0x387
00000957  158291            adc ax,0x9182
0000095A  C3                ret
0000095B  0215              add dl,[di]
0000095D  8A03              mov al,[bp+di]
0000095F  158C03            adc ax,0x38c
00000962  158703            adc ax,0x387
00000965  158291            adc ax,0x9182
00000968  C402              les ax,word [bp+si]
0000096A  158A03            adc ax,0x38a
0000096D  158CC3            adc ax,0xc38c
00000970  0215              add dl,[di]
00000972  87C3              xchg ax,bx
00000974  0215              add dl,[di]
00000976  CC                int3
00000977  8191C4C80115      adc word [bx+di-0x373c],0x1501
0000097D  8AC3              mov al,bl
0000097F  0215              add dl,[di]
00000981  8CC4              mov sp,es
00000983  0215              add dl,[di]
00000985  87C4              xchg ax,sp
00000987  0215              add dl,[di]
00000989  82                db 0x82
0000098A  91                xchg ax,cx
0000098B  43                inc bx
0000098C  0115              add [di],dx
0000098E  8AC4              mov al,ah
00000990  0215              add dl,[di]
00000992  8CC4              mov sp,es
00000994  0215              add dl,[di]
00000996  87C4              xchg ax,sp
00000998  0215              add dl,[di]
0000099A  82                db 0x82
0000099B  91                xchg ax,cx
0000099C  43                inc bx
0000099D  0115              add [di],dx
0000099F  8AC4              mov al,ah
000009A1  C55A8B            lds bx,word [bp+si-0x75]
000009A4  C401              les ax,word [bx+di]
000009A6  15DA87            adc ax,0x87da
000009A9  C4                db 0xc4
000009AA  C8011582          enter word 0x1501,byte 0x82
000009AE  8CE2              mov dx,fs
000009B0  8443C8            test [bp+di-0x38],al
000009B3  D58A              aad byte 0x8a
000009B5  43                inc bx
000009B6  D58D              aad byte 0x8d
000009B8  C4                db 0xc4
000009B9  C8D58843          enter word 0x88d5,byte 0x43
000009BD  C8D5828C          enter word 0x82d5,byte 0x8c
000009C1  E384              jcxz 0x947
000009C3  C4                db 0xc4
000009C4  C9                leave
000009C5  C4                db 0xc4
000009C6  DA8A43D5          fimul dword [bp+si-0x2abd]
000009CA  8D                db 0x8d
000009CB  C9                leave
000009CC  C4                db 0xc4
000009CD  C88853D5          enter word 0x5388,byte 0xd5
000009D1  82                db 0x82
000009D2  8CE4              mov sp,fs
000009D4  84538B            test [bp+di-0x75],dl
000009D7  C4                db 0xc4
000009D8  C9                leave
000009D9  D58D              aad byte 0x8d
000009DB  53                push bx
000009DC  C88753D5          enter word 0x5387,byte 0xd5
000009E0  82                db 0x82
000009E1  8CE5              mov bp,fs
000009E3  84C9              test cl,cl
000009E5  43                inc bx
000009E6  C88A53D4          enter word 0x538a,byte 0xd4
000009EA  8C63C8            mov word [bp+di-0x38],fs
000009ED  8653C8            xchg dl,[bp+di-0x38]
000009F0  82                db 0x82
000009F1  8CE6              mov si,fs
000009F3  8453CA            test [bp+di-0x36],dl
000009F6  8A43CA            mov al,[bp+di-0x36]
000009F9  D58C              aad byte 0x8c
000009FB  43                inc bx
000009FC  C9                leave
000009FD  CA87C4            retf word 0xc487
00000A00  C6438291          mov byte [bp+di-0x7e],0x91
00000A04  C4                db 0xc4
00000A05  CAD58B            retf word 0x8bd5
00000A08  C9                leave
00000A09  43                inc bx
00000A0A  D58C              aad byte 0x8c
00000A0C  C4                db 0xc4
00000A0D  C9                leave
00000A0E  CA8863            retf word 0x6388
00000A11  82                db 0x82
00000A12  CB                retf
00000A13  90                nop
00000A14  C401              les ax,word [bx+di]
00000A16  158B53            adc ax,0x538b
00000A19  D58C              aad byte 0x8c
00000A1B  43                inc bx
00000A1C  D588              aad byte 0x88
00000A1E  53                push bx
00000A1F  44                inc sp
00000A20  CB                retf
00000A21  91                xchg ax,cx
00000A22  43                inc bx
00000A23  C88BC4C9          enter word 0xc48b,byte 0xc9
00000A27  43                inc bx
00000A28  CA8B53            retf word 0x538b
00000A2B  CA8773            retf word 0x7387
00000A2E  8191538B53CA      adc word [bx+di-0x74ad],0xca53
00000A34  8C43CA            mov word [bp+di-0x36],es
00000A37  88C6              mov dh,al
00000A39  53                push bx
00000A3A  CA8191            retf word 0x9181
00000A3D  C4                db 0xc4
00000A3E  C6C4C8            mov ah,0xc8
00000A41  8A53D5            mov dl,[bp+di-0x2b]
00000A44  8CC4              mov sp,es
00000A46  CAD688            retf word 0x88d6
00000A49  53                push bx
00000A4A  CA8291            retf word 0x9182
00000A4D  C9                leave
00000A4E  53                push bx
00000A4F  CA8953            retf word 0x5389
00000A52  D58C              aad byte 0x8c
00000A54  C401              les ax,word [bx+di]
00000A56  158853            adc ax,0x5388
00000A59  D582              aad byte 0x82
00000A5B  91                xchg ax,cx
00000A5C  43                inc bx
00000A5D  C9                leave
00000A5E  CA8A53            retf word 0x538a
00000A61  C88CC9C8          enter word 0xc98c,byte 0xc8
00000A65  D588              aad byte 0x88
00000A67  53                push bx
00000A68  C8829143          enter word 0x9182,byte 0x43
00000A6C  44                inc sp
00000A6D  4A                dec dx
00000A6E  8863C8            mov [bp+di-0x38],ah
00000A71  8B53C8            mov dx,[bp+di-0x38]
00000A74  8743C6            xchg ax,[bp+di-0x3a]
00000A77  C48291C4          les ax,word [bp+si-0x3b6f]
00000A7B  C9                leave
00000A7C  C48BC653          les cx,word [bp+di+0x53c6]
00000A80  49                dec cx
00000A81  8AC4              mov al,ah
00000A83  C6C4CA            mov ah,0xca
00000A86  8763CA            xchg sp,[bp+di-0x36]
00000A89  819143CA8B53      adc word [bx+di-0x35bd],0x538b
00000A8F  CA8C43            retf word 0x438c
00000A92  CA8853            retf word 0x5388
00000A95  CA8291            retf word 0x9182
00000A98  43                inc bx
00000A99  D58B              aad byte 0x8b
00000A9B  43                inc bx
00000A9C  CAD58C            retf word 0x8cd5
00000A9F  43                inc bx
00000AA0  D588              aad byte 0x88
00000AA2  43                inc bx
00000AA3  CAD582            retf word 0x82d5
00000AA6  91                xchg ax,cx
00000AA7  43                inc bx
00000AA8  D58B              aad byte 0x8b
00000AAA  43                inc bx
00000AAB  0115              add [di],dx
00000AAD  8C43C8            mov word [bp+di-0x38],es
00000AB0  884301            mov [bp+di+0x1],al
00000AB3  158291            adc ax,0x9182
00000AB6  C6C4D5            mov ah,0xd5
00000AB9  8B43C8            mov ax,[bp+di-0x38]
00000ABC  D58C              aad byte 0x8c
00000ABE  C4                db 0xc4
00000ABF  C9                leave
00000AC0  43                inc bx
00000AC1  C8866382          enter word 0x6386,byte 0x82
00000AC5  88C3              mov bl,al
00000AC7  8843DA            mov [bp+di-0x26],al
00000ACA  8B53D5            mov dx,[bp+di-0x2b]
00000ACD  8C535A            mov word [bp+di+0x5a],ss
00000AD0  857381            test [bp+di-0x7f],si
00000AD3  88C4              mov ah,al
00000AD5  88C4              mov ah,al
00000AD7  C54A8A            lds cx,word [bp+si-0x76]
00000ADA  53                push bx
00000ADB  C88CDCC5          enter word 0xdc8c,byte 0xc5
00000ADF  43                inc bx
00000AE0  CA86C6            retf word 0xc686
00000AE3  C4                db 0xc4
00000AE4  C6C4C9            mov ah,0xc9
00000AE7  CA88C4            retf word 0xc488
00000AEA  88C4              mov ah,al
00000AEC  C9                leave
00000AED  C48B63CA          les cx,word [bp+di-0x359d]
00000AF1  8CDC              mov sp,ds
00000AF3  C5                db 0xc5
00000AF4  C4                db 0xc4
00000AF5  CB                retf
00000AF6  8653CA            xchg dl,[bp+di-0x36]
00000AF9  82                db 0x82
00000AFA  88C4              mov ah,al
00000AFC  C88743CA          enter word 0x4387,byte 0xca
00000B00  8BC4              mov ax,sp
00000B02  C6438FC4          mov byte [bp+di-0x71],0xc4
00000B06  C88643CA          enter word 0x4386,byte 0xca
00000B0A  D582              aad byte 0x82
00000B0C  88C9              mov cl,cl
00000B0E  C4                db 0xc4
00000B0F  C886C9C4          enter word 0xc986,byte 0xc4
00000B13  85C8              test ax,cx
00000B15  86638F            xchg ah,[bp+di-0x71]
00000B18  43                inc bx
00000B19  864301            xchg al,[bp+di+0x1]
00000B1C  158288            adc ax,0x8882
00000B1F  43                inc bx
00000B20  CA8643            retf word 0x4386
00000B23  85C4              test sp,ax
00000B25  8653CA            xchg dl,[bp+di-0x36]
00000B28  8FC4              pop sp
00000B2A  C9                leave
00000B2B  CC                int3
00000B2C  854301            test [bp+di+0x1],ax
00000B2F  158288            adc ax,0x8882
00000B32  C4                db 0xc4
00000B33  C54A85            lds cx,word [bp+si-0x7b]
00000B36  C4                db 0xc4
00000B37  CA85C4            retf word 0xc485
00000B3A  C88543CA          enter word 0x4385,byte 0xca
00000B3E  D58F              aad byte 0x8f
00000B40  43                inc bx
00000B41  8653C8            xchg dl,[bp+di-0x38]
00000B44  82                db 0x82
00000B45  8843C8            mov [bp+di-0x38],al
00000B48  86C4              xchg al,ah
00000B4A  86C4              xchg al,ah
00000B4C  CA85C9            retf word 0xc985
00000B4F  C401              les ax,word [bx+di]
00000B51  1584C3            adc ax,0xc384
00000B54  8AC4              mov al,ah
00000B56  CA8663            retf word 0x6386
00000B59  C8818853          enter word 0x8881,byte 0x53
00000B5D  C885C486          enter word 0xc485,byte 0x86
00000B61  C4                db 0xc4
00000B62  D485              aam byte 0x85
00000B64  43                inc bx
00000B65  CAD584            retf word 0x84d5
00000B68  C48ACA87          les cx,word [bp+si-0x7836]
00000B6C  43                inc bx
00000B6D  C9                leave
00000B6E  C4                db 0xc4
00000B6F  CA8188            retf word 0x8881
00000B72  C4                db 0xc4
00000B73  C643C884          mov byte [bp+di-0x38],0x84
00000B77  CA86C4            retf word 0xc486
00000B7A  C8854301          enter word 0x4385,byte 0x1
00000B7E  15CC83            adc ax,0x83cc
00000B81  C4                db 0xc4
00000B82  C8916382          enter word 0x6391,byte 0x82
00000B86  88638C            mov [bp+di-0x74],ah
00000B89  43                inc bx
00000B8A  854301            test [bp+di+0x1],ax
00000B8D  158443            adc ax,0x4384
00000B90  41                inc cx
00000B91  60                pusha
00000B92  C2C141            ret word 0x41c1
00000B95  40                inc ax
00000B96  C25081            ret word 0x8150
00000B99  63828863          arpl [bp+si+0x6388],ax
00000B9D  8C4385            mov word [bp+di-0x7b],es
00000BA0  43                inc bx
00000BA1  C8D58443          enter word 0x84d5,byte 0x43
00000BA5  91                xchg ax,cx
00000BA6  C643CA82          mov byte [bp+di-0x36],0x82
00000BAA  88C6              mov dh,al
00000BAC  43                inc bx
00000BAD  8D43D4            lea ax,[bp+di-0x2c]
00000BB0  8453D5            test [bp+di-0x2b],dl
00000BB3  CC                int3
00000BB4  8343C888          add word [bp+di-0x38],0xffffffffffffff88
00000BB8  C3                ret
00000BB9  C88653D5          enter word 0x5386,byte 0xd5
00000BBD  82                db 0x82
00000BBE  8843D5            mov [bp+di-0x2b],al
00000BC1  8D                db 0x8d
00000BC2  C4                db 0xc4
00000BC3  C9                leave
00000BC4  D584              aad byte 0x84
00000BC6  43                inc bx
00000BC7  CAD584            retf word 0x84d5
00000BCA  53                push bx
00000BCB  884386            mov [bp+di-0x7a],al
00000BCE  53                push bx
00000BCF  D582              aad byte 0x82
00000BD1  8853C8            mov [bp+di-0x38],dl
00000BD4  8C43D5            mov word [bp+di-0x2b],es
00000BD7  844301            test [bp+di+0x1],al
00000BDA  1584C3            adc ax,0xc384
00000BDD  C4                db 0xc4
00000BDE  CA8853            retf word 0x5388
00000BE1  C88453DA          enter word 0x5384,byte 0xda
00000BE5  82                db 0x82
00000BE6  8863C8            mov [bp+di-0x38],ah
00000BE9  8B43C8            mov ax,[bp+di-0x38]
00000BEC  844301            test [bp+di+0x1],al
00000BEF  158443            adc ax,0x4384
00000BF2  D488              aam byte 0x88
00000BF4  C4                db 0xc4
00000BF5  C6C4CA            mov ah,0xca
00000BF8  845383            test [bp+di-0x7d],dl
00000BFB  8843C6            mov [bp+di-0x3a],al
00000BFE  C5                db 0xc5
00000BFF  CB                retf
00000C00  8B5384            mov dx,[bp+di-0x7c]
00000C03  43                inc bx
00000C04  C8D58443          enter word 0x84d5,byte 0x43
00000C08  D588              aad byte 0x88
00000C0A  C9                leave
00000C0B  43                inc bx
00000C0C  84C3              test bl,al
00000C0E  43                inc bx
00000C0F  C5                db 0xc5
00000C10  CB                retf
00000C11  82                db 0x82
00000C12  8863CA            mov [bp+di-0x36],ah
00000C15  8BC9              mov cx,cx
00000C17  C4                db 0xc4
00000C18  C9                leave
00000C19  8443CA            test [bp+di-0x36],al
00000C1C  D584              aad byte 0x84
00000C1E  C4                db 0xc4
00000C1F  C6                db 0xc6
00000C20  D588              aad byte 0x88
00000C22  53                push bx
00000C23  C5                db 0xc5
00000C24  CC                int3
00000C25  81C343C5          add bx,0xc543
00000C29  C88388C9          enter word 0x8883,byte 0xc9
00000C2D  C4                db 0xc4
00000C2E  CAD48C            retf word 0x8cd4
00000C31  53                push bx
00000C32  8443D5            test [bp+di-0x2b],al
00000C35  DA8443C8          fiadd dword [si-0x37bd]
00000C39  8853C9            mov [bp+di-0x37],dl
00000C3C  C8CBC4C9          enter word 0xc4cb,byte 0xc9
00000C40  43                inc bx
00000C41  49                dec cx
00000C42  82                db 0x82
00000C43  88C4              mov ah,al
00000C45  0215              add dl,[di]
00000C47  8C5384            mov word [bp+di-0x7c],ss
00000C4A  43                inc bx
00000C4B  CA8543            retf word 0x4385
00000C4E  C5                db 0xc5
00000C4F  CB                retf
00000C50  8763CA            xchg sp,[bp+di-0x36]
00000C53  C6                db 0xc6
00000C54  CAC4C5            retf word 0xc5c4
00000C57  4A                dec dx
00000C58  8388C4C801        or word [bx+si-0x373c],0x1
00000C5D  158C43            adc ax,0x438c
00000C60  C5                db 0xc5
00000C61  CB                retf
00000C62  83444A84          add word [si+0x4a],0xffffffffffffff84
00000C66  C9                leave
00000C67  43                inc bx
00000C68  CA8743            retf word 0x4387
00000C6B  44                inc sp
00000C6C  5A                pop dx
00000C6D  43                inc bx
00000C6E  CA8488            retf word 0x8884
00000C71  738B              jnc 0xbfe
00000C73  C4                db 0xc4
00000C74  C9                leave
00000C75  CA84DC            retf word 0xdc84
00000C78  C5                db 0xc5
00000C79  C8855388          enter word 0x5385,byte 0x88
00000C7D  63CA              arpl dx,cx
00000C7F  82                db 0x82
00000C80  CAC5CB            retf word 0xcbc5
00000C83  848863CA          test [bx+si-0x359d],cl
00000C87  8B43D5            mov ax,[bp+di-0x2b]
00000C8A  854385            test [bp+di-0x7b],ax
00000C8D  43                inc bx
00000C8E  D588              aad byte 0x88
00000C90  43                inc bx
00000C91  44                inc sp
00000C92  4A                dec dx
00000C93  82                db 0x82
00000C94  CA8588            retf word 0x8885
00000C97  43                inc bx
00000C98  C9                leave
00000C99  C54A8A            lds cx,word [bp+si-0x76]
00000C9C  43                inc bx
00000C9D  D585              aad byte 0x85
00000C9F  43                inc bx
00000CA0  8543C8            test [bp+di-0x38],ax
00000CA3  884349            mov [bp+di+0x49],al
00000CA6  8A88C943          mov cl,[bx+si+0x43c9]
00000CAA  CA8C43            retf word 0x438c
00000CAD  C885CAC4          enter word 0xca85,byte 0xc4
00000CB1  85C4              test sp,ax
00000CB3  C6C4CA            mov ah,0xca
00000CB6  87C4              xchg ax,sp
00000CB8  C5                db 0xc5
00000CB9  CB                retf
00000CBA  8B88C4C6          mov cx,[bx+si-0x393c]
00000CBE  C4                db 0xc4
00000CBF  D58C              aad byte 0x8c
00000CC1  53                push bx
00000CC2  86C4              xchg al,ah
00000CC4  8543D5            test [bp+di-0x2b],ax
00000CC7  8843CA            mov [bp+di-0x36],al
00000CCA  8B8843CA          mov cx,[bx+si-0x35bd]
00000CCE  D58C              aad byte 0x8c
00000CD0  C9                leave
00000CD1  C4                db 0xc4
00000CD2  CA86CA            retf word 0xca86
00000CD5  8543C8            test [bp+di-0x38],ax
00000CD8  88C4              mov ah,al
00000CDA  CAD58B            retf word 0x8bd5
00000CDD  884301            mov [bp+di+0x1],al
00000CE0  158C43            adc ax,0x438c
00000CE3  D58C              aad byte 0x8c
00000CE5  43                inc bx
00000CE6  CA88C4            retf word 0xc488
00000CE9  0115              add [di],dx
00000CEB  8B884301          mov cx,[bx+si+0x143]
00000CEF  158CC4            adc ax,0xc48c
00000CF2  CAD541            retf word 0x41d5
00000CF5  40                inc ax
00000CF6  C250C2            ret word 0xc250
00000CF9  40                inc ax
00000CFA  8143D588C4        add word [bp+di-0x2b],0xc488
00000CFF  CAD58B            retf word 0x8bd5
00000D02  88C4              mov ah,al
00000D04  CA0115            retf word 0x1501
00000D07  8CC4              mov sp,es
00000D09  0115              add [di],dx
00000D0B  8CC4              mov sp,es
00000D0D  CAD588            retf word 0x88d5
00000D10  C401              les ax,word [bx+di]
00000D12  15CC8A            adc ax,0x8acc
00000D15  88C4              mov ah,al
00000D17  0215              add dl,[di]
00000D19  8CC4              mov sp,es
00000D1B  0115              add [di],dx
00000D1D  8CCA              mov dx,cs
00000D1F  0115              add [di],dx
00000D21  88CA              mov dl,cl
00000D23  0115              add [di],dx
00000D25  8B88C402          mov cx,[bx+si+0x2c4]
00000D29  158CCA            adc ax,0xca8c
00000D2C  0115              add [di],dx
00000D2E  8C02              mov word [bp+si],es
00000D30  158802            adc ax,0x288
00000D33  158B88            adc ax,0x888b
00000D36  CA0215            retf word 0x1502
00000D39  8C02              mov word [bp+si],es
00000D3B  158C02            adc ax,0x28c
00000D3E  158802            adc ax,0x288
00000D41  15CC8A            adc ax,0x8acc
00000D44  8803              mov [bp+di],al
00000D46  158C02            adc ax,0x28c
00000D49  158C02            adc ax,0x28c
00000D4C  158802            adc ax,0x288
00000D4F  15CC8A            adc ax,0x8acc
00000D52  88D6              mov dh,dl
00000D54  0215              add dl,[di]
00000D56  8CD6              mov si,ss
00000D58  0115              add [di],dx
00000D5A  8CD6              mov si,ss
00000D5C  0115              add [di],dx
00000D5E  88D6              mov dh,dl
00000D60  0115              add [di],dx
00000D62  8B07              mov ax,[bx]
00000D64  0DD70E            or ax,0xed7
00000D67  0DD70D            or ax,0xdd7
00000D6A  0DD709            or ax,0x9d7
00000D6D  0DD70C            or ax,0xcd7
00000D70  0D3F0E            or ax,0xe3f
00000D73  3F                aas
00000D74  0F05              syscall
00000D76  001A              add [bp+si],bl
00000D78  A90031            test ax,0x3100
00000D7B  FF                db 0xff
00000D7C  FF                db 0xff
00000D7D  FF                db 0xff
00000D7E  FF6040            jmp word near [bx+si+0x40]
00000D81  AA                stosb
00000D82  5D                pop bp
00000D83  006300            add [bp+di+0x0],ah
00000D86  FF                db 0xff
00000D87  FF13              call word near [bp+di]
00000D89  0031              add [bx+di],dh
00000D8B  C10513            rol word [di],byte 0x13
00000D8E  0031              add [bx+di],dh
00000D90  00FF              add bh,bh
00000D92  FF                db 0xff
00000D93  FF160017          call word near [0x1700]
00000D97  C3                ret
00000D98  051600            add ax,0x16
00000D9B  17                pop ss
00000D9C  00FF              add bh,bh
00000D9E  FF                db 0xff
00000D9F  FF2F              jmp word far [bx]
00000DA1  000EC105          add [0x5c1],cl
00000DA5  2F                das
00000DA6  000E00FF          add [0xff00],cl
00000DAA  FF                db 0xff
00000DAB  FF34              push word [si]
00000DAD  0025              add [di],ah
00000DAF  C20534            ret word 0x3405
00000DB2  0025              add [di],ah
00000DB4  00FF              add bh,bh
00000DB6  FF                db 0xff
00000DB7  FF5600            call word near [bp+0x0]
00000DBA  2F                das
00000DBB  C405              les ax,word [di]
00000DBD  56                push si
00000DBE  002F              add [bx],ch
00000DC0  00FF              add bh,bh
00000DC2  FF                db 0xff
00000DC3  FF5800            call word far [bx+si+0x0]
00000DC6  06                push es
00000DC7  C3                ret
00000DC8  055800            add ax,0x58
00000DCB  06                push es
00000DCC  00FF              add bh,bh
00000DCE  FF                db 0xff
00000DCF  FF7200            push word [bp+si+0x0]
00000DD2  06                push es
00000DD3  C3                ret
00000DD4  057200            add ax,0x72
00000DD7  06                push es
00000DD8  00FF              add bh,bh
00000DDA  FF                db 0xff
00000DDB  FF7600            push word [bp+0x0]
00000DDE  1CC4              sbb al,0xc4
00000DE0  057600            add ax,0x76
00000DE3  1C00              sbb al,0x0
00000DE5  FF                db 0xff
00000DE6  FF                db 0xff
00000DE7  FF95000D          call word near [di+0xd00]
00000DEB  800307            add byte [bp+di],0x7
00000DEE  00FF              add bh,bh
00000DF0  00FF              add bh,bh
00000DF2  FF                db 0xff
00000DF3  FF99002B          call word far [bx+di+0x2b00]
00000DF7  C20599            ret word 0x9905
00000DFA  002B              add [bp+di],ch
00000DFC  00FF              add bh,bh
00000DFE  FF                db 0xff
00000DFF  FFAE0004          jmp word far [bp+0x400]
00000E03  C20734            ret word 0x3407
00000E06  0015              add [di],dl
00000E08  00FF              add bh,bh
00000E0A  FF                db 0xff
00000E0B  FF                db 0xff
00000E0C  BA002E            mov dx,0x2e00
00000E0F  C205BA            ret word 0xba05
00000E12  002E00FF          add [0xff00],ch
00000E16  FF                db 0xff
00000E17  FF                db 0xff
00000E18  BC0014            mov sp,0x1400
00000E1B  0107              add [bx],ax
00000E1D  1100              adc [bx+si],ax
00000E1F  150013            adc ax,0x1300
00000E22  0008              add [bx+si],cl
00000E24  C00004            rol byte [bx+si],byte 0x4
00000E27  40                inc ax
00000E28  096300            or [bp+di+0x0],sp
00000E2B  350013            xor ax,0x1300
00000E2E  0001              add [bx+di],al
00000E30  FF                db 0xff
00000E31  FF10              call word near [bx+si]
00000E33  00FF              add bh,bh
00000E35  13C0              adc ax,ax
00000E37  FF                db 0xff
00000E38  FF                db 0xff
00000E39  FF                db 0xff
00000E3A  FF12              call word near [bp+si]
00000E3C  0002              add [bp+si],al
00000E3E  A8CE              test al,0xce
00000E40  00FF              add bh,bh
00000E42  B1CE              mov cl,0xce
00000E44  FF                db 0xff
00000E45  FF                db 0xff
00000E46  FF                db 0xff
00000E47  FF12              call word near [bp+si]
00000E49  0001              add [bx+di],al
00000E4B  F1                int1
00000E4C  CE                into
00000E4D  0000              add [bx+si],al
00000E4F  FF                db 0xff
00000E50  FF13              call word near [bp+di]
00000E52  0080F1CF          add [bx+si-0x300f],al
00000E56  0000              add [bx+si],al
00000E58  FF                db 0xff
00000E59  FF13              call word near [bp+di]
00000E5B  0040F8            add [bx+si-0x8],al
00000E5E  CF                iret
00000E5F  00FF              add bh,bh
00000E61  01D0              add ax,dx
00000E63  FF                db 0xff
00000E64  FF                db 0xff
00000E65  FF                db 0xff
00000E66  FF13              call word near [bp+di]
00000E68  0020              add [bx+si],ah
00000E6A  C8D000FF          enter word 0xd0,byte 0xff
00000E6E  D3D0              rcl ax,cl
00000E70  FF                db 0xff
00000E71  FF                db 0xff
00000E72  FF                db 0xff
00000E73  FF13              call word near [bp+di]
00000E75  0010              add [bx+si],dl
00000E77  08D1              or cl,dl
00000E79  00FF              add bh,bh
00000E7B  13D1              adc dx,cx
00000E7D  FF                db 0xff
00000E7E  FF                db 0xff
00000E7F  FF                db 0xff
00000E80  FF13              call word near [bp+di]
00000E82  0008              add [bx+si],cl
00000E84  17                pop ss
00000E85  CE                into
00000E86  8107FFFF          add word [bx],0xffff
00000E8A  1300              adc ax,[bx+si]
00000E8C  0123              add [bp+di],sp
00000E8E  CE                into
00000E8F  C009FF            ror byte [bx+di],byte 0xff
00000E92  FF                db 0xff
00000E93  FF                db 0xff
00000E94  FF18              call word far [bx+si]
00000E96  AF                scasw
00000E97  000E4361          add [0x6143],cl
00000E9B  7665              jna 0xf02
00000E9D  726E              jc 0xf0d
00000E9F  206F66            and [bx+0x66],ch
00000EA2  205269            and [bp+si+0x69],dl
00000EA5  7A61              jpe 0xf08
00000EA7  0D0002            or ax,0x200
00000EAA  0404              add al,0x4
00000EAC  0400              add al,0x0
00000EAE  23FF              and di,di
00000EB0  7300              jnc 0xeb2
00000EB2  0020              add [bx+si],ah
00000EB4  0019              add [bx+di],bl
00000EB6  0012              add [bp+si],dl
00000EB8  0002              add [bp+si],al
00000EBA  0F0004            sldt word [si]
00000EBD  0033              add [bp+di],dh
00000EBF  FF03              inc word [bp+di]
00000EC1  0000              add [bx+si],al
00000EC3  0000              add [bx+si],al
00000EC5  0000              add [bx+si],al
00000EC7  0400              add al,0x0
00000EC9  3303              xor ax,[bp+di]
00000ECB  0007              add [bx],al
00000ECD  0023              add [bp+di],ah
00000ECF  FF03              inc word [bp+di]
00000ED1  0000              add [bx+si],al
00000ED3  0000              add [bx+si],al
00000ED5  0000              add [bx+si],al
00000ED7  07                pop es
00000ED8  0023              add [bp+di],ah
00000EDA  0300              add ax,[bx+si]
00000EDC  0D0009            or ax,0x900
00000EDF  FF02              inc word [bp+si]
00000EE1  0000              add [bx+si],al
00000EE3  0000              add [bx+si],al
00000EE5  0000              add [bx+si],al
00000EE7  0D0009            or ax,0x900
00000EEA  0200              add al,[bx+si]
00000EEC  1300              adc ax,[bx+si]
00000EEE  09FF              or di,di
00000EF0  D000              rol byte [bx+si],0x0
00000EF2  0020              add [bx+si],ah
00000EF4  0018              add [bx+si],bl
00000EF6  0012              add [bp+si],dl
00000EF8  0001              add [bx+di],al
00000EFA  0000              add [bx+si],al
00000EFC  1300              adc ax,[bx+si]
00000EFE  3DFF02            cmp ax,0x2ff
00000F01  0000              add [bx+si],al
00000F03  0000              add [bx+si],al
00000F05  0000              add [bx+si],al
00000F07  1300              adc ax,[bx+si]
00000F09  3D0200            cmp ax,0x2
00000F0C  2100              and [bx+si],ax
00000F0E  10FF              adc bh,bh
00000F10  0200              add al,[bx+si]
00000F12  0000              add [bx+si],al
00000F14  0000              add [bx+si],al
00000F16  0021              add [bx+di],ah
00000F18  0010              add [bx+si],dl
00000F1A  0200              add al,[bx+si]
00000F1C  2D0033            sub ax,0x3300
00000F1F  FF01              inc word [bx+di]
00000F21  0000              add [bx+si],al
00000F23  0000              add [bx+si],al
00000F25  0000              add [bx+si],al
00000F27  2D0033            sub ax,0x3300
00000F2A  0100              add [bx+si],ax
00000F2C  3000              xor [bx+si],al
00000F2E  1E                push ds
00000F2F  FF01              inc word [bx+di]
00000F31  0000              add [bx+si],al
00000F33  0000              add [bx+si],al
00000F35  0000              add [bx+si],al
00000F37  3000              xor [bx+si],al
00000F39  1E                push ds
00000F3A  0100              add [bx+si],ax
00000F3C  35001E            xor ax,0x1e00
00000F3F  FF02              inc word [bp+si]
00000F41  0000              add [bx+si],al
00000F43  0000              add [bx+si],al
00000F45  0000              add [bx+si],al
00000F47  35001E            xor ax,0x1e00
00000F4A  0200              add al,[bx+si]
00000F4C  37                aaa
00000F4D  003A              add [bp+si],bh
00000F4F  FF00              inc word [bx+si]
00000F51  0000              add [bx+si],al
00000F53  0000              add [bx+si],al
00000F55  0000              add [bx+si],al
00000F57  37                aaa
00000F58  003A              add [bp+si],bh
00000F5A  0000              add [bx+si],al
00000F5C  3E0033            add [ds:bp+di],dh
00000F5F  FF03              inc word [bp+di]
00000F61  0000              add [bx+si],al
00000F63  0000              add [bx+si],al
00000F65  0000              add [bx+si],al
00000F67  3E0033            add [ds:bp+di],dh
00000F6A  0300              add ax,[bx+si]
00000F6C  3F                aas
00000F6D  0010              add [bx+si],dl
00000F6F  FF03              inc word [bp+di]
00000F71  0000              add [bx+si],al
00000F73  0000              add [bx+si],al
00000F75  0000              add [bx+si],al
00000F77  3F                aas
00000F78  0010              add [bx+si],dl
00000F7A  0300              add ax,[bx+si]
00000F7C  3F                aas
00000F7D  003F              add [bx],bh
00000F7F  FF03              inc word [bp+di]
00000F81  0000              add [bx+si],al
00000F83  0000              add [bx+si],al
00000F85  0000              add [bx+si],al
00000F87  3F                aas
00000F88  003F              add [bx],bh
00000F8A  0300              add ax,[bx+si]
00000F8C  41                inc cx
00000F8D  0033              add [bp+di],dh
00000F8F  FF                db 0xff
00000F90  D000              rol byte [bx+si],0x0
00000F92  0000              add [bx+si],al
00000F94  0000              add [bx+si],al
00000F96  00FF              add bh,bh
00000F98  FF                db 0xff
00000F99  FF0F              dec word [bx]
00000F9B  004800            add [bx+si+0x0],cl
00000F9E  08FF              or bh,bh
00000FA0  0300              add ax,[bx+si]
00000FA2  0000              add [bx+si],al
00000FA4  0000              add [bx+si],al
00000FA6  004800            add [bx+si+0x0],cl
00000FA9  0803              or [bp+di],al
00000FAB  004800            add [bx+si+0x0],cl
00000FAE  19FF              sbb di,di
00000FB0  0300              add ax,[bx+si]
00000FB2  0000              add [bx+si],al
00000FB4  0000              add [bx+si],al
00000FB6  004800            add [bx+si+0x0],cl
00000FB9  1903              sbb [bp+di],ax
00000FBB  005200            add [bp+si+0x0],dl
00000FBE  11FF              adc di,di
00000FC0  0200              add al,[bx+si]
00000FC2  0000              add [bx+si],al
00000FC4  0000              add [bx+si],al
00000FC6  005200            add [bp+si+0x0],dl
00000FC9  1102              adc [bp+si],ax
00000FCB  005200            add [bp+si+0x0],dl
00000FCE  28FF              sub bh,bh
00000FD0  0200              add al,[bx+si]
00000FD2  0000              add [bx+si],al
00000FD4  0000              add [bx+si],al
00000FD6  005200            add [bp+si+0x0],dl
00000FD9  2802              sub [bp+si],al
00000FDB  005300            add [bp+di+0x0],dl
00000FDE  3BFF              cmp di,di
00000FE0  0200              add al,[bx+si]
00000FE2  0000              add [bx+si],al
00000FE4  0000              add [bx+si],al
00000FE6  005300            add [bp+di+0x0],dl
00000FE9  3B02              cmp ax,[bp+si]
00000FEB  005800            add [bx+si+0x0],bl
00000FEE  3BFF              cmp di,di
00000FF0  D000              rol byte [bx+si],0x0
00000FF2  0020              add [bx+si],ah
00000FF4  0018              add [bx+si],bl
00000FF6  0013              add [bp+di],dl
00000FF8  00800000          add [bx+si+0x0],al
00000FFC  5D                pop bp
00000FFD  003B              add [bp+di],bh
00000FFF  FF7300            push word [bp+di+0x0]
00001002  0020              add [bx+si],ah
00001004  0019              add [bx+di],bl
00001006  0013              add [bp+di],dl
00001008  004000            add [bx+si+0x0],al
0000100B  005F00            add [bx+0x0],bl
0000100E  3BFF              cmp di,di
00001010  0300              add ax,[bx+si]
00001012  0000              add [bx+si],al
00001014  0000              add [bx+si],al
00001016  005F00            add [bx+0x0],bl
00001019  3B03              cmp ax,[bp+di]
0000101B  006700            add [bx+0x0],ah
0000101E  01FF              add di,di
00001020  0000              add [bx+si],al
00001022  0000              add [bx+si],al
00001024  0000              add [bx+si],al
00001026  006700            add [bx+0x0],ah
00001029  0100              add [bx+si],ax
0000102B  006700            add [bx+0x0],ah
0000102E  08FF              or bh,bh
00001030  0200              add al,[bx+si]
00001032  0000              add [bx+si],al
00001034  0000              add [bx+si],al
00001036  006700            add [bx+0x0],ah
00001039  0802              or [bp+si],al
0000103B  006E00            add [bp+0x0],ch
0000103E  28FF              sub bh,bh
00001040  0200              add al,[bx+si]
00001042  0000              add [bx+si],al
00001044  0000              add [bx+si],al
00001046  006E00            add [bp+0x0],ch
00001049  2802              sub [bp+si],al
0000104B  006F00            add [bx+0x0],ch
0000104E  12FF              adc bh,bh
00001050  0200              add al,[bx+si]
00001052  0000              add [bx+si],al
00001054  0000              add [bx+si],al
00001056  006F00            add [bx+0x0],ch
00001059  1202              adc al,[bp+si]
0000105B  007600            add [bp+0x0],dh
0000105E  3BFF              cmp di,di
00001060  0200              add al,[bx+si]
00001062  0000              add [bx+si],al
00001064  0000              add [bx+si],al
00001066  007600            add [bp+0x0],dh
00001069  3B02              cmp ax,[bp+si]
0000106B  007D00            add [di+0x0],bh
0000106E  3BFF              cmp di,di
00001070  0100              add [bx+si],ax
00001072  0000              add [bx+si],al
00001074  0000              add [bx+si],al
00001076  007D00            add [di+0x0],bh
00001079  3B01              cmp ax,[bx+di]
0000107B  00800023          add [bx+si+0x2300],al
0000107F  FF00              inc word [bx+si]
00001081  0000              add [bx+si],al
00001083  0000              add [bx+si],al
00001085  0000              add [bx+si],al
00001087  800023            add byte [bx+si],0x23
0000108A  0000              add [bx+si],al
0000108C  82                db 0x82
0000108D  0017              add [bx],dl
0000108F  FF00              inc word [bx+si]
00001091  0000              add [bx+si],al
00001093  0000              add [bx+si],al
00001095  0000              add [bx+si],al
00001097  82                db 0x82
00001098  0017              add [bx],dl
0000109A  0000              add [bx+si],al
0000109C  82                db 0x82
0000109D  002EFF00          add [0xff],ch
000010A1  0000              add [bx+si],al
000010A3  0000              add [bx+si],al
000010A5  0000              add [bx+si],al
000010A7  82                db 0x82
000010A8  002E0000          add [0x0],ch
000010AC  830002            add word [bx+si],0x2
000010AF  FF00              inc word [bx+si]
000010B1  0000              add [bx+si],al
000010B3  0000              add [bx+si],al
000010B5  0000              add [bx+si],al
000010B7  830002            add word [bx+si],0x2
000010BA  0000              add [bx+si],al
000010BC  830012            add word [bx+si],0x12
000010BF  FF03              inc word [bp+di]
000010C1  0000              add [bx+si],al
000010C3  0000              add [bx+si],al
000010C5  0000              add [bx+si],al
000010C7  830012            add word [bx+si],0x12
000010CA  0300              add ax,[bx+si]
000010CC  830028            add word [bx+si],0x28
000010CF  FF7300            push word [bp+di+0x0]
000010D2  0320              add sp,[bx+si]
000010D4  0000              add [bx+si],al
000010D6  0013              add [bp+di],dl
000010D8  0020              add [bx+si],ah
000010DA  0000              add [bx+si],al
000010DC  8500              test [bx+si],ax
000010DE  1E                push ds
000010DF  FF                db 0xff
000010E0  D000              rol byte [bx+si],0x0
000010E2  0000              add [bx+si],al
000010E4  0000              add [bx+si],al
000010E6  00FF              add bh,bh
000010E8  FF                db 0xff
000010E9  FF00              inc word [bx+si]
000010EB  008C001D          add [si+0x1d00],cl
000010EF  FF01              inc word [bx+di]
000010F1  0000              add [bx+si],al
000010F3  0000              add [bx+si],al
000010F5  0000              add [bx+si],al
000010F7  8C00              mov word [bx+si],es
000010F9  1D0100            sbb ax,0x1
000010FC  8C00              mov word [bx+si],es
000010FE  2DFF03            sub ax,0x3ff
00001101  0000              add [bx+si],al
00001103  0000              add [bx+si],al
00001105  0000              add [bx+si],al
00001107  8C00              mov word [bx+si],es
00001109  2D0300            sub ax,0x3
0000110C  8C00              mov word [bx+si],es
0000110E  38FF              cmp bh,bh
00001110  7300              jnc 0x1112
00001112  0220              add ah,[bx+si]
00001114  0000              add [bx+si],al
00001116  0013              add [bp+di],dl
00001118  0010              add [bx+si],dl
0000111A  0000              add [bx+si],al
0000111C  8E00              mov es,word [bx+si]
0000111E  38FF              cmp bh,bh
00001120  0300              add ax,[bx+si]
00001122  0000              add [bx+si],al
00001124  0000              add [bx+si],al
00001126  008E0038          add [bp+0x3800],cl
0000112A  0300              add ax,[bx+si]
0000112C  95                xchg ax,bp
0000112D  0038              add [bx+si],bh
0000112F  FF02              inc word [bp+si]
00001131  0000              add [bx+si],al
00001133  0000              add [bx+si],al
00001135  0000              add [bx+si],al
00001137  95                xchg ax,bp
00001138  0038              add [bx+si],bh
0000113A  0200              add al,[bx+si]
0000113C  A0001D            mov al,[0x1d00]
0000113F  FF02              inc word [bp+si]
00001141  0000              add [bx+si],al
00001143  0000              add [bx+si],al
00001145  0000              add [bx+si],al
00001147  A0001D            mov al,[0x1d00]
0000114A  0200              add al,[bx+si]
0000114C  A10038            mov ax,[0x3800]
0000114F  FF01              inc word [bx+di]
00001151  0000              add [bx+si],al
00001153  0000              add [bx+si],al
00001155  0000              add [bx+si],al
00001157  A10038            mov ax,[0x3800]
0000115A  0100              add [bx+si],ax
0000115C  A4                movsb
0000115D  000F              add [bx],cl
0000115F  FF02              inc word [bp+si]
00001161  0000              add [bx+si],al
00001163  0000              add [bx+si],al
00001165  0000              add [bx+si],al
00001167  A4                movsb
00001168  000F              add [bx],cl
0000116A  0200              add al,[bx+si]
0000116C  B300              mov bl,0x0
0000116E  16                push ss
0000116F  FF02              inc word [bp+si]
00001171  0000              add [bx+si],al
00001173  0000              add [bx+si],al
00001175  0000              add [bx+si],al
00001177  B300              mov bl,0x0
00001179  16                push ss
0000117A  0200              add al,[bx+si]
0000117C  B300              mov bl,0x0
0000117E  25FF02            and ax,0x2ff
00001181  0000              add [bx+si],al
00001183  0000              add [bx+si],al
00001185  0000              add [bx+si],al
00001187  B300              mov bl,0x0
00001189  250200            and ax,0x2
0000118C  C3                ret
0000118D  0030              add [bx+si],dh
0000118F  FF02              inc word [bp+si]
00001191  0000              add [bx+si],al
00001193  0000              add [bx+si],al
00001195  0000              add [bx+si],al
00001197  C3                ret
00001198  0030              add [bx+si],dh
0000119A  0200              add al,[bx+si]
0000119C  C70025FF          mov word [bx+si],0xff25
000011A0  0300              add ax,[bx+si]
000011A2  0000              add [bx+si],al
000011A4  0000              add [bx+si],al
000011A6  00C7              add bh,al
000011A8  0025              add [di],ah
000011AA  0300              add ax,[bx+si]
000011AC  FF                db 0xff
000011AD  FF                db 0xff
