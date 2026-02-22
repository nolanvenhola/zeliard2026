/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x19 = "5\"6o6&1"; // [ascii]
static const char *STR_0x2a6 = "JXY_À "; // [utf8]
static const char *STR_0x2ec = "vcG+S³¬;cG"; // [ibm037]
static const char *STR_0x3ca = "{¡¡uuaB "; // [ibm037]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Removing unreachable block (ram,0x0000000e)
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000000(int16_t arg_33h, int16_t arg4, int16_t arg3, int16_t arg2, int16_t arg1)
{
    uint8_t *puVar1;
    uint16_t *puVar2;
    char **ppcVar3;
    uint16_t uVar4;
    bool bVar5;
    uint16_t in_AX;
    int16_t in_CX;
    uint8_t uVar7;
    uint16_t uVar6;
    undefined2 in_DX;
    uint16_t in_BX;
    uint16_t unaff_BP;
    uint16_t *unaff_SI;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    char in_CF;
    
    *unaff_DI = *unaff_DI + in_CF;
    uVar7 = (uint8_t)((uint16_t)in_DX >> 8);
    *(uint8_t *)(unaff_BP + (int16_t)unaff_SI) = *(uint8_t *)(unaff_BP + (int16_t)unaff_SI) + uVar7;
    puVar1 = (uint8_t *)((int16_t)unaff_SI + unaff_BP + 0x30);
    *puVar1 = *puVar1 ^ (uint8_t)in_CX;
    uVar7 = uVar7 ^ (uint8_t)(in_BX >> 8);
    *(uint8_t *)unaff_SI = *(uint8_t *)unaff_SI ^ uVar7;
    uVar4 = *unaff_SI;
    uVar6 = CONCAT11(uVar7, (char)in_DX) ^ unaff_BP;
    out(unaff_SI[1], uVar6);
    puVar2 = (uint16_t *)((int16_t)unaff_SI + unaff_BP + 0x1c3a);
    *puVar2 = *puVar2 ^ in_BX;
    uVar7 = (uint8_t)(uVar4 ^ 0x3622);
    bVar5 = 9 < (uVar7 & 0xf) || (in_AX & 0x1000) != 0;
    if ((char)((uint16_t)(in_CX + 1) >> 8) < unaff_DI[in_BX + 0x3b]) {
        ppcVar3 = (char **)((int16_t)unaff_SI + in_BX + 7);
        *ppcVar3 = *ppcVar3 + (int16_t)unaff_DI;
        out(uVar6, CONCAT11((char)((uVar4 ^ 0x3622) >> 8) + bVar5, uVar7 + bVar5 * '\x06') & 0xff0f);
        out(uVar6, 5);
        out(uVar6, 0xff08);
        return CONCAT22(uVar6, 0xff08);
    }
    if (*(int16_t *)0xf73d != 0x3fb1) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    out(0x3ce, 5);
    out(0x3ce, 3);
    out(0x3ce, 0xff08);
    out(0x3ce, 0xf07);
    out(0x3ce, 0xf02);
    return 0x3ce0f02;
}

