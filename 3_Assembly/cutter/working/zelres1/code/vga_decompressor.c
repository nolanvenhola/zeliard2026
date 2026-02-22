/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x4 = "f;(0\\0&7"; // [ascii]
static const char *STR_0x51 = "ÓvcF+S1;ßããSW"; // [ibm037]
static const char *STR_0x158 = "6TJ\\J\\J\\"; // [ibm037]
static const char *STR_0x263 = "6TJ\\J\\J\\"; // [ibm037]
static const char *STR_0x3b1 = "ÓvcG+SY"; // [ibm037]
static const char *STR_0x770 = "uuuu;cF&ÚHÍW½"; // [ibm037]
static const char *STR_0x800 = "uuuu;cF&ÚHÍW½"; // [ibm037]
static const char *STR_0x886 = "ÓvcG+SZ;"; // [ibm037]
static const char *STR_0x9ed = "UJ\\J\\J\\J\\"; // [ibm037]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */
Ghidra Decompiler Error: Symbol $$undef0000000e extends beyond the end of the address space
/* ====================================================================== */
/* 0x4d1: fcn.000004d1 */
/* ====================================================================== */


void fcn.000004d1(undefined2 param_1, int16_t *param_2)
{
    int16_t iVar1;
    undefined uVar2;
    undefined2 extraout_DX;
    uint8_t in_BL;
    int16_t *arg1;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xff2a;
    *(undefined2 *)0x3bb4 = *(undefined2 *)(iVar1 + 0x25);
    *(undefined *)0x3bb6 = *(undefined *)(iVar1 + 0x27);
    *(int16_t *)0x3bba = *(int16_t *)0x80 + 3;
    if (*(char *)0x3bb4 == -3) {
        uVar2 = fcn.00000564();
        *(undefined *)0x3bb4 = uVar2;
    }
    fcn.000003c0(3);
    arg1 = *(int16_t **)0xc00f;
    do {
        fcn.000005fc();
        if (in_BL != 0) {
            in_BL = in_BL - 1;
            fcn.000005d6((uint16_t)in_BL * 3);
            fcn.0000063c((int16_t)arg1);
            arg1 = param_2;
        }
        arg1 = arg1 + 4;
    } while (*arg1 != -1);
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    fcn.0000058b();
    out(extraout_DX, 5);
    *(undefined *)0xe005 = 0xff;
    *(undefined *)0xe006 = 0xff;
    *(undefined *)0xe007 = 0xff;
    return;
}

/* ====================================================================== */
/* 0xe4: fcn.000000e4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.000000e4(int16_t arg1)
{
    int16_t iVar1;
    undefined2 extraout_DX;
    int16_t unaff_DS;
    
    if (*(char *)0x3bb3 == '\x1b') {
        return arg1;
    }
    if (*(uint8_t *)0x3bb3 != *(uint8_t *)0x83) {
        return (uint16_t)*(uint8_t *)0x83;
    }
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    iVar1 = 2;
    do {
        fcn.0000058b(iVar1);
        iVar1 = unaff_DS + -1;
    } while (iVar1 != 0);
    out(extraout_DX, 5);
    return 5;
}

/* ====================================================================== */
/* 0x58b: fcn.0000058b */
/* ====================================================================== */


