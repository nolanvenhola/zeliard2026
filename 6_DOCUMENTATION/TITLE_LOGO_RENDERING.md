# Title Logo Rendering - Complete Assembly Analysis

## Overview
The Zeliard title logo is NOT a single full-screen image. It's composed of 3 small images (chunks 30-32 from zelres1) that are:
1. Decompressed (Format 6/7 RLE)
2. Decoded (Bitmap + XOR differential to 3-plane bitplane)
3. Positioned at specific screen coordinates
4. Rendered to VGA framebuffer

## File Sizes
- **chunk_30.bin**: 2,835 bytes (ttl1.grp)
- **chunk_31.bin**: 7,803 bytes (ttl2.grp)
- **chunk_32.bin**: 6,903 bytes (ttl3.grp)
- **Total**: 17,541 bytes compressed
- **MEMDUMP_logo.BIN**: 64,000 bytes (VGA framebuffer = 320x200 screen)

## Assembly Functions

### Image Renderer (0xE71)
```asm
00000E71  mov al,0x22      ; stride = 34 bytes per row
00000E75  mul bl           ; row * 34
00000E77  mov bl,bh        ; column from BH
00000E7B  add ax,bx        ; offset = row*34 + column
00000E7D  add di,ax        ; position in destination
00000E81  mov cl,ch        ; height from CH
00000E85  rep movsb        ; copy width bytes
00000E88  add di,0x22      ; next row (stride 34)
00000E8C  dec cl           ; decrement row counter
00000E8E  jnz 0xe7f        ; loop until done
```

**Parameters:**
- **ES:DI** = destination buffer base
- **DS:SI** = source image data (3-plane format)
- **BX** = position: BL = row, BH = column
- **CX** = size: CH = height, CL = width

**Critical:** Stride is 34 bytes, NOT 320! This means images are in a temporary buffer with 34-byte rows, not directly in VGA format.

### Stage 1: Format 6/7 RLE Decompressor (0xDE5)
```asm
00000DE5  test byte [si],0x40    ; Check format byte
00000DEA  lodsw                  ; Load count word
00000DED  mov cx,ax              ; CX = count
00000DEF  cmp ax,0xffff          ; Check terminator
00000DF5  and cx,0x3fff          ; Mask count (14 bits)
00000DF9  test ax,0x8000         ; Check RLE flag (bit 15)
00000DFE  lodsb                  ; Load value
00000DFF  rep stosb              ; RLE fill
OR
00000E03  rep movsb              ; Literal copy
```

### Stage 2: Bitmap Decompressor (0xD67)
```asm
00000D68  lodsw                  ; Load control byte count
00000D6B  push cx                ; Save count
00000D6C  mov bp,si              ; BP = control bytes
00000D6E  add si,cx              ; SI = literal data
00000D76  rol byte [ds:bp+0x0]   ; Rotate control bit
00000D7A  jc 0xd81               ; If 1, copy literal
00000D7C  stosb                  ; If 0, store zero
OR
00000D81  movsb                  ; Copy literal byte
```

Expands bitmap: 1 control bit per byte. 0=zero, 1=literal from data.

### Stage 2: XOR Differential Decoder (0xD91)
```asm
00000D91  xor dh,dh              ; DH = running XOR state
00000D93  xor al,al              ; AL = accumulator
00000D95  rcl byte [es:di],0x0   ; Extract bit 0
00000D98  adc al,al              ; AL = bit value
00000D9A  rcl byte [es:di],0x0   ; Extract bit 1
00000D9D  adc al,al              ; AL = 2-bit value
00000D9F  xor dh,al              ; XOR differential!
00000DA1  mov ah,dh              ; AH = first 2-bit pixel
; Repeat 3 more times to build 4x 2-bit = 1 byte (4 pixels)
00000DB5  or ah,dh               ; Combine into 6-bit packed pixels
00000DE1  stosb                  ; Store result byte
```

**Critical insight:** Each iteration processes 2 bits from 3 bitplanes = 6 bits total.
- Extracts 2-bit value from current bitplane byte
- XORs with running DH state
- Shifts and combines to pack 4 pixels per output byte
- Each pixel is 2 bits (4 colors from this bitplane)

## Complete Rendering Pipeline

```
1. Chunk loaded from SAR archive (Format 6/7 compressed)
   ↓
2. Stage 1: RLE decompressor (0xDE5)
   - Expands RLE/literal blocks
   ↓
3. Stage 2a: Bitmap decoder (0xD67)
   - Control bits expand to full bitmap
   ↓
4. Stage 2b: XOR differential (0xD91)
   - 2-bit pairs XORed with running state
   - Packed into 6-bit pixels (4 pixels per 3 bytes)
   ↓
5. Result: 3-plane bitplane data in temp buffer
   - Stride = 34 bytes per row
   ↓
6. Graphics driver 0x3010: Render to VGA
   - Composite at BX position
   - Convert 3-plane to VGA indexed color
```

## Next Steps

1. **Find chunk 30-32 load positions:** Search assembly for where these specific chunks are loaded
2. **Determine screen coordinates:** Extract BX position parameters for each chunk
3. **Implement correct decoder:** Follow the exact assembly algorithm
4. **Test:** Compare output against MEMDUMP_logo.BIN

## Memory Layout

- **CS:0x6000** - chunk_00 loaded here (game code, 13,869 bytes)
- **CS:0x2000 offset** - Temp image buffer (34-byte stride)
- **[cs:0xff2c]** - Image data segment (loaded chunks after decompression)
- **A000:0000** - VGA framebuffer (320 bytes per row)

## Key Constants

- **Stride**: 0x22 (34 bytes) in temp buffer
- **VGA stride**: 320 bytes (0x140)
- **Format byte**: Byte 5 of chunk (0x00=raw, 0x05/0x07=escape RLE, 0x06=table RLE)
- **Palette**: Loaded via [cs:0x3008] graphics function
