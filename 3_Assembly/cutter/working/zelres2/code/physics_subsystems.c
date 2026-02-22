/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x2b3 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x2f2 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x30f = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x32c = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x349 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x366 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x383 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x67a = "Z_^]FGEBB"; // [ascii]
static const char *STR_0x799 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x7a8 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x7b7 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x7c6 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x7d5 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x7e4 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x944 = "wP\"&wP&\t"; // [ascii]
static const char *STR_0xfe6 = "6zP[_^"; // [ascii]
static const char *STR_0x102b = "vvvvaF8"; // [ibm037]
static const char *STR_0x1051 = "vvvvaG8"; // [ibm037]
static const char *STR_0x1116 = "aG&{ßSX;ßSC¬ååßS½$;¬"; // [ibm037]
static const char *STR_0x11c7 = "aG&{ßSJ;"; // [ibm037]
static const char *STR_0x13a4 = "$!ßSKC½"; // [ibm037]
static const char *STR_0x157a = "aG&{ßSKC"; // [ibm037]
static const char *STR_0x1805 = "TY]c2/."; // [ascii]
static const char *STR_0x183b = "4QV[_eg/-"; // [ascii]
static const char *STR_0x1897 = "mno)&!\"*%!\""; // [ascii]
static const char *STR_0x18d1 = "muwyo+&)&"; // [ascii]
static const char *STR_0x18ee = "vxz{12/-367<"; // [ascii]
static const char *STR_0x19f2 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x1be9 = "aG&{ßSF¬cG"; // [ibm037]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000000(int16_t arg3)
{
    char *pcVar1;
    undefined uVar2;
    undefined2 *puVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    char cVar6;
    uint16_t uVar7;
    undefined extraout_AH;
    undefined2 in_AX;
    int16_t iVar8;
    int16_t in_CX;
    undefined extraout_DL;
    char *pcVar9;
    undefined2 in_DX;
    int16_t iVar10;
    int16_t iVar11;
    char *pcVar12;
    char *pcVar13;
    uint8_t *in_BX;
    int16_t unaff_BP;
    uint8_t *puVar14;
    char *pcVar15;
    char *pcVar16;
    uint8_t *unaff_SI;
    undefined2 *puVar17;
    char *pcVar18;
    undefined *unaff_DI;
    int16_t unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t in_AF;
    undefined4 uVar19;
    int16_t in_stack_00000000;
    char *in_stack_00000008;
    char *in_stack_0000000c;
    int16_t in_stack_0000000e;
    char *in_stack_00000010;
    char *in_stack_00000012;
    
    uVar4 = 9 < ((uint8_t)in_AX & 0xf) | in_AF;
    uVar7 = CONCAT11((char)((uint16_t)in_AX >> 8) - uVar4, (uint8_t)in_AX + uVar4 * -6) & 0xff0f &
            *(uint16_t *)(in_BX + (int16_t)unaff_SI);
    *unaff_SI = *unaff_SI + (char)((uint16_t)in_CX >> 8);
    unaff_DI[unaff_BP + -0x4c6] = unaff_DI[unaff_BP + -0x4c6] ^ (uint8_t)in_BX;
    uVar5 = (uint8_t)uVar7;
    uVar4 = 9 < uVar5 | uVar4;
    iVar10 = CONCAT11((uint8_t)((uint16_t)in_BX >> 8) | *in_BX, (uint8_t)in_BX);
    *(int16_t *)(unaff_DI + iVar10 + 0x7e) = *(int16_t *)(unaff_DI + iVar10 + 0x7e) + -0x53bb;
    uVar2 = in(in_DX);
    *unaff_DI = uVar2;
    iVar11 = iVar10 + 1;
    iVar8 = in_stack_00000000;
    if (in_CX == -2) goto code_r0x00000067;
    iVar11 = in((int16_t)((CONCAT11((char)(uVar7 >> 8) - uVar4, uVar5 + uVar4 * -6) & 0xff0f) + 1) >> 0xf);
    *(int16_t *)(unaff_DI + iVar10 + -0x48) = *(int16_t *)(unaff_DI + iVar10 + -0x48) - iVar11;
    puVar17 = (undefined2 *)0x509f;
    for (iVar11 = 0x80; iVar11 != 0; iVar11 = iVar11 + -1) {
        puVar3 = puVar17;
        puVar17 = puVar17 + 1;
        *puVar3 = 0;
    }
    *(char *)0x5080 = *(char *)0x5080 + '\x01';
    *(undefined2 *)0x506d = 0x23c;
    iVar8 = *(int16_t *)0xff31;
    fcn.000015db();
    iVar11 = 0;
    if ((*(uint8_t *)(iVar8 + -0x21) & 0x80) != 0) {
        fcn.00000422(0);
    }
    puVar14 = (uint8_t *)(iVar8 + -0x20);
    iVar8 = 6;
    do {
        unaff_SI = puVar14;
        unaff_ES = in_stack_00000000;
        if ((*puVar14 & 0x80) != 0) {
            fcn.0000045f(iVar11);
        }
code_r0x00000067:
        in_stack_00000000 = unaff_ES;
        iVar11 = iVar11 + 1;
        if ((unaff_SI[1] & 0x80) != 0) {
            fcn.0000045f(iVar11);
        }
        iVar11 = iVar11 + 1;
        if ((unaff_SI[2] & 0x80) != 0) {
            fcn.0000045f(iVar11);
        }
        iVar11 = iVar11 + 1;
        if ((unaff_SI[3] & 0x80) != 0) {
            fcn.0000045f(iVar11);
        }
        puVar14 = unaff_SI + 4;
        iVar11 = iVar11 + 1;
        iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    if ((*puVar14 & 0x80) != 0) {
        fcn.0000045f(iVar11);
    }
    iVar11 = iVar11 + 1;
    if ((unaff_SI[5] & 0x80) != 0) {
        fcn.0000045f(iVar11);
    }
    iVar11 = iVar11 + 1;
    if ((unaff_SI[6] & 0x80) != 0) {
        fcn.0000045f(iVar11);
    }
    if ((unaff_SI[7] & 0x80) != 0) {
        fcn.000004a3();
    }
    pcVar15 = *(char **)0xff31;
    pcVar18 = (char *)0xe900;
    *(undefined *)0x5073 = 0x12;
    do {
        fcn.00000ed5(iVar11);
        iVar11 = 0;
        pcVar9 = pcVar15 + 4;
        if (pcVar15[3] < '\0') {
            fcn.000004db(0);
        }
        do {
            pcVar13 = pcVar18;
            pcVar16 = pcVar9;
            if (*pcVar16 != *pcVar13) {
                fcn.00000128(iVar11);
            }
            iVar11 = iVar11 + 1;
            if (pcVar16[1] != pcVar13[1]) {
                fcn.00000128(iVar11);
            }
            iVar11 = iVar11 + 1;
            if (pcVar16[2] != pcVar13[2]) {
                fcn.00000128(iVar11);
            }
            iVar11 = iVar11 + 1;
            if (pcVar16[3] != pcVar13[3]) {
                fcn.00000128(iVar11);
            }
            iVar11 = iVar11 + 1;
            pcVar9 = pcVar16 + 4;
            pcVar18 = pcVar13 + 4;
        } while (in_stack_00000008 != (char *)0x1);
        if (pcVar16[4] != pcVar13[4]) {
            in_stack_00000008 = (char *)0xf4;
            fcn.00000128(iVar11);
        }
        iVar11 = iVar11 + 1;
        if (pcVar16[5] != pcVar13[5]) {
            fcn.00000128(iVar11);
        }
        iVar11 = iVar11 + 1;
        if (pcVar16[6] != pcVar13[6]) {
            fcn.00000128(iVar11);
        }
        iVar11 = iVar11 + 1;
        pcVar15 = pcVar16 + 8;
        pcVar18 = pcVar13 + 8;
        if (pcVar16[7] < '\0') {
            iVar11 = 0x5092;
            LOCK();
            cVar6 = pcVar13[7];
            pcVar13[7] = -2;
            UNLOCK();
            *(char *)0x5092 = cVar6;
            LOCK();
            cVar6 = pcVar13[0x23];
            pcVar13[0x23] = -1;
            UNLOCK();
            *(char *)0x5093 = cVar6;
            cVar6 = pcVar16[7];
            pcVar16 = pcVar16 + 0x2c;
            fcn.000015cf();
            cVar6 = fcn.0000080e((int16_t)pcVar15, (int16_t)pcVar18, iVar11, CONCAT11(extraout_AH, cVar6));
            pcVar12 = (char *)CONCAT11(extraout_DL, cVar6);
            pcVar9 = (char *)((int16_t)pcVar18 * 2 + *(int16_t *)0x506d);
            pcVar13 = pcVar12;
            in_stack_00000008 = pcVar18;
            if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                uVar19 = CONCAT22(pcVar9, CONCAT11(*pcVar16, cVar6));
                pcVar18 = pcVar12;
                if (cVar6 < '\0') {
                    uVar19 = fcn.00000807();
                }
                fcn.00000684((int16_t)uVar19, (int16_t)((uint32_t)uVar19 >> 0x10), (int16_t)pcVar18);
                pcVar9 = pcVar12;
                pcVar13 = in_stack_0000000c;
                pcVar16 = pcVar15;
                in_stack_00000008 = pcVar12;
            }
            iVar11 = in_stack_0000000e;
            pcVar15 = in_stack_00000012;
            pcVar18 = in_stack_00000010;
            if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                uVar19 = CONCAT22(pcVar9 + 0x140, CONCAT11(pcVar16[2], (char)((uint16_t)pcVar13 >> 8)));
                if ((int16_t)pcVar13 < 0) {
                    uVar19 = fcn.00000807();
                }
                in_stack_0000000c = (char *)0x651;
                fcn.00000684((int16_t)uVar19, (int16_t)((uint32_t)uVar19 >> 0x10), (int16_t)pcVar13);
            }
        } else if (pcVar16[7] != pcVar13[7]) {
            fcn.00000128(iVar11);
        }
        pcVar15 = pcVar15 + 4;
        fcn.000015cf();
        *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
        pcVar1 = (char *)0x5073;
        *pcVar1 = *pcVar1 + -1;
    } while (*pcVar1 != '\0');
    return;
}

