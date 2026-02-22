/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x491 = "{¡SXããßSN¬aG "; // [ibm037]
static const char *STR_0x4d2 = "{¡SZããßSP¬aG "; // [ibm037]
static const char *STR_0x2377 = "=cTPdW}"; // [ascii]
static const char *STR_0x23b9 = "nnUUWUUU@"; // [ascii]
static const char *STR_0x23c3 = "uUUUUuU"; // [ascii]

/* ====================================================================== */
/* 0x0: zr2_08 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr2_08(int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 in_AX;
    int16_t iVar2;
    undefined2 *puVar3;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    
    *(undefined *)0x335b = 0;
    puVar3 = (undefined2 *)0x0;
    for (iVar2 = 0x2680; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0;
    }
    bat_func_1();
    bat_func_1();
    uStack0002 = 0x3a;
    bat_process_loop();
    iVar2 = 0x10;
    do {
        uStack0004 = 0x4e;
        bat_func_3();
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    iVar2 = 0x10;
    do {
        uStack0004 = 0x59;
        bat_func_3();
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    uStack0006 = 0x5e;
    bat_func_4();
    return;
}

/* ====================================================================== */
/* 0x60: bat_func_1 */
/* ====================================================================== */


void bat_func_1(void)
{
    undefined2 *puVar1;
    undefined *puVar2;
    undefined2 uVar3;
    char cVar4;
    uint8_t uVar5;
    uint16_t uVar6;
    char cVar7;
    undefined2 *unaff_SI;
    undefined2 *puVar8;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    uVar6 = 0;
    do {
        puVar8 = (undefined2 *)((int16_t)unaff_SI + 1);
        uVar3 = CONCAT11(1, *(char *)unaff_SI);
        if (*(char *)unaff_SI == '\x06') {
            puVar1 = puVar8;
            puVar8 = (undefined2 *)((int16_t)unaff_SI + 3);
            uVar3 = *puVar1;
        }
        do {
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            *puVar2 = (char)uVar3;
            cVar4 = (char)uVar6;
            cVar7 = (char)(uVar6 >> 8) + '\x01';
            uVar6 = CONCAT11(cVar7, cVar4);
            if ((cVar7 == '8') && (uVar5 = cVar4 + 1, uVar6 = (uint16_t)uVar5, uVar5 == 0x58)) {
                return;
            }
            cVar4 = (char)((uint16_t)uVar3 >> 8) + -1;
            uVar3 = CONCAT11(cVar4, (char)uVar3);
            unaff_SI = puVar8;
        } while (cVar4 != '\0');
    } while( true );
}

/* ====================================================================== */
/* 0x82: bat_process_loop */
/* ====================================================================== */


void bat_process_loop(void)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x0000008a. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x335b * 2 + 0x338a))();
    return;
}

/* ====================================================================== */
/* 0x291: bat_func_3 */
/* ====================================================================== */


void bat_func_3(void)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    char cVar4;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar4 = '\0';
    do {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar2 = *puVar1;
        uVar3 = 1;
        if ((uVar2 & 0xf0) == 0x60) {
            uVar3 = uVar2 & 0xf;
            uVar2 = 0;
        }
        do {
            puVar1 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            *puVar1 = uVar2;
            cVar4 = cVar4 + '\x01';
            uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
    } while (cVar4 != '\x1c');
    return;
}

/* ====================================================================== */
/* 0x2b3: bat_func_4 */
/* ====================================================================== */


void bat_func_4(void)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x000002bb. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x335b * 2 + 0x35bb))();
    return;
}

/* ====================================================================== */
/* 0xc0: copy_buffer */
/* ====================================================================== */


