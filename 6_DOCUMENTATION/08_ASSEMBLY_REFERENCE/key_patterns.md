# Key Assembly Patterns

## Global Variables (CS Segment)

The game stores global state in the CS (code segment) at high offsets:

```assembly
[cs:0xff1d]  ; Skip flag (0=play normally, 1=skip cutscene)
[cs:0xff29]  ; Last key pressed (0x0D = Enter)
[cs:0xff1a]  ; Timer tick counter
[cs:0xff14]  ; Graphics mode (0=MCGA, 1=EGA, etc.)
[cs:0xff39]  ; Player X position
[cs:0xff3a]  ; Player Y position
[cs:0xff74]  ; Current scene/state
[cs:0xff77]  ; Debug/special mode flag
```

## Function Pointer Tables

The game uses indirect calls through CS-based function pointer tables:

### Chunk Loader (CS:0x010C)
```assembly
mov al, 2           ; Archive: 2=zelres1, 3=zelres2/zelres3
mov si, 0x957E      ; Chunk reference (pointer to chunk metadata)
mov di, 0xA000      ; Destination offset
call word near [cs:0x10c]  ; Invoke chunk loader
```

### Graphics Driver Functions (CS:0x30xx)

**Function Table:**
```assembly
[cs:0x3000] = Clear screen
[cs:0x3002] = Fill rectangle (al=color, bx=pos, cx=size)
[cs:0x3004] = Blit (copy rect to screen)
[cs:0x3006] = Fade in
[cs:0x3008] = Set palette (ax=palette index)
[cs:0x3010] = Draw sprite?
[cs:0x3012] = Text rendering
[cs:0x3014] = Display image (al=image index, bx=position)
```

**Example Usage:**
```assembly
mov ax, 1           ; Palette 1 (opening scene)
call word near [cs:0x3008]  ; Set palette

mov al, 0xFF        ; Fill color (white)
mov bx, 0x1220      ; Position (row=0x12, col=0x20)
mov cx, 0x2C68      ; Size (width=0x2C, height=0x68)
mov es, [cs:0xff2c] ; ES = VGA segment
mov di, 0x4000      ; DI = framebuffer offset
call word near [cs:0x3002]  ; Fill rectangle
```

## Segment Management

### Code Segment Setup
```assembly
mov sp, 0x2000      ; Set stack pointer
sti                 ; Enable interrupts
push cs             ; Copy CS to DS
pop ds
push cs             ; Copy CS to ES
pop es
```

### VGA Access
```assembly
mov es, [cs:0xff2c] ; Load VGA segment (typically A000h)
mov di, 0x0000      ; Start of framebuffer
; Now ES:DI points to VGA memory
```

### Dynamic Code Loading
```assembly
mov ax, cs
add ax, 0x2000      ; Offset by 8KB segments
mov es, ax          ; ES = CS + 0x2000
; Load chunk into ES segment
```

## Address Translation

### File Offset to Memory Address
When chunk_00 is loaded at CS:0x6000:
```
Memory address: CS:0x6000 + offset
File offset: memory_address - 0x6000 + 7

Example:
  CS:0x6FF0 → file offset 0x0FF3 (text data)
  CS:0x0155 → file offset 0x615C (slideshow loop)
```

### Chunk References
```assembly
mov si, 0x957E      ; SI = pointer to chunk metadata
; At DS:[SI]:
;   word: chunk size
;   word: chunk flags
;   word: chunk ID
```

## Fixed-Point Math

### 8.8 Fixed Point
The game uses 8.8 fixed-point for positions and velocities:
```assembly
mov ax, [player_x]  ; 8.8 fixed point (integer.fraction)
add ax, 0x0100      ; Add 1.0 (256 in fixed-point)
mov [player_x], ax

; Convert to float in C#:
float x = fixedPointValue / 256.0f;

; Convert from float to fixed-point:
int fixedPoint = (int)(floatValue * 256.0f);
```

## Loop Patterns

### Image Slideshow (Opening Scene)
```assembly
mov si, 0x911E      ; SI = pointer to image index list
loop_start:
    lodsb               ; AL = [DS:SI++]
    or al, al           ; Test if zero
    jz loop_done        ; If zero, end slideshow
    push si             ; Save SI
    dec al              ; Convert 1-based to 0-based
    mov bx, 0x1720      ; Screen position
    call word near [cs:0x3014]  ; Display image
    pop si              ; Restore SI
    mov al, 0x14        ; Delay (20 ticks ≈ 1.1 sec)
    call 0x3AF          ; Wait with input check
    jmp loop_start
loop_done:
```

### Timing/Delay
```assembly
; Delay routine at CS:0x03AF
mov al, 20          ; Ticks to wait (18.2 ticks/sec)
call delay_routine
; Checks [cs:0xff29] for Enter key (0x0D) to skip
```

## Common Idioms

### Clear Byte
```assembly
xor al, al          ; AL = 0 (faster than mov al, 0)
mov [0xff1d], al    ; Clear skip flag
```

### Segment Copy
```assembly
mov ax, cs
mov ds, ax          ; DS = CS (both point to code segment)
```

### Far Call Setup
```assembly
push ds             ; Save DS
call far [0xa470]   ; Far call to other segment
pop ds              ; Restore DS
```

## Calling Conventions

The game uses **custom calling conventions**, not standard C cdecl:
- **Parameters**: Typically in registers (AL, BX, CX, SI, DI)
- **No stack frames**: Rarely uses `push bp; mov bp, sp`
- **Return values**: AX or flags
- **Caller cleanup**: No stack-based parameters

Example:
```assembly
; Draw rectangle
mov al, 0xFF        ; Param 1: color
mov bx, 0x1220      ; Param 2: position
mov cx, 0x2C68      ; Param 3: size
; ES:DI assumed to be set
call [cs:0x3002]
; No cleanup needed
```

## Graphics Driver Architecture

The game dynamically loads graphics drivers based on hardware:
- `gmmcga.bin` - MCGA (256 colors, Mode 13h)
- `gmega.bin` - EGA (16 colors)
- `gmcga.bin` - CGA (4 colors)
- `gmhgc.bin` - Hercules (monochrome)

Driver provides function table at `CS:0x3000+`

## Related Documentation
- [Function Directory](function_directory.md) - Complete function list by address
- [Global Variables](global_variables.md) - Full CS:0xff__ variable map
- [Disassembly Notes](disassembly_notes.md) - How to read the .asm files
