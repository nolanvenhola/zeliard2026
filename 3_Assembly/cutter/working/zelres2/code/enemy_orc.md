# ENEMY_ORC - Analysis

**Source:** `chunk_14.bin`  
**Size:** 1.0 KB  
**Functions:** 6  
**Note:** 16-bit x86 real mode. `CS:0x10C` = chunk loader, `0xFF00+` = game state globals.

> For Ghidra decompilation, open in Cutter: Architecture=x86, Bits=16, OS=dos

## Function List
```
0x00000000    4 113          fcn.00000000
0x00000071    1 11           fcn.00000071
0x00000156    5 37           fcn.00000156
0x000001db   12 165  -> 89   fcn.000001db
0x000001fe    7 58           fcn.000001fe
0x0000028c    3 17           fcn.0000028c
```

## Strings
```
nth      paddr      vaddr len size section type   string                                                                                         
-------------------------------------------------------------------------------------------------------------------------------------------------
  0 0x00000125 0x00000125   5    6         ibm037 ßSVY^
  1 0x00000138 0x00000138  30   30         ascii  ABMNWXABklmnABopqrsBtuvwxyz{|w
  2 0x00000182 0x00000182   7    8         ascii  \a\b\t\n\v\f\r
  3 0x0000019c 0x0000019c  63   63         ascii   !"#$%&&'(&)*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTSUVSWXYZ
  4 0x00000239 0x00000239   5    5         ascii  01;<=
  5 0x0000023f 0x0000023f   5    5         ascii  [\]^_
  6 0x00000245 0x00000245   5    5         ascii  `abcd
  7 0x0000029f 0x0000029f  10   11         ascii  CHURCH.GRP
  8 0x000002ad 0x000002ad  69   69         ascii  \nThe Church\fBrave Knight, whenever you\re tired come to this church./
  9 0x000002f6 0x000002f6  57   57         ascii  \fBrave Knight, whenever you\re weary, come here to rest. 
 10 0x00000333 0x00000333  54   54         ascii  The Holy Spirit will help you to regain your strength.
 11 0x0000036e 0x0000036e  94   94         ascii  Brave Knight, you look fatigued from battle. Why not rest awhile and let the Spirit heal you. 
 12 0x000003ce 0x000003ce  21   21         ascii  /May God go with you.