void copy_buffer(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar5 = (undefined *)0x46c;
    iVar3 = 0x58;
    do {
        puVar6 = puVar5;
        for (iVar4 = 0x38; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = puVar5 + 0x50;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1fd: bat_process_loop_2 */
/* ====================================================================== */


char bat_process_loop_2(void)
{
    uint8_t in_DL;
    uint8_t in_DH;
    
    return ((CARRY1(in_DH, in_DH) * '\x04' + CARRY1(in_DL, in_DL)) * '\x02' + CARRY1(in_DH * '\x02', in_DH * '\x02')) *
           '\x04' + CARRY1(in_DL * '\x02', in_DL * '\x02');
}

/* ====================================================================== */
/* 0x257: fcn.00000257 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t fcn.00000257(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    int16_t iVar4;
    uint8_t in_DL;
    uint8_t in_DH;
    bool bVar5;
    bool bVar6;
    
    uVar3 = 0;
    iVar4 = 2;
    do {
        bVar5 = CARRY1(in_DH, in_DH);
        uVar1 = in_DH * '\x02';
        bVar6 = CARRY1(in_DL, in_DL);
        uVar2 = in_DL * '\x02';
        in_DH = in_DH * '\x04';
        in_DL = in_DL * '\x04';
        arg3 = (int16_t)(((((char)arg3 * '\x02' + bVar5) * '\x02' + bVar6) * '\x02' + CARRY1(uVar1, uVar1)) * '\x02' +
                         CARRY1(uVar2, uVar2) & 0xf);
        uVar3 = uVar3 * '\x10' | *(uint8_t *)(arg3 + 0x357d);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return uVar3;
}

/* ====================================================================== */
/* 0x33d: fcn.0000033d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000033d(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    for (iVar3 = 0x1c; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x5a1: fcn.000005a1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t fcn.000005a1(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    int16_t iVar4;
    uint8_t in_DL;
    uint8_t in_DH;
    int16_t unaff_BP;
    bool bVar5;
    bool bVar6;
    
    uVar3 = 0;
    iVar4 = 2;
    do {
        bVar5 = CARRY1(in_DH, in_DH);
        uVar1 = in_DH * '\x02';
        bVar6 = CARRY1(in_DL, in_DL);
        uVar2 = in_DL * '\x02';
        in_DH = in_DH * '\x04';
        in_DL = in_DL * '\x04';
        arg3 = (uint16_t)
               (((((char)arg3 * '\x02' + bVar5) * '\x02' + bVar6) * '\x02' + CARRY1(uVar1, uVar1)) * '\x02' +
                CARRY1(uVar2, uVar2) & 0xf) + unaff_BP;
        uVar3 = uVar3 * '\x10' | *(uint8_t *)arg3;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return uVar3;
}

/* ====================================================================== */
/* 0x797: fcn.00000797 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data

void fcn.00000797(void)
{
    undefined uVar1;
    undefined2 in_AX;
    undefined2 in_DX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = (undefined)in_AX;
    *unaff_DI = uVar1;
    unaff_DI[1] = uVar1;
    *(undefined2 *)(unaff_DI + 2) = in_AX;
    out(in_DX, uVar1);
    *(undefined2 *)(unaff_DI + 4) = in_AX;
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x3cd: fcn.000003cd */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000003cd(int16_t arg2, int16_t arg3)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    uint8_t uVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    int16_t iVar7;
    int16_t iVar8;
    int16_t iVar9;
    uint8_t uVar10;
    uint8_t *puVar11;
    uint8_t *puVar12;
    undefined2 *puVar13;
    undefined2 *puVar14;
    undefined2 *puVar15;
    bool bVar16;
    bool bVar17;
    
    puVar11 = (uint8_t *)0x0;
    iVar7 = 0x10;
    puVar14 = (undefined2 *)0x53c1;
    do {
        iVar8 = 0x1c;
        puVar15 = puVar14;
        do {
            puVar13 = puVar15;
            puVar12 = puVar11;
            uVar6 = puVar12[0x1c];
            uVar5 = *puVar12;
            uVar10 = 0;
            iVar9 = 4;
            do {
                bVar16 = CARRY1(uVar6, uVar6);
                uVar3 = uVar6 * '\x02';
                bVar17 = CARRY1(uVar5, uVar5);
                uVar4 = uVar5 * '\x02';
                uVar6 = uVar6 << 2;
                uVar5 = uVar5 << 2;
                arg3 = (int16_t)(((((char)arg3 * '\x02' + bVar16) * '\x02' + bVar17) * '\x02' + CARRY1(uVar3, uVar3)) *
                                 '\x02' + CARRY1(uVar4, uVar4) & 0xf);
                uVar10 = uVar10 * '\x04' | *(uint8_t *)(arg3 + 0x36b6);
                iVar9 = iVar9 + -1;
            } while (iVar9 != 0);
            puVar15 = (undefined2 *)((int16_t)puVar13 + 1);
            *(uint8_t *)puVar13 = uVar10;
            iVar8 = iVar8 + -1;
            puVar11 = puVar12 + 1;
        } while (iVar8 != 0);
        puVar13 = (undefined2 *)((int16_t)puVar13 + -0x1b);
        for (iVar8 = 0xe; iVar8 != 0; iVar8 = iVar8 + -1) {
            puVar2 = puVar15;
            puVar15 = puVar15 + 1;
            puVar1 = puVar13;
            puVar13 = puVar13 + 1;
            *puVar2 = *puVar1;
        }
        puVar11 = puVar12 + 0x1d;
        puVar15 = puVar14 + 0x1000;
        if ((undefined2 *)0x5fff < puVar15) {
            puVar13 = puVar14;
            for (iVar8 = 0x38; iVar8 != 0; iVar8 = iVar8 + -1) {
                puVar2 = puVar15;
                puVar15 = (undefined2 *)((int16_t)puVar15 + 1);
                puVar1 = puVar13;
                puVar13 = (undefined2 *)((int16_t)puVar13 + 1);
                *(undefined *)puVar2 = *(undefined *)puVar1;
            }
            puVar15 = puVar14 + -0x1fd3;
        }
        iVar7 = iVar7 + -1;
        puVar14 = puVar15;
    } while (iVar7 != 0);
    return;
}

/* ====================================================================== */
/* 0x15dc: fcn.000015dc */
/* ====================================================================== */


void fcn.000015dc(void)
{
    char in_DH;
    int16_t unaff_BP;
    int16_t unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    
    *(char *)(unaff_BP + unaff_DI) = *(char *)(unaff_BP + unaff_DI) + in_DH;
    // WARNING: Could not recover jumptable at 0x000015e1. Too many branches
    // WARNING: Treating indirect jump as call
    (*(code *)(uint32_t)*(uint16_t *)(unaff_BP + unaff_SI + 0x6ab))();
    return;
}

