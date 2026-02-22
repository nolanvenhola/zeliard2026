/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x10a = "åãS\\¬cG&ßSMC"; // [ibm037]
static const char *STR_0x785 = "\"\"\"A\" \"A\""; // [ascii]
static const char *STR_0x8d3 = "hôh½hHhhhÞâs"; // [ibm037]
static const char *STR_0x8e0 = "Øhhhhhh"; // [ibm037]
static const char *STR_0x9c5 = "½yhð«hÐhhh"; // [ibm037]
static const char *STR_0xa32 = "Yh®yh]hH»Ø"; // [ibm037]
static const char *STR_0xa8a = "âÐh»ô¯Ü»hhhhh«½]"; // [ibm037]
static const char *STR_0xbbe = "hhô±»h¯Hhyô"; // [ibm037]
static const char *STR_0xbcb = "hhh[²½hhhyhhhh"; // [ibm037]
static const char *STR_0xbda = "hhh]hhhhh»ð½]ðh«[hhhhb^H"; // [ibm037]
static const char *STR_0x116e = "\"\"\"A\" \"A\""; // [ascii]
static const char *STR_0x12c8 = "hôH¯HHhhhÓ[[t{Øhhhhhh"; // [ibm037]
static const char *STR_0x1487 = "Õ¿Öh»ô¯Ü»hhhhh«½]"; // [ibm037]
static const char *STR_0x15bf = "hhô±»h¯Hhyô"; // [ibm037]
static const char *STR_0x15d1 = "½hhhyhhhh"; // [ibm037]
static const char *STR_0x15db = "hhh]hhhhh±ð½Ûöh«[hhhhc^H"; // [ibm037]
static const char *STR_0x1973 = "*B(*B(J"; // [ascii]
static const char *STR_0x1d0c = "UUUOUSU"; // [ascii]
static const char *STR_0x1d26 = "UUPUT5UMS"; // [ascii]
static const char *STR_0x1d3c = "C5=STUUU"; // [ascii]
static const char *STR_0x1d48 = "UMM5U5S"; // [ascii]
static const char *STR_0x1d61 = "5MUUM5MT"; // [ascii]
static const char *STR_0x1d75 = "SUMSUT=U5MUUu5MT"; // [ascii]
static const char *STR_0x1d8e = "UL=SU5MU"; // [ascii]
static const char *STR_0x1d9f = "5SU55UU"; // [ascii]
static const char *STR_0x1dce = "DDLD4DD4"; // [ascii]
static const char *STR_0x1de0 = "LDC4DLD4D"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3)
{
    char *pcVar1;
    undefined2 *puVar2;
    char in_AL;
    int16_t iVar3;
    int16_t in_BX;
    undefined2 *unaff_SI;
    undefined2 *puVar4;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 in_stack_00000006;
    undefined2 uStack0008;
    undefined2 uStack000c;
    
    *unaff_DI = *unaff_SI;
    pcVar1 = (char *)((int16_t)unaff_SI + in_BX + 2);
    *pcVar1 = *pcVar1 + in_AL;
    puVar4 = (undefined2 *)0x0;
    *(char *)0x3388 = in_AL;
    for (iVar3 = 0xfc0; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = 0;
    }
    fcn.00000368();
    uStack0002 = 0x37;
    fcn.00000368();
    uStack0004 = 0;
    uStack0002 = 0x4f;
    fcn.00000399();
    *(undefined *)0x3694 = 0x1c;
    fcn.00000368();
    uStack0008 = 0x6f;
    fcn.00000368();
    uStack0008 = 0x87;
    fcn.00000399();
    uStack000c = 0x8b;
    fcn.0000008d();
    return;
}

/* ====================================================================== */
/* 0x368: fcn.00000368 */
/* ====================================================================== */


void fcn.00000368(void)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    while( true ) {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar3 = *puVar1;
        if (uVar3 == 0) break;
        if ((uVar3 & 0xf0) == 0x10) {
            uVar2 = uVar3 & 0xf;
            uVar3 = 0;
        } else if ((uVar3 & 0xf0) == 0x40) {
            uVar2 = uVar3 & 0xf;
            uVar3 = 0xaa;
        } else {
            uVar2 = 1;
        }
        do {
            puVar1 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            *puVar1 = uVar3;
            uVar2 = uVar2 - 1;
        } while (uVar2 != 0);
    }
    return;
}

