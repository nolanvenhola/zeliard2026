# Zeliard Documentation Index

## 📖 Navigation Hub

This directory contains all documentation for understanding and porting Zeliard from authentic DOS assembly to modern MonoGame.

---

## 🚀 Start Here

### 1. [README_ASSEMBLY_WORKFLOW.md](README_ASSEMBLY_WORKFLOW.md) ⭐
**The complete workflow guide** - Start here if you're porting to MonoGame

**Contents:**
- Setup instructions
- Step-by-step porting process (assembly → C# MonoGame)
- Phase-by-phase breakdown (player movement → combat → AI)
- Verification workflow
- Examples and troubleshooting

**When to read:** Before you start porting any mechanics

---

## 📋 Core Architecture References

### 2. [EXECUTION_FLOW_MAP.md](EXECUTION_FLOW_MAP.md)
**Complete execution flow from boot to game loop**

**Contents:**
- How zeliad.exe launches the game
- How game.bin loads and orchestrates chunks
- Memory layout and segment addressing
- Main game loop structure
- Call chain examples (e.g., player jump)
- What to port vs. skip for MonoGame

**When to read:** When you need to understand how the game works end-to-end

---

### 3. [QUICK_REFERENCE_ARCHITECTURE.md](QUICK_REFERENCE_ARCHITECTURE.md)
**One-page visual quick reference**

**Contents:**
- Visual architecture diagrams
- Critical files priority table
- Game loop expanded view
- Assembly pattern cheat sheet
- Fixed-point math conversions
- Quick search examples

**When to read:** Quick lookups while coding

---

### 4. [CHUNK_GUIDE.md](CHUNK_GUIDE.md)
**Complete chunk reference** (Code vs Data, all 120 chunks)

**Contents:**
- Which chunks are executable code (29) vs data (91)
- Complete inventory by archive (ZELRES1/2/3)
- Priority guide for porting
- File locations
- Search examples

**When to read:** When you need to find specific mechanics in chunks

---

## 📖 How-To Guides

### 5. [ASSEMBLY_REFERENCE_GUIDE.md](ASSEMBLY_REFERENCE_GUIDE.md)
**Learn to read x86 assembly**

**Contents:**
- Basic instruction reference
- Common patterns (movement, damage, AI)
- Fixed-point math explained (8.8 format)
- How to extract constants
- Workflow examples

**When to read:** If you're new to assembly or need a refresher

---

## 📊 Project Information

### 6. [DECOMPILATION_REPORT.md](DECOMPILATION_REPORT.md)
**Historical record of C decompilation**

**Contents:**
- Statistics (23,133 lines of C code)
- Breakdown by archive
- Top 10 largest code modules
- Code vs data distribution
- Quality notes

**When to read:** For historical context or statistics

---

### 7. [NEW_STRUCTURE.md](NEW_STRUCTURE.md)
**Directory organization reference**

**Contents:**
- Reorganized folder structure
- What's in each numbered directory (1-7)
- File location guide
- Navigation tips

**When to read:** When you can't find files or need to navigate the project

---

## 📁 Archived Documentation

Older documents that have been consolidated or superseded:

```
archive/
├── CHUNK_ANALYSIS.md              (superseded by DECOMPILATION_REPORT)
├── CHUNK_REFERENCE_MAP.md         (merged into CHUNK_GUIDE)
├── EXECUTABLE_VS_DATA_CHUNKS.md   (merged into CHUNK_GUIDE)
├── PROJECT_OVERVIEW.md            (superseded by EXECUTION_FLOW_MAP)
└── ASSEMBLY_DISASSEMBLY_PLAN.md   (superseded by README_ASSEMBLY_WORKFLOW)
```

---

## 🗺️ Recommended Reading Order

### For MonoGame Porting:

1. ⭐ **README_ASSEMBLY_WORKFLOW.md** - Get oriented
2. 📋 **EXECUTION_FLOW_MAP.md** - Understand architecture
3. 📄 **QUICK_REFERENCE_ARCHITECTURE.md** - Keep open for reference
4. 📦 **CHUNK_GUIDE.md** - Find specific mechanics
5. 📖 **ASSEMBLY_REFERENCE_GUIDE.md** - Learn to read assembly

### For Understanding the Project:

1. 📁 **NEW_STRUCTURE.md** - Navigate the directories
2. 📊 **DECOMPILATION_REPORT.md** - See what was accomplished
3. 📋 **EXECUTION_FLOW_MAP.md** - Understand how it works
4. 📦 **CHUNK_GUIDE.md** - Know where everything is

---

## 🔍 Quick Lookups

### Find Documentation by Topic

| Topic | Document |
|-------|----------|
| Porting workflow | README_ASSEMBLY_WORKFLOW.md |
| Game architecture | EXECUTION_FLOW_MAP.md |
| Quick reference | QUICK_REFERENCE_ARCHITECTURE.md |
| Chunk locations | CHUNK_GUIDE.md |
| Assembly tutorial | ASSEMBLY_REFERENCE_GUIDE.md |
| Project status | DECOMPILATION_REPORT.md |
| File locations | NEW_STRUCTURE.md |

### Find Mechanics by Location

| Mechanic | Document → Section |
|----------|-------------------|
| Player walk speed | CHUNK_GUIDE → ZELRES1/chunk_00 |
| Jump physics | CHUNK_GUIDE → ZELRES1/chunk_00 |
| Damage formula | CHUNK_GUIDE → ZELRES2/chunk_02 |
| Gravity constant | CHUNK_GUIDE → ZELRES2/chunk_04 |
| Enemy AI | CHUNK_GUIDE → ZELRES2/chunk_05-06 |
| Main game loop | EXECUTION_FLOW_MAP → Main Game Loop |

---

## 📏 Documentation Stats

| Document | Size | Purpose |
|----------|------|---------|
| README_ASSEMBLY_WORKFLOW | 13KB | Primary workflow guide |
| EXECUTION_FLOW_MAP | 32KB | Architecture deep dive |
| QUICK_REFERENCE_ARCHITECTURE | 15KB | Quick reference |
| CHUNK_GUIDE | 18KB | Chunk reference |
| ASSEMBLY_REFERENCE_GUIDE | 11KB | Assembly tutorial |
| DECOMPILATION_REPORT | 7KB | Historical record |
| NEW_STRUCTURE | 7KB | Navigation |
| INDEX | 4KB | This file |
| **Total** | **107KB** | **8 files** |

---

## 💡 Tips

- 📌 **Bookmark this INDEX.md** for quick navigation
- ⭐ **Start with README_ASSEMBLY_WORKFLOW.md** if you're new
- 📄 **Keep QUICK_REFERENCE_ARCHITECTURE.md open** while coding
- 🔍 **Use CHUNK_GUIDE.md** to find specific game mechanics
- 📖 **Refer to ASSEMBLY_REFERENCE_GUIDE.md** when reading assembly

---

## 🆘 Need Help?

**Can't find something?**
1. Check this INDEX.md
2. Check NEW_STRUCTURE.md for file locations
3. Search documentation: `grep -r "keyword" *.md`

**Don't understand assembly?**
→ Read ASSEMBLY_REFERENCE_GUIDE.md

**Don't know where to start?**
→ Read README_ASSEMBLY_WORKFLOW.md

**Need quick info while coding?**
→ Open QUICK_REFERENCE_ARCHITECTURE.md

---

*Documentation last updated: 2026-02-04*
*Total: 8 active documents, 5 archived*
