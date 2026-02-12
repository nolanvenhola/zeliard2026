# Physics Constants - DOS vs C# Implementation

**Date**: 2026-02-11
**Status**: Jump verified, gravity/speed need tuning

---

## ✅ VERIFIED from Assembly

### Jump Velocity
**Source**: zelres1_chunk_06 offset 0x844
```assembly
mov byte [0x8c],-0x18       ; VelocityY = -24 px/frame
```

**C# Implementation**: ✅ `player.VelocityY = -24;`

---

## ⚠️ NOT FOUND in Assembly (Using Approximations)

### Gravity
**Status**: NOT explicitly found in raw assembly
**Current**: `1 px/frame²` (VelocityY++)
**Issue**: With jump -24 and gravity +1, jump height = ~300 pixels (too high for 200px screen!)

**Possible explanations**:
1. DOS uses fractional gravity (applied every N frames)
2. DOS uses different velocity scaling
3. Jump -24 is for special move, not normal jump

**Action**: Needs gameplay tuning

---

### Terminal Velocity
**Status**: NOT found in assembly
**Current**: `10 px/frame`
**Reasoning**: Prevents tunneling through 16px tiles

---

### Walk Speed
**Status**: NOT found in assembly
**Current**: `2 px/frame`
**Reasoning**: Feels responsive, not too fast

---

## 🎯 Tuning Recommendations

### Option 1: Reduce Jump Strength
- Jump: -24 → **-12** (half strength)
- Gravity: 1 px/frame²
- Max height: ~72 pixels (reasonable)

### Option 2: Increase Gravity
- Jump: -24
- Gravity: 1 → **2 px/frame²** (faster fall)
- Max height: ~144 pixels (still too high)

### Option 3: Use Fractional Gravity (Most Likely DOS Approach)
- Jump: -24 (every 4 frames)
- Gravity: +1 (every 2 frames)
- Effective: Jump -6/frame, Gravity +0.5/frame
- Max height: ~36 pixels (perfect!)

**Recommendation**: Implement Option 3 (frame-skipped gravity)

---

## 📊 Current vs Ideal

| Constant | Current | Ideal (Tuned) | Status |
|----------|---------|---------------|--------|
| Jump | -24 | -12 to -16 | ⚠️ Too strong |
| Gravity | +1 every frame | +1 every 2 frames | ⚠️ Too strong |
| Terminal | 10 px/frame | 6-8 px/frame | ⚠️ Needs tuning |
| Walk | 2 px/frame | 2 px/frame | ✅ Feels good |

---

## 🔧 Quick Fix for Testing

**Reduce jump to match screen size**:
```csharp
// PlayerController.cs line 29
player.VelocityY = -12;  // Half of -24 for better gameplay
```

Or wait for Phase 3 (Animation) and fine-tune based on actual gameplay feel.

---

*Physics constants require gameplay testing to find correct balance. Assembly doesn't explicitly document numeric values - they're embedded in binary code and need extraction through reverse engineering.*