void fcn.0000058b(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 3;
    do {
        *unaff_DI = *unaff_SI;
        unaff_DI[1] = unaff_SI[1];
        unaff_DI[0x50] = unaff_SI[2];
        unaff_DI[0x51] = unaff_SI[3];
        unaff_DI[0xa0] = unaff_SI[4];
        unaff_DI[0xa1] = unaff_SI[5];
        unaff_DI[0xf0] = unaff_SI[6];
        unaff_DI[0xf1] = unaff_SI[7];
        unaff_DI[0x140] = unaff_SI[8];
        unaff_DI[0x141] = unaff_SI[9];
        unaff_DI[400] = unaff_SI[10];
        unaff_DI[0x191] = unaff_SI[0xb];
        unaff_DI[0x1e0] = unaff_SI[0xc];
        unaff_DI[0x1e1] = unaff_SI[0xd];
        puVar1 = unaff_SI + 0xf;
        unaff_DI[0x230] = unaff_SI[0xe];
        unaff_SI = unaff_SI + 0x10;
        unaff_DI[0x231] = *puVar1;
        unaff_DI = unaff_DI + 0x280;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x21c: fcn.0000021c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000021c(int16_t arg3, int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    uint8_t uVar3;
    undefined *puVar4;
    char cVar5;
    char cVar6;
    undefined uVar7;
    undefined2 *puVar8;
    undefined2 uVar9;
    int16_t iVar11;
    undefined2 in_DX;
    undefined2 extraout_DX;
    undefined2 *puVar12;
    int16_t unaff_SI;
    int16_t unaff_DI;
    char *pcVar13;
    undefined2 unaff_ES;
    int16_t unaff_DS;
    char cVar10;
    
    cVar6 = *(char *)(unaff_DI + -1);
    uVar7 = (undefined)((uint16_t)arg1 >> 8);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    cVar6 = cVar6 + '\x01';
    if (cVar6 == '\0') {
        return CONCAT22(in_DX, CONCAT11(uVar7, cVar6));
    }
    uVar3 = *(uint8_t *)(unaff_SI + -1);
    cVar6 = *(char *)((uint16_t)uVar3 + *(int16_t *)0x8000);
    if (cVar6 == '\0') {
        cVar5 = *(char *)(unaff_DI + -1);
        *(undefined *)(unaff_DI + -1) = 0xfe;
        cVar5 = cVar5 + '\x01';
        if (cVar5 == '\0') {
            return CONCAT22(CONCAT11(cVar6, uVar3), CONCAT11(uVar7, cVar5));
        }
        uVar3 = *(uint8_t *)(unaff_SI + -1);
        *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
        puVar8 = (undefined2 *)((arg3 & 0xffU) * 0x280 + *(int16_t *)0x3bb1);
        iVar11 = (uint16_t)uVar3 * 2;
        if (*(int16_t *)(iVar11 + 0x3d4c) == 0) {
            *(undefined2 *)(iVar11 + 0x3d4c) = puVar8;
            uVar9 = *(undefined2 *)0xff2c;
            puVar12 = (undefined2 *)((uint16_t)uVar3 * 0x30 + -0x7f00);
            out(0x3c4, 2);
            iVar11 = 4;
            do {
                out(0x3c5, 1);
                *puVar8 = *puVar12;
                out(0x3c5, 2);
                *puVar8 = puVar12[1];
                out(0x3c5, 4);
                *puVar8 = puVar12[2];
                out(0x3c5, 1);
                puVar8[0x28] = puVar12[3];
                out(0x3c5, 2);
                puVar1 = puVar12 + 5;
                uVar2 = puVar12[4];
                puVar8[0x28] = uVar2;
                out(0x3c5, 4);
                puVar12 = puVar12 + 6;
                puVar8[0x28] = *puVar1;
                puVar8 = puVar8 + 0x50;
                iVar11 = iVar11 + -1;
            } while (iVar11 != 0);
            return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar2 >> 8), 4));
        }
        puVar4 = (undefined *)*(undefined2 *)(iVar11 + 0x3d4c);
        out(0x3c4, 0x702);
        out(0x3ce, 0x105);
        *(undefined *)puVar8 = *puVar4;
        *(undefined *)((int16_t)puVar8 + 1) = puVar4[1];
        *(undefined *)(puVar8 + 0x28) = puVar4[0x50];
        *(undefined *)((int16_t)puVar8 + 0x51) = puVar4[0x51];
        *(undefined *)(puVar8 + 0x50) = puVar4[0xa0];
        *(undefined *)((int16_t)puVar8 + 0xa1) = puVar4[0xa1];
        *(undefined *)(puVar8 + 0x78) = puVar4[0xf0];
        *(undefined *)((int16_t)puVar8 + 0xf1) = puVar4[0xf1];
        *(undefined *)(puVar8 + 0xa0) = puVar4[0x140];
        *(undefined *)((int16_t)puVar8 + 0x141) = puVar4[0x141];
        *(undefined *)(puVar8 + 200) = puVar4[400];
        *(undefined *)((int16_t)puVar8 + 0x191) = puVar4[0x191];
        *(undefined *)(puVar8 + 0xf0) = puVar4[0x1e0];
        *(undefined *)((int16_t)puVar8 + 0x1e1) = puVar4[0x1e1];
        *(undefined *)(puVar8 + 0x118) = puVar4[0x230];
        *(undefined *)((int16_t)puVar8 + 0x231) = puVar4[0x231];
        out(0x3ce, 5);
        return 0x3ce0005;
    }
    *(undefined *)(unaff_DI + -1) = *(undefined *)(unaff_SI + -1);
    out(0x3c4, 2);
    uVar7 = (**(code **)((uint8_t)((cVar6 - 1U & 3) * '\x02') + 0x32eb))(arg3);
    uVar3 = *(uint8_t *)(unaff_DS + -1);
    uVar9 = CONCAT11(uVar3, uVar7);
    if (uVar3 == 0) {
        return CONCAT22(extraout_DX, uVar9);
    }
    if (0x18 < uVar3) {
        return CONCAT22(extraout_DX, uVar9);
    }
    pcVar13 = *(char **)0x8004;
    cVar6 = *pcVar13;
    do {
        if (cVar6 == '\0') {
code_r0x000002ec:
            return CONCAT22(extraout_DX, uVar9);
        }
        cVar5 = pcVar13[1];
        cVar10 = (char)((uint16_t)uVar9 >> 8);
        uVar9 = CONCAT11(cVar10, cVar5);
        if (cVar5 == -1) goto code_r0x000002ec;
        if (cVar10 == cVar5) {
            uVar9 = CONCAT11(cVar10, pcVar13[2]);
            *(char *)(unaff_DI + -1) = pcVar13[2];
            goto code_r0x000002ec;
        }
        pcVar13 = pcVar13 + 2;
        cVar6 = cVar6 + -1;
    } while( true );
}