/* ====================================================================== */
/* 0x15db: fcn.000015db */
/* ====================================================================== */


void fcn.000015db(void)
{
    uint16_t unaff_SI;
    
    if (0xdfff < unaff_SI) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x422: fcn.00000422 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000422(int16_t arg3)
{
    undefined extraout_AH;
    undefined uVar1;
    undefined uVar2;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t in_stack_00000002;
    
    if (*(char *)0xe900 == -1) {
        return;
    }
    if (*(char *)0xe900 == -4) {
        return;
    }
    *(undefined *)0xe900 = 0xff;
    uVar2 = *unaff_SI;
    fcn.000015cf(arg3);
    uVar1 = extraout_AH;
    if ((char)unaff_SI[0x25] < '\0') {
        uVar1 = 0;
        fcn.00000807();
    }
    fcn.0000080e(in_stack_00000002, in_stack_00000000, arg3, CONCAT11(uVar1, uVar2));
    fcn.00000684(CONCAT11(unaff_SI[0x28], (char)in_stack_00000000), 0x23c, arg3);
    return;
}

/* ====================================================================== */
/* 0x15cf: fcn.000015cf */
/* ====================================================================== */


void fcn.000015cf(void)
{
    uint16_t unaff_SI;
    
    if (unaff_SI < 0xe900) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x807: fcn.00000807 */
/* ====================================================================== */


undefined fcn.00000807(void)
{
    uint8_t in_AL;
    
    return *(undefined *)(uint32_t)((in_AL & 0x7f) + 0xed20);
}

/* ====================================================================== */
/* 0x80e: fcn.0000080e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 fcn.0000080e(int16_t arg_6h, int16_t arg_4h, int16_t arg3, int16_t arg1)
{
    undefined uVar1;
    uint8_t uVar2;
    char cVar3;
    int16_t iVar4;
    char *pcVar5;
    int16_t iVar6;
    undefined2 unaff_DS;
    
    uVar2 = (uint8_t)arg1 & 0x7f;
    uVar1 = *(undefined *)(uVar2 + 0xed20);
    iVar4 = (uint16_t)uVar2 * 0x10 + *(int16_t *)0xc010;
    iVar6 = -0x5f90;
    if ((*(uint8_t *)(iVar4 + 5) & 0x80) == 0) {
        iVar6 = -0x5fd0;
    }
    pcVar5 = (char *)((uint16_t)(*(uint8_t *)(iVar4 + 6) & 0xf) * 5 +
                     *(int16_t *)((uint16_t)(uint8_t)((*(uint8_t *)(iVar4 + 4) & 0x1f) * '\x02') + iVar6));
    cVar3 = *pcVar5;
    if ((*(char *)0xff34 == '\0') && ((*(uint8_t *)(iVar4 + 5) & 0x20) != 0)) {
        cVar3 = cVar3 + '\x03';
    }
    *(char *)0x5076 = cVar3;
    return CONCAT11((char)((uint16_t)pcVar5 >> 8), uVar1);
}

/* ====================================================================== */
/* 0x684: fcn.00000684 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000684(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 unaff_DS;
    
    uVar2 = *(uint8_t *)0x5076;
    cVar1 = (char)arg1;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar2 = uVar2 | 0x80;
    }
    *(undefined2 *)0x506b = *(undefined2 *)((uint16_t)(uVar2 & 0x7f) * 2 + 0x500f);
    if (-1 < (char)uVar2) {
        fcn.00000726(arg2);
        fcn.0000078e();
        return;
    }
    fcn.000006f8(CONCAT11((char)((uint16_t)*(undefined2 *)0x506b >> 8), cVar1));
    fcn.0000078e();
    return;
}

/* ====================================================================== */
/* 0x45f: fcn.0000045f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.0000045f(int16_t arg3)
{
    undefined2 uVar1;
    undefined uVar2;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t in_stack_00000002;
    
    LOCK();
    uVar2 = *(undefined *)(arg3 + -0x1700);
    *(undefined *)(arg3 + -0x1700) = 0xff;
    UNLOCK();
    *(undefined *)0x5092 = uVar2;
    *(undefined *)0x5093 = 0;
    *(undefined *)(arg3 + -0x16ff) = 0xff;
    uVar2 = *unaff_SI;
    fcn.000015cf(arg3);
    uVar1 = *(undefined2 *)(unaff_SI + 0x24);
    *(undefined2 *)0x5096 = uVar1;
    fcn.0000080e(in_stack_00000002, in_stack_00000000, 0x5096, CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2));
    fcn.00000657();
    return;
}

/* ====================================================================== */
/* 0x657: fcn.00000657 */
/* ====================================================================== */


void fcn.00000657(void)
{
    int16_t arg1;
    int16_t in_DX;
    int16_t in_BX;
    char *unaff_BP;
    undefined *unaff_SI;
    char *unaff_DI;
    undefined2 unaff_DS;
    undefined4 uVar1;
    
    if ((*unaff_BP != -1) && (*unaff_BP != -4)) {
        arg1 = CONCAT11(*unaff_SI, *unaff_DI);
        if (*unaff_DI < '\0') {
            uVar1 = fcn.00000807(0x65a);
            in_DX = (int16_t)((uint32_t)uVar1 >> 0x10);
            arg1 = (int16_t)uVar1;
        }
        fcn.00000684(arg1, in_DX, in_BX);
    }
    return;
}

/* ====================================================================== */
/* 0x4a3: fcn.000004a3 */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000004a3(undefined2 param_1, int16_t param_2, int16_t param_3)
{
    char cVar1;
    undefined extraout_AH;
    undefined uVar2;
    undefined uVar3;
    uint8_t uVar4;
    int16_t in_BX;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    
    if (*(char *)0xe91b == -1) {
        return;
    }
    if (*(char *)0xe91b == -4) {
        return;
    }
    *(undefined *)0xe91b = 0xff;
    uVar3 = *unaff_SI;
    fcn.000015cf();
    uVar2 = extraout_AH;
    if ((char)unaff_SI[0x24] < '\0') {
        uVar2 = 0;
        fcn.00000807();
    }
    fcn.0000080e(param_3, param_2, in_BX, CONCAT11(uVar2, uVar3));
    cVar1 = (char)param_2;
    uVar4 = *(uint8_t *)0x5076;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar4 = uVar4 | 0x80;
    }
    *(undefined2 *)0x506b = *(undefined2 *)((uint16_t)(uVar4 & 0x7f) * 2 + 0x500f);
    if (-1 < (char)uVar4) {
        fcn.00000726();
        fcn.0000078e();
        return;
    }
    fcn.000006f8(CONCAT11((char)((uint16_t)*(undefined2 *)0x506b >> 8), cVar1));
    fcn.0000078e();
    return;
}

/* ====================================================================== */
/* 0xed5: fcn.00000ed5 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000eee: Changing call to branch
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000ed5(int16_t arg3)
{
    uint8_t *puVar1;
    int16_t *piVar2;
    undefined2 uVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    undefined2 in_AX;
    uint16_t uVar6;
    undefined2 in_CX;
    int16_t iVar7;
    int16_t iVar8;
    int16_t *piVar9;
    uint8_t *puVar10;
    int16_t unaff_DI;
    uint16_t *puVar11;
    uint16_t *puVar12;
    int16_t iVar13;
    undefined2 unaff_DS;
    int16_t iVar14;
    uint16_t *puVar15;
    
    uVar4 = 0x12 - *(char *)0x5073;
    if (*(char *)0xff43 == '\0') {
        if ((uint8_t)(*(char *)0x84 - 2U) != uVar4) {
            return;
        }
    } else {
        uVar5 = *(char *)0x84 - 5;
        if (uVar4 < uVar5) {
            return;
        }
        if (uVar4 != uVar5) {
            uVar5 = *(char *)0x84 + 5;
            if (uVar5 != uVar4) {
                return;
            }
            if (*(char *)0xff43 != '\0') {
                *(undefined *)0xff44 = 0xff;
                fcn.00001066(CONCAT11((char)((uint16_t)in_AX >> 8), uVar5), 
                             CONCAT11((char)((uint16_t)in_CX >> 8), uVar4));
                fcn.00001018();
                uVar3 = *(undefined2 *)0xff2c;
                puVar10 = *(uint8_t **)0x507a;
                puVar12 = *(uint16_t **)0x5078;
                puVar15 = *(uint16_t **)0x5078;
                do {
                    puVar1 = puVar10;
                    puVar10 = puVar10 + 1;
                    if (*puVar1 == 0xff) {
                        puVar11 = puVar12 + 0xa0;
                    } else {
                        piVar9 = (int16_t *)((uint16_t)*puVar1 * 0x10 + *(int16_t *)0xb000);
                        do {
                            piVar2 = piVar9;
                            piVar9 = piVar9 + 1;
                            uVar6 = fcn.000016d3(*piVar2);
                            *puVar12 = *puVar12 | uVar6;
                            puVar11 = puVar12 + 0x1000;
                            if ((uint16_t *)0x3fff < puVar11) {
                                puVar11 = puVar12 + -0xfd8;
                            }
                            puVar12 = puVar11;
                        } while (puVar10 != (uint8_t *)0x1);
                        puVar10 = (uint8_t *)0x1;
                    }
                    puVar12 = puVar11;
                } while ((puVar15 != (uint16_t *)0x1) || (puVar12 = (uint16_t *)0x3, puVar15 = puVar12, unaff_DI != 1));
                return;
            }
            return;
        }
        fcn.00000fff(arg3);
    }
    if (*(char *)0xff37 == '\0') {
        *(undefined *)0xff37 = 0xff;
        iVar7 = 3;
        iVar13 = *(int16_t *)0x506f;
        do {
            iVar8 = 3;
            do {
                iVar14 = iVar8;
                fcn.0000078e(iVar13, iVar8, iVar7, arg3);
                iVar13 = iVar14 + 2;
                iVar8 = iVar7 + -1;
            } while (iVar8 != 0);
            iVar13 = iVar14 + 0x13c;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0xfff: fcn.00000fff */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000fff(int16_t arg3)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xff44 == '\0') {
        return;
    }
    fcn.00001041(arg3);
    *(undefined *)0xff44 = 0;
    return;
}

