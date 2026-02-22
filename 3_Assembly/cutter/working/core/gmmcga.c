/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x5 = "!'\"V\"1\"`\""; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000078: Changing call to branch
// WARNING: Possible PIC construction at 0x00000089: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000007b)
// WARNING: Removing unreachable block (ram,0x0000008c)
// WARNING: Removing unreachable block (ram,0x0000009a)
// WARNING: Removing unreachable block (ram,0x000000a7)
// WARNING: Removing unreachable block (ram,0x000000b6)
// WARNING: Removing unreachable block (ram,0x000000d3)
// WARNING: Removing unreachable block (ram,0x000000d5)
// WARNING: Unknown calling convention -- yet parameter storage is locked

uint32_t fcn.00000000(int16_t arg_22h, int16_t arg3, int16_t arg4, int16_t arg1)
{
    uint16_t *puVar1;
    char *pcVar2;
    int16_t *piVar3;
    undefined2 *puVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    undefined2 in_AX;
    char cVar7;
    uint16_t uVar8;
    int16_t iVar9;
    uint16_t in_CX;
    undefined2 in_DX;
    uint8_t uVar10;
    uint16_t *in_BX;
    uint16_t uVar11;
    uint16_t unaff_BP;
    uint16_t uVar12;
    int16_t unaff_SI;
    undefined2 *puVar13;
    undefined2 *puVar14;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    
    *(uint8_t *)0x9521 = *(uint8_t *)0x9521 & (uint8_t)in_AX;
    *in_BX = *in_BX & (uint16_t)&stack0x0000;
    uVar5 = *(uint8_t *)(unaff_BP + 0x22);
    puVar1 = (uint16_t *)(unaff_BP + unaff_SI + 1U);
    *puVar1 = *puVar1 ^ (uint16_t)&stack0x0000;
    cVar7 = (char)in_BX;
    uVar10 = (uint8_t)((uint16_t)in_BX >> 8) & *(uint8_t *)(in_BX + -0x196f);
    uVar6 = *(uint8_t *)(unaff_DI + -0x70dd);
    uVar11 = unaff_BP & *(uint16_t *)(unaff_SI + -0x33dc);
    uVar12 = unaff_SI + 1U & uVar11;
    uVar8 = (in_CX & *(uint16_t *)(uVar12 + 0x25)) - 1;
    if (uVar8 != 0) {
        uVar11 = ((uint16_t)in_BX & 0xff) / 0xcd;
        puVar13 = (undefined2 *)((uint16_t)uVar10 * 4 + ((uint16_t)in_BX & 0xff) * 0x140);
        if ((char)unaff_DI != '\0') {
            uVar11 = 0x909;
            if (*(char *)0xff77 != '\0') {
                uVar11 = 0xffff;
            }
            uVar8 = CONCAT11((char)(uVar8 >> 8), (char)uVar8 + -4);
            puVar13 = puVar13 + 0x140;
        }
        do {
            puVar14 = puVar13;
            for (iVar9 = (uVar8 >> 8) * 2; iVar9 != 0; iVar9 = iVar9 + -1) {
                puVar4 = puVar14;
                puVar14 = puVar14 + 1;
                *puVar4 = 0;
            }
            puVar13 = puVar13 + 0xa0;
            cVar7 = (char)uVar8 + -1;
            uVar8 = CONCAT11((char)(uVar8 >> 8), cVar7);
        } while (cVar7 != '\0');
        return (uint32_t)uVar11 << 0x10;
    }
    pcVar2 = (char *)(uVar11 + uVar12 + -0x26d8);
    *pcVar2 = *pcVar2 - cVar7;
    *(char *)(uVar11 + uVar12) = *(char *)(uVar11 + uVar12) - cVar7;
    piVar3 = (int16_t *)(CONCAT11(uVar10, cVar7) + 0x29);
    *piVar3 = *piVar3 - uVar11;
    return CONCAT22(CONCAT11((char)((uint16_t)in_DX >> 8), (uint8_t)in_DX & uVar5), 
                    CONCAT11((char)((uint16_t)in_AX >> 8), (uint8_t)in_AX & uVar6)) & 0xffff27e9;
}

/* ====================================================================== */
/* 0x1ce: fcn.000001ce */
/* ====================================================================== */