/* ====================================================================== */
/* 0x1c5: fcn.000001c5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000001c5(int16_t arg1, int16_t arg3)
{
    uint16_t in_CX;
    uint16_t arg3_00;
    
    arg3_00 = (uint16_t)arg3 >> 8;
    *(int16_t *)0x4214 = (in_CX >> 8) * (in_CX & 0xff);
    *(undefined *)0x4213 = 0;
    if ((char)arg1 == '\0') {
        fcn.000001f9(in_CX, arg3_00);
    }
    *(undefined *)0x4213 = 0xff;
    fcn.000001f9(in_CX, arg3_00);
    return;
}

/* ====================================================================== */
/* 0x1f9: fcn.000001f9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined fcn.000001f9(int16_t arg4, int16_t arg3)
{
    char cVar1;
    undefined uVar3;
    int16_t iVar2;
    int16_t iVar4;
    undefined2 unaff_SI;
    undefined2 unaff_DI;
    
    *(char *)0x4211 = '\0';
    iVar4 = 8;
    do {
        *(char *)0x4210 = *(char *)0x4211;
        *(uint8_t *)0xff1a = 0;
        iVar2 = arg4;
        do {
            (**(code **)0x4216)(unaff_DI, unaff_SI);
            *(char *)0x4210 = *(char *)0x4210 + '\x01';
            uVar3 = (undefined)((uint16_t)iVar2 >> 8);
            cVar1 = (char)iVar2 + -1;
            if (cVar1 == '\0') break;
            (**(code **)0x4216)();
            *(char *)0x4210 = *(char *)0x4210 + '\x01';
            iVar2 = CONCAT11(uVar3, cVar1 + -1);
        } while ((char)(cVar1 + -1) != '\0');
        *(char *)0x4211 = *(char *)0x4211 + '\x01';
        do {
        } while (*(uint8_t *)0xff1a < 0x14);
        iVar4 = iVar4 + -1;
        if (iVar4 == 0) {
            return uVar3;
        }
    } while( true );
}

/* ====================================================================== */
/* 0x274: fcn.00000274 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000274(int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint16_t uVar1;
    undefined in_BH;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    out(arg2, 8);
    out(arg2 + 1, (char)((uint16_t)arg1 >> 8));
    uVar1 = (uint16_t)arg4 >> 8;
    do {
        LOCK();
        *unaff_DI = in_BH;
        UNLOCK();
        unaff_DI = unaff_DI + 1;
        uVar1 = uVar1 - 1;
    } while (uVar1 != 0);
    return CONCAT22(arg2, arg1);
}

/* ====================================================================== */
/* 0x28f: fcn.0000028f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000028f(int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    uint16_t uVar2;
    undefined in_BH;
    uint8_t *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(arg2, 8);
    uVar2 = (uint16_t)arg4 >> 8;
    do {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        out(arg2 + 1, *puVar1 & (uint8_t)((uint16_t)arg1 >> 8));
        LOCK();
        *unaff_DI = in_BH;
        UNLOCK();
        unaff_DI = unaff_DI + 1;
        uVar2 = uVar2 - 1;
    } while (uVar2 != 0);
    return CONCAT22(arg2, arg1);
}

/* ====================================================================== */
/* 0x365: fcn.00000365 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000365(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    uint16_t uVar3;
    undefined2 uVar4;
    uint16_t uVar5;
    uint16_t uVar6;
    undefined *unaff_SI;
    undefined *puVar7;
    undefined *unaff_DI;
    undefined *puVar8;
    undefined2 unaff_DS;
    
    uVar4 = 0xa002;
    out(0x3c4, 2);
    uVar3 = (uint16_t)arg4 >> 8;
    uVar6 = arg4 & 0xff;
    do {
        out(0x3c5, 1);
        puVar7 = unaff_SI;
        puVar8 = unaff_DI;
        for (uVar5 = uVar3; uVar5 != 0; uVar5 = uVar5 - 1) {
            puVar2 = puVar8;
            puVar8 = puVar8 + 1;
            puVar1 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar2 = *puVar1;
        }
        out(0x3c5, 2);
        puVar7 = unaff_SI + *(int16_t *)0x4214;
        puVar8 = unaff_DI;
        for (uVar5 = uVar3; uVar5 != 0; uVar5 = uVar5 - 1) {
            puVar2 = puVar8;
            puVar8 = puVar8 + 1;
            puVar1 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar2 = *puVar1;
        }
        uVar4 = CONCAT11((char)((uint16_t)uVar4 >> 8), 4);
        out(0x3c5, 4);
        puVar7 = unaff_SI + *(int16_t *)0x4214 * 2;
        puVar8 = unaff_DI;
        for (uVar5 = uVar3; uVar5 != 0; uVar5 = uVar5 - 1) {
            puVar2 = puVar8;
            puVar8 = puVar8 + 1;
            puVar1 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar2 = *puVar1;
        }
        unaff_DI = unaff_DI + 0x50;
        unaff_SI = unaff_SI + uVar3;
        uVar6 = uVar6 - 1;
    } while (uVar6 != 0);
    return CONCAT22(0x3c5, uVar4);
}

/* ====================================================================== */
/* 0x56a: fcn.0000056a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000056a(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    uint16_t uVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_SI;
        for (uVar4 = (uint16_t)arg4 >> 8; uVar4 != 0; uVar4 = uVar4 - 1) {
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        unaff_SI = unaff_SI + 0x50;
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x1138: fcn.00001138 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00001138(int16_t arg1)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    int16_t iVar4;
    undefined2 unaff_DS;
    
    puVar2 = (undefined *)(arg1 * 0x10 + 0x416a);
    in(*(int16_t *)0x463 + 6);
    cVar3 = '\0';
    iVar4 = 0x10;
    do {
        out(0x3c0, cVar3);
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        out(0x3c0, *puVar1);
        cVar3 = cVar3 + '\x01';
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    in(*(int16_t *)0x463 + 6);
    out(0x3c0, 0x20);
    return CONCAT22(0x3c0, CONCAT11(cVar3, 0x20));
}

/* ====================================================================== */
/* 0x596: fcn.00000596 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000596(int16_t arg4)
{
    uint8_t *puVar1;
    char cVar2;
    uint16_t uVar3;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    uint8_t *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        uVar3 = (uint16_t)arg4 >> 8;
        puVar4 = unaff_DI;
        do {
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar4 = *puVar4 | *puVar1;
            puVar4 = puVar4 + 1;
            uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
        unaff_DI = unaff_DI + 0x50;
        cVar2 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar2);
    } while (cVar2 != '\0');
    return;
}

/* ====================================================================== */
/* 0x580: fcn.00000580 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000580(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    uint16_t uVar4;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_DI;
        for (uVar4 = (uint16_t)arg4 >> 8; uVar4 != 0; uVar4 = uVar4 - 1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        unaff_DI = unaff_DI + 0x50;
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x612: fcn.00000612 */
/* ====================================================================== */


