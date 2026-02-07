# Documentation Audit & Cleanup Plan

## Current State (11 files, 131KB total)

| File | Size | Status | Action |
|------|------|--------|--------|
| README_ASSEMBLY_WORKFLOW.md | 13K | ✅ KEEP | Main workflow guide |
| ASSEMBLY_REFERENCE_GUIDE.md | 11K | ✅ KEEP | How to read assembly |
| EXECUTION_FLOW_MAP.md | 32K | ✅ KEEP | Complete execution flow |
| QUICK_REFERENCE_ARCHITECTURE.md | 15K | ✅ KEEP | Quick reference |
| DECOMPILATION_REPORT.md | 6.9K | ✅ KEEP | Historical C decompilation record |
| NEW_STRUCTURE.md | 7.1K | ✅ KEEP | Directory organization |
| CHUNK_REFERENCE_MAP.md | 12K | 🔄 CONSOLIDATE | Merge into CHUNK_GUIDE.md |
| EXECUTABLE_VS_DATA_CHUNKS.md | 8.2K | 🔄 CONSOLIDATE | Merge into CHUNK_GUIDE.md |
| CHUNK_ANALYSIS.md | 3.4K | ❌ REMOVE | Superseded by DECOMPILATION_REPORT |
| PROJECT_OVERVIEW.md | 11K | ❌ REMOVE | Superseded by EXECUTION_FLOW_MAP |
| ASSEMBLY_DISASSEMBLY_PLAN.md | 12K | ❌ REMOVE | Covered in README_ASSEMBLY_WORKFLOW |

## Redundancy Analysis

### Files to Remove (3 files, 26.4KB)

**1. CHUNK_ANALYSIS.md (3.4K)** - ❌ DELETE
- **Why:** Early analysis, superseded by better docs
- **Content covered in:** DECOMPILATION_REPORT.md + EXECUTION_FLOW_MAP.md
- **Unique content:** None - all information is in other docs

**2. PROJECT_OVERVIEW.md (11K)** - ❌ DELETE
- **Why:** High-level overview now covered by newer docs
- **Content covered in:**
  - Architecture → EXECUTION_FLOW_MAP.md
  - Quick reference → QUICK_REFERENCE_ARCHITECTURE.md
  - Status → DECOMPILATION_REPORT.md
- **Unique content:** Minimal - mostly duplicates EXECUTION_FLOW_MAP

**3. ASSEMBLY_DISASSEMBLY_PLAN.md (12K)** - ❌ DELETE
- **Why:** Planning doc, now superseded by workflow guide
- **Content covered in:**
  - Workflow → README_ASSEMBLY_WORKFLOW.md
  - Architecture → EXECUTION_FLOW_MAP.md
  - Three-way verification → README_ASSEMBLY_WORKFLOW.md
- **Unique content:** None - planning phase complete

### Files to Consolidate (2 files → 1 file)

**Merge:** CHUNK_REFERENCE_MAP.md + EXECUTABLE_VS_DATA_CHUNKS.md
**Into:** NEW FILE: **CHUNK_GUIDE.md** (18K consolidated)

**Rationale:**
- Both cover chunk organization
- Significant overlap in explaining what chunks contain
- Better as single authoritative chunk reference
- Reduces confusion about which doc to consult

**Structure of new CHUNK_GUIDE.md:**
1. Overview (from EXECUTABLE_VS_DATA_CHUNKS)
2. Code vs Data explanation (from EXECUTABLE_VS_DATA_CHUNKS)
3. Complete chunk inventory (from CHUNK_REFERENCE_MAP)
4. What to disassemble (from EXECUTABLE_VS_DATA_CHUNKS)
5. Priority guide (from CHUNK_REFERENCE_MAP)
6. Cross-reference table (combined)

### Files to Keep (6 files, 84.1KB)

**1. README_ASSEMBLY_WORKFLOW.md (13K)** - ✅ PRIMARY DOC
- Purpose: **START HERE** - Main workflow guide
- Content: Step-by-step porting process
- Unique: Complete workflow from setup to verification

**2. EXECUTION_FLOW_MAP.md (32K)** - ✅ PRIMARY DOC
- Purpose: Complete execution flow architecture
- Content: Boot to game loop, memory layout, call chains
- Unique: Most comprehensive architecture documentation