void fcn.000001ce(void)
{
    uint8_t in_AL;
    uint8_t in_AH;
    int16_t iVar1;
    uint8_t *unaff_DI;
    uint8_t *puVar2;
    undefined2 unaff_ES;
    
    if (*(char *)0x2226 == '\0') {
        *unaff_DI = 0;
        puVar2 = unaff_DI + 0x140;
        iVar1 = 8;
        do {
            *puVar2 = in_AH & 5;
            puVar2 = puVar2 + 0x140;
            iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
        *puVar2 = in_AL & 0x2d;
        return;
    }
    if (*(char *)0x2226 != -0x80) {
        iVar1 = 10;
        do {
            *unaff_DI = *unaff_DI & ~in_AL;
            *unaff_DI = *unaff_DI | in_AL & 1;
            unaff_DI = unaff_DI + 0x140;
            iVar1 = iVar1 + -1;
        } while (iVar1 != 0);
        return;
    }
    iVar1 = 10;
    do {
        *unaff_DI = *unaff_DI & ~in_AL;
        unaff_DI = unaff_DI + 0x140;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x29e: fcn.0000029e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.0000029e(int16_t arg3)
{
    if ((uint16_t)arg3 < 0x321) {
        return 800 - arg3;
    }
    return 800 - arg3;
}

/* ====================================================================== */
/* 0x2b0: fcn.000002b0 */
/* ====================================================================== */


void fcn.000002b0(void)
{
    uint8_t in_AL;
    uint8_t in_AH;
    char in_BH;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    
    do {
        *unaff_DI = *unaff_DI & in_AH;
        *unaff_DI = *unaff_DI | in_AL;
        unaff_DI = unaff_DI + 0x140;
        in_BH = in_BH + -1;
    } while (in_BH != '\0');
    return;
}

/* ====================================================================== */
/* 0x345: fcn.00000345 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000345(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    char cVar2;
    uint8_t uVar3;
    char cVar4;
    uint8_t *puVar5;
    undefined *unaff_DI;
    undefined *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    bool bVar7;
    
    puVar5 = (uint8_t *)((uint16_t)(uint8_t)((char)arg1 - 0x20) * 8 + *(int16_t *)0xf504);
    cVar4 = '\b';
    do {
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        uVar3 = *puVar1;
        cVar2 = '\x04';
        puVar6 = unaff_DI;
        do {
            bVar7 = CARRY1(uVar3, uVar3);
            uVar3 = uVar3 * '\x02';
            if (bVar7) {
                puVar6[1] = *(undefined *)0x2cbe;
                *puVar6 = *(undefined *)0x2cbd;
            }
            puVar6 = puVar6 + 1;
            cVar2 = cVar2 + -1;
        } while (cVar2 != '\0');
        unaff_DI = unaff_DI + 0x140;
        cVar4 = cVar4 + -1;
    } while (cVar4 != '\0');
    return;
}

/* ====================================================================== */
/* 0x41b: fcn.0000041b */
/* ====================================================================== */


void fcn.0000041b(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x2433;
    fcn.0000043a();
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
/* 0x43a: fcn.0000043a */
/* ====================================================================== */


void fcn.0000043a(void)
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
    
    iVar2 = fcn.00000480(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = fcn.00000480(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = fcn.00000480(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.00000499(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.00000499(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.00000499(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0x480: fcn.00000480 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000480(int16_t arg1, int16_t arg3)
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
code_r0x00000496:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x00000496;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0x499: fcn.00000499 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000499(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x4a3: fcn.000004a3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000004a3(int16_t arg3, int16_t arg1, int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    undefined2 uVar3;
    char cVar4;
    uint8_t uVar6;
    undefined *puVar5;
    int16_t iVar7;
    undefined *unaff_DI;
    undefined *unaff_DS;
    int16_t in_stack_00000000;
    
    *(undefined *)0x2cbe = (char)((uint16_t)arg3 >> 8);
    *(undefined *)0x2cbd = *(undefined *)((arg3 & 0xffU) + 0x24ea);
    uVar6 = (uint8_t)((uint16_t)arg4 >> 8);
    uVar3 = 0xa000;
    puVar2 = (undefined *)CONCAT11(uVar6 >> 1, (char)arg4);
    iVar7 = ((uint16_t)arg1 >> 8) * 4 + (arg1 & 0xffU) * 0x140 + (-(uint16_t)(uVar6 & 1) & 2);
    do {
        puVar5 = puVar2;
        puVar1 = unaff_DI;
        unaff_DS = unaff_DI + 1;
        uVar3 = fcn.000004f2(CONCAT11((char)((uint16_t)uVar3 >> 8), *puVar1));
        cVar4 = (char)iVar7 + -1;
        puVar2 = (undefined *)CONCAT11((char)((uint16_t)iVar7 >> 8), cVar4);
        iVar7 = in_stack_00000000 + 6;
        unaff_DI = puVar5;
    } while (cVar4 != '\0');
    return;
}

/* ====================================================================== */
/* 0x4f2: fcn.000004f2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000004f2(int16_t arg1)
{
    char *pcVar1;
    undefined2 *puVar2;
    uint8_t uVar3;
    char *pcVar4;
    char cVar5;
    int16_t iVar6;
    int16_t iVar7;
    undefined2 *unaff_DI;
    undefined2 *puVar8;
    undefined2 *puVar9;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    bool bVar10;
    
    if (*(char *)0x2cbe != '\0') {
        iVar6 = 7;
        puVar8 = unaff_DI;
        do {
            puVar9 = puVar8;
            for (iVar7 = 3; iVar7 != 0; iVar7 = iVar7 + -1) {
                puVar2 = puVar9;
                puVar9 = puVar9 + 1;
                *puVar2 = 0x505;
            }
            puVar8 = puVar8 + 0xa0;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
    }
    if ((char)arg1 != -1) {
        pcVar4 = (char *)((arg1 & 0xffU) * 8 + *(int16_t *)0xf502);
        iVar6 = 7;
        do {
            pcVar1 = pcVar4;
            pcVar4 = pcVar4 + 1;
            uVar3 = *pcVar1 * '\x04';
            cVar5 = '\x06';
            do {
                puVar8 = unaff_DI;
                bVar10 = CARRY1(uVar3, uVar3);
                uVar3 = uVar3 * '\x02';
                if (bVar10) {
                    *(undefined *)puVar8 = *(undefined *)0x2cbd;
                }
                cVar5 = cVar5 + -1;
                unaff_DI = (undefined2 *)((int16_t)puVar8 + 1);
            } while (cVar5 != '\0');
            unaff_DI = (undefined2 *)((int16_t)puVar8 + 0x13b);
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x7b2: fcn.000007b2 */
/* ====================================================================== */


void fcn.000007b2(void)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t iVar4;
    char *unaff_BP;
    undefined2 unaff_ES;
    bool bVar5;
    bool bVar6;
    bool bVar7;
    
    iVar4 = 4;
    do {
        bVar5 = (int16_t)*(uint16_t *)0x2cc7 < 0;
        uVar1 = *(uint16_t *)0x2cc7 << 1 | (uint16_t)bVar5;
        bVar6 = (int16_t)*(uint16_t *)0x2cc5 < 0;
        uVar2 = *(uint16_t *)0x2cc5 << 1 | (uint16_t)bVar6;
        bVar7 = (int16_t)*(uint16_t *)0x2cc3 < 0;
        uVar3 = *(uint16_t *)0x2cc3 << 1 | (uint16_t)bVar7;
        *(uint16_t *)0x2cc7 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x2cc5 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x2cc3 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        *unaff_BP = ((((bVar5 * '\x02' + bVar6) * '\x02' + bVar7) * '\x02' + ((int16_t)uVar1 < 0)) * '\x02' +
                    ((int16_t)uVar2 < 0)) * '\x02' + ((int16_t)uVar3 < 0);
        unaff_BP = unaff_BP + 1;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x748: fcn.00000748 */
/* ====================================================================== */


void fcn.00000748(undefined2 param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    undefined2 *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 0x10;
    do {
        *(undefined2 *)0x2cc3 = CONCAT11((char)*unaff_SI, (char)((uint16_t)*unaff_SI >> 8));
        *(undefined2 *)0x2cc5 = unaff_SI[3];
        *(undefined2 *)0x2cc7 = CONCAT11((char)unaff_SI[4], (char)((uint16_t)unaff_SI[4] >> 8));
        fcn.000007b2(iVar1);
        fcn.000007b2();
        *(undefined2 *)0x2cc3 = CONCAT11((char)unaff_SI[1], (char)((uint16_t)unaff_SI[1] >> 8));
        *(undefined2 *)0x2cc5 = unaff_SI[2];
        *(undefined2 *)0x2cc7 = CONCAT11((char)unaff_SI[5], (char)((uint16_t)unaff_SI[5] >> 8));
        fcn.000007b2();
        fcn.000007b2();
        unaff_SI = unaff_SI + 6;
        iVar1 = param_3 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x7e9: fcn.000007e9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000007e9(int16_t arg3, int16_t arg1)
{
    uint8_t *puVar1;
    uint8_t uVar4;
    uint8_t uVar5;
    uint8_t *puVar2;
    undefined *puVar3;
    uint16_t in_CX;
    int16_t iVar6;
    int16_t iVar7;
    undefined *puVar8;
    undefined2 unaff_CS;
    bool bVar9;
    
    uVar4 = (uint8_t)((uint16_t)arg1 >> 8);
    uVar5 = *(uint8_t *)(uVar4 + 0x24ea);
    if (*(char *)0xff77 != '\0') {
        uVar5 = uVar4 << 4 | uVar4;
    }
    *(uint8_t *)0x2cbd = uVar5;
    puVar2 = (uint8_t *)((uint16_t)(uint8_t)((char)arg1 - 0x20) * 8 + *(int16_t *)0xf500);
    *(char *)0x2cbe = ((uint8_t)arg3 & 3) * '\x02';
    puVar3 = (undefined *)((in_CX & 0xff) * 0x140 + arg3);
    iVar6 = 8;
    do {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        uVar5 = *puVar1;
        iVar7 = 8;
        do {
            puVar8 = puVar3;
            bVar9 = CARRY1(uVar5, uVar5);
            uVar5 = uVar5 * '\x02';
            if (bVar9) {
                *puVar8 = *(undefined *)0x2cbd;
            }
            iVar7 = iVar7 + -1;
            puVar3 = puVar8 + 1;
        } while (iVar7 != 0);
        puVar3 = puVar8 + 0x139;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0xa06: fcn.00000a06 */
/* ====================================================================== */


void fcn.00000a06(void)
{
    undefined uVar1;
    undefined *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar3 = 2;
    do {
        uVar1 = *(undefined *)0x2cbd;
        puVar5 = unaff_DI;
        for (iVar4 = 0x14; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = uVar1;
        }
        unaff_DI = unaff_DI + 0x140;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xc55: fcn.00000c55 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000c55(int16_t arg1)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    iVar2 = 8;
    do {
        *(undefined2 *)0x2cc3 = CONCAT11((char)*unaff_SI, (char)((uint16_t)*unaff_SI >> 8));
        puVar1 = unaff_SI + 2;
        *(undefined2 *)0x2cc5 = CONCAT11((char)unaff_SI[1], (char)((uint16_t)unaff_SI[1] >> 8));
        unaff_SI = unaff_SI + 3;
        *(undefined2 *)0x2cc7 = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
        fcn.00000c75(iVar2);
        iVar2 = in_stack_00000000 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0xc75: fcn.00000c75 */
/* ====================================================================== */


void fcn.00000c75(void)
{
    int16_t *piVar1;
    int16_t in_AX;
    int16_t iVar2;
    int16_t iVar3;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    bool bVar4;
    bool bVar5;
    
    iVar3 = 2;
    do {
        iVar2 = fcn.00000ca7(in_AX);
        iVar2 = fcn.00000ca7(iVar2);
        iVar2 = fcn.00000ca7(iVar2);
        iVar2 = fcn.00000ca7(iVar2);
        iVar2 = fcn.00000ca7(iVar2);
        bVar4 = (int16_t)*(uint16_t *)0x2cc7 < 0;
        *(uint16_t *)0x2cc7 = *(uint16_t *)0x2cc7 << 1 | (uint16_t)bVar4;
        iVar2 = iVar2 * 2 + (uint16_t)bVar4;
        piVar1 = unaff_DI + 1;
        *unaff_DI = iVar2;
        bVar4 = (int16_t)*(uint16_t *)0x2cc5 < 0;
        *(uint16_t *)0x2cc5 = *(uint16_t *)0x2cc5 << 1 | (uint16_t)bVar4;
        bVar5 = (int16_t)*(uint16_t *)0x2cc3 < 0;
        *(uint16_t *)0x2cc3 = *(uint16_t *)0x2cc3 << 1 | (uint16_t)bVar5;
        iVar2 = fcn.00000ca7((iVar2 * 2 + (uint16_t)bVar4) * 2 + (uint16_t)bVar5);
        in_AX = fcn.00000ca7(iVar2);
        unaff_DI = (int16_t *)((int16_t)unaff_DI + 3);
        *(char *)piVar1 = (char)in_AX;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xca7: fcn.00000ca7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00000ca7(int16_t arg1)
{
    bool bVar1;
    bool bVar2;
    bool bVar3;
    
    bVar1 = (int16_t)*(int16_t *)0x2cc7 < 0;
    *(uint16_t *)0x2cc7 = *(int16_t *)0x2cc7 << 1 | (uint16_t)bVar1;
    bVar2 = (int16_t)*(int16_t *)0x2cc5 < 0;
    *(uint16_t *)0x2cc5 = *(int16_t *)0x2cc5 << 1 | (uint16_t)bVar2;
    bVar3 = (int16_t)*(int16_t *)0x2cc3 < 0;
    *(uint16_t *)0x2cc3 = *(int16_t *)0x2cc3 << 1 | (uint16_t)bVar3;
    return ((arg1 * 2 + (uint16_t)bVar1) * 2 + (uint16_t)bVar2) * 2 + (uint16_t)bVar3;
}