/* ====================================================================== */
/* 0x1041: fcn.00001041 */
/* ====================================================================== */


void fcn.00001041(void)
{
    int16_t iVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)0x519f;
    iVar1 = 0x20;
    puVar3 = *(undefined2 **)0x5078;
    do {
        *puVar3 = *puVar2;
        puVar3[1] = puVar2[1];
        puVar4 = puVar2 + 3;
        puVar3[2] = puVar2[2];
        puVar2 = puVar2 + 4;
        puVar3[3] = *puVar4;
        puVar4 = puVar3 + 0x1000;
        if ((undefined2 *)0x3fff < puVar4) {
            puVar4 = puVar3 + -0xfd8;
        }
        iVar1 = iVar1 + -1;
        puVar3 = puVar4;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x1066: fcn.00001066 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001066(int16_t arg1, int16_t arg4)
{
    int16_t iVar1;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    puVar2 = (uint8_t *)
             ((uint16_t)(*(char *)0x84 + *(char *)0x507c & 0x3f) * 0x24 +
              (uint16_t)(uint8_t)(*(char *)0x83 + *(char *)0x507d + 4) + *(int16_t *)0xff31);
    fcn.000015cf();
    do {
        iVar1 = 4;
        do {
            puVar3 = puVar2;
            *(undefined2 *)((uint16_t)(*puVar3 & 0x7f) * 2 + 0x509f) = 0;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        puVar2 = puVar3 + 0x21;
        fcn.000015cf();
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0x1018: fcn.00001018 */
/* ====================================================================== */


void fcn.00001018(void)
{
    int16_t iVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    
    puVar4 = (undefined2 *)0x519f;
    iVar1 = 0x20;
    puVar2 = *(undefined2 **)0x5078;
    do {
        *puVar4 = *puVar2;
        puVar4[1] = puVar2[1];
        puVar3 = puVar4 + 3;
        puVar4[2] = puVar2[2];
        puVar4 = puVar4 + 4;
        *puVar3 = puVar2[3];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x3fff < puVar3) {
            puVar3 = puVar2 + -0xfd8;
        }
        iVar1 = iVar1 + -1;
        puVar2 = puVar3;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x16d3: fcn.000016d3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.000016d3(int16_t arg1)
{
    uint16_t uVar1;
    int16_t iVar2;
    int16_t iVar3;
    uint8_t uVar4;
    bool bVar5;
    
    iVar2 = 0;
    iVar3 = 8;
    do {
        bVar5 = CARRY2(arg1, arg1);
        uVar1 = arg1 * 2;
        arg1 = arg1 * 4;
        uVar4 = bVar5 * '\x02' + CARRY2(uVar1, uVar1);
        if (uVar4 != 0) {
            uVar4 = 3;
        }
        iVar2 = CONCAT11((char)((uint16_t)(iVar2 * 4) >> 8), (uint8_t)(iVar2 * 4) | uVar4);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return iVar2;
}

/* ====================================================================== */
/* 0x78e: fcn.0000078e */
/* ====================================================================== */


void fcn.0000078e(void)
{
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar1;
    undefined2 *puVar2;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    *unaff_DI = *unaff_SI;
    puVar2 = unaff_DI + 0x1000;
    if ((undefined2 *)0x3fff < puVar2) {
        puVar2 = unaff_DI + -0xfd8;
    }
    *puVar2 = unaff_SI[1];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x3fff < puVar1) {
        puVar1 = puVar2 + -0xfd8;
    }
    *puVar1 = unaff_SI[2];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x3fff < puVar2) {
        puVar2 = puVar1 + -0xfd8;
    }
    *puVar2 = unaff_SI[3];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x3fff < puVar1) {
        puVar1 = puVar2 + -0xfd8;
    }
    *puVar1 = unaff_SI[4];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x3fff < puVar2) {
        puVar2 = puVar1 + -0xfd8;
    }
    *puVar2 = unaff_SI[5];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x3fff < puVar1) {
        puVar1 = puVar2 + -0xfd8;
    }
    *puVar1 = unaff_SI[6];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x3fff < puVar2) {
        puVar2 = puVar1 + -0xfd8;
    }
    *puVar2 = unaff_SI[7];
    return;
}