**3. QUICK_REFERENCE_ARCHITECTURE.md (15K)** - ✅ PRIMARY DOC
- Purpose: One-page quick reference
- Content: Visual diagrams, cheat sheets, quick lookups
- Unique: Condensed format for quick consultation

**4. ASSEMBLY_REFERENCE_GUIDE.md (11K)** - ✅ ESSENTIAL
- Purpose: How to read x86 assembly
- Content: Instruction patterns, fixed-point math, examples
- Unique: Assembly education content

**5. DECOMPILATION_REPORT.md (6.9K)** - ✅ HISTORICAL
- Purpose: Record of C decompilation work
- Content: Statistics, breakdown, what was decompiled
- Unique: Historical record, useful reference

**6. NEW_STRUCTURE.md (7.1K)** - ✅ REFERENCE
- Purpose: Directory organization reference
- Content: File locations, bucket structure
- Unique: Navigation guide for reorganized structure

## Recommended Final Structure (7 files, 90KB)

```
6_DOCUMENTATION/
├── README_ASSEMBLY_WORKFLOW.md      ⭐ START HERE (13K)
├── EXECUTION_FLOW_MAP.md            📋 Architecture (32K)
├── QUICK_REFERENCE_ARCHITECTURE.md  📄 Quick Ref (15K)
├── CHUNK_GUIDE.md                   📦 NEW - Chunks (18K)
├── ASSEMBLY_REFERENCE_GUIDE.md      📖 Assembly How-To (11K)
├── DECOMPILATION_REPORT.md          📊 Historical (7K)
└── NEW_STRUCTURE.md                 📁 Navigation (7K)
```

## Benefits of Cleanup

### Before (11 files, 131KB)
- ❌ Confusion about which doc to read first
- ❌ Duplicate information in 3+ places
- ❌ Outdated planning docs still present
- ❌ Two separate chunk docs causing confusion

### After (7 files, 90KB)
- ✅ Clear starting point (README_ASSEMBLY_WORKFLOW)
- ✅ Single authoritative source per topic
- ✅ 31% reduction in documentation size
- ✅ Easier to maintain and update
- ✅ No redundant information

## Migration Guide

### For Users Currently Reading Old Docs

**If you were reading PROJECT_OVERVIEW.md:**
→ Switch to **EXECUTION_FLOW_MAP.md** (more complete)
→ Or **QUICK_REFERENCE_ARCHITECTURE.md** (faster overview)

**If you were reading ASSEMBLY_DISASSEMBLY_PLAN.md:**
→ Switch to **README_ASSEMBLY_WORKFLOW.md** (complete workflow)

**If you were reading CHUNK_ANALYSIS.md:**
→ Switch to **DECOMPILATION_REPORT.md** (better analysis)

**If you were reading CHUNK_REFERENCE_MAP.md or EXECUTABLE_VS_DATA_CHUNKS.md:**
→ Switch to **CHUNK_GUIDE.md** (consolidated single source)

## Cleanup Actions

1. **Create CHUNK_GUIDE.md** (consolidate 2 files)
2. **Archive removed files** (move to archive/ subdirectory)
3. **Update README_ASSEMBLY_WORKFLOW.md** (update cross-references)
4. **Create INDEX.md** (documentation directory index)

## Proposed Documentation Index (NEW)

Create **INDEX.md** as navigation hub:

```markdown
# Zeliard Documentation Index

## Start Here
1. **README_ASSEMBLY_WORKFLOW.md** - Complete porting workflow

## Core References
2. **EXECUTION_FLOW_MAP.md** - Full architecture & execution flow
3. **QUICK_REFERENCE_ARCHITECTURE.md** - One-page quick reference
4. **CHUNK_GUIDE.md** - Complete chunk reference

## How-To Guides
5. **ASSEMBLY_REFERENCE_GUIDE.md** - Reading x86 assembly

## Project Info
6. **DECOMPILATION_REPORT.md** - C decompilation history
7. **NEW_STRUCTURE.md** - Directory organization
```

---

**Recommendation:** Proceed with cleanup to reduce confusion and improve maintainability.