/* ====================================================================== */
/* 0x13f: fcn.0000013f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000013f(int16_t arg3)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    uint8_t uVar3;
    undefined *puVar4;
    undefined2 uVar5;
    char cVar6;
    undefined2 in_AX;
    undefined2 *puVar7;
    int16_t iVar8;
    undefined2 in_DX;
    int16_t unaff_SI;
    undefined2 *puVar9;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar6 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    cVar6 = cVar6 + '\x01';
    if (cVar6 == '\0') {
        return CONCAT22(in_DX, CONCAT11((char)((uint16_t)in_AX >> 8), cVar6));
    }
    uVar3 = *(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar7 = (undefined2 *)((arg3 & 0xffU) * 0x280 + *(int16_t *)0x3bb1);
    iVar8 = (uint16_t)uVar3 * 2;
    if (*(int16_t *)(iVar8 + 0x3d4c) == 0) {
        *(undefined2 *)(iVar8 + 0x3d4c) = puVar7;
        uVar5 = *(undefined2 *)0xff2c;
        puVar9 = (undefined2 *)((uint16_t)uVar3 * 0x30 + -0x7f00);
        out(0x3c4, 2);
        iVar8 = 4;
        do {
            out(0x3c5, 1);
            *puVar7 = *puVar9;
            out(0x3c5, 2);
            *puVar7 = puVar9[1];
            out(0x3c5, 4);
            *puVar7 = puVar9[2];
            out(0x3c5, 1);
            puVar7[0x28] = puVar9[3];
            out(0x3c5, 2);
            puVar1 = puVar9 + 5;
            uVar2 = puVar9[4];
            puVar7[0x28] = uVar2;
            out(0x3c5, 4);
            puVar9 = puVar9 + 6;
            puVar7[0x28] = *puVar1;
            puVar7 = puVar7 + 0x50;
            iVar8 = iVar8 + -1;
        } while (iVar8 != 0);
        return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar2 >> 8), 4));
    }
    puVar4 = (undefined *)*(undefined2 *)(iVar8 + 0x3d4c);
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    *(undefined *)puVar7 = *puVar4;
    *(undefined *)((int16_t)puVar7 + 1) = puVar4[1];
    *(undefined *)(puVar7 + 0x28) = puVar4[0x50];
    *(undefined *)((int16_t)puVar7 + 0x51) = puVar4[0x51];
    *(undefined *)(puVar7 + 0x50) = puVar4[0xa0];
    *(undefined *)((int16_t)puVar7 + 0xa1) = puVar4[0xa1];
    *(undefined *)(puVar7 + 0x78) = puVar4[0xf0];
    *(undefined *)((int16_t)puVar7 + 0xf1) = puVar4[0xf1];
    *(undefined *)(puVar7 + 0xa0) = puVar4[0x140];
    *(undefined *)((int16_t)puVar7 + 0x141) = puVar4[0x141];
    *(undefined *)(puVar7 + 200) = puVar4[400];
    *(undefined *)((int16_t)puVar7 + 0x191) = puVar4[0x191];
    *(undefined *)(puVar7 + 0xf0) = puVar4[0x1e0];
    *(undefined *)((int16_t)puVar7 + 0x1e1) = puVar4[0x1e1];
    *(undefined *)(puVar7 + 0x118) = puVar4[0x230];
    *(undefined *)((int16_t)puVar7 + 0x231) = puVar4[0x231];
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x136: fcn.00000136 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char fcn.00000136(int16_t arg3, int16_t arg2)
{
    undefined2 *puVar1;
    uint8_t uVar2;
    undefined *puVar3;
    char cVar4;
    undefined uVar5;
    undefined2 *puVar6;
    int16_t arg1;
    undefined2 uVar7;
    undefined2 extraout_DX;
    undefined2 extraout_DX_00;
    int16_t *arg3_00;
    undefined2 *unaff_SI;
    undefined2 *puVar8;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000000;
    int16_t *in_stack_00000002;
    undefined2 in_stack_00000004;
    int16_t iVar9;
    
    if (*(char *)((int16_t)unaff_SI + -1) == -3) {
        *(undefined2 *)0x3bb5 = *unaff_SI;
        *(undefined2 *)0x3bb7 = *(undefined2 *)((int16_t)unaff_SI + 7);
        *(undefined *)0x3bb9 = *(undefined *)((int16_t)unaff_SI + 9);
        *(int16_t *)0x3bba = (uint16_t)(uint8_t)(*(char *)0x3bb3 + 4) + *(int16_t *)0x80;
        uVar5 = fcn.00000564();
        *(undefined *)0x3bb4 = uVar5;
        if (*(char *)0x3bb7 == -3) {
            uVar5 = fcn.00000564();
            *(undefined *)0x3bb7 = uVar5;
        }
        fcn.000003bd();
        arg3_00 = *(int16_t **)0xc00f;
        iVar9 = unaff_DS;
        do {
            arg1 = fcn.000005fc();
            if ((char)arg3 != '\0') {
                fcn.000005d6(arg1);
                iVar9 = 0x459;
                fcn.000005b4((int16_t)arg3_00);
                arg3 = (int16_t)arg3_00;
                arg3_00 = in_stack_00000002;
            }
            arg3_00 = arg3_00 + 4;
        } while (*arg3_00 != -1);
        out(0x3c4, 0x702);
        uVar7 = 0x3ce;
        out(0x3ce, 0x105);
        if (*(char *)(iVar9 + -1) != -1) {
            fcn.0000058b(*(int16_t *)0x3bb1 + 0xc80, CONCAT11(*(char *)(iVar9 + -1), *(undefined *)(iVar9 + 7)));
            uVar7 = extraout_DX;
        }
        if ((*(char *)0x3bb3 != '\x1b') && ((char)iVar9 != -1)) {
            fcn.0000058b();
            uVar7 = extraout_DX_00;
        }
        out(uVar7, 5);
        *(undefined *)((int16_t)in_stack_00000002 + -1) = 0xfe;
        *(undefined *)in_stack_00000002 = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 1) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 7) = 0xff;
        *(undefined *)(in_stack_00000002 + 4) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 9) = 0xff;
        return -1;
    }
    cVar4 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    cVar4 = cVar4 + '\x01';
    if (cVar4 == '\0') {
        return cVar4;
    }
    uVar2 = *(uint8_t *)((int16_t)unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)((int16_t)unaff_SI + -1);
    puVar6 = (undefined2 *)((arg3 & 0xffU) * 0x280 + *(int16_t *)0x3bb1);
    iVar9 = (uint16_t)uVar2 * 2;
    if (*(int16_t *)(iVar9 + 0x3d4c) == 0) {
        *(undefined2 *)(iVar9 + 0x3d4c) = puVar6;
        uVar7 = *(undefined2 *)0xff2c;
        puVar8 = (undefined2 *)((uint16_t)uVar2 * 0x30 + -0x7f00);
        out(0x3c4, 2);
        iVar9 = 4;
        do {
            out(0x3c5, 1);
            *puVar6 = *puVar8;
            out(0x3c5, 2);
            *puVar6 = puVar8[1];
            out(0x3c5, 4);
            *puVar6 = puVar8[2];
            out(0x3c5, 1);
            puVar6[0x28] = puVar8[3];
            out(0x3c5, 2);
            puVar1 = puVar8 + 5;
            puVar6[0x28] = puVar8[4];
            out(0x3c5, 4);
            puVar8 = puVar8 + 6;
            puVar6[0x28] = *puVar1;
            puVar6 = puVar6 + 0x50;
            iVar9 = iVar9 + -1;
        } while (iVar9 != 0);
        return '\x04';
    }
    puVar3 = (undefined *)*(undefined2 *)(iVar9 + 0x3d4c);
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    *(undefined *)puVar6 = *puVar3;
    *(undefined *)((int16_t)puVar6 + 1) = puVar3[1];
    *(undefined *)(puVar6 + 0x28) = puVar3[0x50];
    *(undefined *)((int16_t)puVar6 + 0x51) = puVar3[0x51];
    *(undefined *)(puVar6 + 0x50) = puVar3[0xa0];
    *(undefined *)((int16_t)puVar6 + 0xa1) = puVar3[0xa1];
    *(undefined *)(puVar6 + 0x78) = puVar3[0xf0];
    *(undefined *)((int16_t)puVar6 + 0xf1) = puVar3[0xf1];
    *(undefined *)(puVar6 + 0xa0) = puVar3[0x140];
    *(undefined *)((int16_t)puVar6 + 0x141) = puVar3[0x141];
    *(undefined *)(puVar6 + 200) = puVar3[400];
    *(undefined *)((int16_t)puVar6 + 0x191) = puVar3[0x191];
    *(undefined *)(puVar6 + 0xf0) = puVar3[0x1e0];
    *(undefined *)((int16_t)puVar6 + 0x1e1) = puVar3[0x1e1];
    *(undefined *)(puVar6 + 0x118) = puVar3[0x230];
    *(undefined *)((int16_t)puVar6 + 0x231) = puVar3[0x231];
    out(0x3ce, 5);
    return '\x05';
}

/* ====================================================================== */
/* 0x564: fcn.00000564 */
/* ====================================================================== */