/* ====================================================================== */
/* 0x399: fcn.00000399 */
/* ====================================================================== */


void fcn.00000399(void)
{
    // WARNING: Could not recover jumptable at 0x000003a6. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x3388 * 2 + 0x36a5))();
    return;
}

/* ====================================================================== */
/* 0x8d: fcn.0000008d */
/* ====================================================================== */


void fcn.0000008d(void)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x00000095. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x3388 * 2 + 0x3395))();
    return;
}

/* ====================================================================== */
/* 0x23f: fcn.0000023f */
/* ====================================================================== */


void fcn.0000023f(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined2 *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + 0xe;
    for (iVar3 = 0xe; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar4;
        puVar4 = puVar4 + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x2af: fcn.000002af */
/* ====================================================================== */


char fcn.000002af(void)
{
    uint8_t in_DL;
    uint8_t in_DH;
    
    return (((CARRY1(in_DH, in_DH) * '\x02' + CARRY1(in_DL, in_DL)) * '\x04' + CARRY1(in_DH * '\x02', in_DH * '\x02')) *
            '\x02' + CARRY1(in_DL * '\x02', in_DL * '\x02')) * '\x02';
}

/* ====================================================================== */
/* 0x32f: fcn.0000032f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t fcn.0000032f(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    int16_t iVar4;
    uint8_t in_DL;
    uint8_t in_DH;
    undefined2 unaff_DS;
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
        uVar3 = uVar3 * '\x10' | *(uint8_t *)(arg3 + 0x3654);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return uVar3;
}

/* ====================================================================== */
/* 0x53e: fcn.0000053e */
/* ====================================================================== */


char fcn.0000053e(void)
{
    uint8_t in_DL;
    uint8_t in_DH;
    
    return ((CARRY1(in_DH, in_DH) * '\x04' + CARRY1(in_DL, in_DL)) * '\x02' + CARRY1(in_DH * '\x02', in_DH * '\x02')) *
           '\x04' + CARRY1(in_DL * '\x02', in_DL * '\x02');
}

/* ====================================================================== */
/* 0x5aa: fcn.000005aa */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t fcn.000005aa(int16_t arg3)
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
        uVar3 = uVar3 * '\x10' | *(uint8_t *)(arg3 + 0x38d0);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return uVar3;
}

/* ====================================================================== */
/* 0xe89: fcn.00000e89 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unable to track spacebase fully for stack
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000e89(int16_t arg_217h, int16_t arg3, int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    int16_t *piVar2;
    uint16_t *puVar3;
    uint8_t *puVar4;
    uint8_t uVar5;
    char cVar6;
    uint8_t uVar7;
    char cVar8;
    uint8_t uVar9;
    uint8_t uVar10;
    uint8_t uVar11;
    uint8_t uVar13;
    int16_t iVar12;
    uint8_t uVar16;
    uint16_t uVar14;
    uint8_t uVar17;
    int16_t iVar15;
    uint8_t uVar18;
    uint8_t uVar19;
    uint8_t uVar20;
    uint8_t uVar21;
    int16_t iVar22;
    char cVar25;
    undefined2 *puVar26;
    undefined2 *unaff_BP;
    int16_t unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 uVar27;
    undefined2 uVar28;
    undefined2 uVar29;
    uint8_t in_CF;
    bool bVar30;
    undefined2 auStack_c [2];
    uint8_t *puVar23;
    undefined2 *puVar24;
    
    puVar1 = (uint8_t *)0xc80c;
    uVar17 = *puVar1;
    uVar21 = *puVar1;
    *puVar1 = uVar21 + 0xa0 + in_CF;
    uVar16 = ((char)((uint16_t)arg4 >> 8) - *(char *)(arg3 + unaff_SI)) -
             (0x5f < uVar17 || CARRY1(uVar21 + 0xa0, in_CF));
    puVar1 = (uint8_t *)((int16_t)unaff_BP + unaff_SI + -0x3fea);
    uVar9 = (uint8_t)arg1;
    *puVar1 = *puVar1 & uVar9;
    *(int16_t *)(arg3 + unaff_SI) = *(int16_t *)(arg3 + unaff_SI) + CONCAT11(uVar16, (char)arg4);
    puVar23 = unaff_DI + 1;
    uVar5 = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar23);
    *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar23) = (uint8_t)(CONCAT11(uVar9 < *unaff_DI, uVar5) >> 1);
    cVar6 = *(char *)(arg3 + unaff_SI);
    uVar7 = *(uint8_t *)((int16_t)unaff_BP + unaff_SI);
    uVar18 = (uint8_t)arg2;
    *(char *)((int16_t)unaff_BP + unaff_SI) = *(char *)((int16_t)unaff_BP + unaff_SI) - uVar18;
    bVar30 = CARRY1(uVar18, puVar23[arg3]);
    uVar18 = uVar18 + puVar23[arg3];
    puVar1 = (uint8_t *)0x83a;
    uVar17 = *puVar1;
    uVar21 = *puVar1;
    *puVar1 = uVar21 + 0x20 + bVar30;
    uVar10 = ((uVar9 | 8) - *(char *)(arg3 + unaff_SI + 0x811)) - (0xdf < uVar17 || CARRY1(uVar21 + 0x20, bVar30));
    *puVar23 = *puVar23 & uVar18;
    uVar17 = puVar23[arg3];
    uVar14 = (uint16_t)uVar17 << 2;
    puVar23[arg3] = (uint8_t)uVar14 | uVar17 >> 7;
    *(undefined *)0x8808 = (undefined)(CONCAT11((uVar14 & 0x100) != 0, *(undefined *)0x8808) >> 1);
    uVar21 = *(uint8_t *)(arg3 + unaff_SI);
    *(uint8_t *)((int16_t)unaff_BP + unaff_SI) = uVar18;
    uVar19 = (uint8_t)arg3;
    *(uint8_t *)(arg3 + unaff_SI) = *(uint8_t *)(arg3 + unaff_SI) | uVar19;
    uVar9 = puVar23[arg3];
    puVar23[arg3] = puVar23[arg3] & uVar19;
    uVar20 = puVar23[arg3];
    cVar25 = (char)((uint16_t)arg3 >> 8);
    iVar22 = CONCAT11(cVar25, uVar19 | uVar20);
    puVar23[iVar22] = puVar23[iVar22] >> 1;
    puVar4 = unaff_DI + 2;
    uVar17 = *puVar23;
    uVar11 = uVar10 + 0x80 + (uVar10 < uVar17);
    cVar8 = *(char *)(iVar22 + unaff_SI);
    *(uint8_t *)((int16_t)unaff_BP + unaff_SI) = uVar11;
    uVar13 = (uint8_t)((uint16_t)arg1 >> 8) | *(uint8_t *)((int16_t)unaff_BP + unaff_SI);
    uVar20 = (uVar19 | uVar20) + *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar4);
    puVar23 = (uint8_t *)CONCAT11(cVar25, uVar20);
    uVar14 = CONCAT11(uVar16 | uVar7, 
                      ((char)arg4 + cVar6 + ((uVar5 & 1) != 0) | uVar21) + cVar8 +
                      (0x7f < uVar10 || CARRY1(uVar10 + 0x80, uVar10 < uVar17))) & *(uint16_t *)(puVar23 + unaff_SI);
    *puVar23 = *puVar23 | uVar20;
    uVar17 = (uint8_t)(uVar14 >> 8) & *(uint8_t *)0x817;
    *(char *)((int16_t)unaff_BP + unaff_SI) = *(char *)((int16_t)unaff_BP + unaff_SI) + '\x16';
    iVar22 = -CONCAT11(uVar13, uVar11 | (puVar23 + (int16_t)puVar4)[-0x7e]);
    cVar6 = *(char *)0x1728;
    ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar4))[-0x7fe7] =
         ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar4))[-0x7fe7] | uVar17;
    *puVar4 = *puVar4 + 8;
    iVar15 = CONCAT11(uVar17, (char)uVar14) + 1;
    uVar16 = uVar20 + cVar6 + *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar4);
    cVar6 = *(char *)0x1e02;
    uVar5 = *(uint8_t *)CONCAT11(cVar25, uVar16);
    cVar25 = cVar25 - ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar4))[0x217];
    puVar23 = (uint8_t *)CONCAT11(cVar25, uVar16);
    uVar17 = puVar23[unaff_SI];
    *puVar4 = *puVar4 + 10 + CARRY1(uVar13, puVar23[unaff_SI]);
    uVar14 = CONCAT11(uVar13 + uVar17, cVar6 - puVar23[unaff_SI + 0x1980]);
    iVar12 = (uVar14 + *(uint16_t *)(puVar23 + unaff_SI + -0x7fef) + -0x1702) -
             (uint16_t)CARRY2(uVar14, *(uint16_t *)(puVar23 + unaff_SI + -0x7fef));
    uVar17 = *(uint8_t *)(unaff_SI + -0x7fe9);
    puVar23[unaff_SI + 0x1520] = puVar23[unaff_SI + 0x1520] | (uint8_t)iVar12;
    uVar11 = ((uint8_t)((uint16_t)iVar15 >> 8) | uVar17) & puVar23[unaff_SI];
    puVar1 = puVar23;
    uVar17 = *puVar1;
    *puVar1 = *puVar1 - 0x1f;
    *(undefined2 *)((int16_t)auStack_c + iVar22 + 2) = unaff_SS;
    uVar7 = puVar23[unaff_SI];
    uVar20 = puVar23[unaff_SI];
    uVar10 = *puVar4;
    puVar1 = puVar23 + unaff_SI;
    uVar21 = *puVar1;
    *puVar1 = *puVar1 - uVar11;
    *(uint16_t *)(puVar23 + unaff_SI + 0x1f1f) =
         *(int16_t *)(puVar23 + unaff_SI + 0x1f1f) + iVar12 + -0x47c6 + (uint16_t)(uVar17 < 0x1f) +
         (uint16_t)(uVar21 < uVar11);
    *(undefined2 *)((int16_t)auStack_c + iVar22) = unaff_SS;
    *(char *)((int16_t)unaff_BP + unaff_SI) = *(char *)((int16_t)unaff_BP + unaff_SI) + '~';
    uVar17 = *puVar23;
    uVar21 = uVar16 + *puVar23;
    puVar24 = (undefined2 *)CONCAT11(cVar25, uVar21);
    uVar27 = *(undefined2 *)((int16_t)auStack_c + iVar22 + 2);
    piVar2 = (int16_t *)((int16_t)puVar24 + unaff_SI + -0x7f58);
    *piVar2 = (int16_t)((int16_t)(&stack0xfff8 + iVar22) + *piVar2 + 1);
    *(uint8_t *)puVar24 = uVar21;
    uVar27 = *(undefined2 *)(&stack0xfff8 + iVar22);
    uVar17 = (uint8_t)(CARRY1(uVar16, uVar17) + 0x3a27 >> 8);
    cVar6 = *(char *)0x1128;
    *(uint8_t *)puVar24 = *(uint8_t *)puVar24 & uVar21;
    uVar27 = *(undefined2 *)0x111f;
    *puVar24 = uVar27;
    *(uint8_t *)puVar24 =
         (*(uint8_t *)puVar24 - 0x1f) -
         CARRY1(uVar18 & uVar9 | uVar5 | uVar10, *(uint8_t *)((int16_t)puVar24 + (int16_t)puVar4));
    *(undefined2 *)0x111f = unaff_SS;
    *(uint8_t *)((int16_t)puVar24 + unaff_SI) = *(uint8_t *)((int16_t)puVar24 + unaff_SI) | uVar17;
    uVar27 = CONCAT11(uVar17, cVar6 + '\n' + *(char *)((int16_t)unaff_BP + unaff_SI));
    uVar28 = *(undefined2 *)0x1123;
    *(undefined2 *)0x1123 = unaff_SS;
    puVar1 = (uint8_t *)((int16_t)puVar24 + unaff_SI + 0x121f);
    *puVar1 = *puVar1 | uVar17;
    *(uint8_t *)puVar24 = *(uint8_t *)puVar24 | uVar21;
    uVar29 = *(undefined2 *)0x1123;
    uVar28 = *(undefined2 *)0x1125;
    *(uint8_t *)puVar24 = *(uint8_t *)puVar24 ^ uVar21;
    puVar3 = (uint16_t *)((int16_t)puVar24 + unaff_SI);
    uVar14 = *puVar3;
    *puVar3 = *puVar3 + 0x1127;
    uVar29 = *(undefined2 *)0x1129;
    *(uint8_t *)((int16_t)puVar24 + unaff_SI) =
         (*(uint8_t *)((int16_t)puVar24 + unaff_SI) - (char)((uint16_t)arg2 >> 8)) - (0xeed8 < uVar14);
    *(char *)(unaff_SI + -0x55) = *(char *)(unaff_SI + -0x55) + ((uint8_t)iVar15 | uVar7) + uVar20;
    puVar26 = (undefined2 *)0x1129;
    *(undefined2 **)0x1129 = unaff_BP;
    cVar6 = '\n';
    do {
        unaff_BP = unaff_BP + -1;
        puVar26 = puVar26 + -1;
        *puVar26 = *unaff_BP;
        cVar6 = cVar6 + -1;
    } while ('\0' < cVar6);
    *(undefined2 *)0x1113 = 0x1129;
    *(undefined2 *)(unaff_DI + 4) = uVar27;
    *(uint8_t *)((int16_t)puVar24 + unaff_SI) = *(uint8_t *)((int16_t)puVar24 + unaff_SI) - 1;
    *(undefined2 *)(unaff_DI + 6) = uVar27;
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x188a: fcn.0000188a */
/* ====================================================================== */

// WARNING: This function may have set the stack pointer
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000188a(short unsigned int arg3, int16_t arg4, int16_t arg1)
{
    uint8_t *puVar1;
    int16_t *piVar2;
    uint16_t *puVar3;
    char cVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    uint8_t uVar7;
    code *pcVar8;
    uint16_t uVar9;
    uint8_t uVar10;
    char cVar11;
    uint8_t uVar14;
    int16_t iVar12;
    uint16_t uVar13;
    uint8_t uVar16;
    uint8_t uVar17;
    uint8_t uVar18;
    uint8_t in_DL;
    uint8_t uVar19;
    char cVar20;
    uint8_t uVar23;
    int16_t iVar22;
    int16_t unaff_BP;
    int16_t unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    bool bVar24;
    undefined2 in_stack_00000002;
    uint8_t uVar15;
    uint8_t *puVar21;
    
    uVar16 = (uint8_t)arg4 | *(uint8_t *)(unaff_BP + unaff_SI);
    puVar1 = (uint8_t *)0xc80c;
    uVar19 = *puVar1;
    *puVar1 = *puVar1 + 0xa0;
    uVar17 = ((char)((uint16_t)arg4 >> 8) - *(char *)(arg3 + unaff_SI)) - (0x5f < uVar19);
    puVar1 = (uint8_t *)(unaff_BP + unaff_SI + -0x3fea);
    uVar10 = (uint8_t)arg1;
    *puVar1 = *puVar1 & uVar10;
    *(int16_t *)(arg3 + unaff_SI) = *(int16_t *)(arg3 + unaff_SI) + CONCAT11(uVar17, uVar16);
    puVar21 = unaff_DI + 1;
    uVar18 = puVar21[unaff_BP];
    puVar21[unaff_BP] = (uint8_t)(CONCAT11(uVar10 < *unaff_DI, uVar18) >> 1);
    cVar4 = *(char *)(arg3 + unaff_SI);
    uVar14 = (uint8_t)((uint16_t)arg1 >> 8);
    bVar24 = uVar17 < *(uint8_t *)(arg3 + unaff_SI);
    uVar19 = (uVar10 | 8) + *(uint8_t *)(unaff_BP + unaff_SI);
    cVar11 = uVar19 + bVar24;
    piVar2 = (int16_t *)(arg3 + unaff_SI + 0x3a16);
    *piVar2 = *piVar2 + CONCAT11(uVar14, cVar11) +
              (uint16_t)(CARRY1(uVar10 | 8, *(uint8_t *)(unaff_BP + unaff_SI)) || CARRY1(uVar19, bVar24));
    *(uint8_t *)(arg3 + unaff_SI) = *(uint8_t *)(arg3 + unaff_SI) | uVar14;
    uVar7 = cVar11 - *(char *)(arg3 + unaff_SI + 0x811);
    *puVar21 = *puVar21 & in_DL;
    uVar19 = puVar21[arg3];
    uVar9 = (uint16_t)uVar19 << 2;
    puVar21[arg3] = (uint8_t)uVar9 | uVar19 >> 7;
    *(undefined *)0x8808 = (undefined)(CONCAT11((uVar9 & 0x100) != 0, *(undefined *)0x8808) >> 1);
    uVar10 = *(uint8_t *)(arg3 + unaff_SI);
    *(uint8_t *)(unaff_BP + unaff_SI) = in_DL;
    uVar15 = (uint8_t)arg3;
    *(uint8_t *)(arg3 + unaff_SI) = *(uint8_t *)(arg3 + unaff_SI) | uVar15;
    uVar5 = puVar21[arg3];
    puVar21[arg3] = puVar21[arg3] & uVar15;
    uVar19 = puVar21[arg3];
    uVar23 = (uint8_t)(arg3 >> 8);
    iVar12 = CONCAT11(uVar23, uVar15 | uVar19);
    uVar6 = puVar21[iVar12];
    puVar21[iVar12] = uVar6 >> 1;
    cVar11 = *(char *)(iVar12 + unaff_SI);
    *(uint8_t *)(unaff_BP + unaff_SI) = uVar7;
    uVar14 = uVar14 | *(uint8_t *)(unaff_BP + unaff_SI);
    uVar19 = (uVar15 | uVar19) + *(char *)(unaff_BP + -0x7fec);
    puVar21 = (uint8_t *)CONCAT11(uVar23, uVar19);
    uVar9 = *(uint16_t *)(puVar21 + unaff_SI);
    *puVar21 = *puVar21 | uVar19;
    uVar23 = uVar23 & *puVar21;
    puVar1 = (uint8_t *)(unaff_BP + unaff_SI + 0x1602);
    *puVar1 = *puVar1 | uVar7;
    *(char *)(unaff_BP + -0x7feb) = (*(char *)(unaff_BP + -0x7feb) + ' ') - (uVar7 < *(uint8_t *)0x8014);
    cVar20 = *(char *)0x1728;
    *(uint8_t *)(unaff_BP + 0x2e) = *(uint8_t *)(unaff_BP + 0x2e) | uVar23;
    *(char *)0x8015 = *(char *)0x8015 + '\b';
    cVar20 = uVar19 + cVar20 + *(char *)(unaff_BP + -0x7feb);
    uVar7 = *(uint8_t *)CONCAT11(uVar23, cVar20);
    uVar23 = uVar23 - ((uint8_t *)CONCAT11(uVar23, cVar20))[0x217];
    iVar22 = CONCAT11(uVar23, cVar20);
    uVar15 = uVar14 + *(uint8_t *)(iVar22 + unaff_SI);
    iVar12 = CONCAT11(uVar15, *(undefined *)0x1e02);
    *(char *)0x8015 = *(char *)0x8015 + '\x0e' + CARRY1(uVar14, *(uint8_t *)(iVar22 + unaff_SI));
    puVar1 = (uint8_t *)(iVar22 + unaff_SI + 0x319);
    uVar19 = *puVar1;
    *puVar1 = *puVar1 + 0x80;
    piVar2 = (int16_t *)(iVar22 + unaff_SI + 0x21d);
    *piVar2 = *piVar2 + iVar12 + (uint16_t)(0x7f < uVar19);
    puVar21 = (uint8_t *)CONCAT11(uVar23 | uVar15, cVar20);
    puVar21[unaff_SI] = puVar21[unaff_SI] | 0x80;
    *(uint8_t *)0x8015 = *(uint8_t *)0x8015 & (in_DL & uVar5 | uVar7);
    uVar18 = (uint8_t)((CONCAT11(uVar17, (uVar16 + cVar4 + ((uVar18 & 1) != 0) | uVar10) + cVar11 + ((uVar6 & 1) != 0))
                       & uVar9) + 1 >> 8) ^ puVar21[unaff_SI];
    puVar1 = puVar21;
    uVar19 = *puVar1;
    *puVar1 = *puVar1 - 0x1f;
    uVar13 = iVar12 + -0x3c6 + (uint16_t)(uVar19 < 0x1f);
    puVar1 = puVar21 + unaff_SI;
    uVar19 = *puVar1;
    *puVar1 = *puVar1 - uVar18;
    puVar3 = (uint16_t *)(puVar21 + unaff_SI + 0x1f1f);
    uVar9 = (uint16_t)(uVar19 < uVar18);
    bVar24 = CARRY2(*puVar3, uVar13) || CARRY2(*puVar3 + uVar13, uVar9);
    *puVar3 = *puVar3 + uVar13 + uVar9;
    uVar19 = (uint8_t)uVar13 + 0x32;
    piVar2 = (int16_t *)(unaff_BP + unaff_SI + 0x2816);
    *piVar2 = (*piVar2 - CONCAT11((char)(uVar13 >> 8), uVar19 + bVar24)) -
              (uint16_t)(0xcd < (uint8_t)uVar13 || CARRY1(uVar19, bVar24));
    func_0x0000a1c1();
    *puVar21 = *puVar21 & (uint8_t)puVar21;
    pcVar8 = (code *)swi(3);
    (*pcVar8)();
    return;
}

/* ====================================================================== */
/* 0xa68: fcn.00000a68 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000a68(int16_t arg3, int16_t arg4, int16_t arg2)
{
    uint16_t *puVar1;
    uint8_t *puVar2;
    undefined *puVar3;
    uint16_t uVar4;
    uint16_t uVar5;
    undefined uVar6;
    uint8_t uVar7;
    int16_t iVar8;
    int16_t unaff_BP;
    int16_t unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    
    iVar8 = CONCAT11((uint8_t)((uint16_t)arg4 >> 8) & *(uint8_t *)(unaff_BP + unaff_DI), (char)arg4) + -1;
    if (iVar8 == 0) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    iVar8 = CONCAT11((char)((uint16_t)iVar8 >> 8) + *(char *)(unaff_BP + unaff_SI), 
                     (char)iVar8 + *(char *)(arg3 + unaff_SI + -0x57f8)) + 1;
    puVar2 = (uint8_t *)(arg3 + unaff_DI + 2);
    *puVar2 = *puVar2 & (uint8_t)*(undefined2 *)(unaff_BP + unaff_DI + 2);
    *(undefined *)(arg3 + -0x3735) = (char)iVar8;
    *(undefined *)(arg3 + unaff_SI + -0x7780) = (char)iVar8;
    *(int16_t *)(unaff_SI + -29000) = *(int16_t *)(unaff_SI + -29000) + iVar8;
    puVar3 = (undefined *)(arg3 + unaff_SI + 0x3c88);
    *puVar3 = *puVar3;
    *(undefined *)(arg3 + -0x7758) = (char)((uint16_t)iVar8 >> 8);
    uVar5 = *(uint16_t *)(unaff_SI + -0x3b50);
    uVar6 = (undefined)uVar5;
    *(undefined *)0x2023 = uVar6;
    uVar7 = (uint8_t)(uVar5 >> 8);
    *(uint8_t *)(unaff_BP + unaff_SI) = *(uint8_t *)(unaff_BP + unaff_SI) & uVar7;
    *(uint8_t *)(unaff_BP + unaff_SI) = *(uint8_t *)(unaff_BP + unaff_SI) & uVar7;
    *(undefined *)0xa2a3 = uVar6;
    *(undefined *)0x2c32 = uVar6;
    puVar1 = (uint16_t *)(unaff_BP + unaff_SI);
    uVar4 = *puVar1;
    *puVar1 = *puVar1 + uVar5;
    *(int16_t *)(unaff_BP + unaff_SI) =
         (int16_t)(&stack0x0000 + (uint16_t)CARRY2(uVar4, uVar5) + *(int16_t *)(unaff_BP + unaff_SI));
    // WARNING: Could not recover jumptable at 0x00000a5a. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)(unaff_BP + unaff_DI + 4))();
    return;
}

