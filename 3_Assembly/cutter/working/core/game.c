/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x235 = "itemp.grp"; // [ascii]
static const char *STR_0x241 = "select.bin"; // [ascii]
static const char *STR_0x24e = "magic.grp"; // [ascii]
static const char *STR_0x266 = "fight.bin"; // [ascii]
static const char *STR_0x27d = "opdemo.bin"; // [ascii]
static const char *STR_0x296 = "gfega.bin"; // [ascii]
static const char *STR_0x2a2 = "gfcga.bin"; // [ascii]
static const char *STR_0x2ae = "gfhgc.bin"; // [ascii]
static const char *STR_0x2c7 = "gftga.bin"; // [ascii]
static const char *STR_0x2d1 = "ùsZsZs5s"; // [ibm037]
static const char *STR_0x328 = "gdega.bin"; // [ascii]
static const char *STR_0x334 = "gdcga.bin"; // [ascii]
static const char *STR_0x340 = "gdhgc.bin"; // [ascii]
static const char *STR_0x34c = "gdmcga.bin"; // [ascii]
static const char *STR_0x359 = "gdtga.bin"; // [ascii]
static const char *STR_0x364 = "/MGT1.MSD"; // [ascii]
static const char *STR_0x36f = "1UGM1.MSD"; // [ascii]
static const char *STR_0x37a = "0MGT2.MSD"; // [ascii]
static const char *STR_0x385 = "2UGM2.MSD"; // [ascii]
static const char *STR_0x391 = "MMAN.GRP"; // [ascii]
static const char *STR_0x39c = "CMAN.GRP"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg1)
{
    int16_t in_AX;
    int16_t in_CX;
    int16_t arg3;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack000e;
    undefined2 uStack0010;
    undefined2 uStack0012;
    undefined2 uStack0014;
    undefined2 uStack0016;
    undefined2 uStack0018;
    undefined2 uStack001a;
    undefined2 uStack001c;
    undefined2 uStack001e;
    uint8_t *puStack0020;
    undefined2 uStack0022;
    
    *(int16_t *)0xa474 = in_AX;
    (**(code **)0x10c)();
    *(int16_t *)0xf500 = *(int16_t *)0xf500 + -0xb00;
    *(int16_t *)0xf502 = *(int16_t *)0xf502 + -0xb00;
    *(int16_t *)0xf504 = *(int16_t *)0xf504 + -0xb00;
    (**(code **)0x120)();
    *(undefined *)0xff39 = 0;
    *(undefined *)0xff3a = 0;
    *(undefined *)0xff43 = 0;
    *(undefined *)0xff44 = 0;
    *(undefined *)0xff3c = 0;
    *(undefined *)0xff3d = 0;
    *(undefined *)0xff38 = 0;
    *(undefined *)0xff36 = 0;
    *(undefined *)0xff3e = 0;
    *(undefined *)0xff4b = 0;
    *(undefined *)0xff08 = 0;
    *(undefined *)0xe7 = 0;
    *(undefined *)0xff74 = 0;
    *(undefined *)0xff77 = 0;
    *(undefined *)0xff40 = 0;
    *(undefined *)0xff42 = 0;
    arg3 = (uint16_t)*(uint8_t *)0xff14 * 2;
    uStack0002 = 0x73;
    (**(code **)0x10c)();
    uStack0004 = 0x78;
    (**(code **)0x3000)();
    if (*(int16_t *)0xa474 != -1) {
        *(undefined *)0xff77 = 0xff;
        uStack0006 = 0x93;
        (**(code **)0x10c)();
    // WARNING: Could not recover jumptable at 0x00000093. Too many branches
    // WARNING: Treating indirect jump as call
        (**(code **)0x6000)();
        return;
    }
    uStack0006 = 0x9a;
    fcn.000003e5(arg3);
    uStack0008 = 0xb4;
    (**(code **)0x10c)();
    uStack000a = 0xc1;
    (**(code **)0x10c)();
    uStack000c = 0xde;
    (**(code **)0x10c)();
    uStack000e = 0xeb;
    (**(code **)0x10c)();
    uStack0010 = 0xff;
    (**(code **)0x10c)();
    uStack0012 = 0x113;
    (**(code **)0x10c)();
    *(int16_t *)0x1e200 = *(int16_t *)0x1e200 + -0x1e00;
    *(int16_t *)0x1e202 = *(int16_t *)0x1e202 + -0x1e00;
    *(int16_t *)0x1e204 = *(int16_t *)0x1e204 + -0x1e00;
    *(int16_t *)0x1e206 = *(int16_t *)0x1e206 + -0x1e00;
    *(int16_t *)0x1e208 = *(int16_t *)0x1e208 + -0x1e00;
    *(int16_t *)0x1e20a = *(int16_t *)0x1e20a + -0x1e00;
    *(int16_t *)0x1e20c = *(int16_t *)0x1e20c + -0x1e00;
    uStack0014 = 0x142;
    (**(code **)0x10c)();
    uStack0016 = 0x156;
    (**(code **)0x10c)();
    *(int16_t *)0x21800 = *(int16_t *)0x21800 + 0x1800;
    *(int16_t *)0x21802 = *(int16_t *)0x21802 + 0x1800;
    *(int16_t *)0x21804 = *(int16_t *)0x21804 + 0x1800;
    uStack0018 = 0x16c;
    (**(code **)0x10c)();
    *(undefined2 *)0xa472 = 0x3000;
    uStack001a = 0x185;
    (**(code **)0x10c)();
    uStack001c = 0;
    uStack001a = 0;
    uStack0018 = 0x18d;
    (**(code **)0xa470)();
    uStack001c = 0x191;
    fcn.000003a5(in_CX);
    if (*(char *)0x92 != '\0') {
        uStack001e = 0x1a7;
        (**(code **)0x201c)();
    }
    if (*(char *)0x93 != '\0') {
        uStack001e = 0x1b9;
        (**(code **)0x2020)();
    }
    if (*(char *)0x9d != '\0') {
        uStack001e = 0x1cb;
        (**(code **)0x201e)();
    }
    uStack001e = 0x1d7;
    (**(code **)0x10c)();
    puStack0020 = *(uint8_t **)0xc000 + 1;
    *(uint8_t *)0xc8 = **(uint8_t **)0xc000 >> 1 & 0x1f;
    uStack001e = 0x203;
    (**(code **)0x10c)();
    uStack0022 = 0x219;
    (**(code **)0x10c)();
    // WARNING: Could not recover jumptable at 0x00000219. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x6002)();
    return;
}

/* ====================================================================== */
/* 0x3e5: fcn.000003e5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000003e5(int16_t arg3)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x000003ed. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0xff14 * 2 + -0x5c0e))();
    return;
}

/* ====================================================================== */
/* 0x3a5: fcn.000003a5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000003a5(int16_t arg4)
{
    uint16_t uVar1;
    undefined2 unaff_DS;
    
    if (*(char *)0xa0 == '\0') {
        return;
    }
    uVar1 = (uint16_t)*(uint8_t *)0xa0;
    do {
        (**(code **)0x203e)();
        uVar1 = uVar1 - 1;
    } while (uVar1 != 0);
    return;
}