void fcn.00000564(void)
{
    char *pcVar1;
    int16_t in_DX;
    short unsigned int extraout_DX;
    short unsigned int arg2;
    short unsigned int extraout_DX_00;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    fcn.0000057d(in_DX);
    arg2 = extraout_DX;
    if (*(char *)(unaff_SI + 3) != -3) {
        return;
    }
    do {
        fcn.00000581(arg2);
        pcVar1 = (char *)(unaff_SI + 0xb);
        arg2 = extraout_DX_00;
        unaff_SI = unaff_SI + 8;
    } while (*pcVar1 == -3);
    return;
}

/* ====================================================================== */
/* 0x57d: fcn.0000057d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000057d(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x581: fcn.00000581 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000581(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x3bd: fcn.000003bd */
/* ====================================================================== */


undefined4 fcn.000003bd(void)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    undefined2 uVar4;
    int16_t iVar5;
    int16_t iVar6;
    uint8_t *unaff_SI;
    undefined2 *puVar7;
    undefined2 *unaff_DI;
    undefined2 *puVar8;
    undefined2 unaff_DS;
    
    iVar5 = 6;
    do {
        uVar4 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar7 = (undefined2 *)((uint16_t)*puVar1 * 0x30 + -0x7f00);
        out(0x3c4, 2);
        iVar6 = 8;
        puVar8 = unaff_DI;
        do {
            out(0x3c5, 1);
            unaff_DI = puVar8 + 1;
            *puVar8 = *puVar7;
            out(0x3c5, 2);
            puVar2 = puVar7 + 2;
            uVar3 = puVar7[1];
            *puVar8 = uVar3;
            out(0x3c5, 4);
            puVar7 = puVar7 + 3;
            *puVar8 = *puVar2;
            iVar6 = iVar6 + -1;
            puVar8 = unaff_DI;
        } while (iVar6 != 0);
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar3 >> 8), 4));
}