/* ====================================================================== */
/* 0x4db: fcn.000004db */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000004db(int16_t arg3)
{
    undefined extraout_AH;
    undefined uVar1;
    int16_t extraout_DX;
    int16_t iVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined *unaff_DI;
    undefined2 unaff_DS;
    undefined4 uVar5;
    int16_t in_stack_00000000;
    int16_t iVar6;
    undefined *arg_6h;
    
    iVar3 = 0x5092;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 0xff;
    UNLOCK();
    *(undefined *)0x5092 = uVar1;
    LOCK();
    uVar1 = unaff_DI[0x1c];
    unaff_DI[0x1c] = 0xff;
    UNLOCK();
    *(undefined *)0x5093 = uVar1;
    uVar1 = unaff_SI[-1];
    arg_6h = unaff_SI;
    fcn.000015cf(arg3, arg3);
    fcn.0000080e((int16_t)arg_6h, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, uVar1));
    puVar4 = unaff_SI + 0x25;
    iVar2 = (int16_t)unaff_DI * 2 + *(int16_t *)0x506d;
    iVar3 = extraout_DX;
    if ((*(char *)0x5092 != -1) && (iVar3 = extraout_DX, *(char *)0x5092 != -4)) {
        uVar5 = CONCAT22(iVar2, CONCAT11(*puVar4, (char)extraout_DX));
        iVar3 = extraout_DX;
        iVar6 = extraout_DX;
        if ((char)extraout_DX < '\0') {
            iVar6 = extraout_DX;
            uVar5 = fcn.00000807(iVar2, puVar4);
        }
        puVar4 = arg_6h;
        iVar2 = iVar6;
        fcn.00000684((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
        iVar3 = in_stack_00000000;
    }
    if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
        uVar5 = CONCAT22(iVar2 + 0x140, CONCAT11(puVar4[2], (char)((uint16_t)iVar3 >> 8)));
        if (iVar3 < 0) {
            uVar5 = fcn.00000807();
        }
        fcn.00000684((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
    }
    return;
}

/* ====================================================================== */
/* 0x128: fcn.00000128 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000128(int16_t arg3)
{
    char *pcVar1;
    undefined2 uVar2;
    char cVar3;
    char cVar4;
    uint8_t uVar5;
    undefined uVar6;
    undefined2 in_AX;
    int16_t arg3_00;
    undefined *unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    undefined *arg_4h;
    
    cVar4 = unaff_SI[-1];
    if (cVar4 < '\0') {
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + -1);
        *(undefined2 *)(unaff_DI + -1) = 0xfffe;
        UNLOCK();
        *(undefined2 *)0x5092 = uVar2;
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + 0x1b);
        *(undefined2 *)(unaff_DI + 0x1b) = 0xffff;
        UNLOCK();
        *(undefined2 *)0x5094 = uVar2;
        uVar6 = unaff_SI[-1];
        arg3_00 = 0x5096;
        *(undefined *)0x5097 = *unaff_SI;
        arg_4h = unaff_SI;
        fcn.000015cf(arg3);
        uVar2 = *(undefined2 *)(unaff_SI + 0x23);
        *(undefined2 *)(arg3_00 + 2) = uVar2;
        *(undefined *)0x5074 = (char)arg3;
        *(char *)0x5075 = '\x12' - *(char *)0x5073;
        uVar6 = fcn.0000080e(in_stack_00000000, (int16_t)arg_4h, arg3_00, CONCAT11((char)((uint16_t)uVar2 >> 8), uVar6))
        ;
        *(undefined *)0x5096 = uVar6;
        fcn.00000657();
        if (*(char *)0x5073 != '\x01') {
            fcn.00000657();
            if ((*(char *)0xff34 != '\0') && (*(char *)0xff2f != '\0')) {
                fcn.0000085f();
            }
        }
        return;
    }
    if (*(char *)(unaff_DI + -1) == -4) {
        *(undefined *)(unaff_DI + -1) = 0xff;
    } else {
        pcVar1 = (char *)(unaff_DI + -1);
        *pcVar1 = *pcVar1 + '\x01';
        cVar3 = *pcVar1;
        *(undefined *)(unaff_DI + -1) = 0xfe;
        if (cVar3 != '\0') {
            *(char *)(unaff_DI + -1) = cVar4;
            fcn.00000270(arg3, arg3 * 2 + *(int16_t *)0x506d, CONCAT11((char)((uint16_t)in_AX >> 8), cVar4));
        }
    }
    uVar5 = *(uint8_t *)0xc012 - 5;
    if (*(uint8_t *)0xc012 < 5) {
        return;
    }
    if (3 < uVar5) {
        return;
    }
    (**(code **)((uint16_t)uVar5 * 2 + 0x3170))(arg3);
    return;
}

/* ====================================================================== */
/* 0x270: fcn.00000270 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000270(int16_t arg3, int16_t arg2, int16_t arg1)
{
    undefined2 uVar1;
    int16_t iVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 *puVar5;
    undefined2 unaff_DS;
    
    if ((char)arg1 == '\0') {
        *(undefined2 *)arg2 = 0;
        puVar5 = (undefined2 *)(arg2 + 0x2000);
        if ((undefined2 *)0x3fff < puVar5) {
            puVar5 = (undefined2 *)(arg2 + -0x1fb0);
        }
        *puVar5 = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x3fff < puVar4) {
            puVar4 = puVar5 + -0xfd8;
        }
        *puVar4 = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x3fff < puVar5) {
            puVar5 = puVar4 + -0xfd8;
        }
        *puVar5 = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x3fff < puVar4) {
            puVar4 = puVar5 + -0xfd8;
        }
        *puVar4 = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x3fff < puVar5) {
            puVar5 = puVar4 + -0xfd8;
        }
        *puVar5 = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x3fff < puVar4) {
            puVar4 = puVar5 + -0xfd8;
        }
        *puVar4 = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x3fff < puVar5) {
            puVar5 = puVar4 + -0xfd8;
        }
        *puVar5 = 0;
        return;
    }
    iVar2 = (arg1 & 0xffU) * 2;
    if (*(int16_t *)(iVar2 + 0x509f) == 0) {
        *(int16_t *)(iVar2 + 0x509f) = arg2;
        uVar1 = *(undefined2 *)0xff2c;
        puVar5 = (undefined2 *)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x10 + -0x7fd0);
        iVar2 = 4;
        do {
            puVar4 = puVar5 + 1;
            *(undefined2 *)arg2 = *puVar5;
            puVar3 = (undefined2 *)(arg2 + 0x2000);
            if ((undefined2 *)0x3fff < puVar3) {
                puVar3 = (undefined2 *)(arg2 + -0x1fb0);
            }
            puVar5 = puVar5 + 2;
            *puVar3 = *puVar4;
            arg2 = (int16_t)(puVar3 + 0x1000);
            if ((undefined2 *)0x3fff < (uint16_t)arg2) {
                arg2 = (int16_t)(puVar3 + -0xfd8);
            }
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        return;
    }
    puVar5 = *(undefined2 **)(iVar2 + 0x509f);
    *(undefined2 *)arg2 = *puVar5;
    puVar4 = (undefined2 *)(arg2 + 0x2000);
    if ((undefined2 *)0x3fff < puVar4) {
        puVar4 = (undefined2 *)(arg2 + -0x1fb0);
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar5 + -0xfd8;
    }
    *puVar4 = *puVar3;
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x3fff < puVar5) {
        puVar5 = puVar4 + -0xfd8;
    }
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar4) {
        puVar4 = puVar3 + -0xfd8;
    }
    *puVar5 = *puVar4;
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar5 + -0xfd8;
    }
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x3fff < puVar5) {
        puVar5 = puVar4 + -0xfd8;
    }
    *puVar3 = *puVar5;
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar4) {
        puVar4 = puVar3 + -0xfd8;
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar5 + -0xfd8;
    }
    *puVar4 = *puVar3;
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x3fff < puVar5) {
        puVar5 = puVar4 + -0xfd8;
    }
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar4) {
        puVar4 = puVar3 + -0xfd8;
    }
    *puVar5 = *puVar4;
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar5 + -0xfd8;
    }
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x3fff < puVar5) {
        puVar5 = puVar4 + -0xfd8;
    }
    *puVar3 = *puVar5;
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar4) {
        puVar4 = puVar3 + -0xfd8;
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar5 + -0xfd8;
    }
    *puVar4 = *puVar3;
    return;
}

/* ====================================================================== */
/* 0x85f: fcn.0000085f */
/* ====================================================================== */


void fcn.0000085f(void)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0xf < *(uint8_t *)0x5075) {
        return;
    }
    uVar1 = (*_fcn.0000011a)();
    if ((uVar1 & 0xf) < 0xe) {
        return;
    }
    uVar1 = 0;
    for (puVar2 = (uint8_t *)0xeda0; *puVar2 != 0xff; puVar2 = puVar2 + 4) {
        uVar1 = uVar1 + 1;
    }
    if (0x1f < uVar1) {
        return;
    }
    do {
        uVar1 = (*_fcn.0000011a)();
    } while ((uVar1 & 3) == 3);
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x5074;
    if (uVar1 == 0xff) {
        uVar1 = 4;
    }
    if (0x1a < uVar1) {
        uVar1 = 0x1a;
    }
    *puVar2 = uVar1;
    do {
        uVar1 = (*_fcn.0000011a)();
    } while ((uVar1 & 3) == 3);
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x5075;
    if (uVar1 == 0xff) {
        uVar1 = 0;
    }
    puVar2[1] = uVar1;
    puVar2[2] = 3;
    uVar1 = (*_fcn.0000011a)();
    puVar2[3] = *(uint8_t *)(uint32_t)((uVar1 & 3) + 0x38d1);
    puVar2[4] = 0xff;
    return;
}

/* ====================================================================== */
/* 0x11a: fcn.0000011a */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x0000011b) overlaps instruction at (ram,0x0000011a)
// 
// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

int16_t fcn.0000011a(int16_t arg1, int16_t arg3, int16_t arg4)
{
    char *pcVar1;
    undefined2 uVar2;
    char *pcVar3;
    uint8_t uVar4;
    char cVar5;
    int16_t iVar6;
    undefined uVar8;
    uint16_t uVar7;
    undefined extraout_AH;
    undefined extraout_DL;
    undefined2 in_DX;
    undefined2 *puVar9;
    undefined2 *puVar10;
    uint16_t unaff_SI;
    char *pcVar11;
    char *pcVar12;
    undefined2 *puVar13;
    undefined2 *unaff_DI;
    undefined2 *unaff_ES;
    undefined2 unaff_DS;
    char in_CF;
    bool bVar14;
    undefined4 uVar15;
    undefined2 *in_stack_00000002;
    int16_t in_stack_00000004;
    undefined2 *in_stack_00000006;
    char *in_stack_00000008;
    undefined2 *puVar16;
    
    puVar13 = unaff_DI + 1;
    uVar2 = in(in_DX);
    *unaff_DI = uVar2;
    iVar6 = CONCAT11((char)((uint16_t)arg1 >> 8), (char)arg1 + -0x7f + in_CF) + 1;
    pcVar11 = (char *)(unaff_SI + (int16_t)puVar13);
    bVar14 = pcVar11 == (char *)0x0;
    puVar16 = unaff_ES;
    if (CARRY2(unaff_SI, (uint16_t)puVar13)) {
        while (!bVar14) {
            fcn.00000ed5(arg3);
            arg3 = 0;
            pcVar3 = pcVar11 + 4;
            if (pcVar11[3] < '\0') {
                fcn.000004db(0);
            }
            do {
                puVar10 = puVar13;
                pcVar12 = pcVar3;
                if (*pcVar12 != *(char *)puVar10) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar12[1] != *(char *)((int16_t)puVar10 + 1)) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar12[2] != *(char *)(puVar10 + 1)) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar12[3] != *(char *)((int16_t)puVar10 + 3)) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                pcVar3 = pcVar12 + 4;
                puVar13 = puVar10 + 2;
            } while (puVar16 != (undefined2 *)0x1);
            if (pcVar12[4] != *(char *)(puVar10 + 2)) {
                puVar16 = (undefined2 *)0xf4;
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar12[5] != *(char *)((int16_t)puVar10 + 5)) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar12[6] != *(char *)(puVar10 + 3)) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            pcVar11 = pcVar12 + 8;
            puVar13 = puVar10 + 4;
            if (pcVar12[7] < '\0') {
                iVar6 = 0x5092;
                LOCK();
                cVar5 = *(char *)((int16_t)puVar10 + 7);
                *(char *)((int16_t)puVar10 + 7) = -2;
                UNLOCK();
                *(char *)0x5092 = cVar5;
                LOCK();
                cVar5 = *(char *)((int16_t)puVar10 + 0x23);
                *(char *)((int16_t)puVar10 + 0x23) = -1;
                UNLOCK();
                *(char *)0x5093 = cVar5;
                cVar5 = pcVar12[7];
                pcVar12 = pcVar12 + 0x2c;
                fcn.000015cf(arg3, arg3);
                cVar5 = fcn.0000080e((int16_t)pcVar11, (int16_t)puVar13, iVar6, CONCAT11(extraout_AH, cVar5));
                puVar10 = (undefined2 *)CONCAT11(extraout_DL, cVar5);
                puVar9 = (undefined2 *)((int16_t)puVar13 * 2 + *(int16_t *)0x506d);
                puVar16 = puVar13;
                if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                    uVar15 = CONCAT22(puVar9, CONCAT11(*pcVar12, cVar5));
                    puVar13 = puVar10;
                    if (cVar5 < '\0') {
                        uVar15 = fcn.00000807(puVar9, pcVar12);
                    }
                    puVar9 = puVar13;
                    pcVar12 = pcVar11;
                    fcn.00000684((int16_t)uVar15, (int16_t)((uint32_t)uVar15 >> 0x10), (int16_t)puVar10);
                    puVar10 = in_stack_00000002;
                    puVar16 = puVar9;
                }
                arg3 = in_stack_00000004;
                pcVar11 = in_stack_00000008;
                puVar13 = in_stack_00000006;
                if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                    uVar15 = CONCAT22(puVar9 + 0xa0, CONCAT11(pcVar12[2], (char)((uint16_t)puVar10 >> 8)));
                    if ((int16_t)puVar10 < 0) {
                        uVar15 = fcn.00000807();
                    }
                    in_stack_00000002 = (undefined2 *)0x651;
                    fcn.00000684((int16_t)uVar15, (int16_t)((uint32_t)uVar15 >> 0x10), (int16_t)puVar10);
                }
            } else if (pcVar12[7] != *(char *)((int16_t)puVar10 + 7)) {
                fcn.00000128(arg3);
            }
            pcVar11 = pcVar11 + 4;
            iVar6 = fcn.000015cf();
            *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
            pcVar1 = (char *)0x5073;
            *pcVar1 = *pcVar1 + -1;
            bVar14 = *pcVar1 == '\0';
        }
        return iVar6;
    }
    *(uint16_t *)(pcVar11 + arg3 + -0x31cf) = *(uint16_t *)(pcVar11 + arg3 + -0x31cf) ^ arg3;
    *(uint16_t *)(pcVar11 + 0x32) = *(uint16_t *)(pcVar11 + 0x32) ^ arg4;
    cVar5 = pcVar11[-1];
    uVar8 = (undefined)((uint16_t)iVar6 >> 8);
    uVar4 = cVar5 - 0x1b;
    iVar6 = CONCAT11(uVar8, uVar4);
    if (uVar4 < 2) {
        *(undefined *)((int16_t)unaff_DI + 1) = 0xfe;
        if ((*(uint8_t *)0x5080 & 1) != 0) {
            uVar7 = CONCAT11(uVar8, cVar5 + -0x1a) & 0xff01;
            cVar5 = (char)uVar7 + '\x1b';
            pcVar11[-1] = cVar5;
            return CONCAT11((char)(uVar7 >> 8), cVar5);
        }
        return iVar6;
    }
    return iVar6;
}