void fcn.00000612(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar3 = 0x30;
    do {
        puVar5 = unaff_DI;
        for (iVar4 = 0x11; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        unaff_DI = unaff_DI + 0x28;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x65f: fcn.0000065f */
/* ====================================================================== */


void fcn.0000065f(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar3 = 0x20;
    do {
        puVar5 = unaff_DI;
        for (iVar4 = 9; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        unaff_DI = unaff_DI + 0x28;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x6bf: fcn.000006bf */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000006bf(int16_t arg1, int16_t arg4, int16_t arg3)
{
    undefined2 uVar1;
    uint16_t uVar2;
    uint8_t uVar5;
    undefined *puVar3;
    undefined *puVar4;
    int16_t iVar6;
    int16_t iVar7;
    undefined *puVar8;
    undefined *puVar9;
    
    uVar1 = *(undefined2 *)0xff2c;
    uVar2 = arg1 & 0xff;
    while( true ) {
        uVar5 = (uint8_t)(uVar2 >> 8);
        if ((uint8_t)uVar2 < 0x28) break;
        uVar2 = CONCAT11(uVar5 + 1, (uint8_t)uVar2 - 0x28);
    }
    puVar3 = (undefined *)((uint16_t)uVar5 * 0x140 + (uVar2 & 0xff) + 0x4000);
    puVar4 = (undefined *)((arg3 & 0xffU) * 0x110 + ((uint16_t)arg3 >> 8));
    iVar6 = 3;
    do {
        iVar7 = 8;
        puVar8 = puVar3;
        puVar9 = puVar4;
        do {
            *puVar9 = *puVar8;
            puVar9 = puVar9 + 0x22;
            puVar8 = puVar8 + 0x28;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        puVar4 = puVar4 + 0x1a90;
        puVar3 = puVar3 + 0x640;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x903: fcn.00000903 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000903(int16_t arg1, int16_t arg2)
{
    undefined uVar1;
    int16_t iVar2;
    uint8_t uVar3;
    int16_t iVar4;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = (uint16_t)(uint8_t)((char)arg1 - 1) * 8;
    out(arg2, 3);
    out(arg2, 0xff08);
    LOCK();
    *unaff_DI = 0;
    UNLOCK();
    LOCK();
    unaff_DI[0x50] = 0;
    UNLOCK();
    LOCK();
    unaff_DI[0xa0] = 0;
    UNLOCK();
    LOCK();
    unaff_DI[0xf0] = 0;
    UNLOCK();
    out(arg2, 0x1003);
    out(arg2, 8);
    iVar4 = arg2 + 1;
    uVar3 = *(uint8_t *)0x4210 >> 1 | *(uint8_t *)0x4210 << 7;
    out(iVar4, *(uint8_t *)(iVar2 + 0x39ac) & *(uint8_t *)0x4210);
    LOCK();
    *unaff_DI = *(undefined *)0x4211;
    UNLOCK();
    out(iVar4, *(uint8_t *)(iVar2 + 0x39ad) & uVar3);
    LOCK();
    unaff_DI[0x50] = *(undefined *)0x4211;
    UNLOCK();
    out(iVar4, *(uint8_t *)(iVar2 + 0x39ae) & *(uint8_t *)0x4210);
    LOCK();
    unaff_DI[0xa0] = *(undefined *)0x4211;
    UNLOCK();
    out(iVar4, *(uint8_t *)(iVar2 + 0x39af) & uVar3);
    LOCK();
    unaff_DI[0xf0] = *(undefined *)0x4211;
    UNLOCK();
    out(iVar4, *(undefined *)(iVar2 + 0x39b0));
    LOCK();
    *unaff_DI = 6;
    UNLOCK();
    out(iVar4, *(undefined *)(iVar2 + 0x39b1));
    LOCK();
    unaff_DI[0x50] = 6;
    UNLOCK();
    out(iVar4, *(undefined *)(iVar2 + 0x39b2));
    LOCK();
    unaff_DI[0xa0] = 6;
    UNLOCK();
    out(iVar4, *(undefined *)(iVar2 + 0x39b3));
    LOCK();
    uVar1 = unaff_DI[0xf0];
    unaff_DI[0xf0] = 6;
    UNLOCK();
    return CONCAT22(arg2, CONCAT11(uVar3, uVar1));
}

/* ====================================================================== */
/* 0xbd0: fcn.00000bd0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000bd0(int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    undefined uVar3;
    int16_t iVar4;
    int16_t iVar5;
    uint8_t in_BL;
    uint8_t in_BH;
    int16_t unaff_SI;
    undefined *puVar6;
    undefined *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 2);
    puVar2 = (undefined2 *)((uint16_t)(uint8_t)(*(uint8_t *)0x4211 + 0x10) * 0x50 + 4);
    if ((in_BL <= *(uint8_t *)0x4211) && (*(uint8_t *)0x4211 < (uint8_t)(in_BL + *(char *)0x4216))) {
        iVar5 = (uint16_t)(uint8_t)(*(uint8_t *)0x4211 - in_BL) * (uint16_t)*(uint8_t *)0x4217;
        puVar6 = (undefined *)(unaff_SI + iVar5);
        *(uint8_t *)0x4210 = 0;
        iVar4 = 0x48;
        do {
            uVar3 = (undefined)((uint16_t)iVar5 >> 8);
            iVar5 = CONCAT11(uVar3, 0xf);
            out(0x3c5, 0xf);
            *(undefined *)puVar2 = 0;
            if ((in_BH <= *(uint8_t *)0x4210) &&
               (iVar5 = CONCAT11(uVar3, in_BH + *(uint8_t *)0x4217),
               *(uint8_t *)0x4210 < (uint8_t)(in_BH + *(uint8_t *)0x4217))) {
                puVar7 = puVar6;
                if ((*(uint8_t *)0x4213 & 1) != 0) {
                    out(0x3c5, 1);
                    iVar5 = CONCAT11(uVar3, *puVar6);
                    *(undefined *)puVar2 = *puVar6;
                    puVar7 = puVar6 + *(int16_t *)0x4214;
                }
                if ((*(uint8_t *)0x4213 & 2) != 0) {
                    out(0x3c5, 2);
                    iVar5 = CONCAT11((char)((uint16_t)iVar5 >> 8), *puVar7);
                    *(undefined *)puVar2 = *puVar7;
                    puVar7 = puVar7 + *(int16_t *)0x4214;
                }
                if ((*(uint8_t *)0x4213 & 4) != 0) {
                    out(0x3c5, 4);
                    iVar5 = CONCAT11((char)((uint16_t)iVar5 >> 8), *puVar7);
                    *(undefined *)puVar2 = *puVar7;
                }
                puVar6 = puVar6 + 1;
            }
            puVar2 = (undefined2 *)((int16_t)puVar2 + 1);
            *(uint8_t *)0x4210 = *(uint8_t *)0x4210 + 1;
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        return CONCAT22(0x3c5, iVar5);
    }
    out(0x3c5, 0xf);
    for (iVar5 = 0x24; iVar5 != 0; iVar5 = iVar5 + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0;
    }
    return 0x3c50000;
}

/* ====================================================================== */
/* 0xd16: fcn.00000d16 */
/* ====================================================================== */


undefined fcn.00000d16(void)
{
    undefined uVar1;
    undefined2 extraout_DX;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined *puVar2;
    undefined2 unaff_ES;
    
    fcn.00000d7e();
    out(extraout_DX, 0x3f);
    LOCK();
    *unaff_DI = 7;
    UNLOCK();
    puVar2 = unaff_DI + 1;
    out(extraout_DX, 0xff);
    in_BX = in_BX + -2;
    do {
        LOCK();
        *puVar2 = 7;
        UNLOCK();
        puVar2 = puVar2 + 1;
        in_BX = in_BX + -1;
    } while (in_BX != 0);
    out(extraout_DX, 0xfc);
    LOCK();
    uVar1 = *puVar2;
    *puVar2 = 7;
    UNLOCK();
    return uVar1;
}

/* ====================================================================== */
/* 0xd7e: fcn.00000d7e */
/* ====================================================================== */


undefined fcn.00000d7e(void)
{
    undefined uVar1;
    undefined2 in_DX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    out(in_DX, 0xff);
    LOCK();
    unaff_DI[-1] = 0;
    UNLOCK();
    LOCK();
    *unaff_DI = 0;
    UNLOCK();
    out(in_DX, 0x55U >> (*(uint8_t *)0x4211 & 1) | 'U' << 8 - (*(uint8_t *)0x4211 & 1));
    LOCK();
    unaff_DI[-1] = 2;
    UNLOCK();
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 2;
    UNLOCK();
    return uVar1;
}

/* ====================================================================== */
/* 0xd3b: fcn.00000d3b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined fcn.00000d3b(int16_t arg4)
{
    undefined uVar1;
    int16_t iVar2;
    undefined2 extraout_DX;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined *puVar3;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        fcn.00000d7e(unaff_DI);
        out(extraout_DX, 0x30);
        LOCK();
        *unaff_DI = 7;
        UNLOCK();
        out(extraout_DX, 0xf);
        LOCK();
        *unaff_DI = 0;
        UNLOCK();
        puVar3 = unaff_DI + 1;
        out(extraout_DX, 0xff);
        iVar2 = in_BX + -2;
        do {
            LOCK();
            *puVar3 = 0;
            UNLOCK();
            puVar3 = puVar3 + 1;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        out(extraout_DX, 0xc);
        LOCK();
        *puVar3 = 7;
        UNLOCK();
        out(extraout_DX, 0xf0);
        LOCK();
        uVar1 = *puVar3;
        *puVar3 = 0;
        UNLOCK();
        *(char *)0x4211 = *(char *)0x4211 + '\x01';
        unaff_DI = (undefined *)(arg4 + 0x50);
        arg4 = in_stack_00000000 + -1;
    } while (arg4 != 0);
    return uVar1;
}

/* ====================================================================== */
/* 0xf24: fcn.00000f24 */
/* ====================================================================== */


void fcn.00000f24(int16_t param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    int16_t unaff_DI;
    undefined *puVar2;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    fcn.00000fa9();
    puVar2 = (undefined *)(unaff_DI + 0x36);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fcn.00000fa9();
    fcn.00000fa9();
    iVar1 = 0x2d;
    puVar2 = (undefined *)(param_1 + 0x2ab6);
    do {
        puVar3 = puVar2;
        *puVar3 = 0xb0;
        puVar3[0x19] = 0xe;
        puVar3[0x50] = 0x70;
        puVar3[0x69] = 0xd;
        iVar1 = iVar1 + -1;
        puVar2 = puVar3 + 0xa0;
    } while (iVar1 != 0);
    puVar3[0xa0] = 0xb0;
    puVar3[0xb9] = 0xe;
    fcn.00000fa9();
    fcn.00000fa9();
    puVar2 = (undefined *)(param_3 + 0x2ab6);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fcn.00000fa9();
    return;
}

/* ====================================================================== */
/* 0xfa9: fcn.00000fa9 */
/* ====================================================================== */


void fcn.00000fa9(void)
{
    undefined *puVar1;
    undefined *puVar2;
    undefined in_AL;
    undefined in_AH;
    int16_t iVar3;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    puVar2 = unaff_DI + 1;
    *unaff_DI = in_AL;
    for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0xff;
    }
    *puVar2 = in_AH;
    return;
}

/* ====================================================================== */
/* 0xeb9: fcn.00000eb9 */
/* ====================================================================== */


undefined fcn.00000eb9(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined2 in_DX;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(in_DX, 1);
    puVar4 = unaff_SI;
    puVar5 = unaff_DI;
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = puVar5 + 0x18;
    for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = puVar5 + 0x18;
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = unaff_SI + 0x2a80;
    out(in_DX, 2);
    puVar5 = unaff_DI;
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = puVar5 + 0x18;
    for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = puVar5 + 0x18;
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = unaff_SI + 0x5500;
    out(in_DX, 4);
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = unaff_DI + 0x18;
    for (iVar3 = 10; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = puVar4 + 0x18;
    puVar5 = puVar5 + 0x18;
    for (iVar3 = 0xb; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    return 4;
}

/* ====================================================================== */
/* 0xe90: fcn.00000e90 */
/* ====================================================================== */


undefined fcn.00000e90(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined2 in_DX;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(in_DX, 1);
    puVar4 = unaff_SI;
    puVar5 = unaff_DI;
    for (iVar3 = 0x50; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = unaff_SI + 0x2a80;
    out(in_DX, 2);
    puVar5 = unaff_DI;
    for (iVar3 = 0x50; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    puVar4 = unaff_SI + 0x5500;
    out(in_DX, 4);
    for (iVar3 = 0x50; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    return 4;
}

/* ====================================================================== */
/* 0xff3: fcn.00000ff3 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001019: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000101c)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000ff3(int16_t arg1)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t *puVar3;
    uint8_t *puVar4;
    uint8_t *puVar5;
    int16_t iVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = (uint8_t *)((arg1 & 0xffU) * 0x2f + *(int16_t *)0x4218);
    puVar5 = (uint8_t *)((arg1 & 0xffU) * 0x50);
    out(0x3c4, 0x102);
    out(0x3ce, 4);
    if ((uint16_t)arg1 < 0x14) {
        iVar6 = 0x2f;
    } else {
        iVar6 = 0x23;
        if (0x16 < (uint16_t)arg1) {
            if ((uint16_t)arg1 < 0x1c) {
                for (iVar6 = 0x21; iVar6 != 0; iVar6 = iVar6 + -1) {
                    puVar3 = puVar5;
                    puVar5 = puVar5 + 1;
                    puVar1 = puVar4;
                    puVar4 = puVar4 + 1;
                    *puVar3 = *puVar1;
                }
                uVar2 = *puVar4;
                *puVar5 = *puVar5 & 3;
                *puVar5 = *puVar5 | uVar2 & 0xfc;
                return;
            }
            iVar6 = 0x21;
        }
    }
    for (; iVar6 != 0; iVar6 = iVar6 + -1) {
        puVar3 = puVar5;
        puVar5 = puVar5 + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar3 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x10be: fcn.000010be */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000010df: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000010e2)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000010be(int16_t arg1)
{
    undefined *puVar1;
    undefined *puVar2;
    undefined *puVar3;
    undefined *puVar4;
    int16_t iVar5;
    undefined2 in_DX;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar3 = (undefined *)((arg1 & 0xffU) * 0x2f + 0x3cd + *(int16_t *)0x4218);
    puVar4 = (undefined *)((arg1 & 0xffU) * 0x50 + 0x661);
    out(in_DX, 1);
    iVar5 = 0x2f;
    if ((uint16_t)arg1 < 0x5e) {
        for (iVar5 = 0xe; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar2 = puVar4;
            puVar4 = puVar4 + 1;
            puVar1 = puVar3;
            puVar3 = puVar3 + 1;
            *puVar2 = *puVar1;
        }
        iVar5 = 0x21;
    }
    for (; iVar5 != 0; iVar5 = iVar5 + -1) {
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar1 = 0;
    }
    return;
}