/* ====================================================================== */
/* 0x5fc: fcn.000005fc */
/* ====================================================================== */


void fcn.000005fc(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 2;
    iVar2 = *(int16_t *)0x3bba;
    do {
        if (*unaff_SI == iVar2) {
            return;
        }
        iVar2 = iVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x5d6: fcn.000005d6 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char fcn.000005d6(int16_t arg1)
{
    char cVar1;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    cVar1 = '\0';
    if (-1 < *(char *)(unaff_SI + 2)) {
        cVar1 = '\x04';
    }
    return ((*(uint8_t *)(unaff_SI + 4) & 3) + cVar1) * '\x06';
}

/* ====================================================================== */
/* 0x5b4: fcn.000005b4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000005b4(int16_t arg3)
{
    (**(code **)((uint16_t)(uint8_t)((char)arg3 - 1) * 2 + 0x35be))();
    return;
}

/* ====================================================================== */
/* 0x3c0: fcn.000003c0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.000003c0(int16_t arg4)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    undefined2 uVar4;
    int16_t iVar5;
    uint8_t *unaff_SI;
    undefined2 *puVar6;
    undefined2 *unaff_DI;
    undefined2 *puVar7;
    undefined2 unaff_DS;
    
    do {
        uVar4 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar6 = (undefined2 *)((uint16_t)*puVar1 * 0x30 + -0x7f00);
        out(0x3c4, 2);
        iVar5 = 8;
        puVar7 = unaff_DI;
        do {
            out(0x3c5, 1);
            unaff_DI = puVar7 + 1;
            *puVar7 = *puVar6;
            out(0x3c5, 2);
            puVar2 = puVar6 + 2;
            uVar3 = puVar6[1];
            *puVar7 = uVar3;
            out(0x3c5, 4);
            puVar6 = puVar6 + 3;
            *puVar7 = *puVar2;
            iVar5 = iVar5 + -1;
            puVar7 = unaff_DI;
        } while (iVar5 != 0);
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar3 >> 8), 4));
}

/* ====================================================================== */
/* 0x63c: fcn.0000063c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000063c(int16_t arg1)
{
    undefined *puVar1;
    undefined *puVar2;
    undefined *unaff_BP;
    undefined *unaff_SI;
    undefined *puVar3;
    undefined *unaff_ES;
    undefined *unaff_DS;
    int16_t in_stack_00000000;
    
    puVar1 = (undefined *)0x3;
    do {
        puVar2 = puVar1;
        *unaff_SI = 0xff;
        puVar3 = unaff_SI + 1;
        fcn.00000693(unaff_BP + 1);
        puVar1 = (undefined *)(in_stack_00000000 + -1);
        unaff_BP = unaff_ES;
        unaff_SI = unaff_DS;
        unaff_ES = puVar3;
        unaff_DS = puVar2;
    } while ((undefined *)(in_stack_00000000 + -1) != (undefined *)0x0);
    return;
}

/* ====================================================================== */
/* 0x693: fcn.00000693 */
/* ====================================================================== */


undefined4 fcn.00000693(void)
{
    uint16_t *puVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    uint16_t uVar5;
    uint8_t uVar6;
    int16_t iVar7;
    uint8_t uVar8;
    uint16_t *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x205);
    iVar7 = 8;
    do {
        out(0x3ce, 3);
        out(0x3ce, 8);
        uVar2 = *unaff_SI;
        puVar1 = unaff_SI + 2;
        uVar3 = unaff_SI[1];
        unaff_SI = unaff_SI + 3;
        uVar4 = *puVar1;
        uVar5 = uVar4 | uVar3 | uVar2;
        out(0x3cf, (char)uVar5);
        LOCK();
        *unaff_DI = 0;
        UNLOCK();
        out(0x3cf, (char)(uVar5 >> 8));
        LOCK();
        unaff_DI[1] = 0;
        UNLOCK();
        uVar5 = uVar4 & uVar3 & uVar2;
        out(0x3ce, 0x1003);
        out(0x3ce, 8);
        uVar6 = (uint8_t)uVar5;
        out(0x3cf, (uint8_t)uVar2 ^ uVar6);
        LOCK();
        *unaff_DI = 1;
        UNLOCK();
        uVar8 = (uint8_t)(uVar5 >> 8);
        out(0x3cf, (uint8_t)(uVar2 >> 8) ^ uVar8);
        LOCK();
        unaff_DI[1] = 1;
        UNLOCK();
        out(0x3cf, (uint8_t)uVar3 ^ uVar6);
        LOCK();
        *unaff_DI = 2;
        UNLOCK();
        out(0x3cf, (uint8_t)(uVar3 >> 8) ^ uVar8);
        LOCK();
        unaff_DI[1] = 2;
        UNLOCK();
        out(0x3cf, (uint8_t)uVar4 ^ uVar6);
        LOCK();
        *unaff_DI = 4;
        UNLOCK();
        out(0x3cf, (uint8_t)(uVar4 >> 8) ^ uVar8);
        LOCK();
        unaff_DI[1] = 4;
        UNLOCK();
        unaff_DI = unaff_DI + 2;
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    out(0x3ce, 3);
    out(0x3ce, 5);
    out(0x3ce, 0xff08);
    return 0x3ceff08;
}

/* ====================================================================== */
/* 0x93b: fcn.0000093b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000093b(int16_t arg3)
{
    undefined2 in_AX;
    char *pcVar1;
    char *unaff_SI;
    char *unaff_DS;
    undefined2 in_stack_00000000;
    char *pcVar2;
    
    pcVar1 = (char *)(arg3 & 0xff00);
    while( true ) {
        if (*unaff_SI == '\0') break;
        pcVar2 = pcVar1;
        in_AX = fcn.00000958(CONCAT11((char)((uint16_t)in_AX >> 8), *unaff_SI), (uint16_t)pcVar1 & 0xff03);
        pcVar1 = (char *)CONCAT11((char)((uint16_t)in_stack_00000000 >> 8), (char)in_stack_00000000 + '\x01');
        unaff_SI = unaff_DS;
        unaff_DS = pcVar2;
    }
    return;
}

/* ====================================================================== */
/* 0x958: fcn.00000958 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000958(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    char cVar3;
    uint16_t uVar4;
    uint8_t *puVar5;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    
    puVar5 = (uint8_t *)((uint16_t)(uint8_t)((char)arg1 - 0x20) * 8 + *(int16_t *)0xf504);
    uVar2 = (char)arg3 * '\x02';
    cVar3 = '\b';
    do {
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        uVar4 = ((uint16_t)*puVar1 << 8) >> (uVar2 & 0x1f);
        *unaff_DI = *unaff_DI | (uint8_t)(uVar4 >> 8);
        unaff_DI[1] = unaff_DI[1] | (uint8_t)uVar4;
        unaff_DI = unaff_DI + 0x28;
        cVar3 = cVar3 + -1;
    } while (cVar3 != '\0');
    if (uVar2 != 6) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x9b8: fcn.000009b8 */
/* ====================================================================== */


void fcn.000009b8(int16_t param_1)
{
    uint16_t uVar1;
    uint16_t uVar2;
    undefined2 in_BX;
    undefined uVar4;
    int16_t iVar3;
    undefined *puVar5;
    undefined *puVar6;
    int16_t iVar7;
    undefined2 unaff_DS;
    
    uVar4 = (undefined)((uint16_t)in_BX >> 8);
    uVar1 = fcn.00000a1d();
    uVar2 = 6;
    iVar3 = CONCAT11(uVar4, 1);
    puVar5 = (undefined *)0x3a32;
    puVar6 = (undefined *)(*(int16_t *)0xff68 + 0x3be4);
    do {
        fcn.000009e5(CONCAT11((char)(uVar1 >> 8), *puVar5));
        iVar7 = iVar3 + 1;
        uVar1 = uVar2 & 1;
        iVar3 = CONCAT11((char)(uVar2 >> 8), (char)uVar2 + '\x01');
        uVar2 = param_1 - 1;
        puVar5 = puVar6;
        puVar6 = (undefined *)(iVar7 + uVar1);
    } while (uVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0xa1d: fcn.00000a1d */
/* ====================================================================== */


void fcn.00000a1d(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x3a31;
    fcn.00000a3c();
    iVar1 = 6;
    do {
        if (*pcVar2 != '\0') {
            return;
        }
        *pcVar2 = -1;
        pcVar2 = pcVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0xa3c: fcn.00000a3c */
/* ====================================================================== */


void fcn.00000a3c(void)
{
    undefined uVar1;
    int16_t in_AX;
    int16_t iVar2;
    undefined extraout_DH;
    undefined extraout_DH_00;
    undefined extraout_DH_01;
    undefined extraout_DH_02;
    undefined extraout_DH_03;
    undefined extraout_DH_04;
    undefined *unaff_DI;
    
    iVar2 = fcn.00000a82(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = fcn.00000a82(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = fcn.00000a82(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.00000a9b(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.00000a9b(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.00000a9b(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0xa82: fcn.00000a82 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a82(int16_t arg1, int16_t arg3)
{
    uint8_t in_CL;
    uint8_t in_DL;
    char cVar1;
    bool bVar2;
    
    cVar1 = '\0';
    do {
        bVar2 = in_DL < in_CL;
        in_DL = in_DL - in_CL;
        if (bVar2) {
code_r0x00000a98:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x00000a98;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0xa9b: fcn.00000a9b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a9b(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x9e5: fcn.000009e5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000009e5(int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    uint8_t in_BL;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    if ((char)arg1 == -1) {
        return;
    }
    puVar2 = (undefined2 *)((arg1 & 0xffU) * 0x10 + *(int16_t *)0xf502);
    iVar4 = 7;
    do {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        iVar3 = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
        if ((in_BL & 1) == 0) {
            iVar3 = iVar3 << 4;
        }
        *unaff_DI = *unaff_DI | (uint8_t)((uint16_t)iVar3 >> 8);
        unaff_DI[1] = unaff_DI[1] | (uint8_t)iVar3;
        unaff_DI = unaff_DI + 0x28;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

