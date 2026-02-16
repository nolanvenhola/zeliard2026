# x86 Assembly Emulation for Constant Extraction

**Goal**: Run actual DOS assembly code to extract exact physics constants

---

## Option 1: Existing Emulators (READY TO USE)

### DOSBox-X with Debugger ⭐ BEST FOR GAME
**What**: Full DOS emulator with built-in debugger
**Status**: Already have game running in DOSBox
**Time**: 15 minutes

**How to extract constants**:
```bash
# 1. Launch DOSBox-X with heavy debugger
dosbox-x -debug

# 2. Run game
ZELIARD.EXE

# 3. Set breakpoint on velocity write
BP DS:008C

# 4. Press jump → breaks → read AL register = exact jump value
# 5. Step through physics → see gravity increments
```

**Advantages**:
- ✅ Full game context
- ✅ Can test all scenarios
- ✅ Visual debugging
- ✅ Already set up

---

### Unicorn Engine ⭐ BEST FOR AUTOMATION
**What**: Lightweight CPU emulator with Python/C# bindings
**Status**: Need to install
**Time**: 1-2 hours to set up

**How it works**:
```python
from unicorn import *
from unicorn.x86_const import *

# Create x86 emulator
mu = Uc(UC_ARCH_X86, UC_MODE_16)

# Load chunk binary
code = open("chunk_00.bin", "rb").read()
mu.mem_map(0x6000, 0x10000)  # Map code segment
mu.mem_write(0x6000, code)

# Set up player state
mu.mem_write(0x0080, b'\xa0\x00')  # X = 160
mu.mem_write(0x0083, b'\x64')      # Y = 100
mu.mem_write(0x008c, b'\x00')      # VelocityY = 0

# Execute jump function at offset 0xXXXX
mu.emu_start(0x6000 + jump_offset, 0x6000 + jump_offset + 20)

# Read velocity after execution
velocity = mu.mem_read(0x008c, 1)[0]
print(f"Jump velocity: {velocity if velocity < 128 else velocity - 256}")
```

**Advantages**:
- ✅ Scriptable
- ✅ Fast execution
- ✅ Can test isolated functions
- ✅ Extract all constants automatically

**C# Alternative**:
```csharp
// Unicorn.NET (C# bindings)
using Unicorn;
using Unicorn.X86;

var emulator = new X86Emulator(X86Mode.b16);
emulator.Memory.Map(0x6000, 0x10000, MemoryPermissions.All);
emulator.Memory.Write(0x6000, chunkData);
emulator.Start(0x6000 + offset, 0x6000 + offset + length);
```

---

## Option 2: Build Custom Interpreter (LEARNING PROJECT)

### Minimal x86 Interpreter for Zeliard
**What**: Interpret only the instructions used by Zeliard
**Status**: Would need to build
**Time**: 4-8 hours

**Zeliard uses limited x86 subset**:
```
Core instructions needed (~30 opcodes):
- mov, add, sub, inc, dec, neg
- cmp, test, jz, jnz, jmp, call, ret
- push, pop
- and, or, xor, shl, shr

NOT needed:
- Floating point (no FPU used)
- String operations
- Advanced opcodes
```

**Implementation**:
```csharp
public class ZeliardX86Interpreter
{
    private byte[] memory = new byte[0x10000];
    private Dictionary<string, ushort> registers = new();

    public void LoadChunk(byte[] chunk, ushort segment)
    {
        Array.Copy(chunk, 0, memory, segment, chunk.Length);
    }

    public void Execute(ushort address, int instructions)
    {
        for (int i = 0; i < instructions; i++)
        {
            byte opcode = memory[address];

            switch (opcode)
            {
                case 0xC6: // mov byte [addr], imm8
                    ushort addr = ReadWord(address + 2);
                    byte value = memory[address + 4];
                    memory[addr] = value;
                    Console.WriteLine($"MOV [{addr:X4}], {value:X2}");
                    address += 5;
                    break;

                case 0xFE: // inc byte [addr]
                    addr = ReadWord(address + 2);
                    memory[addr]++;
                    Console.WriteLine($"INC [{addr:X4}] → {memory[addr]:X2}");
                    address += 4;
                    break;

                // ... implement ~30 more opcodes
            }
        }
    }
}
```

