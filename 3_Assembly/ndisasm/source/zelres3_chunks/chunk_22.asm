00000000  B61B              mov dh,0x1b
00000002  0000              add [bx+si],al
00000004  2F                das
00000005  D8E0              fsub st0
00000007  00F5              add ch,dh
00000009  D6                salc
0000000A  06                push es
0000000B  D7                xlatb
0000000C  08D7              or bh,dl
0000000E  57                push di
0000000F  D7                xlatb
00000010  A1D71A            mov ax,[0x1ad7]
00000013  D834              fdiv dword [si]
00000015  D802              fadd dword [bp+si]
00000017  AB                stosw
00000018  0037              add [bx],dh
0000001A  0A2D              or ch,[di]
0000001C  D7                xlatb
0000001D  F5                cmc
0000001E  D6                salc
0000001F  81C4C849          add sp,0x49c8
00000023  CD87              int byte 0x87
00000025  C569C8            lds bp,word [bx+di-0x38]
00000028  CD87              int byte 0x87
0000002A  C549CC            lds cx,word [bx+di-0x34]
0000002D  81CE88C5          or si,0xc588
00000031  C9                leave
00000032  CC                int3
00000033  88C3              mov bl,al
00000035  49                dec cx
00000036  CB                retf
00000037  CC                int3
00000038  CE                into
00000039  8681C4C8          xchg al,[bx+di-0x373c]
0000003D  49                dec cx
0000003E  CD87              int byte 0x87
00000040  C45947            les bx,word [bx+di+0x47]
00000043  CDCE              int byte 0xce
00000045  86C5              xchg al,ch
00000047  CAC8CA            retf word 0xcac8
0000004A  CC                int3
0000004B  89C5              mov bp,ax
0000004D  C9                leave
0000004E  CC                int3
0000004F  88C4              mov ah,al
00000051  CACCC3            retf word 0xc3cc
00000054  CACD86            retf word 0x86cd
00000057  81C447CD          add sp,0xcd47
0000005B  82                db 0x82
0000005C  CE                into
0000005D  85C4              test sp,ax
0000005F  49                dec cx
00000060  C7                db 0xc7
00000061  CACD88            retf word 0x88cd
00000064  C559C7            lds bx,word [bx+di-0x39]
00000067  CC                int3
00000068  88C5              mov ch,al
0000006A  CACC88            retf word 0x88cc
0000006D  C44947            les cx,word [bx+di+0x47]
00000070  48                dec ax
00000071  CD84              int byte 0x84
00000073  81C4C8CB          add sp,0xcbc8
00000077  CD88              int byte 0x88
00000079  C44749            les ax,word [bx+0x49]
0000007C  CC                int3
0000007D  88C5              mov ch,al
0000007F  59                pop cx
00000080  CC                int3
00000081  89C5              mov bp,ax
00000083  CACC88            retf word 0x88cc
00000086  C4                db 0xc4
00000087  CA57C9            retf word 0xc957
0000008A  CC                int3
0000008B  8581C5C8          test [bx+di-0x373b],ax
0000008F  CD89              int byte 0x89
00000091  C44659            les ax,word [bp+0x59]
00000094  CD87              int byte 0x87
00000096  C549CB            lds cx,word [bx+di-0x35]
00000099  CC                int3
0000009A  81CE87C5          or si,0xc587
0000009E  CD89              int byte 0x89
000000A0  C457CB            les dx,word [bx-0x35]
000000A3  CACCCE            retf word 0xcecc
000000A6  8481C5C8          test [bx+di-0x373b],al
000000AA  C9                leave
000000AB  CC                int3
000000AC  88C4              mov ah,al
000000AE  C869CBCD          enter word 0xcb69,byte 0xcd
000000B2  86C5              xchg al,ch
000000B4  C849CC89          enter word 0xcc49,byte 0x89
000000B8  C5                db 0xc5
000000B9  CD89              int byte 0x89
000000BB  C457CA            les dx,word [bx-0x36]
000000BE  CC                int3
000000BF  82                db 0x82
000000C0  D583              aad byte 0x83
000000C2  81C5C8C9          add bp,0xc9c8
000000C6  CAC7CD            retf word 0xcdc7
000000C9  86C5              xchg al,ch
000000CB  C879CD86          enter word 0xcd79,byte 0x86
000000CF  C5                db 0xc5
000000D0  C849CC89          enter word 0xcc49,byte 0x89
000000D4  C6                db 0xc6
000000D5  CC                int3
000000D6  89C4              mov sp,ax
000000D8  CA47CB            retf word 0xcb47
000000DB  CC                int3
000000DC  CE                into
000000DD  81D68381          adc si,0x8183
000000E1  C5                db 0xc5
000000E2  C8C9CAC9          enter word 0xcac9,byte 0xc9
000000E6  C8CD85C5          enter word 0x85cd,byte 0xc5
000000EA  59                pop cx
000000EB  CC                int3
000000EC  49                dec cx
000000ED  CD86              int byte 0x86
000000EF  C559C7            lds bx,word [bx+di-0x39]
000000F2  C8CC92C5          enter word 0x92cc,byte 0xc5
000000F6  67CACC81          a32 retf word 0x81cc
000000FA  D7                xlatb
000000FB  8381C5C8C9        add word [bx+di-0x373b],0xffffffffffffffc9
00000100  CC                int3
00000101  C3                ret
00000102  CC                int3
00000103  CE                into
00000104  85C5              test bp,ax
00000106  79C8              jns 0xd0
00000108  CD86              int byte 0x86
0000010A  C55947            lds bx,word [bx+di+0x47]
0000010D  CB                retf
0000010E  CD40              int byte 0x40
00000110  41                inc cx
00000111  40                inc ax
00000112  C2C141            ret word 0x41c1
00000115  40                inc ax
00000116  41                inc cx
00000117  C1C281            rol dx,byte 0x81
0000011A  C567CB            lds sp,word [bx-0x35]
0000011D  CC                int3
0000011E  81D88381          sbb ax,0x8183
00000122  C4                db 0xc4
00000123  C848CACD          enter word 0xca48,byte 0xcd
00000127  86C5              xchg al,ch
00000129  6947C7CC85        imul ax,[bx-0x39],0x85cc
0000012E  C549C8            lds cx,word [bx+di-0x38]
00000131  C7                db 0xc7
00000132  CC                int3
00000133  93                xchg ax,bx
00000134  C567CB            lds sp,word [bx-0x35]
00000137  CC                int3
00000138  81D98381          sbb cx,0x8183
0000013C  C4                db 0xc4
0000013D  C8C9CACD          enter word 0xcac9,byte 0xcd
00000141  81CE85C5          or si,0xc585
00000145  6947CD86C5        imul ax,[bx-0x33],0xc586
0000014A  CA47CD            retf word 0xcd47
0000014D  81CE8AD0          or si,0xd08a
00000151  CC                int3
00000152  86C5              xchg al,ch
00000154  67CD81            a32 int byte 0x81
00000157  CE                into
00000158  8481C4C8          test [bx+di-0x373c],al
0000015C  C9                leave
0000015D  CC                int3
0000015E  88C5              mov ch,al
00000160  69C8CACD          imul cx,ax,0xcdca
00000164  86C5              xchg al,ch
00000166  59                pop cx
00000167  CC                int3
00000168  8BD0              mov dx,ax
0000016A  C4                db 0xc4
0000016B  CC                int3
0000016C  CE                into
0000016D  85C5              test bp,ax
0000016F  67CB              a32 retf
00000171  CD85              int byte 0x85
00000173  81C4C8C9          add sp,0xc9c8
00000177  CACD87            retf word 0x87cd
0000017A  C5                db 0xc5
0000017B  CAC8CA            retf word 0xcac8
0000017E  C7                db 0xc7
0000017F  C8CDCE86          enter word 0xcecd,byte 0x86
00000183  C5                db 0xc5
00000184  C849CDCE          enter word 0xcd49,byte 0xce
00000188  89D0              mov ax,dx
0000018A  43                inc bx
0000018B  CC                int3
0000018C  86C4              xchg al,ah
0000018E  57                push di
0000018F  46                inc si
00000190  CD85              int byte 0x85
00000192  81C4C8C9          add sp,0xc9c8
00000196  CB                retf
00000197  CD87              int byte 0x87
00000199  C547CA            lds ax,word [bx-0x36]
0000019C  47                inc di
0000019D  CD87              int byte 0x87
0000019F  C559CD            lds bx,word [bx+di-0x33]
000001A2  8A53CD            mov dl,[bp+di-0x33]
000001A5  86C5              xchg al,ch
000001A7  67CC              a32 int3
000001A9  8681C549          xchg al,[bx+di+0x49c5]
000001AD  CC                int3
000001AE  CE                into
000001AF  87C5              xchg ax,bp
000001B1  C879CDCE          enter word 0xcd79,byte 0xce
000001B5  85C5              test bp,ax
000001B7  49                dec cx
000001B8  C8C7CC89          enter word 0xccc7,byte 0x89
000001BC  C543CC            lds ax,word [bp+di-0x34]
000001BF  81CE84C5          or si,0xc584
000001C3  57                push di
000001C4  CACCCE            retf word 0xcecc
000001C7  8581C6CB          test [bx+di-0x343a],ax
000001CB  CD89              int byte 0x89
000001CD  C6C579            mov ch,0x79
000001D0  CD86              int byte 0x86
000001D2  C569CD            lds bp,word [bx+di-0x33]
000001D5  CE                into
000001D6  88C5              mov ch,al
000001D8  C4                db 0xc4
000001D9  CACC86            retf word 0x86cc
000001DC  C557CB            lds dx,word [bx-0x35]
000001DF  CD86              int byte 0x86
000001E1  8EC5              mov es,bp
000001E3  59                pop cx
000001E4  CC                int3
000001E5  CAC7CD            retf word 0xcdc7
000001E8  85C5              test bp,ax
000001EA  69CD89C5          imul cx,bp,0xc589
000001EE  C4                db 0xc4
000001EF  CACDCE            retf word 0xcecd
000001F2  85C4              test sp,ax
000001F4  67CD86            a32 int byte 0x86
000001F7  50                push ax
000001F8  41                inc cx
000001F9  50                push ax
000001FA  C240C2            ret word 0xc240
000001FD  C181C479CD        rol word [bx+di+0x79c4],byte 0xcd
00000202  86C5              xchg al,ch
00000204  69C8CC88          imul cx,ax,0x88cc
00000208  C5                db 0xc5
00000209  C4                db 0xc4
0000020A  CACC86            retf word 0x86cc
0000020D  C457CB            les dx,word [bx-0x35]
00000210  CC                int3
00000211  C24041            ret word 0x4140
00000214  C18EC659C8        ror word [bp+0x59c6],byte 0xc8
00000219  CB                retf
0000021A  CD86              int byte 0x86
0000021C  C569C7            lds bp,word [bx+di-0x39]
0000021F  CDCE              int byte 0xce
00000221  8743CA            xchg ax,[bp+di-0x36]
00000224  CC                int3
00000225  81CE84C4          or si,0xc484
00000229  47                inc di
0000022A  C7                db 0xc7
0000022B  CD87              int byte 0x87
0000022D  8FC5              pop bp
0000022F  47                inc di
00000230  C7                db 0xc7
00000231  CACC86            retf word 0x86cc
00000234  C559C8            lds bx,word [bx+di-0x38]
00000237  CACD88            retf word 0x88cd
0000023A  C549C7            lds cx,word [bx+di-0x39]
0000023D  CC                int3
0000023E  85C4              test sp,ax
00000240  47                inc di
00000241  C9                leave
00000242  CC                int3
00000243  878FC547          xchg cx,[bx+0x47c5]
00000247  CACDCE            retf word 0xcecd
0000024A  86C5              xchg al,ch
0000024C  CB                retf
0000024D  CAC849            retf word 0x49c8
00000250  CC                int3
00000251  81CE86C5          or si,0xc586
00000255  49                dec cx
00000256  C7                db 0xc7
00000257  C9                leave
00000258  CC                int3
00000259  84C4              test ah,al
0000025B  47                inc di
0000025C  C9                leave
0000025D  CDCE              int byte 0xce
0000025F  868FC569          xchg cl,[bx+0x69c5]
00000263  CD86              int byte 0x86
00000265  C479C7            les di,word [bx+di-0x39]
00000268  C9                leave
00000269  CD86              int byte 0x86
0000026B  C54947            lds cx,word [bx+di+0x47]
0000026E  CC                int3
0000026F  84C5              test ch,al
00000271  49                dec cx
00000272  C7                db 0xc7
00000273  CD87              int byte 0x87
00000275  8FC5              pop bp
00000277  49                dec cx
00000278  CC                int3
00000279  CE                into
0000027A  87C4              xchg ax,sp
0000027C  79C8              jns 0x246
0000027E  C7                db 0xc7
0000027F  C9                leave
00000280  CDCE              int byte 0xce
00000282  84C5              test ch,al
00000284  CACCC3            retf word 0xc3cc
00000287  CC                int3
00000288  85C5              test bp,ax
0000028A  49                dec cx
0000028B  CC                int3
0000028C  888FC569          mov [bx+0x69c5],cl
00000290  C7                db 0xc7
00000291  CC                int3
00000292  85C4              test sp,ax
00000294  6947CCC6CC        imul ax,[bx-0x34],0xccc6
00000299  85C5              test bp,ax
0000029B  47                inc di
0000029C  CAC7C9            retf word 0xc9c7
0000029F  CC                int3
000002A0  83C549            add bp,0x49
000002A3  CC                int3
000002A4  CE                into
000002A5  878FC569          xchg cx,[bx+0x69c5]
000002A9  CC                int3
000002AA  81CE84C4          or si,0xc484
000002AE  69C8C5C7          imul cx,ax,0xc7c5
000002B2  CC                int3
000002B3  86C5              xchg al,ch
000002B5  CC                int3
000002B6  C3                ret
000002B7  CAC8CC            retf word 0xccc8
000002BA  CE                into
000002BB  83C4CA            add sp,0xffffffffffffffca
000002BE  C7                db 0xc7
000002BF  CD88              int byte 0x88
000002C1  8FC5              pop bp
000002C3  CAC846            retf word 0x46c8
000002C6  CC                int3
000002C7  86C6              xchg al,dh
000002C9  79CD              jns 0x298
000002CB  CE                into
000002CC  87C5              xchg ax,bp
000002CE  49                dec cx
000002CF  C8C7CC84          enter word 0xccc7,byte 0x84
000002D3  C4                db 0xc4
000002D4  CAC9CC            retf word 0xccc9
000002D7  888FC557          mov [bx+0x57c5],cl
000002DB  CD88              int byte 0x88
000002DD  C569CC            lds bp,word [bx+di-0x34]
000002E0  88C5              mov ch,al
000002E2  49                dec cx
000002E3  CB                retf
000002E4  CC                int3
000002E5  CE                into
000002E6  84C6              test dh,al
000002E8  CB                retf
000002E9  CC                int3
000002EA  8985C3C4          mov [di-0x3b3d],ax
000002EE  CD87              int byte 0x87
000002F0  C547CA            lds ax,word [bx-0x36]
000002F3  CD81              int byte 0x81
000002F5  CE                into
000002F6  86C6              xchg al,dh
000002F8  59                pop cx
000002F9  C7                db 0xc7
000002FA  CC                int3
000002FB  88C4              mov ah,al
000002FD  49                dec cx
000002FE  C8CC9141          enter word 0x91cc,byte 0x41
00000302  40                inc ax
00000303  8143CD87C5        add word [bp+di-0x33],0xc587
00000308  C849CBCD          enter word 0xcb49,byte 0xcd
0000030C  88C4              mov ah,al
0000030E  CAC7CC            retf word 0xccc7
00000311  89C4              mov sp,ax
00000313  CACBCA            retf word 0xcacb
00000316  CB                retf
00000317  CDC1              int byte 0xc1
00000319  C24041            ret word 0x4140
0000031C  50                push ax
0000031D  C2C1C2            ret word 0xc2c1
00000320  60                pusha
00000321  8553CD            test [bp+di-0x33],dx
00000324  86C5              xchg al,ch
00000326  59                pop cx
00000327  CDCE              int byte 0xce
00000329  88C4              mov ah,al
0000032B  49                dec cx
0000032C  CC                int3
0000032D  89C4              mov sp,ax
0000032F  59                pop cx
00000330  CC                int3
00000331  91                xchg ax,cx
00000332  8553CC            test [bp+di-0x34],dx
00000335  86C5              xchg al,ch
00000337  59                pop cx
00000338  C8CC88C5          enter word 0x88cc,byte 0xc5
0000033C  59                pop cx
0000033D  CC                int3
0000033E  88C4              mov ah,al
00000340  49                dec cx
00000341  C7                db 0xc7
00000342  CD8A              int byte 0x8a
00000344  C3                ret
00000345  C4                db 0xc4
00000346  CD84              int byte 0x84
00000348  84C3              test bl,al
0000034A  43                inc bx
0000034B  C9                leave
0000034C  CD86              int byte 0x86
0000034E  C459C8            les bx,word [bx+di-0x38]
00000351  CC                int3
00000352  88C5              mov ch,al
00000354  49                dec cx
00000355  CD89              int byte 0x89
00000357  C449C8            les cx,word [bx+di-0x38]
0000035A  CD8A              int byte 0x8a
0000035C  53                push bx
0000035D  CD83              int byte 0x83
0000035F  844348            test [bp+di+0x48],al
00000362  CD86              int byte 0x86
00000364  C44947            les cx,word [bx+di+0x47]
00000367  CD88              int byte 0x88
00000369  C559CD            lds bx,word [bx+di-0x33]
0000036C  CE                into
0000036D  87C5              xchg ax,bp
0000036F  CAC8C7            retf word 0xc7c8
00000372  CC                int3
00000373  CE                into
00000374  8943C7            mov [bp+di-0x39],ax
00000377  CC                int3
00000378  8383C368CD        add word [bp+di+0x68c3],0xffffffffffffffcd
0000037D  86C4              xchg al,ah
0000037F  69C9CC87          imul cx,cx,0x87cc
00000383  C559CC            lds bx,word [bx+di-0x34]
00000386  81CE86C5          or si,0xc586
0000038A  47                inc di
0000038B  C7                db 0xc7
0000038C  CC                int3
0000038D  8A43CA            mov al,[bp+di-0x36]
00000390  CD83              int byte 0x83
00000392  83C468            add sp,0x68
00000395  CD86              int byte 0x86
00000397  C469C7            les bp,word [bx+di-0x39]
0000039A  CDCE              int byte 0xce
0000039C  86C5              xchg al,ch
0000039E  49                dec cx
0000039F  C8CD88C5          enter word 0x88cd,byte 0xc5
000003A3  CC                int3
000003A4  C3                ret
000003A5  C8C7CC89          enter word 0xccc7,byte 0x89
000003A9  C4                db 0xc4
000003AA  CACC84            retf word 0x84cc
000003AD  82                db 0x82
000003AE  C3                ret
000003AF  68C8CC            push word 0xccc8
000003B2  CE                into
000003B3  85C4              test sp,ax
000003B5  CA4749            retf word 0x4947
000003B8  CB                retf
000003B9  CC                int3
000003BA  86C5              xchg al,ch
000003BC  CA47CC            retf word 0xcc47
000003BF  C3                ret
000003C0  CC                int3
000003C1  86C5              xchg al,ch
000003C3  59                pop cx
000003C4  C8CC89C4          enter word 0x89cc,byte 0xc4
000003C8  CACDCE            retf word 0xcecd
000003CB  8382C458C8        add word [bp+si+0x58c4],0xffffffffffffffc8
000003D0  CD87              int byte 0x87
000003D2  C44749            les ax,word [bx+0x49]
000003D5  CD88              int byte 0x88
000003D7  C505              lds ax,word [di]
000003D9  0ACB              or cl,bl
000003DB  CC                int3
000003DC  84C5              test ch,al
000003DE  59                pop cx
000003DF  C8CC89C5          enter word 0x89cc,byte 0xc5
000003E3  CACD84            retf word 0x84cd
000003E6  82                db 0x82
000003E7  C447C9            les ax,word [bx-0x37]
000003EA  CD88              int byte 0x88
000003EC  C459CD            les bx,word [bx+di-0x33]
000003EF  C3                ret
000003F0  CC                int3
000003F1  87C5              xchg ax,bp
000003F3  49                dec cx
000003F4  CDC3              int byte 0xc3
000003F6  C8CD86C5          enter word 0x86cd,byte 0xc5
000003FA  49                dec cx
000003FB  47                inc di
000003FC  C7                db 0xc7
000003FD  CC                int3
000003FE  88C5              mov ch,al
00000400  CACD84            retf word 0x84cd
00000403  82                db 0x82
00000404  C468CD            les bp,word [bx+si-0x33]
00000407  CE                into
00000408  86C4              xchg al,ah
0000040A  79CC              jns 0x3d8
0000040C  87C5              xchg ax,bp
0000040E  69C8CDCE          imul cx,ax,0xcecd
00000412  85C5              test bp,ax
00000414  49                dec cx
00000415  C8CACCCE          enter word 0xccca,byte 0xce
00000419  88C5              mov ch,al
0000041B  CACD84            retf word 0x84cd
0000041E  82                db 0x82
0000041F  C558C8            lds bx,word [bx+si-0x38]
00000422  C9                leave
00000423  CD86              int byte 0x86
00000425  C4                db 0xc4
00000426  CB                retf
00000427  CC                int3
00000428  C3                ret
00000429  CC                int3
0000042A  89C5              mov bp,ax
0000042C  79CD              jns 0x3fb
0000042E  86C5              xchg al,ch
00000430  69C7CC88          imul ax,di,0x88cc
00000434  C5                db 0xc5
00000435  C7                db 0xc7
00000436  CC                int3
00000437  8482C5C9          test [bp+si-0x363b],al
0000043B  57                push di
0000043C  C9                leave
0000043D  CC                int3
0000043E  86C4              xchg al,ah
00000440  69CD88C5          imul cx,bp,0xc588
00000444  CAC849            retf word 0x49c8
00000447  CD87              int byte 0x87
00000449  C54749            lds ax,word [bx+0x49]
0000044C  C8CC88C5          enter word 0x88cc,byte 0xc5
00000450  CACD84            retf word 0x84cd
00000453  82                db 0x82
00000454  C55748            lds dx,word [bx+0x48]
00000457  CD86              int byte 0x86
00000459  C5                db 0xc5
0000045A  CAC5CA            retf word 0xcac5
0000045D  47                inc di
0000045E  CC                int3
0000045F  87C5              xchg ax,bp
00000461  47                inc di
00000462  CAC8CD            retf word 0xcdc8
00000465  82                db 0x82
00000466  CE                into
00000467  84C4              test ah,al
00000469  79CC              jns 0x437
0000046B  88C5              mov ch,al
0000046D  CACDCE            retf word 0xcecd
00000470  8382C5C858        add word [bp+si-0x373b],0x58
00000475  CD87              int byte 0x87
00000477  C5                db 0xc5
00000478  C8CA47CA          enter word 0x47ca,byte 0xca
0000047C  CD87              int byte 0x87
0000047E  C579CC            lds di,word [bx+di-0x34]
00000481  86C4              xchg al,ah
00000483  050ACC            add ax,0xcc0a
00000486  87C5              xchg ax,bp
00000488  CACD84            retf word 0x84cd
0000048B  82                db 0x82
0000048C  C4                db 0xc4
0000048D  C868CD86          enter word 0xcd68,byte 0x86
00000491  C55749            lds dx,word [bx+0x49]
00000494  CD87              int byte 0x87
00000496  C569C8            lds bp,word [bx+di-0x38]
00000499  CD86              int byte 0x86
0000049B  C45947            les bx,word [bx+di+0x47]
0000049E  CACCCE            retf word 0xcecc
000004A1  86C4              xchg al,ah
000004A3  CACDCE            retf word 0xcecd
000004A6  8382C4C8C9        add word [bp+si-0x373c],0xffffffffffffffc9
000004AB  C8C9CD87          enter word 0xcdc9,byte 0x87
000004AF  C559CD            lds bx,word [bx+di-0x33]
000004B2  89C5              mov bp,ax
000004B4  79CB              jns 0x481
000004B6  CD85              int byte 0x85
000004B8  C54947            lds cx,word [bx+di+0x47]
000004BB  49                dec cx
000004BC  CC                int3
000004BD  87C4              xchg ax,sp
000004BF  49                dec cx
000004C0  CD83              int byte 0x83
000004C2  82                db 0x82
000004C3  C457CA            les dx,word [bx-0x36]
000004C6  CC                int3
000004C7  CE                into
000004C8  86C5              xchg al,ch
000004CA  C8CC8BC5          enter word 0x8bcc,byte 0xc5
000004CE  CC                int3
000004CF  C6                db 0xc6
000004D0  C8CACD87          enter word 0xcdca,byte 0x87
000004D4  C5                db 0xc5
000004D5  CACCC6            retf word 0xc6cc
000004D8  59                pop cx
000004D9  CC                int3
000004DA  87C4              xchg ax,sp
000004DC  CB                retf
000004DD  CC                int3
000004DE  8481C3CB          test [bx+di-0x343d],al
000004E2  C9                leave
000004E3  C8C9CCCA          enter word 0xccc9,byte 0xca
000004E7  CD86              int byte 0x86
000004E9  C5                db 0xc5
000004EA  CC                int3
000004EB  8CC6              mov si,es
000004ED  C8CC8AC6          enter word 0x8acc,byte 0xc6
000004F1  CC                int3
000004F2  82                db 0x82
000004F3  C449CC            les cx,word [bx+di-0x34]
000004F6  87C4              xchg ax,sp
000004F8  49                dec cx
000004F9  CD83              int byte 0x83
000004FB  81C94A48          or cx,0x484a
000004FF  C3                ret
00000500  49                dec cx
00000501  CD85              int byte 0x85
00000503  C5                db 0xc5
00000504  CC                int3
00000505  9D                popf
00000506  C459CC            les bx,word [bx+di-0x34]
00000509  86C4              xchg al,ah
0000050B  49                dec cx
0000050C  CC                int3
0000050D  81C38181          add bx,0x8181
00000511  C9                leave
00000512  CB                retf
00000513  48                dec ax
00000514  47                inc di
00000515  49                dec cx
00000516  CC                int3
00000517  85C6              test si,ax
00000519  CC                int3
0000051A  C260C2            ret word 0xc260
0000051D  C1C270            rol dx,byte 0x70
00000520  41                inc cx
00000521  60                pusha
00000522  C250C2            ret word 0xc250
00000525  40                inc ax
00000526  41                inc cx
00000527  81C459CC          add sp,0xcc59
0000052B  86C4              xchg al,ah
0000052D  49                dec cx
0000052E  C7                db 0xc7
0000052F  48                dec ax
00000530  81CBC9CB          or bx,0xcbc9
00000534  C9                leave
00000535  47                inc di
00000536  CA4ACD            retf word 0xcd4a
00000539  85C3              test bx,ax
0000053B  CC                int3
0000053C  9D                popf
0000053D  C459CC            les bx,word [bx+di-0x34]
00000540  86C4              xchg al,ah
00000542  59                pop cx
00000543  C84ACAC8          enter word 0xca4a,byte 0xc8
00000547  58                pop ax
00000548  49                dec cx
00000549  CB                retf
0000054A  CE                into
0000054B  86C4              xchg al,ah
0000054D  CACC92            retf word 0x92cc
00000550  C3                ret
00000551  CACC87            retf word 0x87cc
00000554  C4                db 0xc4
00000555  CAC747            retf word 0x47c7
00000558  CC                int3
00000559  85C4              test sp,ax
0000055B  59                pop cx
0000055C  C8C7CA49          enter word 0xcac7,byte 0x49
00000560  48                dec ax
00000561  CB                retf
00000562  CC                int3
00000563  89C4              mov sp,ax
00000565  49                dec cx
00000566  CC                int3
00000567  91                xchg ax,cx
00000568  C449CC            les cx,word [bx+di-0x34]
0000056B  86C4              xchg al,ah
0000056D  CA47CC            retf word 0xcc47
00000570  86C4              xchg al,ah
00000572  59                pop cx
00000573  C8CAC8C6          enter word 0xc8ca,byte 0xc6
00000577  47                inc di
00000578  C9                leave
00000579  CF                iret
0000057A  CE                into
0000057B  89C5              mov bp,ax
0000057D  69CC82C3          imul cx,sp,0xc382
00000581  49                dec cx
00000582  CD89              int byte 0x89
00000584  C4                db 0xc4
00000585  CACBCA            retf word 0xcacb
00000588  CC                int3
00000589  85C4              test sp,ax
0000058B  47                inc di
0000058C  CACC86            retf word 0x86cc
0000058F  C457CA            les dx,word [bx-0x36]
00000592  C7                db 0xc7
00000593  CD82              int byte 0x82
00000595  C6                db 0xc6
00000596  C8CC8AC5          enter word 0x8acc,byte 0xc5
0000059A  59                pop cx
0000059B  C7060ACC88C4      mov word [0xcc0a],0xc488
000005A1  59                pop cx
000005A2  CC                int3
000005A3  CE                into
000005A4  84C5              test ch,al
000005A6  47                inc di
000005A7  CB                retf
000005A8  CD86              int byte 0x86
000005AA  C557C7            lds dx,word [bx-0x39]
000005AD  CDCE              int byte 0xce
000005AF  8FC4              pop sp
000005B1  79CD              jns 0x580
000005B3  C647CACD          mov byte [bx-0x36],0xcd
000005B7  89C5              mov bp,ax
000005B9  49                dec cx
000005BA  C8CC85C5          enter word 0x85cc,byte 0xc5
000005BE  47                inc di
000005BF  CC                int3
000005C0  87C5              xchg ax,bp
000005C2  C849CD82          enter word 0xcd49,byte 0x82
000005C6  8FC5              pop bp
000005C8  47                inc di
000005C9  49                dec cx
000005CA  C7                db 0xc7
000005CB  CACDC6            retf word 0xc6cd
000005CE  C8CC8AC5          enter word 0x8acc,byte 0xc5
000005D2  CAC8CC            retf word 0xccc8
000005D5  86C5              xchg al,ch
000005D7  C849CC86          enter word 0xcc49,byte 0x86
000005DB  C549CD            lds cx,word [bx+di-0x33]
000005DE  81CE818F          or si,0x8f81
000005E2  C567CA            lds sp,word [bx-0x36]
000005E5  CD8E              int byte 0x8e
000005E7  C5                db 0xc5
000005E8  C7                db 0xc7
000005E9  C8CCCE85          enter word 0xcecc,byte 0x85
000005ED  C559CC            lds bx,word [bx+di-0x34]
000005F0  86C5              xchg al,ch
000005F2  CACC84            retf word 0x84cc
000005F5  84C3              test bl,al
000005F7  CC                int3
000005F8  89C4              mov sp,ax
000005FA  C8CAC7CA          enter word 0xc7ca,byte 0xca
000005FE  CC                int3
000005FF  81CE8DC4          or si,0xc48d
00000603  49                dec cx
00000604  CC                int3
00000605  86C5              xchg al,ch
00000607  C8CACCCE          enter word 0xccca,byte 0xce
0000060B  86C5              xchg al,ch
0000060D  CACDCE            retf word 0xcecd
00000610  8384C4CC89        add word [si-0x333c],0xffffffffffffff89
00000615  C449CD            les cx,word [bx+di-0x33]
00000618  82                db 0x82
00000619  CE                into
0000061A  8EC4              mov es,sp
0000061C  CACBCA            retf word 0xcacb
0000061F  CB                retf
00000620  CC                int3
00000621  84C5              test ch,al
00000623  CACCCE            retf word 0xcecc
00000626  87C5              xchg ax,bp
00000628  CACD84            retf word 0x84cd
0000062B  84C4              test ah,al
0000062D  49                dec cx
0000062E  CD87              int byte 0x87
00000630  C449C7            les cx,word [bx+di-0x39]
00000633  CD41              int byte 0x41
00000635  C1410901          rol word [bx+di+0x9],byte 0x1
00000639  81C459CD          add sp,0xcd59
0000063D  85C4              test sp,ax
0000063F  C8CACC87          enter word 0xccca,byte 0x87
00000643  C5                db 0xc5
00000644  CACC84            retf word 0x84cc
00000647  84C4              test ah,al
00000649  49                dec cx
0000064A  CC                int3
0000064B  87C4              xchg ax,sp
0000064D  59                pop cx
0000064E  CD90              int byte 0x90
00000650  C459CC            les bx,word [bx+di-0x34]
00000653  85C4              test sp,ax
00000655  49                dec cx
00000656  CB                retf
00000657  CC                int3
00000658  86C5              xchg al,ch
0000065A  C7                db 0xc7
0000065B  CD84              int byte 0x84
0000065D  84C4              test ah,al
0000065F  69CC85C4          imul cx,sp,0xc485
00000663  59                pop cx
00000664  CD85              int byte 0x85
00000666  C3                ret
00000667  CC                int3
00000668  89C4              mov sp,ax
0000066A  59                pop cx
0000066B  CC                int3
0000066C  CE                into
0000066D  84C4              test ah,al
0000066F  CACC88            retf word 0x88cc
00000672  C6                db 0xc6
00000673  CD85              int byte 0x85
00000675  84C4              test ah,al
00000677  CAC8CA            retf word 0xcac8
0000067A  CD86              int byte 0x86
0000067C  C459CD            les bx,word [bx+di-0x33]
0000067F  85C4              test sp,ax
00000681  CACC88            retf word 0x88cc
00000684  C459CC            les bx,word [bx+di-0x34]
00000687  85C4              test sp,ax
00000689  C8CD8F84          enter word 0x8fcd,byte 0x84
0000068D  C5                db 0xc5
0000068E  C8C7CACD          enter word 0xcac7,byte 0xcd
00000692  86C4              xchg al,ah
00000694  59                pop cx
00000695  CB                retf
00000696  CC                int3
00000697  84C4              test ah,al
00000699  C8CACD87          enter word 0xcdca,byte 0x87
0000069D  C4                db 0xc4
0000069E  C8CACC86          enter word 0xccca,byte 0x86
000006A2  C6                db 0xc6
000006A3  C8CD8F84          enter word 0x8fcd,byte 0x84
000006A7  C559CC            lds bx,word [bx+di-0x34]
000006AA  81CE84C4          or si,0xc484
000006AE  CA4786            retf word 0x8647
000006B1  C5                db 0xc5
000006B2  C8CC81CE          enter word 0x81cc,byte 0xce
000006B6  86C5              xchg al,ch
000006B8  C8CACCCE          enter word 0xccca,byte 0xce
000006BC  85C3              test bx,ax
000006BE  C8CC8F84          enter word 0x8fcc,byte 0x84
000006C2  C549C8            lds cx,word [bx+di-0x38]
000006C5  CACC85            retf word 0x85cc
000006C8  C5                db 0xc5
000006C9  C8CACDCE          enter word 0xcdca,byte 0xce
000006CD  85C5              test bp,ax
000006CF  CACC88            retf word 0x88cc
000006D2  C5                db 0xc5
000006D3  C849CC85          enter word 0xcc49,byte 0x85
000006D7  C4                db 0xc4
000006D8  C8CC8F84          enter word 0x8fcc,byte 0x84
000006DC  C569CB            lds bp,word [bx+di-0x35]
000006DF  CD84              int byte 0x84
000006E1  C559CD            lds bx,word [bx+di-0x33]
000006E4  85C5              test bp,ax
000006E6  49                dec cx
000006E7  CC                int3
000006E8  81CE85C5          or si,0xc585
000006EC  C849CD85          enter word 0xcd49,byte 0x85
000006F0  C4                db 0xc4
000006F1  CC                int3
000006F2  CE                into
000006F3  8F84C547          pop word [si+0x47c5]
000006F7  C7                db 0xc7
000006F8  CACC85            retf word 0x85cc
000006FB  C5                db 0xc5
000006FC  CA47CC            retf word 0xcc47
000006FF  85C5              test bp,ax
00000701  49                dec cx
00000702  C887C5C8          enter word 0xc587,byte 0xc8
00000706  49                dec cx
00000707  CC                int3
00000708  CE                into
00000709  84C4              test ah,al
0000070B  CD90              int byte 0x90
0000070D  84C5              test ch,al
0000070F  C849CC86          enter word 0xcc49,byte 0x86
00000713  C559CD            lds bx,word [bx+di-0x33]
00000716  85C5              test bp,ax
00000718  C8CAC8C7          enter word 0xc8ca,byte 0xc7
0000071C  CD85              int byte 0x85
0000071E  C547CA            lds ax,word [bx-0x36]
00000721  CC                int3
00000722  85C4              test sp,ax
00000724  CD81              int byte 0x81
00000726  CE                into
00000727  8E84C447          mov es,word [si+0x47c4]
0000072B  CDCF              int byte 0xcf
0000072D  CE                into
0000072E  85C5              test bp,ax
00000730  47                inc di
00000731  CACDCE            retf word 0xcecd
00000734  84C4              test ah,al
00000736  49                dec cx
00000737  CD87              int byte 0x87
00000739  C547CA            lds ax,word [bx-0x36]
0000073C  CD85              int byte 0x85
0000073E  C5                db 0xc5
0000073F  CACD8F            retf word 0x8fcd
00000742  84C4              test ah,al
00000744  C8CACCCF          enter word 0xccca,byte 0xcf
00000748  86C5              xchg al,ch
0000074A  C8CACC86          enter word 0xccca,byte 0x86
0000074E  C449CD            les cx,word [bx+di-0x33]
00000751  CE                into
00000752  86C4              xchg al,ah
00000754  CAC8CD            retf word 0xcdc8
00000757  86C5              xchg al,ch
00000759  CACD8F            retf word 0x8fcd
0000075C  84C4              test ah,al
0000075E  49                dec cx
0000075F  C8CACC85          enter word 0xccca,byte 0x85
00000763  C5                db 0xc5
00000764  C849CD85          enter word 0xcd49,byte 0x85
00000768  C449CD            les cx,word [bx+di-0x33]
0000076B  87C4              xchg ax,sp
0000076D  59                pop cx
0000076E  CC                int3
0000076F  85C5              test bp,ax
00000771  C8CC8F84          enter word 0x8fcc,byte 0x84
00000775  C4                db 0xc4
00000776  CAC849            retf word 0x49c8
00000779  CB                retf
0000077A  CC                int3
0000077B  84C5              test ch,al
0000077D  47                inc di
0000077E  49                dec cx
0000077F  CD84              int byte 0x84
00000781  C449CC            les cx,word [bx+di-0x34]
00000784  81CE85C4          or si,0xc485
00000788  59                pop cx
00000789  CC                int3
0000078A  85C5              test bp,ax
0000078C  C8CDCE8E          enter word 0xcecd,byte 0x8e
00000790  84C4              test ah,al
00000792  CAC8C7            retf word 0xc7c8
00000795  C8CC85C4          enter word 0x85cc,byte 0xc4
00000799  59                pop cx
0000079A  CD85              int byte 0x85
0000079C  C449C8            les cx,word [bx+di-0x38]
0000079F  CC                int3
000007A0  85C3              test bx,ax
000007A2  79CC              jns 0x770
000007A4  84C5              test ch,al
000007A6  CACD88            retf word 0x88cd
000007A9  C3                ret
000007AA  CC                int3
000007AB  8584C447          test [si+0x47c4],ax
000007AF  CACCCF            retf word 0xcfcc
000007B2  85C4              test sp,ax
000007B4  49                dec cx
000007B5  CDCE              int byte 0xce
000007B7  85C4              test sp,ax
000007B9  49                dec cx
000007BA  C849CD82          enter word 0xcd49,byte 0x82
000007BE  C3                ret
000007BF  59                pop cx
000007C0  C8CC86C5          enter word 0x86cc,byte 0xc5
000007C4  CACD88            retf word 0x88cd
000007C7  C4                db 0xc4
000007C8  CC                int3
000007C9  8584C5C8          test [si-0x373b],ax
000007CD  CAC8CD            retf word 0xcdc8
000007D0  81CE84C4          or si,0xc484
000007D4  59                pop cx
000007D5  CD85              int byte 0x85
000007D7  C4                db 0xc4
000007D8  C879CD81          enter word 0xcd79,byte 0x81
000007DC  49                dec cx
000007DD  C7                db 0xc7
000007DE  59                pop cx
000007DF  CD85              int byte 0x85
000007E1  C5                db 0xc5
000007E2  CACC88            retf word 0x88cc
000007E5  C4                db 0xc4
000007E6  CACC84            retf word 0x84cc
000007E9  84C5              test ch,al
000007EB  49                dec cx
000007EC  CDCF              int byte 0xcf
000007EE  86C4              xchg al,ah
000007F0  59                pop cx
000007F1  CDCE              int byte 0xce
000007F3  84C5              test ch,al
000007F5  C859C8CA          enter word 0xc859,byte 0xca
000007F9  C869C8CA          enter word 0xc869,byte 0xca
000007FD  CD86              int byte 0x86
000007FF  C449CD            les cx,word [bx+di-0x33]
00000802  87C4              xchg ax,sp
00000804  49                dec cx
00000805  CC                int3
00000806  8384C5CACC        add word [si-0x353b],0xffffffffffffffcc
0000080B  CF                iret
0000080C  87C4              xchg ax,sp
0000080E  49                dec cx
0000080F  C7                db 0xc7
00000810  CC                int3
00000811  85C5              test bp,ax
00000813  69C8CB05          imul cx,ax,0x5cb
00000817  0ACC              or cl,ah
00000819  87C4              xchg ax,sp
0000081B  49                dec cx
0000081C  CD81              int byte 0x81
0000081E  CE                into
0000081F  85C4              test sp,ax
00000821  49                dec cx
00000822  CC                int3
00000823  8384C5C8CC        add word [si-0x373b],0xffffffffffffffcc
00000828  81CE86C4          or si,0xc486
0000082C  49                dec cx
0000082D  CD86              int byte 0x86
0000082F  C549C7            lds cx,word [bx+di-0x39]
00000832  69C7CACC          imul ax,di,0xccca
00000836  8AC4              mov al,ah
00000838  CAC7CD            retf word 0xcdc7
0000083B  87C4              xchg ax,sp
0000083D  CAC849            retf word 0x49c8
00000840  CC                int3
00000841  8184C6CD89C4      add word [si-0x323a],0xc489
00000847  C8CACDCE          enter word 0xcdca,byte 0xce
0000084B  85C5              test bp,ax
0000084D  06                push es
0000084E  0AC8              or cl,al
00000850  CD09              int byte 0x9
00000852  0181C4C8          add [bx+di-0x373c],ax
00000856  CAC7CC            retf word 0xccc7
00000859  86C4              xchg al,ah
0000085B  59                pop cx
0000085C  CD82              int byte 0x82
0000085E  8FC5              pop bp
00000860  49                dec cx
00000861  CC                int3
00000862  86C5              xchg al,ch
00000864  79CC              jns 0x832
00000866  8EC5              mov es,bp
00000868  49                dec cx
00000869  CD87              int byte 0x87
0000086B  C469CD            les bp,word [bx+di-0x33]
0000086E  810D0181          or word [di],0x8101
00000872  C549CD            lds cx,word [bx+di-0x33]
00000875  86C6              xchg al,dh
00000877  C869CBCC          enter word 0xcb69,byte 0xcc
0000087B  07                pop es
0000087C  0185C549          add [di+0x49c5],ax
00000880  CD87              int byte 0x87
00000882  C4                db 0xc4
00000883  CAC859            retf word 0x59c8
00000886  CC                int3
00000887  8FC5              pop bp
00000889  47                inc di
0000088A  CD88              int byte 0x88
0000088C  C559CC            lds bx,word [bx+di-0x34]
0000088F  8EC5              mov es,bp
00000891  49                dec cx
00000892  CD87              int byte 0x87
00000894  C449C7            les cx,word [bx+di-0x39]
00000897  CC                int3
00000898  82                db 0x82
00000899  8FC5              pop bp
0000089B  47                inc di
0000089C  CD88              int byte 0x88
0000089E  C549CC            lds cx,word [bx+di-0x34]
000008A1  89C3              mov bx,ax
000008A3  C9                leave
000008A4  050AC8            add ax,0xc80a
000008A7  C7                db 0xc7
000008A8  CD86              int byte 0x86
000008AA  C4                db 0xc4
000008AB  CAC7CA            retf word 0xcac7
000008AE  CB                retf
000008AF  CD81              int byte 0x81
000008B1  8FC5              pop bp
000008B3  C8CD89C4          enter word 0x89cd,byte 0xc4
000008B7  49                dec cx
000008B8  CC                int3
000008B9  89060AC8          mov [0xc80a],ax
000008BD  CAC7CD            retf word 0xcdc7
000008C0  CE                into
000008C1  85C4              test sp,ax
000008C3  49                dec cx
000008C4  CC                int3
000008C5  838FC549CD        or word [bx+0x49c5],0xffffffffffffffcd
000008CA  88C4              mov ah,al
000008CC  CACC89            retf word 0x89cc
000008CF  C3                ret
000008D0  080A              or [bp+si],cl
000008D2  C8CC86C4          enter word 0x86cc,byte 0xc4
000008D6  CAC7CC            retf word 0xccc7
000008D9  838FC659CC        or word [bx+0x59c6],0xffffffffffffffcc
000008DE  87C4              xchg ax,sp
000008E0  CB                retf
000008E1  CD89              int byte 0x89
000008E3  C407              les ax,word [bx]
000008E5  0A47CD            or al,[bx-0x33]
000008E8  86C5              xchg al,ch
000008EA  47                inc di
000008EB  CC                int3
000008EC  CE                into
000008ED  82                db 0x82
000008EE  90                nop
000008EF  C549C8            lds cx,word [bx+di-0x38]
000008F2  CD86              int byte 0x86
000008F4  C449CC            les cx,word [bx+di-0x34]
000008F7  88C4              mov ah,al
000008F9  59                pop cx
000008FA  57                push di
000008FB  59                pop cx
000008FC  C8CD86C5          enter word 0x86cd,byte 0xc5
00000900  49                dec cx
00000901  C7                db 0xc7
00000902  CC                int3
00000903  82                db 0x82
00000904  90                nop
00000905  C549C8            lds cx,word [bx+di-0x38]
00000908  CD86              int byte 0x86
0000090A  C459CC            les bx,word [bx+di-0x34]
0000090D  87C4              xchg ax,sp
0000090F  49                dec cx
00000910  CC                int3
00000911  81C6C959          add si,0x59c9
00000915  C7                db 0xc7
00000916  CC                int3
00000917  86C4              xchg al,ah
00000919  49                dec cx
0000091A  C8CACCCE          enter word 0xccca,byte 0xce
0000091E  90                nop
0000091F  C557CD            lds dx,word [bx-0x33]
00000922  86C4              xchg al,ah
00000924  49                dec cx
00000925  C8CC87C4          enter word 0x87cc,byte 0xc4
00000929  CACBCD            retf word 0xcdcb
0000092C  83CAC8            or dx,0xffffffffffffffc8
0000092F  CC                int3
00000930  88C4              mov ah,al
00000932  49                dec cx
00000933  C8CACC81          enter word 0xccca,byte 0x81
00000937  CE                into
00000938  8FC5              pop bp
0000093A  C8CACDCE          enter word 0xcdca,byte 0xce
0000093E  86C5              xchg al,ch
00000940  59                pop cx
00000941  CC                int3
00000942  87C4              xchg ax,sp
00000944  CACC84            retf word 0x84cc
00000947  C5                db 0xc5
00000948  CACD81            retf word 0x81cd
0000094B  CE                into
0000094C  86C5              xchg al,ch
0000094E  CA4749            retf word 0x4947
00000951  CC                int3
00000952  90                nop
00000953  C449CD            les cx,word [bx+di-0x33]
00000956  87C5              xchg ax,bp
00000958  47                inc di
00000959  CACC87            retf word 0x87cc
0000095C  C4                db 0xc4
0000095D  CC                int3
0000095E  85C5              test bp,ax
00000960  49                dec cx
00000961  CC                int3
00000962  87C6              xchg ax,si
00000964  C8CC81C5          enter word 0x81cc,byte 0xc5
00000968  CE                into
00000969  81CD8FC4          or bp,0xc48f
0000096D  49                dec cx
0000096E  C7                db 0xc7
0000096F  CD86              int byte 0x86
00000971  C5                db 0xc5
00000972  C8CACD88          enter word 0xcdca,byte 0x88
00000976  C4                db 0xc4
00000977  CB                retf
00000978  CD84              int byte 0x84
0000097A  C549C8            lds cx,word [bx+di-0x38]
0000097D  CC                int3
0000097E  8AC5              mov al,ch
00000980  CC                int3
00000981  C3                ret
00000982  CC                int3
00000983  8FC4              pop sp
00000985  CA47CD            retf word 0xcd47
00000988  86C5              xchg al,ch
0000098A  49                dec cx
0000098B  CD88              int byte 0x88
0000098D  C4                db 0xc4
0000098E  CD85              int byte 0x85
00000990  C5                db 0xc5
00000991  C8C7CC40          enter word 0xccc7,byte 0x40
00000995  C2C1C2            ret word 0xc2c1
00000998  7081              jo 0x91b
0000099A  C549CC            lds cx,word [bx+di-0x34]
0000099D  8FC4              pop sp
0000099F  CAC8CD            retf word 0xcdc8
000009A2  CE                into
000009A3  86C5              xchg al,ch
000009A5  CACBCD            retf word 0xcdcb
000009A8  88CA              mov dl,cl
000009AA  CD85              int byte 0x85
000009AC  C547CD            lds ax,word [bx-0x33]
000009AF  CE                into
000009B0  8AC5              mov al,ch
000009B2  49                dec cx
000009B3  49                dec cx
000009B4  CC                int3
000009B5  82                db 0x82
000009B6  C3                ret
000009B7  49                dec cx
000009B8  CC                int3
000009B9  87C4              xchg ax,sp
000009BB  C8CAC7CB          enter word 0xc7ca,byte 0xcb
000009BF  CC                int3
000009C0  85C5              test bp,ax
000009C2  CACC89            retf word 0x89cc
000009C5  CACD85            retf word 0x85cd
000009C8  C6                db 0xc6
000009C9  C8CC8CC5          enter word 0x8ccc,byte 0xc5
000009CD  47                inc di
000009CE  090A              or [bp+si],cx
000009D0  CC                int3
000009D1  85C4              test sp,ax
000009D3  57                push di
000009D4  CD86              int byte 0x86
000009D6  C549CC            lds cx,word [bx+di-0x34]
000009D9  88C4              mov ah,al
000009DB  CC                int3
000009DC  94                xchg ax,sp
000009DD  C5                db 0xc5
000009DE  C8CAC759          enter word 0xc7ca,byte 0x59
000009E2  C849CC88          enter word 0xcc49,byte 0x88
000009E6  C4                db 0xc4
000009E7  CAC7CC            retf word 0xccc7
000009EA  87C5              xchg ax,bp
000009EC  59                pop cx
000009ED  CC                int3
000009EE  87C4              xchg ax,sp
000009F0  CDC1              int byte 0xc1
000009F2  41                inc cx
000009F3  60                pusha
000009F4  41                inc cx
000009F5  50                push ax
000009F6  C240C2            ret word 0xc240
000009F9  40                inc ax
000009FA  82                db 0x82
000009FB  C44979            les cx,word [bx+di+0x79]
000009FE  C7                db 0xc7
000009FF  CACBCC            retf word 0xcccb
00000A02  87C5              xchg ax,bp
00000A04  CACD88            retf word 0x88cd
00000A07  C549CD            lds cx,word [bx+di-0x33]
00000A0A  88C4              mov ah,al
00000A0C  CB                retf
00000A0D  CD93              int byte 0x93
00000A0F  C44949            les cx,word [bx+di+0x49]
00000A12  C869CD88          enter word 0xcd69,byte 0x88
00000A16  C5                db 0xc5
00000A17  CD89              int byte 0x89
00000A19  C549C8            lds cx,word [bx+di-0x38]
00000A1C  CC                int3
00000A1D  87C4              xchg ax,sp
00000A1F  49                dec cx
00000A20  CD83              int byte 0x83
00000A22  C3                ret
00000A23  CD8D              int byte 0x8d
00000A25  C449CB            les cx,word [bx+di-0x35]
00000A28  C84ACAC8          enter word 0xca4a,byte 0xc8
00000A2C  49                dec cx
00000A2D  CD87              int byte 0x87
00000A2F  C6                db 0xc6
00000A30  CD89              int byte 0x89
00000A32  C5                db 0xc5
00000A33  CACC89            retf word 0x89cc
00000A36  C4                db 0xc4
00000A37  CC                int3
00000A38  CAC9CD            retf word 0xcdc9
00000A3B  81C3C8CA          add bx,0xcac8
00000A3F  C8CACDCE          enter word 0xcdca,byte 0xce
00000A43  89C4              mov sp,ax
00000A45  49                dec cx
00000A46  83C64A            add si,0x4a
00000A49  49                dec cx
00000A4A  CD87              int byte 0x87
00000A4C  C3                ret
00000A4D  CD89              int byte 0x89
00000A4F  C449CC            les cx,word [bx+di-0x34]
00000A52  88C4              mov ah,al
00000A54  090A              or [bp+si],cx
00000A56  CC                int3
00000A57  8AC6              mov al,dh
00000A59  CB                retf
00000A5A  CC                int3
00000A5B  8659CB            xchg bl,[bx+di-0x35]
00000A5E  CC                int3
00000A5F  85C5              test bp,ax
00000A61  49                dec cx
00000A62  CD87              int byte 0x87
00000A64  C459CD            les bx,word [bx+di-0x33]
00000A67  87C5              xchg ax,bp
00000A69  050AC8            add ax,0xc80a
00000A6C  CDC3              int byte 0xc3
00000A6E  49                dec cx
00000A6F  CDCE              int byte 0xce
00000A71  8B8679CC          mov ax,[bp-0x3387]
00000A75  84C5              test ch,al
00000A77  49                dec cx
00000A78  C8CBCD85          enter word 0xcdcb,byte 0x85
00000A7C  C449CD            les cx,word [bx+di-0x33]
00000A7F  86C3              xchg al,bl
00000A81  050A57            add ax,0x570a
00000A84  79CC              jns 0xa52
00000A86  8B86C4C8          mov ax,[bp-0x373c]
00000A8A  CACC86            retf word 0x86cc
00000A8D  C549C7            lds cx,word [bx+di-0x39]
00000A90  CD86              int byte 0x86
00000A92  C449C8            les cx,word [bx+di-0x38]
00000A95  CC                int3
00000A96  85C8              test ax,cx
00000A98  C7                db 0xc7
00000A99  69C8CBCD          imul cx,ax,0xcdcb
00000A9D  C6                db 0xc6
00000A9E  49                dec cx
00000A9F  C849C7C4          enter word 0xc749,byte 0xc4
00000AA3  CD89              int byte 0x89
00000AA5  86C4              xchg al,ah
00000AA7  C7                db 0xc7
00000AA8  CACC86            retf word 0x86cc
00000AAB  C547CD            lds ax,word [bx-0x33]
00000AAE  87C4              xchg ax,sp
00000AB0  CAC8CA            retf word 0xcac8
00000AB3  C8CC82C3          enter word 0x82cc,byte 0xc3
00000AB7  CAC8CA            retf word 0xcac8
00000ABA  C8C7CACC          enter word 0xcac7,byte 0xcc
00000ABE  CE                into
00000ABF  83C667            add si,0x67
00000AC2  49                dec cx
00000AC3  CC                int3
00000AC4  85C3              test bx,ax
00000AC6  49                dec cx
00000AC7  CC                int3
00000AC8  86C4              xchg al,ah
00000ACA  CACC87            retf word 0x87cc
00000ACD  C5                db 0xc5
00000ACE  C7                db 0xc7
00000ACF  49                dec cx
00000AD0  CD86              int byte 0x86
00000AD2  C449CB            les cx,word [bx+di-0x35]
00000AD5  050ACB            add ax,0xcb0a
00000AD8  CDC6              int byte 0xc6
00000ADA  CB                retf
00000ADB  CC                int3
00000ADC  81CE88C5          or si,0xc588
00000AE0  CAC8CD            retf word 0xcdc8
00000AE3  83C3C4            add bx,0xffffffffffffffc4
00000AE6  CACC81            retf word 0x81cc
00000AE9  86C5              xchg al,ch
00000AEB  49                dec cx
00000AEC  CD86              int byte 0x86
00000AEE  C449C8            les cx,word [bx+di-0x38]
00000AF1  CC                int3
00000AF2  86C4              xchg al,ah
00000AF4  06                push es
00000AF5  0AC8              or cl,al
00000AF7  CACC50            retf word 0x50cc
00000AFA  C260C2            ret word 0xc260
00000AFD  60                pusha
00000AFE  81C55ACD          add bp,0xcd5a
00000B02  81C369CC          add bx,0xcc69
00000B06  CE                into
00000B07  85C5              test bp,ax
00000B09  CACD87            retf word 0x87cd
00000B0C  C4                db 0xc4
00000B0D  CAC7CC            retf word 0xccc7
00000B10  87C4              xchg ax,sp
00000B12  69C7C8CC          imul ax,di,0xccc8
00000B16  91                xchg ax,cx
00000B17  C6                db 0xc6
00000B18  CC                int3
00000B19  81D2D3D4          adc dx,0xd4d3
00000B1D  C9                leave
00000B1E  C849CC81          enter word 0xcc49,byte 0x81
00000B22  86C5              xchg al,ch
00000B24  69CC84C4          imul cx,sp,0xc484
00000B28  47                inc di
00000B29  CDCE              int byte 0xce
00000B2B  86C4              xchg al,ah
00000B2D  49                dec cx
00000B2E  C8CAC9CC          enter word 0xc9ca,byte 0xcc
00000B32  C260C2            ret word 0xc260
00000B35  50                push ax
00000B36  C26087            ret word 0x8760
00000B39  D2D3              rcl bl,cl
00000B3B  D4C9              aam byte 0xc9
00000B3D  59                pop cx
00000B3E  C7                db 0xc7
00000B3F  CD86              int byte 0x86
00000B41  C6                db 0xc6
00000B42  59                pop cx
00000B43  CC                int3
00000B44  85C4              test sp,ax
00000B46  C8CD88C4          enter word 0x88cd,byte 0xc4
00000B4A  49                dec cx
00000B4B  C8CAC9CC          enter word 0xc9ca,byte 0xcc
00000B4F  95                xchg ax,bp
00000B50  D2D3              rcl bl,cl
00000B52  D4C9              aam byte 0xc9
00000B54  69CCCD86          imul cx,sp,0x86cd
00000B58  C5                db 0xc5
00000B59  CACD86            retf word 0x86cd
00000B5C  C449CD            les cx,word [bx+di-0x33]
00000B5F  87C4              xchg ax,sp
00000B61  CAC849            retf word 0x49c8
00000B64  C8CD85C3          enter word 0x85cd,byte 0xc3
00000B68  68CC81            push word 0x81cc
00000B6B  CE                into
00000B6C  88D2              mov dl,dl
00000B6E  D3D4              rcl sp,cl
00000B70  C859C8C7          enter word 0xc859,byte 0xc7
00000B74  CD86              int byte 0x86
00000B76  C5                db 0xc5
00000B77  CACC86            retf word 0x86cc
00000B7A  C449CD            les cx,word [bx+di-0x33]
00000B7D  87C4              xchg ax,sp
00000B7F  47                inc di
00000B80  49                dec cx
00000B81  C9                leave
00000B82  CD85              int byte 0x85
00000B84  C578CC            lds di,word [bx+si-0x34]
00000B87  89D2              mov dx,dx
00000B89  D3D4              rcl sp,cl
00000B8B  C849C7C8          enter word 0xc749,byte 0xc8
00000B8F  CAC7CC            retf word 0xccc7
00000B92  85C5              test bp,ax
00000B94  CD87              int byte 0x87
00000B96  C449CD            les cx,word [bx+di-0x33]
00000B99  87C4              xchg ax,sp
00000B9B  49                dec cx
00000B9C  CDC9              int byte 0xc9
00000B9E  CB                retf
00000B9F  CD85              int byte 0x85
00000BA1  C6                db 0xc6
00000BA2  5A                pop dx
00000BA3  48                dec ax
00000BA4  C8CD88D2          enter word 0x88cd,byte 0xd2
00000BA8  D3D4              rcl sp,cl
00000BAA  C879CACD          enter word 0xca79,byte 0xcd
00000BAE  85C6              test si,ax
00000BB0  CC                int3
00000BB1  87C4              xchg ax,sp
00000BB3  47                inc di
00000BB4  CACDCE            retf word 0xcecd
00000BB7  85C5              test bp,ax
00000BB9  59                pop cx
00000BBA  CD82              int byte 0x82
00000BBC  CE                into
00000BBD  86D2              xchg dl,dl
00000BBF  D3CA              ror dx,cl
00000BC1  C9                leave
00000BC2  C8CACC87          enter word 0xccca,byte 0x87
00000BC6  D2D3              rcl bl,cl
00000BC8  D4C8              aam byte 0xc8
00000BCA  69C8CD8F          imul cx,ax,0x8fcd
00000BCE  C5                db 0xc5
00000BCF  CAC8CA            retf word 0xcac8
00000BD2  CC                int3
00000BD3  86C5              xchg al,ch
00000BD5  59                pop cx
00000BD6  CDCE              int byte 0xce
00000BD8  88D2              mov dl,dl
00000BDA  D3CA              ror dx,cl
00000BDC  47                inc di
00000BDD  CC                int3
00000BDE  81CE86D2          or si,0xd286
00000BE2  D3D4              rcl sp,cl
00000BE4  59                pop cx
00000BE5  57                push di
00000BE6  CACD0C            retf word 0xccd
00000BE9  0181C5C8          add [bx+di-0x373b],ax
00000BED  49                dec cx
00000BEE  CB                retf
00000BEF  CC                int3
00000BF0  85C5              test bp,ax
00000BF2  49                dec cx
00000BF3  CB                retf
00000BF4  CC                int3
00000BF5  81CE86D2          or si,0xd286
00000BF9  D3D4              rcl sp,cl
00000BFB  CAC849            retf word 0x49c8
00000BFE  CC                int3
00000BFF  87D2              xchg dx,dx
00000C01  D3D4              rcl sp,cl
00000C03  59                pop cx
00000C04  C849CC8F          enter word 0xcc49,byte 0x8f
00000C08  C5                db 0xc5
00000C09  C7                db 0xc7
00000C0A  49                dec cx
00000C0B  CDCE              int byte 0xce
00000C0D  85C5              test bp,ax
00000C0F  49                dec cx
00000C10  C9                leave
00000C11  CD88              int byte 0x88
00000C13  D2D3              rcl bl,cl
00000C15  D459              aam byte 0x59
00000C17  CB                retf
00000C18  CC                int3
00000C19  87D2              xchg dx,dx
00000C1B  D3D4              rcl sp,cl
00000C1D  59                pop cx
00000C1E  C84988C3          enter word 0x8849,byte 0xc3
00000C22  CC                int3
00000C23  86C5              xchg al,ch
00000C25  47                inc di
00000C26  CACC86            retf word 0x86cc
00000C29  C54948            lds cx,word [bx+di+0x48]
00000C2C  CD87              int byte 0x87
00000C2E  D2D3              rcl bl,cl
00000C30  D4C8              aam byte 0xc8
00000C32  CAC8CA            retf word 0xcac8
00000C35  CC                int3
00000C36  87D2              xchg dx,dx
00000C38  D3D4              rcl sp,cl
00000C3A  49                dec cx
00000C3B  C7                db 0xc7
00000C3C  CAC8CD            retf word 0xcdc8
00000C3F  88C5              mov ch,al
00000C41  CACC85            retf word 0x85cc
00000C44  C5                db 0xc5
00000C45  C8CACDCE          enter word 0xcdca,byte 0xce
00000C49  86C4              xchg al,ah
00000C4B  CAC448            retf word 0x48c4
00000C4E  CD87              int byte 0x87
00000C50  D2D3              rcl bl,cl
00000C52  D4C8              aam byte 0xc8
00000C54  49                dec cx
00000C55  CC                int3
00000C56  82                db 0x82
00000C57  CE                into
00000C58  85D2              test dx,dx
00000C5A  D3D4              rcl sp,cl
00000C5C  69C8CC88          imul cx,ax,0x88cc
00000C60  C549CC            lds cx,word [bx+di-0x34]
00000C63  84C6              test dh,al
00000C65  C8CC88C4          enter word 0x88cc,byte 0xc4
00000C69  CA58CD            retf word 0xcd58
00000C6C  87D2              xchg dx,dx
00000C6E  D3D4              rcl sp,cl
00000C70  C859CC8A          enter word 0xcc59,byte 0x8a
00000C74  C6                db 0xc6
00000C75  59                pop cx
00000C76  C8CD88C5          enter word 0x88cd,byte 0xc5
00000C7A  CACD90            retf word 0x90cd
00000C7D  C458CB            les bx,word [bx+si-0x35]
00000C80  CDCE              int byte 0xce
00000C82  86D2              xchg dl,dl
00000C84  D3CA              ror dx,cl
00000C86  C8CACBCD          enter word 0xcbca,byte 0xcd
00000C8A  8CC6              mov si,es
00000C8C  C5                db 0xc5
00000C8D  CB                retf
00000C8E  CDCE              int byte 0xce
00000C90  88C5              mov ch,al
00000C92  49                dec cx
00000C93  CC                int3
00000C94  CE                into
00000C95  8EC5              mov es,bp
00000C97  C9                leave
00000C98  C8CDC3CC          enter word 0xc3cd,byte 0xcc
00000C9C  87D2              xchg dx,dx
00000C9E  49                dec cx
00000C9F  C8CC82CE          enter word 0x82cc,byte 0xce
00000CA3  88CE              mov dh,cl
00000CA5  83C6CA            add si,0xffffffffffffffca
00000CA8  C8CDCC87          enter word 0xcccd,byte 0x87
00000CAC  C549CC            lds cx,word [bx+di-0x34]
00000CAF  8FC4              pop sp
00000CB1  47                inc di
00000CB2  58                pop ax
00000CB3  CD86              int byte 0x86
00000CB5  D269CC            shr byte [bx+di-0x34],cl
00000CB8  87C3              xchg ax,bx
00000CBA  CD86              int byte 0x86
00000CBC  C64788C5          mov byte [bx-0x78],0xc5
00000CC0  C849CC8E          enter word 0xcc49,byte 0x8e
00000CC4  C478CD            les di,word [bx+si-0x33]
00000CC7  85C3              test bx,ax
00000CC9  C9                leave
00000CCA  59                pop cx
00000CCB  C8CACC86          enter word 0xccca,byte 0x86
00000CCF  C4                db 0xc4
00000CD0  CACD88            retf word 0x88cd
00000CD3  88C4              mov ah,al
00000CD5  69CD8DC4          imul cx,bp,0xc48d
00000CD9  48                dec ax
00000CDA  C8CDCE86          enter word 0xcecd,byte 0x86
00000CDE  C45947            les bx,word [bx+di+0x47]
00000CE1  CACC86            retf word 0x86cc
00000CE4  C4                db 0xc4
00000CE5  CAC9CC            retf word 0xccc9
00000CE8  8788C4CB          xchg cx,[bx+si-0x343c]
00000CEC  49                dec cx
00000CED  CD8E              int byte 0x8e
00000CEF  C448C8            les cx,word [bx+si-0x38]
00000CF2  48                dec ax
00000CF3  CD85              int byte 0x85
00000CF5  C4                db 0xc4
00000CF6  C859C859          enter word 0xc859,byte 0x59
00000CFA  CC                int3
00000CFB  84C5              test ch,al
00000CFD  CACC88            retf word 0x88cc
00000D00  88C4              mov ah,al
00000D02  49                dec cx
00000D03  CB                retf
00000D04  CD81              int byte 0x81
00000D06  CE                into
00000D07  8BC3              mov ax,bx
00000D09  C4                db 0xc4
00000D0A  C9                leave
00000D0B  47                inc di
00000D0C  CB                retf
00000D0D  CC                int3
00000D0E  86C4              xchg al,ah
00000D10  59                pop cx
00000D11  47                inc di
00000D12  49                dec cx
00000D13  CC                int3
00000D14  85C6              test si,ax
00000D16  CB                retf
00000D17  CC                int3
00000D18  81CE83C3          or si,0xc383
00000D1C  CACC88            retf word 0x88cc
00000D1F  C549C7            lds cx,word [bx+di-0x39]
00000D22  CACC8C            retf word 0x8ccc
00000D25  C458C7            les bx,word [bx+si-0x39]
00000D28  CDCE              int byte 0xce
00000D2A  86C4              xchg al,ah
00000D2C  050ACC            add ax,0xcc0a
00000D2F  82                db 0x82
00000D30  CE                into
00000D31  8BC5              mov ax,bp
00000D33  CACDC3            retf word 0xc3cd
00000D36  CD86              int byte 0x86
00000D38  C559CC            lds bx,word [bx+di-0x34]
00000D3B  8D                db 0x8d
00000D3C  C448C8            les cx,word [bx+si-0x38]
00000D3F  C9                leave
00000D40  CC                int3
00000D41  87C4              xchg ax,sp
00000D43  49                dec cx
00000D44  C859CD8E          enter word 0xcd59,byte 0x8e
00000D48  C4                db 0xc4
00000D49  CACDCA            retf word 0xcacd
00000D4C  CD86              int byte 0x86
00000D4E  C4                db 0xc4
00000D4F  CACD8F            retf word 0x8fcd
00000D52  C548C8            lds cx,word [bx+si-0x38]
00000D55  CD88              int byte 0x88
00000D57  C4                db 0xc4
00000D58  CACDC3            retf word 0xc3cd
00000D5B  CACDC3            retf word 0xc3cd
00000D5E  CD8E              int byte 0x8e
00000D60  C449CC            les cx,word [bx+di-0x34]
00000D63  87C6              xchg ax,si
00000D65  CB                retf
00000D66  CD81              int byte 0x81
00000D68  CE                into
00000D69  8D                db 0x8d
00000D6A  C547CD            lds ax,word [bx-0x33]
00000D6D  CE                into
00000D6E  88C4              mov ah,al
00000D70  06                push es
00000D71  0ACD              or cl,ch
00000D73  87C3              xchg ax,bx
00000D75  79CB              jns 0xd42
00000D77  49                dec cx
00000D78  CD81              int byte 0x81
00000D7A  CE                into
00000D7B  97                xchg ax,di
00000D7C  C547C9            lds ax,word [bx-0x37]
00000D7F  CC                int3
00000D80  88C5              mov ch,al
00000D82  CAC869            retf word 0x69c8
00000D85  C8CD87C4          enter word 0x87cd,byte 0xc4
00000D89  CA4769            retf word 0x6947
00000D8C  CB                retf
00000D8D  CACD98            retf word 0x98cd
00000D90  C5                db 0xc5
00000D91  C9                leave
00000D92  C8C7CDCE          enter word 0xcdc7,byte 0xce
00000D96  87C5              xchg ax,bp
00000D98  47                inc di
00000D99  49                dec cx
00000D9A  47                inc di
00000D9B  CACDCE            retf word 0xcecd
00000D9E  86C4              xchg al,ah
00000DA0  47                inc di
00000DA1  CB                retf
00000DA2  79C7              jns 0xd6b
00000DA4  CC                int3
00000DA5  98                cbw
00000DA6  C568CC            lds bp,word [bx+si-0x34]
00000DA9  87C5              xchg ax,bp
00000DAB  C879CDCE          enter word 0xcd79,byte 0xce
00000DAF  87C4              xchg ax,sp
00000DB1  C8CCC379          enter word 0xc3cc,byte 0x79
00000DB5  CD99              int byte 0x99
00000DB7  C578CB            lds di,word [bx+si-0x35]
00000DBA  CC                int3
00000DBB  85C5              test bp,ax
00000DBD  49                dec cx
00000DBE  CB                retf
00000DBF  49                dec cx
00000DC0  47                inc di
00000DC1  CD87              int byte 0x87
00000DC3  C407              les ax,word [bx]
00000DC5  0ACE              or cl,dh
00000DC7  99                cwd
00000DC8  C548C7            lds cx,word [bx+si-0x39]
00000DCB  C9                leave
00000DCC  CB                retf
00000DCD  CD81              int byte 0x81
00000DCF  CE                into
00000DD0  84C5              test ch,al
00000DD2  69C7CDC3          imul ax,di,0xc3cd
00000DD6  CACC86            retf word 0x86cc
00000DD9  C559C7            lds bx,word [bx+di-0x39]
00000DDC  CAC8CD            retf word 0xcdc8
00000DDF  819AC50509CD      sbb word [bp+si+0x5c5],0xcd09
00000DE5  85C5              test bp,ax
00000DE7  C859CC84          enter word 0xcc59,byte 0x84
00000DEB  CE                into
00000DEC  85C5              test bp,ax
00000DEE  CAC759            retf word 0x59c7
00000DF1  CD82              int byte 0x82
00000DF3  9AC557C9CD        call word 0xcdc9:word 0x57c5
00000DF8  87C4              xchg ax,sp
00000DFA  59                pop cx
00000DFB  CD81              int byte 0x81
00000DFD  CE                into
00000DFE  89C5              mov bp,ax
00000E00  79C8              jns 0xdca
00000E02  CACC9A            retf word 0x9acc
00000E05  C547CD            lds ax,word [bx-0x33]
00000E08  82                db 0x82
00000E09  CE                into
00000E0A  86C5              xchg al,ch
00000E0C  49                dec cx
00000E0D  C849CC81          enter word 0xcc49,byte 0x81
00000E11  CE                into
00000E12  87C5              xchg ax,bp
00000E14  C4                db 0xc4
00000E15  CA67CC            retf word 0xcc67
00000E18  819AC5C8C9CD      sbb word [bp+si-0x373b],0xcdc9
00000E1E  CE                into
00000E1F  88C5              mov ch,al
00000E21  CA4759            retf word 0x5947
00000E24  CC                int3
00000E25  82                db 0x82
00000E26  CE                into
00000E27  85C6              test si,ax
00000E29  C5                db 0xc5
00000E2A  CA4749            retf word 0x4947
00000E2D  C7                db 0xc7
00000E2E  CD86              int byte 0x86
00000E30  C3                ret
00000E31  CC                int3
00000E32  88C3              mov bl,al
00000E34  CACD87            retf word 0x87cd
00000E37  C548CC            lds cx,word [bx+si-0x34]
00000E3A  89C5              mov bp,ax
00000E3C  47                inc di
00000E3D  CB                retf
00000E3E  CACCCA            retf word 0xcacc
00000E41  47                inc di
00000E42  CD88              int byte 0x88
00000E44  C6                db 0xc6
00000E45  CAC8CA            retf word 0xcac8
00000E48  CD82              int byte 0x82
00000E4A  86C4              xchg al,ah
00000E4C  CD88              int byte 0x88
00000E4E  C449CD            les cx,word [bx+di-0x33]
00000E51  86C5              xchg al,ch
00000E53  CC                int3
00000E54  CE                into
00000E55  8AC5              mov al,ch
00000E57  07                pop es
00000E58  0ACD              or cl,ch
00000E5A  89C4              mov sp,ax
00000E5C  C8CCCE82          enter word 0xcecc,byte 0x82
00000E60  86C4              xchg al,ah
00000E62  C9                leave
00000E63  CB                retf
00000E64  CD86              int byte 0x86
00000E66  C4                db 0xc4
00000E67  C8CACDCE          enter word 0xcdca,byte 0xce
00000E6B  85C5              test bp,ax
00000E6D  CD8B              int byte 0x8b
00000E6F  C559CD            lds bx,word [bx+di-0x33]
00000E72  C3                ret
00000E73  69CDCE87          imul cx,bp,0x87ce
00000E77  C4                db 0xc4
00000E78  CACD83            retf word 0x83cd
00000E7B  85C3              test bx,ax
00000E7D  48                dec ax
00000E7E  CC                int3
00000E7F  CE                into
00000E80  86C5              xchg al,ch
00000E82  47                inc di
00000E83  CC                int3
00000E84  86C6              xchg al,dh
00000E86  CD8B              int byte 0x8b
00000E88  C507              lds ax,word [bx]
00000E8A  0AC8              or cl,al
00000E8C  CACD87            retf word 0x87cd
00000E8F  C4                db 0xc4
00000E90  CACC81            retf word 0x81cc
00000E93  CE                into
00000E94  8184C348C8CD      add word [si+0x48c3],0xcdc8
00000E9A  87C5              xchg ax,bp
00000E9C  C8CACD86          enter word 0xcdca,byte 0x86
00000EA0  C3                ret
00000EA1  CD8B              int byte 0x8b
00000EA3  C5                db 0xc5
00000EA4  C86947C7          enter word 0x4769,byte 0xc7
00000EA8  49                dec cx
00000EA9  CB                retf
00000EAA  CD86              int byte 0x86
00000EAC  C449C7            les cx,word [bx+di-0x39]
00000EAF  CC                int3
00000EB0  8184C4C947C7      add word [si-0x363c],0xc747
00000EB6  CC                int3
00000EB7  86C5              xchg al,ch
00000EB9  4A                dec dx
00000EBA  C7                db 0xc7
00000EBB  CD85              int byte 0x85
00000EBD  C4                db 0xc4
00000EBE  CD8B              int byte 0x8b
00000EC0  C549C8            lds cx,word [bx+di-0x38]
00000EC3  CA47CA            retf word 0xca47
00000EC6  C8CC81CE          enter word 0x81cc,byte 0xce
00000ECA  87C4              xchg ax,sp
00000ECC  49                dec cx
00000ECD  CC                int3
00000ECE  82                db 0x82
00000ECF  84C4              test ah,al
00000ED1  48                dec ax
00000ED2  CD88              int byte 0x88
00000ED4  C4                db 0xc4
00000ED5  CD81              int byte 0x81
00000ED7  CACD85            retf word 0x85cd
00000EDA  C4                db 0xc4
00000EDB  C9                leave
00000EDC  CC                int3
00000EDD  8AC5              mov al,ch
00000EDF  CAC8CD            retf word 0xcdc8
00000EE2  C6                db 0xc6
00000EE3  59                pop cx
00000EE4  CD81              int byte 0x81
00000EE6  CE                into
00000EE7  88C5              mov ch,al
00000EE9  49                dec cx
00000EEA  CD81              int byte 0x81
00000EEC  CE                into
00000EED  84C4              test ah,al
00000EEF  58                pop ax
00000EF0  CD87              int byte 0x87
00000EF2  C4                db 0xc4
00000EF3  CACDC6            retf word 0xc6cd
00000EF6  C7                db 0xc7
00000EF7  CC                int3
00000EF8  84C4              test ah,al
00000EFA  C9                leave
00000EFB  CDCE              int byte 0xce
00000EFD  89C4              mov sp,ax
00000EFF  CACBCC            retf word 0xcccb
00000F02  83C3CA            add bx,0xffffffffffffffca
00000F05  CD89              int byte 0x89
00000F07  C5                db 0xc5
00000F08  CACC83            retf word 0x83cc
00000F0B  84C4              test ah,al
00000F0D  C9                leave
00000F0E  47                inc di
00000F0F  CDCE              int byte 0xce
00000F11  86C4              xchg al,ah
00000F13  49                dec cx
00000F14  CB                retf
00000F15  CC                int3
00000F16  85C4              test sp,ax
00000F18  C9                leave
00000F19  CB                retf
00000F1A  CD89              int byte 0x89
00000F1C  C4                db 0xc4
00000F1D  CACC84            retf word 0x84cc
00000F20  C4                db 0xc4
00000F21  CAC8CD            retf word 0xcdc8
00000F24  88C5              mov ch,al
00000F26  49                dec cx
00000F27  C7                db 0xc7
00000F28  CC                int3
00000F29  CE                into
00000F2A  84C5              test ch,al
00000F2C  47                inc di
00000F2D  C9                leave
00000F2E  CD87              int byte 0x87
00000F30  C459CB            les bx,word [bx+di-0x35]
00000F33  CC                int3
00000F34  84C4              test ah,al
00000F36  48                dec ax
00000F37  CDCE              int byte 0xce
00000F39  88C4              mov ah,al
00000F3B  CACCCE            retf word 0xcecc
00000F3E  83C459            add sp,0x59
00000F41  CC                int3
00000F42  CE                into
00000F43  86C5              xchg al,ch
00000F45  49                dec cx
00000F46  CC                int3
00000F47  82                db 0x82
00000F48  84C5              test ch,al
00000F4A  47                inc di
00000F4B  C9                leave
00000F4C  CC                int3
00000F4D  87C4              xchg ax,sp
00000F4F  59                pop cx
00000F50  CDCE              int byte 0xce
00000F52  84C4              test ah,al
00000F54  48                dec ax
00000F55  CD89              int byte 0x89
00000F57  C4                db 0xc4
00000F58  CACD84            retf word 0x84cd
00000F5B  C459CC            les bx,word [bx+di-0x34]
00000F5E  87C5              xchg ax,bp
00000F60  49                dec cx
00000F61  CD82              int byte 0x82
00000F63  84C5              test ch,al
00000F65  C8CC89C5          enter word 0x89cc,byte 0xc5
00000F69  47                inc di
00000F6A  CACC85            retf word 0x85cc
00000F6D  C548C8            lds cx,word [bx+si-0x38]
00000F70  C9                leave
00000F71  CC                int3
00000F72  87C4              xchg ax,sp
00000F74  CACD84            retf word 0x84cd
00000F77  C459CC            les bx,word [bx+di-0x34]
00000F7A  81CE85C5          or si,0xc585
00000F7E  CACC83            retf word 0x83cc
00000F81  84C5              test ch,al
00000F83  C9                leave
00000F84  CD82              int byte 0x82
00000F86  CE                into
00000F87  86C5              xchg al,ch
00000F89  47                inc di
00000F8A  CC                int3
00000F8B  CE                into
00000F8C  85C5              test bp,ax
00000F8E  C9                leave
00000F8F  C7                db 0xc7
00000F90  48                dec ax
00000F91  CDCE              int byte 0xce
00000F93  86C5              xchg al,ch
00000F95  CACCCE            retf word 0xcecc
00000F98  83C459            add sp,0x59
00000F9B  CC                int3
00000F9C  87C5              xchg ax,bp
00000F9E  C8CC8384          enter word 0x83cc,byte 0x84
00000FA2  C558CD            lds bx,word [bx+si-0x33]
00000FA5  87C5              xchg ax,bp
00000FA7  49                dec cx
00000FA8  CC                int3
00000FA9  86C5              xchg al,ch
00000FAB  C9                leave
00000FAC  C8C9C8CD          enter word 0xc8c9,byte 0xcd
00000FB0  87C5              xchg ax,bp
00000FB2  CACC84            retf word 0x84cc
00000FB5  C449C8            les cx,word [bx+di-0x38]
00000FB8  C7                db 0xc7
00000FB9  CD86              int byte 0x86
00000FBB  C549CD            lds cx,word [bx+di-0x33]
00000FBE  82                db 0x82
00000FBF  84C5              test ch,al
00000FC1  58                pop ax
00000FC2  CD87              int byte 0x87
00000FC4  C5                db 0xc5
00000FC5  C6C7CC            mov bh,0xcc
00000FC8  86C5              xchg al,ch
00000FCA  47                inc di
00000FCB  48                dec ax
00000FCC  CDCE              int byte 0xce
00000FCE  86C5              xchg al,ch
00000FD0  CACD84            retf word 0x84cd
00000FD3  C4                db 0xc4
00000FD4  CAC7CA            retf word 0xcac7
00000FD7  CC                int3
00000FD8  87C5              xchg ax,bp
00000FDA  49                dec cx
00000FDB  C8CC8184          enter word 0x81cc,byte 0x84
00000FDF  C5                db 0xc5
00000FE0  C9                leave
00000FE1  C8CBCC87          enter word 0xcccb,byte 0x87
00000FE5  C6C7CC            mov bh,0xcc
00000FE8  87C4              xchg ax,sp
00000FEA  58                pop ax
00000FEB  C7                db 0xc7
00000FEC  C9                leave
00000FED  CD86              int byte 0x86
00000FEF  C6                db 0xc6
00000FF0  CD85              int byte 0x85
00000FF2  C447CC            les ax,word [bx-0x34]
00000FF5  88C5              mov ch,al
00000FF7  CACC83            retf word 0x83cc
00000FFA  84C5              test ch,al
00000FFC  C8C9CD92          enter word 0xcdc9,byte 0x92
00001000  C478CC            les di,word [bx+si-0x34]
00001003  CD8C              int byte 0x8c
00001005  C449CC            les cx,word [bx+di-0x34]
00001008  88C5              mov ch,al
0000100A  49                dec cx
0000100B  CD82              int byte 0x82
0000100D  84C5              test ch,al
0000100F  48                dec ax
00001010  CD92              int byte 0x92
00001012  C405              les ax,word [di]
00001014  09CA              or dx,cx
00001016  CD8B              int byte 0x8b
00001018  C559CC            lds bx,word [bx+di-0x34]
0000101B  87C5              xchg ax,bp
0000101D  CACD81            retf word 0x81cd
00001020  CE                into
00001021  8184C548CD92      add word [si+0x48c5],0x92cd
00001027  C405              les ax,word [di]
00001029  09C8              or ax,cx
0000102B  CD8B              int byte 0x8b
0000102D  C549CB            lds cx,word [bx+di-0x35]
00001030  CC                int3
00001031  87C5              xchg ax,bp
00001033  49                dec cx
00001034  CD82              int byte 0x82
00001036  84C5              test ch,al
00001038  48                dec ax
00001039  CC                int3
0000103A  92                xchg ax,dx
0000103B  C458C8            les bx,word [bx+si-0x38]
0000103E  48                dec ax
0000103F  C8CDCE89          enter word 0xcecd,byte 0x89
00001043  C3                ret
00001044  C849CC88          enter word 0xcc49,byte 0x88
00001048  C5                db 0xc5
00001049  C8CACD82          enter word 0xcdca,byte 0x82
0000104D  84C5              test ch,al
0000104F  48                dec ax
00001050  CD40              int byte 0x40
00001052  41                inc cx
00001053  60                pusha
00001054  41                inc cx
00001055  40                inc ax
00001056  C240C2            ret word 0xc240
00001059  C181C4C947        rol word [bx+di-0x363c],byte 0x47
0000105E  C7                db 0xc7
0000105F  48                dec ax
00001060  CACD8A            retf word 0x8acd
00001063  C4                db 0xc4
00001064  C859CCCE          enter word 0xcc59,byte 0xce
00001068  86C5              xchg al,ch
0000106A  CACC83            retf word 0x83cc
0000106D  84C4              test ah,al
0000106F  48                dec ax
00001070  CD92              int byte 0x92
00001072  C54748            lds ax,word [bx+0x48]
00001075  47                inc di
00001076  49                dec cx
00001077  CD89              int byte 0x89
00001079  C4                db 0xc4
0000107A  C859CC87          enter word 0xcc59,byte 0x87
0000107E  C549C8            lds cx,word [bx+di-0x38]
00001081  CC                int3
00001082  8184C448CD92      add word [si+0x48c4],0x92cd
00001088  C4                db 0xc4
00001089  C9                leave
0000108A  C8C947C9          enter word 0x47c9,byte 0xc9
0000108E  CAC8CA            retf word 0xcac8
00001091  CC                int3
00001092  81C3CACD          add bx,0xcdca
00001096  84C4              test ah,al
00001098  C849C8CC          enter word 0xc849,byte 0xcc
0000109C  87C5              xchg ax,bp
0000109E  49                dec cx
0000109F  CC                int3
000010A0  82                db 0x82
000010A1  84C4              test ah,al
000010A3  48                dec ax
000010A4  CDCE              int byte 0xce
000010A6  91                xchg ax,cx
000010A7  C4                db 0xc4
000010A8  C9                leave
000010A9  C8C947C9          enter word 0x47c9,byte 0xc9
000010AD  49                dec cx
000010AE  C84947CC          enter word 0x4749,byte 0xcc
000010B2  84C4              test ah,al
000010B4  C8CAC8CC          enter word 0xc8ca,byte 0xcc
000010B8  CE                into
000010B9  87C4              xchg ax,sp
000010BB  49                dec cx
000010BC  CD82              int byte 0x82
000010BE  84C4              test ah,al
000010C0  C9                leave
000010C1  C8C9CD91          enter word 0xcdc9,byte 0x91
000010C5  C5                db 0xc5
000010C6  C9                leave
000010C7  67C9              a32 leave
000010C9  6947CD85C4        imul ax,[bx-0x33],0xc485
000010CE  C8CAC8CC          enter word 0xc8ca,byte 0xcc
000010D2  C3                ret
000010D3  CB                retf
000010D4  CC                int3
000010D5  85C4              test sp,ax
000010D7  C8CACD81          enter word 0xcdca,byte 0x81
000010DB  CE                into
000010DC  84C4              test ah,al
000010DE  C858CDCE          enter word 0xcd58,byte 0xce
000010E2  8FC5              pop bp
000010E4  C9                leave
000010E5  47                inc di
000010E6  C9                leave
000010E7  C8C9CAC8          enter word 0xcac9,byte 0xc8
000010EB  CACD88            retf word 0x88cd
000010EE  C4                db 0xc4
000010EF  C9                leave
000010F0  59                pop cx
000010F1  5A                pop dx
000010F2  CC                int3
000010F3  84C4              test ah,al
000010F5  CACC83            retf word 0x83cc
000010F8  84C4              test ah,al
000010FA  C86847CC          enter word 0x4768,byte 0xcc
000010FE  8D                db 0x8d
000010FF  C5                db 0xc5
00001100  C9                leave
00001101  C848C8C9          enter word 0xc848,byte 0xc9
00001105  C8CACC88          enter word 0xccca,byte 0x88
00001109  C3                ret
0000110A  C4                db 0xc4
0000110B  C9                leave
0000110C  59                pop cx
0000110D  CB                retf
0000110E  CC                int3
0000110F  86C4              xchg al,ah
00001111  49                dec cx
00001112  CD82              int byte 0x82
00001114  84C4              test ah,al
00001116  0909              or [bx+di],cx
00001118  46                inc si
00001119  CC                int3
0000111A  88C5              mov ch,al
0000111C  48                dec ax
0000111D  C7                db 0xc7
0000111E  58                pop ax
0000111F  49                dec cx
00001120  CD81              int byte 0x81
00001122  CE                into
00001123  8643C9            xchg al,[bp+di-0x37]
00001126  49                dec cx
00001127  CD81              int byte 0x81
00001129  CE                into
0000112A  86C4              xchg al,ah
0000112C  49                dec cx
0000112D  C8CC8184          enter word 0x81cc,byte 0x84
00001131  C405              les ax,word [di]
00001133  096778            or [bx+0x78],sp
00001136  CC                int3
00001137  85C5              test bp,ax
00001139  C9                leave
0000113A  C86849CC          enter word 0x4968,byte 0xcc
0000113E  CE                into
0000113F  86C3              xchg al,bl
00001141  53                push bx
00001142  59                pop cx
00001143  CC                int3
00001144  87C4              xchg ax,sp
00001146  49                dec cx
00001147  CC                int3
00001148  CE                into
00001149  8184C4580608      add word [si+0x58c4],0x806
0000114F  58                pop ax
00001150  C848CC83          enter word 0xcc48,byte 0x83
00001154  C3                ret
00001155  C9                leave
00001156  C878C8C7          enter word 0xc878,byte 0xc7
0000115A  CD87              int byte 0x87
0000115C  6359CC            arpl [bx+di-0x34],bx
0000115F  87C4              xchg ax,sp
00001161  49                dec cx
00001162  CD82              int byte 0x82
00001164  84C4              test ah,al
00001166  48                dec ax
00001167  07                pop es
00001168  08C7              or bh,al
0000116A  CC                int3
0000116B  C3                ret
0000116C  C8484778          enter word 0x4748,byte 0x78
00001170  C8C9C848          enter word 0xc8c9,byte 0x48
00001174  CACBCD            retf word 0xcdcb
00001177  86C3              xchg al,bl
00001179  43                inc bx
0000117A  69CC88C4          imul cx,sp,0xc488
0000117E  49                dec cx
0000117F  CD82              int byte 0x82
00001181  84C4              test ah,al
00001183  C7                db 0xc7
00001184  58                pop ax
00001185  77C7              ja 0x114e
00001187  CC                int3
00001188  C3                ret
00001189  C9                leave
0000118A  C8C94748          enter word 0x47c9,byte 0x48
0000118E  C84867C9          enter word 0x6748,byte 0xc9
00001192  CDCE              int byte 0xce
00001194  87C3              xchg ax,bx
00001196  43                inc bx
00001197  59                pop cx
00001198  CB                retf
00001199  CC                int3
0000119A  81CE87C5          or si,0xc587
0000119E  C4                db 0xc4
0000119F  CC                int3
000011A0  81CE8184          or si,0x8481
000011A4  C45805            les bx,word [bx+si+0x5]
000011A7  086857            or [bx+si+0x57],ch
000011AA  48                dec ax
000011AB  47                inc di
000011AC  48                dec ax
000011AD  47                inc di
000011AE  68CD87            push word 0x87cd
000011B1  43                inc bx
000011B2  59                pop cx
000011B3  C8CD8AC5          enter word 0x8acd,byte 0xc5
000011B7  49                dec cx
000011B8  CC                int3
000011B9  82                db 0x82
000011BA  84C4              test ah,al
000011BC  58                pop ax
000011BD  0B08              or cx,[bx+si]
000011BF  58                pop ax
000011C0  57                push di
000011C1  C9                leave
000011C2  47                inc di
000011C3  68C7CD            push word 0xcdc7
000011C6  85C3              test bx,ax
000011C8  43                inc bx
000011C9  59                pop cx
000011CA  C8CD81CE          enter word 0x81cd,byte 0xce
000011CE  88C5              mov ch,al
000011D0  49                dec cx
000011D1  C8CBCD84          enter word 0xcdcb,byte 0x84
000011D5  C45808            les bx,word [bx+si+0x8]
000011D8  08C9              or cl,cl
000011DA  C8586705          enter word 0x6758,byte 0x5
000011DE  09CB              or bx,cx
000011E0  CC                int3
000011E1  8653CA            xchg dl,[bp+di-0x36]
000011E4  53                push bx
000011E5  CC                int3
000011E6  8AC5              mov al,ch
000011E8  CA47CC            retf word 0xcc47
000011EB  8184C4580608      add word [si+0x58c4],0x806
000011F1  C9                leave
000011F2  C8C9C8C9          enter word 0xc8c9,byte 0xc9
000011F6  C8C947C9          enter word 0x47c9,byte 0xc9
000011FA  C8C7C9C8          enter word 0xc9c7,byte 0xc8
000011FE  48                dec ax
000011FF  CC                int3
00001200  8853CA            mov [bp+di-0x36],dl
00001203  C4                db 0xc4
00001204  CAC4CC            retf word 0xccc4
00001207  CE                into
00001208  89C5              mov bp,ax
0000120A  C8CC8384          enter word 0x83cc,byte 0x84
0000120E  C54807            lds cx,word [bx+si+0x7]
00001211  0858C8            or [bx+si-0x38],bl
00001214  C9                leave
00001215  C8C9C878          enter word 0xc8c9,byte 0x78
00001219  C848CD88          enter word 0xcd48,byte 0x88
0000121D  53                push bx
0000121E  49                dec cx
0000121F  43                inc bx
00001220  CD8A              int byte 0x8a
00001222  C449CB            les cx,word [bx+di-0x35]
00001225  CD81              int byte 0x81
00001227  84C5              test ch,al
00001229  47                inc di
0000122A  C9                leave
0000122B  67C9              a32 leave
0000122D  7748              ja 0x1277
0000122F  57                push di
00001230  78C8              js 0x11fa
00001232  58                pop ax
00001233  CC                int3
00001234  CE                into
00001235  866349            xchg ah,[bp+di+0x49]
00001238  C4                db 0xc4
00001239  CD81              int byte 0x81
0000123B  CE                into
0000123C  88C4              mov ah,al
0000123E  49                dec cx
0000123F  CD82              int byte 0x82
00001241  84C5              test ch,al
00001243  C8480708          enter word 0x748,byte 0x8
00001247  58                pop ax
00001248  C8C9C848          enter word 0xc8c9,byte 0x48
0000124C  82                db 0x82
0000124D  6748              a32 dec ax
0000124F  CD87              int byte 0x87
00001251  43                inc bx
00001252  CAC449            retf word 0x49c4
00001255  C4                db 0xc4
00001256  CC                int3
00001257  8AC4              mov al,ah
00001259  49                dec cx
0000125A  CC                int3
0000125B  81CE84C5          or si,0xc584
0000125F  58                pop ax
00001260  77C7              ja 0x1229
00001262  C9                leave
00001263  67C9              a32 leave
00001265  C7                db 0xc7
00001266  48                dec ax
00001267  C782C80509CD      mov word [bp+si+0x5c8],0xcd09
0000126D  CE                into
0000126E  85C5              test bp,ax
00001270  C459C5            les bx,word [bx+di-0x3b]
00001273  CACC8A            retf word 0x8acc
00001276  C4                db 0xc4
00001277  CAC8CC            retf word 0xccc8
0000127A  82                db 0x82
0000127B  84C5              test ch,al
0000127D  58                pop ax
0000127E  0908              or [bx+si],cx
00001280  C9                leave
00001281  C7                db 0xc7
00001282  4A                dec dx
00001283  CE                into
00001284  83C405            add sp,0x5
00001287  09C8              or ax,cx
00001289  CD85              int byte 0x85
0000128B  C5                db 0xc5
0000128C  C459C5            les bx,word [bx+di-0x3b]
0000128F  CACD8A            retf word 0x8acd
00001292  C447CD            les ax,word [bx-0x33]
00001295  82                db 0x82
00001296  84C5              test ch,al
00001298  58                pop ax
00001299  47                inc di
0000129A  C9                leave
0000129B  050848            add ax,0x4808
0000129E  CB                retf
0000129F  CDCE              int byte 0xce
000012A1  84C4              test ah,al
000012A3  48                dec ax
000012A4  C858C8CD          enter word 0xc858,byte 0xcd
000012A8  85C5              test bp,ax
000012AA  C479CD            les di,word [bx+di-0x33]
000012AD  8AC5              mov al,ch
000012AF  47                inc di
000012B0  CACD81            retf word 0x81cd
000012B3  84C5              test ch,al
000012B5  C9                leave
000012B6  47                inc di
000012B7  C7                db 0xc7
000012B8  C9                leave
000012B9  CB                retf
000012BA  C8C5C967          enter word 0xc9c5,byte 0x67
000012BE  46                inc si
000012BF  CC                int3
000012C0  85C4              test sp,ax
000012C2  C9                leave
000012C3  C858C8CA          enter word 0xc858,byte 0xca
000012C7  CD85              int byte 0x85
000012C9  C5                db 0xc5
000012CA  C479CD            les di,word [bx+di-0x33]
000012CD  8AC5              mov al,ch
000012CF  CACD82            retf word 0x82cd
000012D2  CE                into
000012D3  84C5              test ch,al
000012D5  CC                int3
000012D6  C6                db 0xc6
000012D7  CB                retf
000012D8  CD83              int byte 0x83
000012DA  C6                db 0xc6
000012DB  C9                leave
000012DC  C848C8C7          enter word 0xc848,byte 0xc7
000012E0  CC                int3
000012E1  86C4              xchg al,ah
000012E3  47                inc di
000012E4  68CACD            push word 0xcdca
000012E7  85C5              test bp,ax
000012E9  050ACD            add ax,0xcd0a
000012EC  83C3CD            add bx,0xffffffffffffffcd
000012EF  85C5              test bp,ax
000012F1  CDC3              int byte 0xc3
000012F3  CC                int3
000012F4  82                db 0x82
000012F5  84C5              test ch,al
000012F7  CACD86            retf word 0x86cd
000012FA  C468CD            les bp,word [bx+si-0x33]
000012FD  87C4              xchg ax,sp
000012FF  C878CACD          enter word 0xca78,byte 0xcd
00001303  85C5              test bp,ax
00001305  79CD              jns 0x12d4
00001307  84C5              test ch,al
00001309  CD85              int byte 0x85
0000130B  C549CC            lds cx,word [bx+di-0x34]
0000130E  CE                into
0000130F  8184C5CC87C4      add word [si-0x333b],0xc487
00001315  C8C9C8C7          enter word 0xc8c9,byte 0xc7
00001319  CD87              int byte 0x87
0000131B  C405              les ax,word [di]
0000131D  09CD              or bp,cx
0000131F  86C5              xchg al,ch
00001321  79CD              jns 0x12f0
00001323  84C5              test ch,al
00001325  CD85              int byte 0x85
00001327  C5                db 0xc5
00001328  C4                db 0xc4
00001329  C8CD8284          enter word 0x82cd,byte 0x84
0000132D  CAC9CD            retf word 0xcdc9
00001330  86C4              xchg al,ah
00001332  C848CAC7          enter word 0xca48,byte 0xc7
00001336  CC                int3
00001337  86C5              xchg al,ch
00001339  C9                leave
0000133A  47                inc di
0000133B  C7                db 0xc7
0000133C  C9                leave
0000133D  CD87              int byte 0x87
0000133F  C569CC            lds bp,word [bx+di-0x34]
00001342  85C5              test bp,ax
00001344  CD85              int byte 0x85
00001346  C5                db 0xc5
00001347  C4                db 0xc4
00001348  CC                int3
00001349  8384CACD87        add word [si-0x3236],0xffffffffffffff87
0000134E  C4                db 0xc4
0000134F  C848CACD          enter word 0xca48,byte 0xcd
00001353  87C5              xchg ax,bp
00001355  47                inc di
00001356  58                pop ax
00001357  CD87              int byte 0x87
00001359  C469CD            les bp,word [bx+di-0x33]
0000135C  85C5              test bp,ax
0000135E  CACD84            retf word 0x84cd
00001361  C6                db 0xc6
00001362  CB                retf
00001363  CD83              int byte 0x83
00001365  83D0CA            adc ax,0xffffffffffffffca
00001368  CB                retf
00001369  CC                int3
0000136A  86C4              xchg al,ah
0000136C  58                pop ax
0000136D  CDCE              int byte 0xce
0000136F  87C5              xchg ax,bp
00001371  68C8CD            push word 0xcdc8
00001374  87C4              xchg ax,sp
00001376  69CD85C5          imul cx,bp,0xc585
0000137A  CACD8A            retf word 0x8acd
0000137D  82                db 0x82
0000137E  D0C8              ror al,0x0
00001380  CACD87            retf word 0x87cd
00001383  C4                db 0xc4
00001384  C848C8CD          enter word 0xc848,byte 0xcd
00001388  87C5              xchg ax,bp
0000138A  58                pop ax
0000138B  47                inc di
0000138C  CD87              int byte 0x87
0000138E  C469CC            les bp,word [bx+di-0x34]
00001391  85C5              test bp,ax
00001393  CACC81            retf word 0x81cc
00001396  CE                into
00001397  8881D047          mov [bx+di+0x47d0],al
0000139B  CC                int3
0000139C  88C4              mov ah,al
0000139E  48                dec ax
0000139F  C8C7CDCE          enter word 0xcdc7,byte 0xce
000013A3  86C6              xchg al,dh
000013A5  57                push di
000013A6  CC                int3
000013A7  C6                db 0xc6
000013A8  CD87              int byte 0x87
000013AA  C459CC            les bx,word [bx+di-0x34]
000013AD  86C5              xchg al,ch
000013AF  49                dec cx
000013B0  CD89              int byte 0x89
000013B2  8157CACD87        adc word [bx-0x36],0x87cd
000013B7  C458CC            les bx,word [bx+si-0x34]
000013BA  96                xchg ax,si
000013BB  C459CC            les bx,word [bx+di-0x34]
000013BE  86C5              xchg al,ch
000013C0  CAC8CC            retf word 0xccc8
000013C3  8981C4CA          mov [bx+di-0x353c],ax
000013C7  C8CACC87          enter word 0xccca,byte 0x87
000013CB  C558C8            lds bx,word [bx+si-0x38]
000013CE  CB                retf
000013CF  CD40              int byte 0x40
000013D1  41                inc cx
000013D2  70C2              jo 0x1396
000013D4  40                inc ax
000013D5  C26083            ret word 0x8360
000013D8  C449CC            les cx,word [bx+di-0x34]
000013DB  81CE85C5          or si,0xc585
000013DF  CAC8CD            retf word 0xcdc8
000013E2  8981C447          mov [bx+di+0x47c4],ax
000013E6  49                dec cx
000013E7  CD86              int byte 0x86
000013E9  C558CA            lds bx,word [bx+si-0x36]
000013EC  CD95              int byte 0x95
000013EE  C449CC            les cx,word [bx+di-0x34]
000013F1  87C5              xchg ax,bp
000013F3  CAC8CB            retf word 0xcbc8
000013F6  CD88              int byte 0x88
000013F8  81C447C7          add sp,0xc747
000013FC  CD87              int byte 0x87
000013FE  C548C8            lds cx,word [bx+si-0x38]
00001401  CC                int3
00001402  88C3              mov bl,al
00001404  C7                db 0xc7
00001405  68CD87            push word 0x87cd
00001408  C4                db 0xc4
00001409  CACC88            retf word 0x88cc
0000140C  C5                db 0xc5
0000140D  CAC8C9            retf word 0xc9c8
00001410  CC                int3
00001411  CE                into
00001412  8781C447          xchg ax,[bx+di+0x47c4]
00001416  CD88              int byte 0x88
00001418  C548C8            lds cx,word [bx+si-0x38]
0000141B  CD88              int byte 0x88
0000141D  C479C9            les di,word [bx+di-0x37]
00001420  CD85              int byte 0x85
00001422  C3                ret
00001423  C4                db 0xc4
00001424  CACC81            retf word 0x81cc
00001427  CE                into
00001428  86C4              xchg al,ah
0000142A  CAC8C9            retf word 0xc9c8
0000142D  CC                int3
0000142E  8881C447          mov [bx+di+0x47c4],al
00001432  CD88              int byte 0x88
00001434  C547CC            lds ax,word [bx-0x34]
00001437  81CE87C4          or si,0xc487
0000143B  59                pop cx
0000143C  C7                db 0xc7
0000143D  49                dec cx
0000143E  CC                int3
0000143F  84C3              test bl,al
00001441  43                inc bx
00001442  CC                int3
00001443  89C4              mov sp,ax
00001445  C9                leave
00001446  CB                retf
00001447  46                inc si
00001448  CC                int3
00001449  8781C447          xchg ax,[bx+di+0x47c4]
0000144D  CC                int3
0000144E  88C5              mov ch,al
00001450  C9                leave
00001451  CD81              int byte 0x81
00001453  CE                into
00001454  88C4              mov ah,al
00001456  07                pop es
00001457  0A4769            or al,[bx+0x69]
0000145A  CD89              int byte 0x89
0000145C  C4                db 0xc4
0000145D  CC                int3
0000145E  CE                into
0000145F  C646CC86          mov byte [bp-0x34],0x86
00001463  C3                ret
00001464  C4                db 0xc4
00001465  C8CACC88          enter word 0xccca,byte 0x88
00001469  C558CD            lds bx,word [bx+si-0x33]
0000146C  88C4              mov ah,al
0000146E  06                push es
0000146F  0A6759            or ah,[bx+0x59]
00001472  CC                int3
00001473  CE                into
00001474  88C4              mov ah,al
00001476  C7                db 0xc7
00001477  CC                int3
00001478  C3                ret
00001479  C7                db 0xc7
0000147A  C8CBC7CD          enter word 0xc7cb,byte 0xcd
0000147E  8443C8            test [bp+di-0x38],al
00001481  CACD88            retf word 0x88cd
00001484  C558CA            lds bx,word [bx+si-0x36]
00001487  CD87              int byte 0x87
00001489  C5                db 0xc5
0000148A  CAC869            retf word 0x69c8
0000148D  47                inc di
0000148E  CB                retf
0000148F  CC                int3
00001490  C6                db 0xc6
00001491  69CC88C4          imul cx,sp,0xc488
00001495  C7                db 0xc7
00001496  C9                leave
00001497  C8C9C8C7          enter word 0xc8c9,byte 0xc7
0000149B  47                inc di
0000149C  56                push si
0000149D  CD67              int byte 0x67
0000149F  CD88              int byte 0x88
000014A1  C558CA            lds bx,word [bx+si-0x36]
000014A4  CC                int3
000014A5  87C5              xchg ax,bp
000014A7  CAC859            retf word 0x59c8
000014AA  47                inc di
000014AB  C7                db 0xc7
000014AC  CD83              int byte 0x83
000014AE  C449CC            les cx,word [bx+di-0x34]
000014B1  81CE86C5          or si,0xc586
000014B5  CA47CC            retf word 0xcc47
000014B8  81C6CB67          add si,0x67cb
000014BC  C9                leave
000014BD  47                inc di
000014BE  C9                leave
000014BF  CC                int3
000014C0  89C5              mov bp,ax
000014C2  C7                db 0xc7
000014C3  48                dec ax
000014C4  CC                int3
000014C5  88C5              mov ch,al
000014C7  C859C8CB          enter word 0xc859,byte 0xcb
000014CB  CD85              int byte 0x85
000014CD  C459CC            les bx,word [bx+di-0x34]
000014D0  87C5              xchg ax,bp
000014D2  CAC7CC            retf word 0xccc7
000014D5  84C5              test ch,al
000014D7  C7                db 0xc7
000014D8  57                push di
000014D9  47                inc di
000014DA  49                dec cx
000014DB  CD88              int byte 0x88
000014DD  C5                db 0xc5
000014DE  C9                leave
000014DF  C8C9CDCE          enter word 0xcdc9,byte 0xce
000014E3  87C5              xchg ax,bp
000014E5  69CC87C4          imul cx,sp,0xc487
000014E9  49                dec cx
000014EA  C8CC87C5          enter word 0x87cc,byte 0xc5
000014EE  CACC81            retf word 0x81cc
000014F1  CE                into
000014F2  83C6CB            add si,0xffffffffffffffcb
000014F5  C8CDC6C5          enter word 0xc6cd,byte 0xc5
000014F9  43                inc bx
000014FA  CACD88            retf word 0x88cd
000014FD  C547CD            lds ax,word [bx-0x33]
00001500  89C5              mov bp,ax
00001502  79CC              jns 0x14d0
00001504  CE                into
00001505  85C4              test sp,ax
00001507  47                inc di
00001508  CC                int3
00001509  88C5              mov ch,al
0000150B  CACC87            retf word 0x87cc
0000150E  C5                db 0xc5
0000150F  CD81              int byte 0x81
00001511  47                inc di
00001512  CACC82            retf word 0x82cc
00001515  CE                into
00001516  86C5              xchg al,ch
00001518  C8C7C9CA          enter word 0xc9c7,byte 0xca
0000151C  CD87              int byte 0x87
0000151E  C5                db 0xc5
0000151F  C8CAC859          enter word 0xc8ca,byte 0x59
00001523  CC                int3
00001524  85C4              test sp,ax
00001526  C849CCCE          enter word 0xcc49,byte 0xce
0000152A  86C5              xchg al,ch
0000152C  CAC8CC            retf word 0xccc8
0000152F  86C6              xchg al,dh
00001531  C8C747CD          enter word 0x47c7,byte 0xcd
00001535  8AC5              mov al,ch
00001537  58                pop ax
00001538  CACDCE            retf word 0xcecd
0000153B  86C5              xchg al,ch
0000153D  C859CBCD          enter word 0xcb59,byte 0xcd
00001541  86C4              xchg al,ah
00001543  59                pop cx
00001544  CC                int3
00001545  87C5              xchg ax,bp
00001547  CAC8CC            retf word 0xccc8
0000154A  81CE85C5          or si,0xc585
0000154E  C847CACC          enter word 0xca47,byte 0xcc
00001552  89C5              mov bp,ax
00001554  58                pop ax
00001555  C7                db 0xc7
00001556  CC                int3
00001557  87C5              xchg ax,bp
00001559  57                push di
0000155A  CACC81            retf word 0x81cc
0000155D  CE                into
0000155E  85C4              test sp,ax
00001560  49                dec cx
00001561  C7                db 0xc7
00001562  CC                int3
00001563  87C5              xchg ax,bp
00001565  CAC8CC            retf word 0xccc8
00001568  87C6              xchg ax,si
0000156A  C5                db 0xc5
0000156B  C8C4C9CA          enter word 0xc9c4,byte 0xca
0000156F  CDCE              int byte 0xce
00001571  87C4              xchg ax,sp
00001573  58                pop ax
00001574  CD81              int byte 0x81
00001576  CE                into
00001577  86C5              xchg al,ch
00001579  47                inc di
0000157A  59                pop cx
0000157B  CD86              int byte 0x86
0000157D  C469CC            les bp,word [bx+di-0x34]
00001580  86C4              xchg al,ah
00001582  49                dec cx
00001583  CC                int3
00001584  88C6              mov dh,al
00001586  C6C4C9            mov ah,0xc9
00001589  49                dec cx
0000158A  CD87              int byte 0x87
0000158C  C448C7            les cx,word [bx+si-0x39]
0000158F  CACD87            retf word 0x87cd
00001592  C449C8            les cx,word [bx+di-0x38]
00001595  59                pop cx
00001596  CC                int3
00001597  85C4              test sp,ax
00001599  69CCCE85          imul cx,sp,0x85ce
0000159D  C4                db 0xc4
0000159E  CA47CC            retf word 0xcc47
000015A1  8881C4C9          mov [bx+di-0x363c],al
000015A5  C8CD88C9          enter word 0x88cd,byte 0xc9
000015A9  47                inc di
000015AA  CB                retf
000015AB  CD88              int byte 0x88
000015AD  C6                db 0xc6
000015AE  69C8CACC          imul cx,ax,0xccca
000015B2  85C4              test sp,ax
000015B4  49                dec cx
000015B5  CB                retf
000015B6  CC                int3
000015B7  87C4              xchg ax,sp
000015B9  57                push di
000015BA  8981C4C9          mov [bx+di-0x363c],ax
000015BE  CD81              int byte 0x81
000015C0  CE                into
000015C1  87C4              xchg ax,sp
000015C3  C8C9CD81          enter word 0xcdc9,byte 0x81
000015C7  CE                into
000015C8  88C4              mov ah,al
000015CA  49                dec cx
000015CB  47                inc di
000015CC  CC                int3
000015CD  86C5              xchg al,ch
000015CF  47                inc di
000015D0  49                dec cx
000015D1  CD86              int byte 0x86
000015D3  C4                db 0xc4
000015D4  CAC7CC            retf word 0xccc7
000015D7  8981C4C9          mov [bx+di-0x363c],ax
000015DB  CACC88            retf word 0x88cc
000015DE  C458CA            les bx,word [bx+si-0x36]
000015E1  CD88              int byte 0x88
000015E3  C4                db 0xc4
000015E4  CA57CC            retf word 0xcc57
000015E7  86C5              xchg al,ch
000015E9  C8CAC7CA          enter word 0xc7ca,byte 0xca
000015ED  CC                int3
000015EE  86C6              xchg al,dh
000015F0  CACC8A            retf word 0x8acc
000015F3  81C4C949          add sp,0x49c9
000015F7  CD87              int byte 0x87
000015F9  C458CA            les bx,word [bx+si-0x36]
000015FC  CD88              int byte 0x88
000015FE  43                inc bx
000015FF  C7                db 0xc7
00001600  CACCCE            retf word 0xcecc
00001603  86C5              xchg al,ch
00001605  C849CC94          enter word 0xcc49,byte 0x94
00001609  81C4C9CA          add sp,0xcac9
0000160D  C7                db 0xc7
0000160E  CD87              int byte 0x87
00001610  C458CA            les bx,word [bx+si-0x36]
00001613  CC                int3
00001614  8843CA            mov [bp+di-0x36],al
00001617  4B                dec bx
00001618  81CE85C6          or si,0xc685
0000161C  69CC9381          imul cx,sp,0x8193
00001620  C4                db 0xc4
00001621  C9                leave
00001622  49                dec cx
00001623  CC                int3
00001624  87C5              xchg ax,bp
00001626  58                pop ax
00001627  C7                db 0xc7
00001628  CD88              int byte 0x88
0000162A  43                inc bx
0000162B  CACCC3            retf word 0xc3cc
0000162E  CC                int3
0000162F  87C4              xchg ax,sp
00001631  CA4ACD            retf word 0xcd4a
00001634  C3                ret
00001635  CC                int3
00001636  C3                ret
00001637  CC                int3
00001638  8F81C4C8          pop word [bx+di-0x373c]
0000163C  CC                int3
0000163D  89C5              mov bp,ax
0000163F  48                dec ax
00001640  C7                db 0xc7
00001641  CD81              int byte 0x81
00001643  CE                into
00001644  874359            xchg ax,[bp+di+0x59]
00001647  C7                db 0xc7
00001648  CC                int3
00001649  86C4              xchg al,ah
0000164B  CC                int3
0000164C  C3                ret
0000164D  CC                int3
0000164E  8159CC8F81        sbb word [bx+di-0x34],0x818f
00001653  C8CBCC89          enter word 0xcccb,byte 0x89
00001657  C558CA            lds bx,word [bx+si-0x36]
0000165A  CC                int3
0000165B  884369            mov [bp+di+0x69],al
0000165E  C7                db 0xc7
0000165F  CC                int3
00001660  85C4              test sp,ax
00001662  59                pop cx
00001663  C7                db 0xc7
00001664  49                dec cx
00001665  C8050ACD          enter word 0xa05,byte 0xcd
00001669  8981C4CC          mov [bx+di-0x333c],ax
0000166D  81CE88C5          or si,0xc588
00001671  48                dec ax
00001672  C8CACD88          enter word 0xcdca,byte 0x88
00001676  43                inc bx
00001677  CA47C7            retf word 0xc747
0000167A  CC                int3
0000167B  86C4              xchg al,ah
0000167D  79C8              jns 0x1647
0000167F  59                pop cx
00001680  C84ACC8A          enter word 0xcc4a,byte 0x8a
00001684  81C4CC8A          add sp,0x8acc
00001688  C557CA            lds dx,word [bx-0x36]
0000168B  CDCE              int byte 0xce
0000168D  8743C8            xchg ax,[bp+di-0x38]
00001690  CAC8CC            retf word 0xccc8
00001693  87C4              xchg ax,sp
00001695  CAC879            retf word 0x79c8
00001698  C8CACC8D          enter word 0xccca,byte 0x8d
0000169C  81C4C5CC          add sp,0xccc5
000016A0  89C5              mov bp,ax
000016A2  47                inc di
000016A3  CB                retf
000016A4  CC                int3
000016A5  894347            mov [bp+di+0x47],ax
000016A8  CACCCE            retf word 0xcecc
000016AB  86C4              xchg al,ah
000016AD  C85947CB          enter word 0x4759,byte 0xcb
000016B1  CC                int3
000016B2  8F81C5C8          pop word [bx+di-0x373b]
000016B6  CB                retf
000016B7  CC                int3
000016B8  88C5              mov ch,al
000016BA  47                inc di
000016BB  CD81              int byte 0x81
000016BD  CE                into
000016BE  88C4              mov ah,al
000016C0  C8CAC7CA          enter word 0xc7ca,byte 0xca
000016C4  CC                int3
000016C5  87C4              xchg ax,sp
000016C7  C849C8CD          enter word 0xc849,byte 0xcd
000016CB  92                xchg ax,dx
000016CC  81C5C8CC          add bp,0xccc8
000016D0  89C5              mov bp,ax
000016D2  58                pop ax
000016D3  CD89              int byte 0x89
000016D5  C4                db 0xc4
000016D6  C849CC88          enter word 0xcc49,byte 0x88
000016DA  C6                db 0xc6
000016DB  69CBCD70          imul cx,bx,0x70cd
000016DF  C2C1C2            ret word 0xc2c1
000016E2  70C2              jo 0x16a6
000016E4  50                push ax
000016E5  81C547CC          add bp,0xcc47
000016E9  88C5              mov ch,al
000016EB  58                pop ax
000016EC  CACD88            retf word 0x88cd
000016EF  C4                db 0xc4
000016F0  C549CC            lds cx,word [bx+di-0x34]
000016F3  89C5              mov bp,ax
000016F5  CACBCC            retf word 0xcccb
000016F8  93                xchg ax,bx
000016F9  66003D            o32 add [di],bh
000016FC  7C00              jl 0x16fe
000016FE  3D8000            cmp ax,0x80
00001701  3C9D              cmp al,0x9d
00001703  0010              add [bx+si],dl
00001705  9D                popf
00001706  0027              add [bx],ah
00001708  FF                db 0xff
00001709  FF                db 0xff
0000170A  FF                db 0xff
0000170B  FF4240            inc word [bp+si+0x40]
0000170E  B93E00            mov cx,0x3e
00001711  46                inc si
00001712  007140            add [bx+di+0x40],dh
00001715  B56D              mov ch,0x6d
00001717  007800            add [bx+si+0x0],bh
0000171A  7580              jnz 0x169c
0000171C  A7                cmpsw
0000171D  7200              jc 0x171f
0000171F  7900              jns 0x1721
00001721  81809179008A      add word [bx+si+0x7991],0x8a00
00001727  00874088          add [bx-0x77c0],al
0000172B  8400              test [bx+si],al
0000172D  8C00              mov word [bx+si],es
0000172F  FF                db 0xff
00001730  FF2F              jmp word far [bx]
00001732  D7                xlatb
00001733  0103              add [bp+di],ax
00001735  2C44              sub al,0x44
00001737  61                popa
00001738  6E                outsb
00001739  67657221          gs a32 jc 0x175e
0000173D  212F              and [bx],bp
0000173F  20446F            and [si+0x6f],al
00001742  6E                outsb
00001743  5C                pop sp
00001744  7420              jz 0x1766
00001746  6F                outsw
00001747  7065              jo 0x17ae
00001749  6E                outsb
0000174A  2F                das
0000174B  1474              adc al,0x74
0000174D  686520            push word 0x2065
00001750  626F78            bound bp,[bx+0x78]
00001753  206168            and [bx+di+0x68],ah
00001756  6561              gs popa
00001758  642EFF06003D      inc word [cs:0x3d00]
0000175E  C002D1            rol byte [bp+si],byte 0xd1
00001761  00FF              add bh,bh
00001763  00FF              add bh,bh
00001765  FF                db 0xff
00001766  FF5F00            call word far [bx+0x0]
00001769  234203            and ax,[bp+si+0x3]
0000176C  0F0023            verr [bp+di]
0000176F  000B              add [bp+di],cl
00001771  00809200          add [bx+si+0x92],al
00001775  23820342          and ax,[bp+si+0x4203]
00001779  0023              add [bp+di],ah
0000177B  00FF              add bh,bh
0000177D  FF                db 0xff
0000177E  FFAB0036          jmp word far [bp+di+0x3600]
00001782  0104              add [si],ax
00001784  1800              sbb [bx+si],al
00001786  1200              adc al,[bx+si]
00001788  0B00              or ax,[bx+si]
0000178A  40                inc ax
0000178B  BE002F            mov si,0x2f00
0000178E  C20429            ret word 0x2904
00001791  0012              add [bp+si],dl
00001793  00FF              add bh,bh
00001795  FF                db 0xff
00001796  FFCD              dec bp
00001798  002F              add [bx],ch
0000179A  40                inc ax
0000179B  051500            add ax,0x15
0000179E  06                push es
0000179F  000B              add [bp+di],cl
000017A1  0020              add [bx+si],ah
000017A3  FF                db 0xff
000017A4  FF08              dec word [bx+si]
000017A6  00FF              add bh,bh
000017A8  13C0              adc ax,ax
000017AA  FF                db 0xff
000017AB  FF                db 0xff
000017AC  FF                db 0xff
000017AD  FF0A              dec word [bp+si]
000017AF  00805DD9          add [bx+si-0x26a3],al
000017B3  0000              add [bx+si],al
000017B5  5A                pop dx
000017B6  D903              fld dword [bp+di]
000017B8  29FF              sub di,di
000017BA  FF0A              dec word [bp+si]
000017BC  004084            add [bx+si-0x7c],al
000017BF  D900              fld dword [bx+si]
000017C1  FF8FD9FF          dec word [bx-0x27]
000017C5  FF                db 0xff
000017C6  FF                db 0xff
000017C7  FF0A              dec word [bp+si]
000017C9  0020              add [bx+si],ah
000017CB  44                inc sp
000017CC  DA00              fiadd dword [bx+si]
000017CE  FF4FDA            dec word [bx-0x26]
000017D1  FF                db 0xff
000017D2  FF                db 0xff
000017D3  FF                db 0xff
000017D4  FF0A              dec word [bp+si]
000017D6  0010              add [bx+si],dl
000017D8  FD                std
000017D9  DA00              fiadd dword [bx+si]
000017DB  00FF              add bh,bh
000017DD  FF0A              dec word [bp+si]
000017DF  0008              add [bx+si],cl
000017E1  14DB              adc al,0xdb
000017E3  00FF              add bh,bh
000017E5  1F                pop ds
000017E6  DB                db 0xdb
000017E7  FF                db 0xff
000017E8  FF                db 0xff
000017E9  FF                db 0xff
000017EA  FF0A              dec word [bp+si]
000017EC  0004              add [si],al
000017EE  44                inc sp
000017EF  DB00              fild dword [bx+si]
000017F1  FF4FDB            dec word [bx-0x25]
000017F4  FF                db 0xff
000017F5  FF                db 0xff
000017F6  FF                db 0xff
000017F7  FF0B              dec word [bp+di]
000017F9  008066D7          add [bx+si-0x289a],al
000017FD  C203FF            ret word 0xff03
00001800  FF0B              dec word [bp+di]
00001802  00407E            add [bx+si+0x7e],al
00001805  D7                xlatb
00001806  8104FFFF          add word [si],0xffff
0000180A  0B00              or ax,[bx+si]
0000180C  2096D7C0          and [bp-0x3f29],dl
00001810  05FFFF            add ax,0xffff
00001813  0B00              or ax,[bx+si]
00001815  04CD              add al,0xcd
00001817  D800              fadd dword [bx+si]
00001819  00FF              add bh,bh
0000181B  FF                db 0xff
0000181C  FF                db 0xff
0000181D  FF16AF02          call word near [0x2af]
00001821  114361            adc [bp+di+0x61],ax
00001824  7665              jna 0x188b
00001826  726E              jc 0x1896
00001828  206F66            and [bx+0x66],ch
0000182B  205065            and [bx+si+0x65],dl
0000182E  6C                insb
0000182F  6967726F0B        imul sp,[bx+0x72],0xb6f
00001834  0001              add [bx+di],al
00001836  0202              add al,[bp+si]
00001838  0200              add al,[bx+si]
0000183A  13FF              adc di,di
0000183C  0400              add al,0x0
0000183E  0000              add [bx+si],al
00001840  0000              add [bx+si],al
00001842  0002              add [bp+si],al
00001844  0013              add [bp+di],dl
00001846  0400              add al,0x0
00001848  0B00              or ax,[bx+si]
0000184A  32FF              xor bh,bh
0000184C  0200              add al,[bx+si]
0000184E  0000              add [bx+si],al
00001850  0000              add [bx+si],al
00001852  000B              add [bp+di],cl
00001854  0032              add [bp+si],dh
00001856  0200              add al,[bx+si]
00001858  0C00              or al,0x0
0000185A  0BFF              or di,di
0000185C  0200              add al,[bx+si]
0000185E  0000              add [bx+si],al
00001860  0000              add [bx+si],al
00001862  000C              add [si],cl
00001864  000B              add [bp+di],cl
00001866  0200              add al,[bx+si]
00001868  1000              adc [bx+si],al
0000186A  19FF              sbb di,di
0000186C  0300              add ax,[bx+si]
0000186E  0000              add [bx+si],al
00001870  0000              add [bx+si],al
00001872  0010              add [bx+si],dl
00001874  0019              add [bx+di],bl
00001876  0300              add ax,[bx+si]
00001878  1400              adc al,0x0
0000187A  28FF              sub bh,bh
0000187C  0200              add al,[bx+si]
0000187E  0000              add [bx+si],al
00001880  0000              add [bx+si],al
00001882  0014              add [si],dl
00001884  0028              add [bx+si],ch
00001886  0200              add al,[bx+si]
00001888  2000              and [bx+si],al
0000188A  28FF              sub bh,bh
0000188C  0200              add al,[bx+si]
0000188E  0000              add [bx+si],al
00001890  0000              add [bx+si],al
00001892  0020              add [bx+si],ah
00001894  0028              add [bx+si],ch
00001896  0200              add al,[bx+si]
00001898  2100              and [bx+si],ax
0000189A  1BFF              sbb di,di
0000189C  0300              add ax,[bx+si]
0000189E  0000              add [bx+si],al
000018A0  0000              add [bx+si],al
000018A2  0021              add [bx+di],ah
000018A4  001B              add [bp+di],bl
000018A6  0300              add ax,[bx+si]
000018A8  2400              and al,0x0
000018AA  37                aaa
000018AB  FF02              inc word [bp+si]
000018AD  0000              add [bx+si],al
000018AF  0000              add [bx+si],al
000018B1  0000              add [bx+si],al
000018B3  2400              and al,0x0
000018B5  37                aaa
000018B6  0200              add al,[bx+si]
000018B8  26000D            add [es:di],cl
000018BB  FF02              inc word [bp+si]
000018BD  0000              add [bx+si],al
000018BF  0000              add [bx+si],al
000018C1  0000              add [bx+si],al
000018C3  26000D            add [es:di],cl
000018C6  0200              add al,[bx+si]
000018C8  2F                das
000018C9  003F              add [bx],bh
000018CB  FF                db 0xff
000018CC  D000              rol byte [bx+si],0x0
000018CE  0020              add [bx+si],ah
000018D0  0018              add [bx+si],bl
000018D2  000B              add [bp+di],cl
000018D4  0004              add [si],al
000018D6  0000              add [bx+si],al
000018D8  3400              xor al,0x0
000018DA  37                aaa
000018DB  FF02              inc word [bp+si]
000018DD  0000              add [bx+si],al
000018DF  0000              add [bx+si],al
000018E1  0000              add [bx+si],al
000018E3  3400              xor al,0x0
000018E5  37                aaa
000018E6  0200              add al,[bx+si]
000018E8  37                aaa
000018E9  000D              add [di],cl
000018EB  FF03              inc word [bp+di]
000018ED  0000              add [bx+si],al
000018EF  0000              add [bx+si],al
000018F1  0000              add [bx+si],al
000018F3  37                aaa
000018F4  000D              add [di],cl
000018F6  0300              add ax,[bx+si]
000018F8  3800              cmp [bx+si],al
000018FA  2CFF              sub al,0xff
000018FC  0200              add al,[bx+si]
000018FE  0000              add [bx+si],al
00001900  0000              add [bx+si],al
00001902  0038              add [bx+si],bh
00001904  002C              add [si],ch
00001906  0200              add al,[bx+si]
00001908  43                inc bx
00001909  0022              add [bp+si],ah
0000190B  FF                db 0xff
0000190C  7C00              jl 0x190e
0000190E  0000              add [bx+si],al
00001910  0000              add [bx+si],al
00001912  00FF              add bh,bh
00001914  FF                db 0xff
00001915  FF00              inc word [bx+si]
00001917  004400            add [si+0x0],al
0000191A  2AFF              sub bh,bh
0000191C  0000              add [bx+si],al
0000191E  0010              add [bx+si],dl
00001920  0000              add [bx+si],al
00001922  004400            add [si+0x0],al
00001925  2A00              sub al,[bx+si]
00001927  004400            add [si+0x0],al
0000192A  2CFF              sub al,0xff
0000192C  0100              add [bx+si],ax
0000192E  0010              add [bx+si],dl
00001930  0000              add [bx+si],al
00001932  004400            add [si+0x0],al
00001935  2C01              sub al,0x1
00001937  004700            add [bx+0x0],al
0000193A  0DFF02            or ax,0x2ff
0000193D  0000              add [bx+si],al
0000193F  0000              add [bx+si],al
00001941  0000              add [bx+si],al
00001943  47                inc di
00001944  000D              add [di],cl
00001946  0200              add al,[bx+si]
00001948  47                inc di
00001949  0017              add [bx],dl
0000194B  FF02              inc word [bp+si]
0000194D  0000              add [bx+si],al
0000194F  0000              add [bx+si],al
00001951  0000              add [bx+si],al
00001953  47                inc di
00001954  0017              add [bx],dl
00001956  0200              add al,[bx+si]
00001958  47                inc di
00001959  0022              add [bp+si],ah
0000195B  FF7300            push word [bp+di+0x0]
0000195E  0029              add [bx+di],ch
00001960  0005              add [di],al
00001962  000A              add [bp+si],cl
00001964  00800000          add [bx+si+0x0],al
00001968  52                push dx
00001969  0037              add [bx],dh
0000196B  FF02              inc word [bp+si]
0000196D  0000              add [bx+si],al
0000196F  0000              add [bx+si],al
00001971  0000              add [bx+si],al
00001973  52                push dx
00001974  0037              add [bx],dh
00001976  0200              add al,[bx+si]
00001978  53                push bx
00001979  0013              add [bp+di],dl
0000197B  FF04              inc word [si]
0000197D  0000              add [bx+si],al
0000197F  0000              add [bx+si],al
00001981  0000              add [bx+si],al
00001983  53                push bx
00001984  0013              add [bp+di],dl
00001986  0400              add al,0x0
00001988  59                pop cx
00001989  002C              add [si],ch
0000198B  FF7600            push word [bp+0x0]
0000198E  0020              add [bx+si],ah
00001990  0000              add [bx+si],al
00001992  000A              add [bp+si],cl
00001994  004000            add [bx+si+0x0],al
00001997  005900            add [bx+di+0x0],bl
0000199A  31FF              xor di,di
0000199C  0400              add al,0x0
0000199E  0000              add [bx+si],al
000019A0  0000              add [bx+si],al
000019A2  005900            add [bx+di+0x0],bl
000019A5  3104              xor [si],ax
000019A7  005D00            add [di+0x0],bl
000019AA  0E                push cs
000019AB  FF03              inc word [bp+di]
000019AD  0000              add [bx+si],al
000019AF  0000              add [bx+si],al
000019B1  0000              add [bx+si],al
000019B3  5D                pop bp
000019B4  000E0300          add [0x3],cl
000019B8  6B0017            imul ax,[bx+si],0x17
000019BB  FF00              inc word [bx+si]
000019BD  0000              add [bx+si],al
000019BF  1000              adc [bx+si],al
000019C1  0000              add [bx+si],al
000019C3  6B0017            imul ax,[bx+si],0x17
000019C6  0000              add [bx+si],al
000019C8  6B0019            imul ax,[bx+si],0x19
000019CB  FF01              inc word [bx+di]
000019CD  0000              add [bx+si],al
000019CF  1000              adc [bx+si],al
000019D1  0000              add [bx+si],al
000019D3  6B0019            imul ax,[bx+si],0x19
000019D6  0100              add [bx+si],ax
000019D8  6D                insw
000019D9  000EFF02          add [0x2ff],cl
000019DD  0000              add [bx+si],al
000019DF  0000              add [bx+si],al
000019E1  0000              add [bx+si],al
000019E3  6D                insw
000019E4  000E0200          add [0x2],cl
000019E8  82                db 0x82
000019E9  001F              add [bx],bl
000019EB  FF04              inc word [si]
000019ED  0000              add [bx+si],al
000019EF  0000              add [bx+si],al
000019F1  0000              add [bx+si],al
000019F3  82                db 0x82
000019F4  001F              add [bx],bl
000019F6  0400              add al,0x0
000019F8  82                db 0x82
000019F9  0025              add [di],ah
000019FB  FF02              inc word [bp+si]
000019FD  0000              add [bx+si],al
000019FF  0000              add [bx+si],al
00001A01  0000              add [bx+si],al
00001A03  82                db 0x82
00001A04  0025              add [di],ah
00001A06  0200              add al,[bx+si]
00001A08  8900              mov [bx+si],ax
00001A0A  2EFF04            inc word [cs:si]
00001A0D  0000              add [bx+si],al
00001A0F  0000              add [bx+si],al
00001A11  0000              add [bx+si],al
00001A13  8900              mov [bx+si],ax
00001A15  2E0400            cs add al,0x0
00001A18  8E00              mov es,word [bx+si]
00001A1A  38FF              cmp bh,bh
00001A1C  0200              add al,[bx+si]
00001A1E  0000              add [bx+si],al
00001A20  0000              add [bx+si],al
00001A22  008E0038          add [bp+0x3800],cl
00001A26  0200              add al,[bx+si]
00001A28  8F00              pop word [bx+si]
00001A2A  1CFF              sbb al,0xff
00001A2C  0400              add al,0x0
00001A2E  0000              add [bx+si],al
00001A30  0000              add [bx+si],al
00001A32  008F001C          add [bx+0x1c00],cl
00001A36  0400              add al,0x0
00001A38  93                xchg ax,bx
00001A39  000EFF02          add [0x2ff],cl
00001A3D  0000              add [bx+si],al
00001A3F  0000              add [bx+si],al
00001A41  0000              add [bx+si],al
00001A43  93                xchg ax,bx
00001A44  000E0200          add [0x2],cl
00001A48  95                xchg ax,bp
00001A49  002C              add [si],ch
00001A4B  FF7600            push word [bp+0x0]
00001A4E  0020              add [bx+si],ah
00001A50  0000              add [bx+si],al
00001A52  000A              add [bp+si],cl
00001A54  0020              add [bx+si],ah
00001A56  0000              add [bx+si],al
00001A58  98                cbw
00001A59  0007              add [bx],al
00001A5B  FF04              inc word [si]
00001A5D  0000              add [bx+si],al
00001A5F  0000              add [bx+si],al
00001A61  0000              add [bx+si],al
00001A63  98                cbw
00001A64  0007              add [bx],al
00001A66  0400              add al,0x0
00001A68  9C                pushf
00001A69  0032              add [bp+si],dh
00001A6B  FF04              inc word [si]
00001A6D  0000              add [bx+si],al
00001A6F  0000              add [bx+si],al
00001A71  0000              add [bx+si],al
00001A73  9C                pushf
00001A74  0032              add [bp+si],dh
00001A76  0400              add al,0x0
00001A78  9C                pushf
00001A79  0038              add [bx+si],bh
00001A7B  FF03              inc word [bp+di]
00001A7D  0000              add [bx+si],al
00001A7F  0000              add [bx+si],al
00001A81  0000              add [bx+si],al
00001A83  9C                pushf
00001A84  0038              add [bx+si],bh
00001A86  0300              add ax,[bx+si]
00001A88  A20033            mov [0x3300],al
00001A8B  FF04              inc word [si]
00001A8D  0000              add [bx+si],al
00001A8F  0000              add [bx+si],al
00001A91  0000              add [bx+si],al
00001A93  A20033            mov [0x3300],al
00001A96  0400              add al,0x0
00001A98  A30002            mov [0x200],ax
00001A9B  FF03              inc word [bp+di]
00001A9D  0000              add [bx+si],al
00001A9F  0000              add [bx+si],al
00001AA1  0000              add [bx+si],al
00001AA3  A30002            mov [0x200],ax
00001AA6  0300              add ax,[bx+si]
00001AA8  A4                movsb
00001AA9  0009              add [bx+di],cl
00001AAB  FF04              inc word [si]
00001AAD  0000              add [bx+si],al
00001AAF  0000              add [bx+si],al
00001AB1  0000              add [bx+si],al
00001AB3  A4                movsb
00001AB4  0009              add [bx+di],cl
00001AB6  0400              add al,0x0
00001AB8  A800              test al,0x0
00001ABA  18FF              sbb bh,bh
00001ABC  0300              add ax,[bx+si]
00001ABE  0000              add [bx+si],al
00001AC0  0000              add [bx+si],al
00001AC2  00A80018          add [bx+si+0x1800],ch
00001AC6  0300              add ax,[bx+si]
00001AC8  AC                lodsb
00001AC9  0022              add [bp+si],ah
00001ACB  FF04              inc word [si]
00001ACD  0000              add [bx+si],al
00001ACF  0000              add [bx+si],al
00001AD1  0000              add [bx+si],al
00001AD3  AC                lodsb
00001AD4  0022              add [bp+si],ah
00001AD6  0400              add al,0x0
00001AD8  B000              mov al,0x0
00001ADA  20FF              and bh,bh
00001ADC  0400              add al,0x0
00001ADE  0000              add [bx+si],al
00001AE0  0000              add [bx+si],al
00001AE2  00B00020          add [bx+si+0x2000],dh
00001AE6  0400              add al,0x0
00001AE8  B300              mov bl,0x0
00001AEA  02FF              add bh,bh
00001AEC  0300              add ax,[bx+si]
00001AEE  0000              add [bx+si],al
00001AF0  0000              add [bx+si],al
00001AF2  00B30002          add [bp+di+0x200],dh
00001AF6  0300              add ax,[bx+si]
00001AF8  B300              mov bl,0x0
00001AFA  18FF              sbb bh,bh
00001AFC  D000              rol byte [bx+si],0x0
00001AFE  0020              add [bx+si],ah
00001B00  0018              add [bx+si],bl
00001B02  000A              add [bp+si],cl
00001B04  0010              add [bx+si],dl
00001B06  0000              add [bx+si],al
00001B08  B80018            mov ax,0x1800
00001B0B  FF02              inc word [bp+si]
00001B0D  0000              add [bx+si],al
00001B0F  0000              add [bx+si],al
00001B11  0000              add [bx+si],al
00001B13  B80018            mov ax,0x1800
00001B16  0200              add al,[bx+si]
00001B18  B9000B            mov cx,0xb00
00001B1B  FF7300            push word [bp+di+0x0]
00001B1E  0120              add [bx+si],sp
00001B20  0000              add [bx+si],al
00001B22  000A              add [bp+si],cl
00001B24  0008              add [bx+si],cl
00001B26  0000              add [bx+si],al
00001B28  C3                ret
00001B29  003F              add [bx],bh
00001B2B  FF02              inc word [bp+si]
00001B2D  0000              add [bx+si],al
00001B2F  0000              add [bx+si],al
00001B31  0000              add [bx+si],al
00001B33  C3                ret
00001B34  003F              add [bx],bh
00001B36  0200              add al,[bx+si]
00001B38  C60005            mov byte [bx+si],0x5
00001B3B  FF04              inc word [si]
00001B3D  0000              add [bx+si],al
00001B3F  0000              add [bx+si],al
00001B41  0000              add [bx+si],al
00001B43  C60005            mov byte [bx+si],0x5
00001B46  0400              add al,0x0
00001B48  C9                leave
00001B49  0025              add [di],ah
00001B4B  FF7300            push word [bp+di+0x0]
00001B4E  0320              add sp,[bx+si]
00001B50  0000              add [bx+si],al
00001B52  000A              add [bp+si],cl
00001B54  0004              add [si],al
00001B56  0000              add [bx+si],al
00001B58  D200              rol byte [bx+si],cl
00001B5A  25FF02            and ax,0x2ff
00001B5D  0000              add [bx+si],al
00001B5F  0000              add [bx+si],al
00001B61  0000              add [bx+si],al
00001B63  D200              rol byte [bx+si],cl
00001B65  250200            and ax,0x2
00001B68  D300              rol word [bx+si],cl
00001B6A  0BFF              or di,di
00001B6C  0200              add al,[bx+si]
00001B6E  0000              add [bx+si],al
00001B70  0000              add [bx+si],al
00001B72  00D3              add bl,dl
00001B74  000B              add [bp+di],cl
00001B76  0200              add al,[bx+si]
00001B78  D300              rol word [bx+si],cl
00001B7A  17                pop ss
00001B7B  FF00              inc word [bx+si]
00001B7D  0000              add [bx+si],al
00001B7F  1000              adc [bx+si],al
00001B81  0000              add [bx+si],al
00001B83  D300              rol word [bx+si],cl
00001B85  17                pop ss
00001B86  0000              add [bx+si],al
00001B88  D300              rol word [bx+si],cl
00001B8A  19FF              sbb di,di
00001B8C  0100              add [bx+si],ax
00001B8E  0010              add [bx+si],dl
00001B90  0000              add [bx+si],al
00001B92  00D3              add bl,dl
00001B94  0019              add [bx+di],bl
00001B96  0100              add [bx+si],ax
00001B98  D800              fadd dword [bx+si]
00001B9A  26FF02            inc word [es:bp+si]
00001B9D  0000              add [bx+si],al
00001B9F  0000              add [bx+si],al
00001BA1  0000              add [bx+si],al
00001BA3  D800              fadd dword [bx+si]
00001BA5  260200            add al,[es:bx+si]
00001BA8  DE00              fiadd word [bx+si]
00001BAA  19FF              sbb di,di
00001BAC  0300              add ax,[bx+si]
00001BAE  0000              add [bx+si],al
00001BB0  0000              add [bx+si],al
00001BB2  00DE              add dh,bl
00001BB4  0019              add [bx+di],bl
00001BB6  0300              add ax,[bx+si]
00001BB8  FF                db 0xff
00001BB9  FF                db 0xff