/* ====================================================================== */
/* 0x726: fcn.00000726 */
/* ====================================================================== */


void fcn.00000726(void)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t in_DX;
    int16_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar4;
    
    iVar3 = 8;
    do {
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar4 = fcn.00000731(*piVar1, in_DX);
        in_DX = (int16_t)((uint32_t)uVar4 >> 0x10);
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar2 = (int16_t)uVar4;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x731: fcn.00000731 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.00000731(int16_t arg1, int16_t arg2)
{
    return CONCAT11(*(char *)(((uint16_t)arg1 >> 0xc) + *(int16_t *)0x506b) << 4 |
                    *(uint8_t *)(((arg1 & 0xf0fU) >> 8) + *(int16_t *)0x506b), 
                    *(char *)(((uint16_t)arg1 >> 4 & 0xf) + *(int16_t *)0x506b) << 4 |
                    *(uint8_t *)((uint16_t)((uint8_t)arg1 & 0xf) + *(int16_t *)0x506b));
}

/* ====================================================================== */
/* 0x6f8: fcn.000006f8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000006f8(int16_t arg1)
{
    int16_t *piVar1;
    int16_t iVar2;
    int16_t extraout_DX;
    int16_t arg2;
    int16_t *unaff_BP;
    uint16_t *unaff_SI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar3;
    uint16_t *in_stack_00000000;
    
    fcn.000007f9();
    iVar2 = 8;
    arg2 = extraout_DX;
    do {
        *unaff_SI = *unaff_SI & *in_stack_00000000;
        piVar1 = unaff_BP;
        unaff_BP = unaff_BP + 1;
        uVar3 = fcn.00000731(*piVar1, arg2);
        arg2 = (int16_t)((uint32_t)uVar3 >> 0x10);
        *unaff_SI = *unaff_SI | (uint16_t)uVar3;
        in_stack_00000000 = in_stack_00000000 + 1;
        unaff_SI = unaff_SI + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x7f9: fcn.000007f9 */
/* ====================================================================== */


void fcn.000007f9(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    for (iVar3 = 8; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0xea6: fcn.00000ea6 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000ea6(int16_t arg1, int16_t arg4)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)
             ((uint16_t)*(uint8_t *)0x84 * 0x24 + (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0xff31);
    fcn.000015cf();
    puVar4 = (undefined2 *)0x5096;
    iVar3 = 3;
    do {
        puVar1 = puVar4 + 1;
        *puVar4 = *puVar2;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
        *(undefined *)puVar1 = *(undefined *)(puVar2 + 1);
        puVar2 = puVar2 + 0x12;
        fcn.000015cf();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xe00: fcn.00000e00 */
/* ====================================================================== */


uint8_t fcn.00000e00(void)
{
    uint8_t uVar1;
    undefined2 unaff_DS;
    
    uVar1 = *(uint8_t *)0x93;
    if (uVar1 == 0) {
        return uVar1;
    }
    if (uVar1 < 4) {
        return 1;
    }
    return 2;
}

/* ====================================================================== */
/* 0xdbe: fcn.00000dbe */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000dbe(int16_t arg4, int16_t arg1, int16_t arg2)
{
    int16_t extraout_DX;
    char *unaff_SI;
    char *unaff_ES;
    char *pcVar1;
    char *unaff_DS;
    int16_t in_stack_00000000;
    
    do {
        pcVar1 = unaff_ES;
        if (*unaff_SI != '\0') {
            fcn.0000070e(arg2);
            arg2 = extraout_DX;
            unaff_SI = unaff_DS;
            pcVar1 = (char *)arg4;
            unaff_DS = unaff_ES;
        }
        unaff_SI = unaff_SI + 1;
        *(char *)0x5074 = *(char *)0x5074 + '\x01';
        arg4 = in_stack_00000000 + -1;
        unaff_ES = pcVar1;
    } while ((char *)arg4 != (char *)0x0);
    return;
}

/* ====================================================================== */
/* 0x70e: fcn.0000070e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000070e(int16_t arg2)
{
    int16_t *piVar1;
    int16_t iVar2;
    uint16_t *unaff_BP;
    int16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar3;
    
    iVar2 = 8;
    do {
        *unaff_DI = *unaff_DI & *unaff_BP;
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar3 = fcn.00000731(*piVar1, arg2);
        arg2 = (int16_t)((uint32_t)uVar3 >> 0x10);
        *unaff_DI = *unaff_DI | (uint16_t)uVar3;
        unaff_BP = unaff_BP + 1;
        unaff_DI = unaff_DI + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x7ff: fcn.000007ff */
/* ====================================================================== */


void fcn.000007ff(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    
    for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0x1226: fcn.00001226 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001226(int16_t arg3, int16_t arg1)
{
    int16_t iVar1;
    uint16_t uVar2;
    undefined extraout_AH;
    undefined extraout_AH_00;
    char *unaff_DI;
    undefined2 unaff_DS;
    
    if (*unaff_DI == -1) {
        return;
    }
    if (*unaff_DI == -4) {
        return;
    }
    *(uint8_t *)0x5081 = -((uint8_t)(*(char *)0x5080 - 1U) >> 2 & 1) ^ 0xcc;
    if ((char)arg1 != '\0') {
        iVar1 = (uint16_t)(uint8_t)((char)arg1 - 1) * 0x10 + -0x7fd0;
        uVar2 = CONCAT11((char)((uint16_t)iVar1 >> 8), *(undefined *)0x5080) & 0xff03;
        fcn.000012df(CONCAT11((char)(uVar2 >> 8), '\x03' - (char)uVar2));
        fcn.0000128f(iVar1);
        fcn.000012df(CONCAT11(extraout_AH, *(undefined *)0x5080));
        fcn.0000128f();
        return;
    }
    uVar2 = CONCAT11((char)((uint16_t)arg1 >> 8), *(undefined *)0x5080) & 0xff03;
    fcn.000012df(CONCAT11((char)(uVar2 >> 8), '\x03' - (char)uVar2));
    fcn.000012ce(arg3);
    fcn.000012df(CONCAT11(extraout_AH_00, *(undefined *)0x5080));
    fcn.000012ce();
    return;
}

/* ====================================================================== */
/* 0x12df: fcn.000012df */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000012df(int16_t arg1)
{
    uint16_t uVar1;
    uint16_t unaff_DI;
    uint16_t uVar2;
    
    uVar1 = (uint16_t)((uint8_t)arg1 & 3);
    if (uVar1 == 0) {
        return;
    }
    do {
        uVar2 = unaff_DI + 0x2000;
        if (0x3fff < uVar2) {
            uVar2 = unaff_DI + 0xe050;
        }
        uVar1 = uVar1 - 1;
        unaff_DI = uVar2;
    } while (uVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x128f: fcn.0000128f */
/* ====================================================================== */


void fcn.0000128f(void)
{
    uint8_t uVar1;
    int16_t iVar2;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 2;
    do {
        uVar1 = *unaff_SI & *(uint8_t *)0x5081;
        *unaff_DI = *unaff_DI & ~*(uint8_t *)0x5081;
        *unaff_DI = *unaff_DI | uVar1;
        unaff_DI = unaff_DI + 0xa0;
        unaff_SI = unaff_SI + 8;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x12ce: fcn.000012ce */
/* ====================================================================== */


void fcn.000012ce(void)
{
    uint8_t uVar1;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = ~*(uint8_t *)0x5081;
    *unaff_DI = *unaff_DI & uVar1;
    unaff_DI[0xa0] = unaff_DI[0xa0] & uVar1;
    return;
}

/* ====================================================================== */
/* 0x1548: fcn.00001548 */
/* ====================================================================== */


void fcn.00001548(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    uint16_t *puVar4;
    uint16_t *puVar5;
    uint16_t *puVar6;
    
    iVar1 = 8;
    puVar4 = (uint16_t *)0x23c;
    do {
        iVar2 = 0x12;
        puVar6 = puVar4;
        do {
            iVar3 = 0x1c;
            puVar5 = puVar6;
            do {
                *puVar5 = *puVar5 ^ 0xffff;
                puVar5 = puVar5 + 1;
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            puVar6 = puVar6 + 0xa0;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar6 = puVar4 + 0x1000;
        if ((uint16_t *)0x3fff < puVar6) {
            puVar6 = puVar4 + -0xfd8;
        }
        iVar1 = iVar1 + -1;
        puVar4 = puVar6;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x1330: fcn.00001330 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001346: Changing call to branch
// WARNING: Removing unreachable block (ram,0x00001349)

void fcn.00001330(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    uint8_t uVar4;
    int16_t arg3;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t iStack_2;
    
    arg3 = CONCAT11(*(char *)0x506c + -1, *(char *)0x506b + -1);
    iStack_2 = 0x1349;
    iVar2 = 9;
    iVar1 = CONCAT11(*(char *)0x506c + '\x18', *(char *)0x506b + '\x18');
    do {
        iVar1 = fcn.000013aa(iVar1, arg3);
        uVar4 = (uint8_t)((uint16_t)iVar2 >> 8);
        cVar3 = (uint8_t)iVar2 + 0xc;
        if (0xf3 < (uint8_t)iVar2) {
            cVar3 = -1;
        }
        arg3 = CONCAT11(uVar4 + 0xc, cVar3);
        if (0xf3 < uVar4) {
            arg3 = CONCAT11(0xff, cVar3);
        }
        fcn.00001515(iVar1);
        iVar2 = in_stack_00000000 + -1;
        iVar1 = iStack_2;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x13aa: fcn.000013aa */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000013c5: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000013c8)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000013aa(int16_t arg2, int16_t arg3)
{
    uint8_t uVar1;
    undefined extraout_AH;
    int16_t iVar2;
    uint8_t uVar3;
    int16_t unaff_DI;
    uint8_t *puVar4;
    uint8_t *puVar5;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    undefined2 in_stack_00000002;
    
    fcn.0000143c(CONCAT11((char)((uint16_t)arg3 >> 8), (char)arg2));
    fcn.0000143c(in_stack_00000000);
    uVar3 = (uint8_t)((uint16_t)in_stack_00000002 >> 8);
    if (uVar3 < (uint8_t)(in_stack_00000000 >> 8)) {
        in_stack_00000000 = CONCAT11(uVar3, (char)in_stack_00000000);
    }
    uVar3 = (uint8_t)in_stack_00000000;
    if (uVar3 == 0) {
        return;
    }
    if (0xde < uVar3) {
        return;
    }
    if ((char)(in_stack_00000000 >> 8) == '\0') {
        in_stack_00000000 = CONCAT11(1, uVar3);
    }
    fcn.00001503(CONCAT11(extraout_AH, (char)(in_stack_00000000 >> 8)));
    iVar2 = 200;
    uVar3 = (uint8_t)in_stack_00000000 & 3;
    if ((in_stack_00000000 & 3) == 0) {
        uVar3 = 0xc0;
    } else if (uVar3 < 2) {
        uVar3 = 0x30;
    } else if (uVar3 == 2) {
        uVar3 = 0xc;
    } else {
        uVar3 = 3;
    }
    uVar1 = *(uint8_t *)0x5080;
    puVar4 = (uint8_t *)(unaff_DI + (uint16_t)(uint8_t)((uint8_t)in_stack_00000000 >> 2));
    do {
        *puVar4 = *puVar4 & ~uVar3;
        *puVar4 = *puVar4 | uVar3 & uVar1;
        puVar5 = puVar4 + 0x2000;
        if ((uint8_t *)0x3fff < puVar5) {
            puVar5 = puVar4 + -0x1fb0;
        }
        iVar2 = iVar2 + -1;
        puVar4 = puVar5;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1515: fcn.00001515 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001515(int16_t arg1)
{
    undefined2 unaff_DS;
    uint16_t uVar1;
    
    uVar1 = (uint16_t)(uint8_t)((*(uint8_t *)0xff33 >> 1) + 1);
    do {
        (*_fcn.00000110)(uVar1);
        uVar1 = 0x152c;
        (*_fcn.00000112)();
        (*_fcn.00000114)();
        (*_fcn.00000116)();
        (*_fcn.00000118)();
    } while (*(uint8_t *)0xff1a < (uint8_t)uVar1);
    *(undefined *)0xff1a = 0;
    return;
}

/* ====================================================================== */
/* 0x110: fcn.00000110 */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000110(undefined2 param_1, undefined2 param_2, int16_t param_3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t iVar3;
    char *in_BX;
    char *arg3;
    char *unaff_SI;
    char *pcVar4;
    char *pcVar5;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined in_ZF;
    undefined4 uVar6;
    int16_t iStackY_c;
    char *pcStackY_a;
    char *pcVar7;
    char *pcStack_6;
    
    pcStack_6 = in_BX;
    do {
        if (!(bool)in_ZF) {
            fcn.00000128((int16_t)pcStack_6);
        }
        while( true ) {
            fcn.000015cf();
            *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
            pcVar1 = (char *)0x5073;
            *pcVar1 = *pcVar1 + -1;
            if (*pcVar1 == '\0') {
                return;
            }
            fcn.00000ed5((int16_t)pcStack_6);
            iVar3 = 0;
            pcVar5 = unaff_SI + 8;
            if (unaff_SI[7] < '\0') {
                fcn.000004db(0);
            }
            do {
                pcVar7 = unaff_DI;
                pcVar4 = pcVar5;
                if (*pcVar4 != *pcVar7) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar4[1] != pcVar7[1]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar4[2] != pcVar7[2]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar4[3] != pcVar7[3]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                pcVar5 = pcVar4 + 4;
                unaff_DI = pcVar7 + 4;
            } while (param_3 != 1);
            if (pcVar4[4] != pcVar7[4]) {
                param_3 = 0xf4;
                fcn.00000128(iVar3);
            }
            iVar3 = iVar3 + 1;
            if (pcVar4[5] != pcVar7[5]) {
                fcn.00000128(iVar3);
            }
            iVar3 = iVar3 + 1;
            if (pcVar4[6] != pcVar7[6]) {
                fcn.00000128(iVar3);
            }
            pcStack_6 = (char *)(iVar3 + 1);
            unaff_SI = pcVar4 + 8;
            unaff_DI = pcVar7 + 8;
            if (-1 < pcVar4[7]) break;
            iVar3 = 0x5092;
            LOCK();
            cVar2 = pcVar7[7];
            pcVar7[7] = -2;
            UNLOCK();
            *(char *)0x5092 = cVar2;
            LOCK();
            cVar2 = pcVar7[0x23];
            pcVar7[0x23] = -1;
            UNLOCK();
            *(char *)0x5093 = cVar2;
            cVar2 = pcVar4[7];
            pcVar4 = pcVar4 + 0x2c;
            pcStackY_a = (char *)0x5f2;
            fcn.000015cf(pcStack_6);
            pcVar7 = (char *)0x5fa;
            cVar2 = fcn.0000080e((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
            arg3 = (char *)CONCAT11(extraout_DL, cVar2);
            iVar3 = (int16_t)unaff_DI * 2 + *(int16_t *)0x506d;
            pcVar5 = pcVar4;
            if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar4, cVar2));
                unaff_DI = arg3;
                if (cVar2 < '\0') {
                    pcStackY_a = (char *)0x621;
                    uVar6 = fcn.00000807();
                }
                fcn.00000684((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
                arg3 = pcVar7;
                iVar3 = iStackY_c;
                pcVar5 = pcStackY_a;
                pcStack_6 = pcVar4;
            }
            if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                uVar6 = CONCAT22(iVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar6 = fcn.00000807();
                }
                fcn.00000684((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
            }
        }
        in_ZF = pcVar4[7] == pcVar7[7];
    } while( true );
}

/* ====================================================================== */
/* 0x112: fcn.00000112 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000112(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t iVar3;
    char *in_BX;
    char *pcVar4;
    char *unaff_SI;
    char *pcVar5;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar6;
    char *pcVar7;
    int16_t in_stack_00000008;
    int16_t iStackY_a;
    char *pcVar8;
    char *pcVar9;
    
    do {
        fcn.00000128((int16_t)in_BX);
        do {
            while( true ) {
                pcVar7 = (char *)0x11b;
                fcn.000015cf();
                *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
                pcVar1 = (char *)0x5073;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000ed5((int16_t)in_BX);
                iVar3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.000004db(0);
                }
                do {
                    pcVar4 = unaff_DI;
                    pcVar5 = pcVar8;
                    if (*pcVar5 != *pcVar4) {
                        fcn.00000128(iVar3);
                    }
                    iVar3 = iVar3 + 1;
                    if (pcVar5[1] != pcVar4[1]) {
                        fcn.00000128(iVar3);
                    }
                    iVar3 = iVar3 + 1;
                    if (pcVar5[2] != pcVar4[2]) {
                        fcn.00000128(iVar3);
                    }
                    iVar3 = iVar3 + 1;
                    if (pcVar5[3] != pcVar4[3]) {
                        fcn.00000128(iVar3);
                    }
                    iVar3 = iVar3 + 1;
                    pcVar8 = pcVar5 + 4;
                    unaff_DI = pcVar4 + 4;
                } while (in_stack_00000008 != 1);
                if (pcVar5[4] != pcVar4[4]) {
                    in_stack_00000008 = 0xf4;
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar5[5] != pcVar4[5]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar5[6] != pcVar4[6]) {
                    fcn.00000128(iVar3);
                }
                in_BX = (char *)(iVar3 + 1);
                unaff_SI = pcVar5 + 8;
                unaff_DI = pcVar4 + 8;
                if (-1 < pcVar5[7]) break;
                iVar3 = 0x5092;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x5092 = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x5093 = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x5f2;
                fcn.000015cf(in_BX, in_BX);
                pcVar8 = (char *)0x5fa;
                cVar2 = fcn.0000080e((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 2 + *(int16_t *)0x506d;
                in_BX = unaff_DI;
                if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    in_BX = pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x621;
                        uVar6 = fcn.00000807();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.00000684((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.00000807();
                    }
                    fcn.00000684((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                }
            }
        } while (pcVar5[7] == pcVar4[7]);
    } while( true );
}

/* ====================================================================== */
/* 0x114: fcn.00000114 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000115) overlaps instruction at (ram,0x00000114)
// 
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000114(undefined2 param_1, undefined2 param_2, char *param_3, undefined2 param_4, char *param_5,
                 int16_t param_6, char *param_7, char *param_8)
{
    char *pcVar1;
    char in_AL;
    undefined extraout_AH;
    char cVar2;
    undefined extraout_DL;
    char *pcVar3;
    int16_t in_BX;
    int16_t arg3;
    char *arg3_00;
    int16_t unaff_BP;
    char *unaff_SI;
    char *pcVar4;
    char *pcVar5;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined4 uVar7;
    
    while( true ) {
        unaff_DI[unaff_BP + 0x4c6] = unaff_DI[unaff_BP + 0x4c6] + in_AL;
        fcn.000015cf();
        *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
        pcVar1 = (char *)0x5073;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000ed5(in_BX);
        in_BX = 0;
        pcVar4 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004db(0);
        }
        do {
            pcVar6 = unaff_DI;
            pcVar5 = pcVar4;
            if (*pcVar5 != *pcVar6) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[1] != pcVar6[1]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[2] != pcVar6[2]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[3] != pcVar6[3]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            pcVar4 = pcVar5 + 4;
            unaff_DI = pcVar6 + 4;
        } while (param_3 != (char *)0x1);
        if (pcVar5[4] != pcVar6[4]) {
            param_3 = (char *)0xf4;
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar5[5] != pcVar6[5]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar5[6] != pcVar6[6]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        pcVar4 = pcVar5 + 8;
        in_AL = pcVar5[7];
        unaff_DI = pcVar6 + 8;
        if (in_AL < '\0') {
            arg3 = 0x5092;
            LOCK();
            cVar2 = pcVar6[7];
            pcVar6[7] = -2;
            UNLOCK();
            *(char *)0x5092 = cVar2;
            LOCK();
            cVar2 = pcVar6[0x23];
            pcVar6[0x23] = -1;
            UNLOCK();
            *(char *)0x5093 = cVar2;
            cVar2 = pcVar5[7];
            pcVar5 = pcVar5 + 0x2c;
            fcn.000015cf();
            in_AL = fcn.0000080e((int16_t)pcVar4, (int16_t)unaff_DI, arg3, CONCAT11(extraout_AH, cVar2));
            pcVar6 = (char *)CONCAT11(extraout_DL, in_AL);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x506d);
            arg3_00 = pcVar6;
            param_3 = unaff_DI;
            if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar5, in_AL));
                pcVar5 = pcVar6;
                if (in_AL < '\0') {
                    uVar7 = fcn.00000807();
                }
                in_AL = fcn.00000684((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                pcVar3 = pcVar6;
                arg3_00 = param_5;
                pcVar5 = pcVar4;
                param_3 = pcVar6;
            }
            in_BX = param_6;
            pcVar4 = param_8;
            unaff_DI = param_7;
            if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)arg3_00 >> 8)));
                if ((int16_t)arg3_00 < 0) {
                    uVar7 = fcn.00000807();
                }
                param_5 = (char *)0x651;
                in_AL = fcn.00000684((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_00);
            }
        } else if (in_AL != pcVar6[7]) {
            in_AL = fcn.00000128(in_BX);
        }
        unaff_SI = pcVar4 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x116: fcn.00000116 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000115) overlaps instruction at (ram,0x00000114)
// 
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000114(undefined2 param_1, undefined2 param_2, char *param_3, undefined2 param_4, char *param_5,
                 int16_t param_6, char *param_7, char *param_8)
{
    char *pcVar1;
    char in_AL;
    undefined extraout_AH;
    char cVar2;
    undefined extraout_DL;
    char *pcVar3;
    int16_t in_BX;
    int16_t arg3;
    char *arg3_00;
    int16_t unaff_BP;
    char *unaff_SI;
    char *pcVar4;
    char *pcVar5;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined4 uVar7;
    
    while( true ) {
        unaff_DI[unaff_BP + 0x4c6] = unaff_DI[unaff_BP + 0x4c6] + in_AL;
        fcn.000015cf();
        *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
        pcVar1 = (char *)0x5073;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000ed5(in_BX);
        in_BX = 0;
        pcVar4 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004db(0);
        }
        do {
            pcVar6 = unaff_DI;
            pcVar5 = pcVar4;
            if (*pcVar5 != *pcVar6) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[1] != pcVar6[1]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[2] != pcVar6[2]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar5[3] != pcVar6[3]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            pcVar4 = pcVar5 + 4;
            unaff_DI = pcVar6 + 4;
        } while (param_3 != (char *)0x1);
        if (pcVar5[4] != pcVar6[4]) {
            param_3 = (char *)0xf4;
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar5[5] != pcVar6[5]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar5[6] != pcVar6[6]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        pcVar4 = pcVar5 + 8;
        in_AL = pcVar5[7];
        unaff_DI = pcVar6 + 8;
        if (in_AL < '\0') {
            arg3 = 0x5092;
            LOCK();
            cVar2 = pcVar6[7];
            pcVar6[7] = -2;
            UNLOCK();
            *(char *)0x5092 = cVar2;
            LOCK();
            cVar2 = pcVar6[0x23];
            pcVar6[0x23] = -1;
            UNLOCK();
            *(char *)0x5093 = cVar2;
            cVar2 = pcVar5[7];
            pcVar5 = pcVar5 + 0x2c;
            fcn.000015cf();
            in_AL = fcn.0000080e((int16_t)pcVar4, (int16_t)unaff_DI, arg3, CONCAT11(extraout_AH, cVar2));
            pcVar6 = (char *)CONCAT11(extraout_DL, in_AL);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x506d);
            arg3_00 = pcVar6;
            param_3 = unaff_DI;
            if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar5, in_AL));
                pcVar5 = pcVar6;
                if (in_AL < '\0') {
                    uVar7 = fcn.00000807();
                }
                in_AL = fcn.00000684((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                pcVar3 = pcVar6;
                arg3_00 = param_5;
                pcVar5 = pcVar4;
                param_3 = pcVar6;
            }
            in_BX = param_6;
            pcVar4 = param_8;
            unaff_DI = param_7;
            if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)arg3_00 >> 8)));
                if ((int16_t)arg3_00 < 0) {
                    uVar7 = fcn.00000807();
                }
                param_5 = (char *)0x651;
                in_AL = fcn.00000684((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_00);
            }
        } else if (in_AL != pcVar6[7]) {
            in_AL = fcn.00000128(in_BX);
        }
        unaff_SI = pcVar4 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x118: fcn.00000118 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000118) overlaps instruction at (ram,0x00000116)
// 
// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 fcn.00000116(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined2 uVar3;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar4;
    int16_t iVar5;
    int16_t in_BX;
    char *pcVar6;
    char *arg3;
    char *unaff_SI;
    char *pcVar8;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar9;
    char *in_stack_00000004;
    char *in_stack_00000008;
    int16_t in_stack_0000000a;
    char *in_stack_0000000c;
    char *in_stack_0000000e;
    char *pcVar7;
    
    *unaff_SI = -0x18;
    uVar3 = CONCAT11(0x14, (char)arg1);
    while( true ) {
        *(int16_t *)0x506d = *(int16_t *)0x506d + 0x140;
        pcVar1 = (char *)0x5073;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000ed5(in_BX);
        iVar5 = 0;
        pcVar7 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004db(0);
        }
        do {
            pcVar4 = unaff_DI;
            pcVar8 = pcVar7;
            if (*pcVar8 != *pcVar4) {
                fcn.00000128(iVar5);
            }
            iVar5 = iVar5 + 1;
            if (pcVar8[1] != pcVar4[1]) {
                fcn.00000128(iVar5);
            }
            iVar5 = iVar5 + 1;
            if (pcVar8[2] != pcVar4[2]) {
                fcn.00000128(iVar5);
            }
            iVar5 = iVar5 + 1;
            if (pcVar8[3] != pcVar4[3]) {
                fcn.00000128(iVar5);
            }
            iVar5 = iVar5 + 1;
            pcVar7 = pcVar8 + 4;
            unaff_DI = pcVar4 + 4;
        } while (in_stack_00000004 != (char *)0x1);
        if (pcVar8[4] != pcVar4[4]) {
            in_stack_00000004 = (char *)0xf4;
            fcn.00000128(iVar5);
        }
        iVar5 = iVar5 + 1;
        if (pcVar8[5] != pcVar4[5]) {
            fcn.00000128(iVar5);
        }
        iVar5 = iVar5 + 1;
        if (pcVar8[6] != pcVar4[6]) {
            fcn.00000128(iVar5);
        }
        in_BX = iVar5 + 1;
        pcVar7 = pcVar8 + 8;
        unaff_DI = pcVar4 + 8;
        if (pcVar8[7] < '\0') {
            iVar5 = 0x5092;
            LOCK();
            cVar2 = pcVar4[7];
            pcVar4[7] = -2;
            UNLOCK();
            *(char *)0x5092 = cVar2;
            LOCK();
            cVar2 = pcVar4[0x23];
            pcVar4[0x23] = -1;
            UNLOCK();
            *(char *)0x5093 = cVar2;
            cVar2 = pcVar8[7];
            pcVar8 = pcVar8 + 0x2c;
            fcn.000015cf();
            cVar2 = fcn.0000080e((int16_t)pcVar7, (int16_t)unaff_DI, iVar5, CONCAT11(extraout_AH, cVar2));
            pcVar6 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar4 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x506d);
            arg3 = pcVar6;
            in_stack_00000004 = unaff_DI;
            if ((*(char *)0x5092 != -1) && (*(char *)0x5092 != -4)) {
                uVar9 = CONCAT22(pcVar4, CONCAT11(*pcVar8, cVar2));
                pcVar8 = pcVar6;
                if (cVar2 < '\0') {
                    uVar9 = fcn.00000807();
                }
                fcn.00000684((int16_t)uVar9, (int16_t)((uint32_t)uVar9 >> 0x10), (int16_t)pcVar8);
                pcVar4 = pcVar6;
                arg3 = in_stack_00000008;
                pcVar8 = pcVar7;
                in_stack_00000004 = pcVar6;
            }
            in_BX = in_stack_0000000a;
            pcVar7 = in_stack_0000000e;
            unaff_DI = in_stack_0000000c;
            if (((*(char *)0x5073 != '\x01') && (*(char *)0x5093 != -1)) && (*(char *)0x5093 != -4)) {
                uVar9 = CONCAT22(pcVar4 + 0x140, CONCAT11(pcVar8[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar9 = fcn.00000807();
                }
                in_stack_00000008 = (char *)0x651;
                fcn.00000684((int16_t)uVar9, (int16_t)((uint32_t)uVar9 >> 0x10), (int16_t)arg3);
            }
        } else if (pcVar8[7] != pcVar4[7]) {
            fcn.00000128(in_BX);
        }
        unaff_SI = pcVar7 + 4;
        uVar3 = fcn.000015cf();
    }
    return uVar3;
}

/* ====================================================================== */
/* 0x143c: fcn.0000143c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000143c(int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    int16_t iVar3;
    uint8_t extraout_DL;
    uint8_t uVar4;
    uint8_t uVar5;
    uint16_t in_BX;
    int16_t unaff_DI;
    uint8_t *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    if ((uint8_t)arg2 < (uint8_t)in_BX) {
        in_BX = arg2;
    }
    uVar2 = (uint8_t)(in_BX >> 8);
    if (uVar2 == 0) {
        return;
    }
    if (0x8e < uVar2) {
        return;
    }
    if ((char)in_BX == '\0') {
        in_BX = CONCAT11(uVar2, 1);
    }
    fcn.00001503(CONCAT11((char)((uint16_t)in_AX >> 8), (char)(in_BX >> 8)));
    uVar2 = (uint8_t)in_BX >> 2;
    puVar6 = (uint8_t *)(unaff_DI + (uint16_t)uVar2);
    uVar2 = (extraout_DL >> 2) - uVar2;
    uVar5 = (uint8_t)in_BX & 3;
    if ((in_BX & 3) == 0) {
        uVar5 = 0xff;
    } else if (uVar5 < 2) {
        uVar5 = 0x3f;
    } else if (uVar5 == 2) {
        uVar5 = 0xf;
    } else {
        uVar5 = 3;
    }
    uVar4 = extraout_DL & 3;
    if (uVar4 == 0) {
        uVar4 = 0xc0;
    } else if (uVar4 < 2) {
        uVar4 = 0xf0;
    } else if (uVar4 == 2) {
        uVar4 = 0xfc;
    } else {
        uVar4 = 0xff;
    }
    if (uVar2 != 0) {
        iVar3 = uVar2 - 1;
        if (iVar3 != 0) {
            uVar2 = *(uint8_t *)0x5080;
            *puVar6 = *puVar6 & ~uVar5;
            *puVar6 = *puVar6 | uVar5 & uVar2;
            uVar2 = *(uint8_t *)0x5080;
            for (; puVar6 = puVar6 + 1, iVar3 != 0; iVar3 = iVar3 + -1) {
                *puVar6 = uVar2;
            }
            uVar2 = *(uint8_t *)0x5080;
            *puVar6 = *puVar6 & ~uVar4;
            *puVar6 = *puVar6 | uVar4 & uVar2;
            return;
        }
        uVar2 = *(uint8_t *)0x5080;
        *puVar6 = *puVar6 & ~uVar5;
        *puVar6 = *puVar6 | uVar5 & uVar2;
        uVar2 = *(uint8_t *)0x5080;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 & ~uVar4;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 | uVar4 & uVar2;
        return;
    }
    uVar2 = *(uint8_t *)0x5080;
    *puVar6 = *puVar6 & ~(uVar5 & uVar4);
    *puVar6 = *puVar6 | uVar5 & uVar4 & uVar2;
    return;
}

/* ====================================================================== */
/* 0x1503: fcn.00001503 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00001503(int16_t arg1)
{
    uint8_t uVar1;
    
    uVar1 = (uint8_t)((uint16_t)arg1 >> 1) & 0x7f;
    return (uint16_t)uVar1 * (CONCAT11(0x50, uVar1) >> 8) + 0x23c;
}

/* ====================================================================== */
/* 0x171d: fcn.0000171d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000171d(int16_t arg1)
{
    int16_t *piVar1;
    undefined2 uVar2;
    int16_t *piVar3;
    int16_t in_DX;
    int16_t in_BX;
    undefined2 *puVar4;
    undefined2 *puVar5;
    int16_t unaff_DS;
    undefined4 uVar6;
    
    uVar2 = *(undefined2 *)0xff2c;
    piVar3 = (int16_t *)((arg1 & 0xffU) * 0x10 + -0x8000);
    puVar4 = *(undefined2 **)0x506d;
    do {
        piVar1 = piVar3;
        piVar3 = piVar3 + 1;
        uVar6 = fcn.00001752(*piVar1, in_BX, in_DX);
        in_DX = (int16_t)((uint32_t)uVar6 >> 0x10);
        *puVar4 = (int16_t)uVar6;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x3fff < puVar5) {
            puVar5 = puVar4 + -0xfd8;
        }
        puVar4 = puVar5;
    } while (unaff_DS != 1);
    return;
}

/* ====================================================================== */
/* 0x1752: fcn.00001752 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.00001752(int16_t arg1, int16_t arg3, int16_t arg2)
{
    int16_t iVar1;
    uint8_t uVar2;
    int16_t iVar3;
    undefined4 uVar4;
    
    iVar3 = 8;
    do {
        uVar2 = ((char)iVar3 * '\x02' + CARRY2(arg1, arg1)) * '\x02' + CARRY2(arg1 * 2, arg1 * 2) & 3;
        uVar4 = (**(code **)((uint16_t)*(uint8_t *)0x5080 * 2 + 0x4777))();
        arg1 = (int16_t)uVar4;
        iVar1 = (int16_t)((uint32_t)uVar4 >> 0x10) * 4;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return CONCAT11((char)((uint16_t)iVar1 >> 8), (uint8_t)iVar1 | uVar2);
}

/* ====================================================================== */
/* 0x1f5f: fcn.00001f5f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001f5f(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    int16_t iVar3;
    
    iVar3 = 8;
    do {
        uVar1 = *(uint16_t *)0x5071 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x5071 < 0);
        uVar2 = *(uint16_t *)0x506d << 1 | (uint16_t)((int16_t)*(uint16_t *)0x506d < 0);
        *(uint16_t *)0x5071 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x506d = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1f9c: fcn.00001f9c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001f9c(int16_t arg2)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x507e << 1 | (uint16_t)((int16_t)*(uint16_t *)0x507e < 0);
        *(uint16_t *)0x507e = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