**Advantages**:
- ✅ Full control
- ✅ Tailored to Zeliard
- ✅ Learning experience
- ✅ Can add custom logging

**Disadvantages**:
- ❌ Time investment
- ❌ Need to handle all instruction variations
- ❌ Complex addressing modes

---

## Option 3: Hybrid Approach (QUICK WIN) 🎯

### Static Analysis + Targeted Emulation

**Step 1**: Find function offsets (already have from walkthroughs)
```
Jump function: zelres1_chunk_06 offset 0xXXXX
Gravity function: zelres2_chunk_04 offset 0xXXXX
```

**Step 2**: Disassemble just those functions
```bash
ndisasm -b 16 -o 0x6000 -k 0xXXXX,20 chunk_06.bin
```

**Step 3**: Manual trace with pseudocode
```
Line 1: mov al, [base_value]    ; AL = read from memory
Line 2: sub al, 12               ; AL = AL - 12 = jump strength!
Line 3: mov [0x8c], al           ; Write to velocity
```

**Step 4**: Extract constant (12 in this example)

**Advantages**:
- ✅ Fast (30 min per constant)
- ✅ No complex emulation
- ✅ Human verification
- ✅ Works for small code sections

---

## Recommendation

### For Zeliard Project:

**NOW** (15 min):
- Use **DOSBox-X debugger** (already have game running)
- Set 3 breakpoints, play for 1 minute
- Extract jump, gravity, walk speed
- Update C# constants

**LATER** (fun project):
- Build **Unicorn Engine script** (2 hours)
- Automate constant extraction
- Reusable for other DOS games
- Could extract ALL constants automatically

**EDUCATIONAL** (weekend project):
- Build **minimal x86 interpreter** in C#
- ~500 lines for Zeliard subset
- Deep learning about x86 architecture
- Complete control over execution

---

## Quick DOSBox-X Procedure

### 5 Minute Constant Extraction

**Terminal 1** (Run game):
```bash
dosbox-x ZELIARD.EXE
```

**Terminal 2** (Debugger):
```
# Connect to DOSBox debugger (usually F12 in DOSBox-X)

# Set breakpoint on velocity Y write:
bpint ds:008c w

# Play game:
# - Press jump → debugger breaks
# - Type: r al → see jump value
# - Type: g → continue

# - Walk → debugger breaks
# - Type: r al → see walk speed
# - Type: g → continue

# - Let fall → debugger breaks each frame
# - Note: how often velocity increments = gravity
```

**Result**: All 3 constants in 5 minutes of gameplay!

---

## Building a Custom Emulator

If you want to build one, here's the starter:

```csharp
public class SimpleX86Emulator
{
    private byte[] memory = new byte[0x100000]; // 1MB
    private ushort ax, bx, cx, dx, si, di, bp, sp;
    private ushort cs, ds, es, ss;
    private bool cf, zf; // Carry, zero flags

    public void LoadBinary(byte[] data, ushort segment, ushort offset)
    {
        int addr = (segment * 16) + offset;
        Array.Copy(data, 0, memory, addr, data.Length);
    }

    public void ExecuteUntilRet(ushort cs, ushort ip)
    {
        this.cs = cs;
        int pc = (cs * 16) + ip;

        while (true)
        {
            byte opcode = memory[pc];

            // Decode and execute instruction
            // Return when RET (0xC3) encountered
            if (opcode == 0xC3) break;

            pc += DecodeAndExecute(pc);
        }
    }

    private int DecodeAndExecute(int pc)
    {
        // Implement ~30 opcodes used by Zeliard
        // Return: instruction length (bytes to advance PC)
    }
}
```

---

## My Recommendation

1. **Right now**: Use DOSBox-X debugger (15 min) → get exact values
2. **This weekend**: Build Unicorn script if interested in automation
3. **Someday**: Custom interpreter as learning project

Want me to write the **DOSBox-X debugger procedure** as a step-by-step guide?