```

## Function Disassembly

### Function 0x00000000
```asm
┌ fcn.00000000(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0000      out   3, al
│           ; DATA XREF from fcn.000001fe @ 0x218
│           ; DATA XREFS from fcn.000001db @ 0x260, 0x264
│           0000:0002      add   byte [bx + si], al                    ; arg3
│           0000:0004      add   al, 0xa0
│           0000:0006      xlatb
│           0000:0007      mov   ax, word [0x68e]                      ; [0x68e:2]=0xffff ; 1678
│           0000:000a      sub   al, 0xff
│           ; DATA XREFS from fcn.00000156 @ 0x160, 0x163, 0x171
│           0000:000c      mov   di, 0x8000
│           0000:000f      mov   si, 0xa299
│           0000:0012      mov   al, 2
│           0000:0014      call  word cs:[0x10c]
│           0000:0019      push  ds
│           0000:001a      mov   ds, word cs:[0xff2c]
│           0000:001f      mov   si, 0x8000
│           0000:0022      mov   cx, 0x100
│           ; DATA XREF from fcn.00000156 @ +0x4a
│           0000:0025      call  word cs:[0x2044]
│           0000:002a      pop   ds
│           0000:002b      mov   byte [0xff4e], 0
│           0000:0030      mov   byte [0xff4f], 0
│           ; DATA XREF from fcn.00000156 @ +0x5c
│           ; DATA XREF from fcn.000001fe @ +0x82
│           0000:0035      call  word cs:[0x2002]
│           0000:003a      call  word cs:[0x2012]
│           0000:003f      mov   si, 0xa2a6
│           ; DATA XREF from fcn.0000028c @ +0x6a
│           0000:0042      call  word cs:[0x2010]
│           0000:0047      call  fcn.00000156                          ; fcn.00000156
│           0000:004a      mov   bx, 0xd60                             ; 3424
│           0000:004d      mov   cx, 0x3637                            ; '76'
│           0000:0050      mov   al, 0xff
│           0000:0052      call  word cs:[0x2000]
│           0000:0057      call  fcn.0000028c                          ; fcn.0000028c
│           0000:005a      mov   word [0xff4c], si
│           ; CODE XREF from fcn.00000000 @ 0x6a
│       ┌─> 0000:005e      call  word cs:[0x6004]
│       ╎   0000:0063      cmp   al, 0xff
│      ┌──< 0000:0065      je    0x6c
│      │╎   0000:0067      call  fcn.00000071                          ; fcn.00000071
│      │└─< 0000:006a      jmp   0x5e
└      └──> 0000:006c      jmp   word cs:[0x2040]
```

### Function 0x00000071
```asm
; CALL XREF from fcn.00000000 @ 0x67
┌ fcn.00000071(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:0071      mov   bl, al
│           0000:0073      xor   bh, bh
│           0000:0075      add   bx, bx                                ; arg3
└           0000:0077      jmp   word cs:[bx - 0x5f88]
```

### Function 0x00000156
```asm
; CALL XREF from fcn.00000000 @ 0x47
┌ fcn.00000156();
│           0000:0156      mov   si, 0xa177
│           0000:0159      mov   bx, 0xe17                             ; 3607
│           0000:015c      mov   cx, 8
│       ┌─> 0000:015f      push  cx
│       ╎   0000:0160      mov   cx, 0xc
│      ┌──> 0000:0163      push  cx
│      ╎╎   0000:0164      push  bx
│      ╎╎   0000:0165      lodsb al, byte [si]
│      ╎╎   0000:0166      call  word cs:[0x3016]
│      ╎╎   0000:016b      pop   bx
│      ╎╎   0000:016c      inc   bh
│      ╎╎   0000:016e      pop   cx
│      └──< 0000:016f      loop  0x163
│       ╎   0000:0171      sub   bh, 0xc
│       ╎   0000:0174      add   bl, 8
│       ╎   0000:0177      pop   cx
│       └─< 0000:0178      loop  0x15f
└           0000:017a      ret
```

### Function 0x000001db
```asm
; CALL XREFS from fcn.00000071 @ +0x21, +0x45, +0xb7
┌ fcn.000001db();
│           0000:01db      cmp   word [0xff50], 0x20
│       ┌─< 0000:01e0      jae   0x1e3
│       │   0000:01e2      ret
│       └─> 0000:01e3      mov   word [0xff50], 0
│           0000:01e9      inc   byte [0xa3e5]
│           0000:01ed      cmp   byte [0xa3e5], 3
│       ┌─< 0000:01f2      jne   0x1f9
│       │   0000:01f4      mov   byte [0xa3e5], 0
│       └─> 0000:01f9      call  fcn.000001fe                          ; fcn.000001fe
│       ┌─< 0000:01fc      jmp   0x24a
        │   ; CALL XREF from fcn.000001db @ 0x1f9
..
│       │   ; CODE XREF from fcn.000001db @ 0x1fc
│       └─> 0000:024a      mov   bl, byte [0xa3e5]                     ; arg3
│           0000:024e      xor   bh, bh
│           0000:0250      add   bx, bx
│           0000:0252      add   bx, bx
│           0000:0254      mov   si, bx
│           0000:0256      add   si, 0xa27c
│           0000:025a      mov   bx, 0x1537
│           0000:025d      mov   cx, 2
│       ┌─> 0000:0260      push  cx
│       ╎   0000:0261      mov   cx, 2
│      ┌──> 0000:0264      push  cx
│      ╎╎   0000:0265      push  bx
│      ╎╎   0000:0266      lodsb al, byte [si]
│      ╎╎   0000:0267      cmp   al, 0xff
│     ┌───< 0000:0269      je    0x270
│     │╎╎   0000:026b      call  word cs:[0x3016]
│     └───> 0000:0270      pop   bx
│      ╎╎   0000:0271      inc   bh
│      ╎╎   0000:0273      pop   cx
│      └──< 0000:0274      loop  0x264
│       ╎   0000:0276      sub   bh, 2
│       ╎   0000:0279      add   bl, 8
│       ╎   0000:027c      pop   cx
│       └─< 0000:027d      loop  0x260
└           0000:027f      ret
```

### Function 0x000001fe
```asm
; CALL XREF from fcn.000001db @ 0x1f9
┌ fcn.000001fe(int16_t arg3);
│           ; arg int16_t arg3 @ bx
│           0000:01fe      mov   bl, byte [0xa3e5]
│           0000:0202      xor   bh, bh
│           0000:0204      add   bx, bx                                ; arg3
│           0000:0206      mov   ax, bx                                ; arg3
│           0000:0208      add   bx, bx                                ; arg3
│           0000:020a      add   bx, ax                                ; arg3
│           0000:020c      mov   si, bx                                ; arg3
│           0000:020e      add   si, 0xa234
│           0000:0212      mov   bx, 0x1037
│           0000:0215      mov   cx, 2
│       ┌─> 0000:0218      push  cx
│       ╎   0000:0219      mov   cx, 3
│      ┌──> 0000:021c      push  cx
│      ╎╎   0000:021d      push  bx
│      ╎╎   0000:021e      lodsb al, byte [si]
│      ╎╎   0000:021f      cmp   al, 0xff
│     ┌───< 0000:0221      je    0x228
│     │╎╎   0000:0223      call  word cs:[0x3016]
│     └───> 0000:0228      pop   bx
│      ╎╎   0000:0229      inc   bh
│      ╎╎   0000:022b      pop   cx
│      └──< 0000:022c      loop  0x21c
│       ╎   0000:022e      sub   bh, 3
│       ╎   0000:0231      add   bl, 8
│       ╎   0000:0234      pop   cx
│       └─< 0000:0235      loop  0x218
└           0000:0237      ret
```

### Function 0x0000028c
```asm
; CALL XREF from fcn.00000000 @ 0x57
┌ fcn.0000028c();
│           0000:028c      mov   ax, word [0x90]                       ; [0x90:2]=255
│           0000:028f      cmp   ax, word [0xb2]                       ; [0xb2:2]=0x1a06
│           0000:0293      mov   si, 0xa2b4
│       ┌─< 0000:0296      jne   0x299
│       │   0000:0298      ret
│       └─> 0000:0299      mov   si, 0xa2f2
└           0000:029c      ret
```

## Cross-References (callers)
```json
  0x00000071:
[{"from":103,"to":113,"type":"CALL"}]
  0x00000156:
[{"from":71,"to":342,"type":"CALL"}]
  0x000001db:
[{"from":146,"to":475,"type":"CALL"},{"from":182,"to":475,"type":"CALL"},{"from":296,"to":475,"type":"CALL"}]
  0x000001fe:
[{"from":505,"to":510,"type":"CALL"}]
  0x0000028c:
[{"from":87,"to":652,"type":"CALL"}]
```