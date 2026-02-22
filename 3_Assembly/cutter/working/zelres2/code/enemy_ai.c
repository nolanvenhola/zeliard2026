/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x7 = "9)?4>/A"; // [ascii]
static const char *STR_0x592 = "Z_^]FGE"; // [ascii]
static const char *STR_0x5b9 = " JYJY»YaE"; // [ibm037]
static const char *STR_0x899 = "068?06c9#9"; // [ascii]
static const char *STR_0xcf5 = "ÄJYJY»YaE"; // [ibm037]
static const char *STR_0xd9c = " JYJY»YaE"; // [ibm037]
static const char *STR_0x139f = "$!ßSKC½"; // [ibm037]
static const char *STR_0x1782 = "TY]c2/."; // [ascii]
static const char *STR_0x17b8 = "4QV[_eg/-"; // [ascii]
static const char *STR_0x1814 = "mno)&!\"*%!\""; // [ascii]
static const char *STR_0x184e = "muwyo+&)&"; // [ascii]
static const char *STR_0x186b = "vxz{12/-367<"; // [ascii]
static const char *STR_0x1f8c = "}SSCq|y|½|H|Q|H|"; // [ibm037]
static const char *STR_0x1fb4 = " \"$&0246"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000000(int16_t arg1, int16_t arg3, int16_t arg4)
{
    uint8_t *puVar1;
    char *pcVar2;
    uint8_t uVar3;
    uint8_t *puVar4;
    char cVar5;
    undefined extraout_AH;
    undefined2 in_AX;
    int16_t iVar6;
    undefined2 in_CX;
    undefined extraout_DL;
    int16_t arg2;
    char *pcVar7;
    int16_t iVar8;
    int16_t iVar9;
    char *pcVar10;
    char *pcVar11;
    uint8_t *in_BX;
    uint8_t *puVar12;
    char *pcVar13;
    char *pcVar14;
    char *unaff_SI;
    char *pcVar15;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar16;
    int16_t iStack0005;
    int16_t in_stack_00000007;
    undefined2 uStack0009;
    char *in_stack_0000000f;
    char *in_stack_00000013;
    int16_t in_stack_00000015;
    char *in_stack_00000017;
    char *in_stack_00000019;
    
    *unaff_SI = *unaff_SI + (char)((uint16_t)in_CX >> 8);
    in_BX[unaff_DI + 0x2939] = in_BX[unaff_DI + 0x2939] ^ (uint8_t)((uint16_t)in_BX >> 8);
    puVar1 = in_BX;
    uVar3 = *puVar1;
    *puVar1 = (char)*puVar1 >> 1;
    if ((bool)(uVar3 & 1)) {
        iVar9 = *(int16_t *)0xff31;
        uVar16 = fcn.00001510();
        iVar8 = 0;
        if ((*(uint8_t *)(iVar9 + -0x21) & 0x80) != 0) {
            uVar16 = fcn.0000032a(0);
        }
        iVar6 = 6;
        puVar4 = (uint8_t *)(iVar9 + -0x20);
        do {
            puVar12 = puVar4;
            iStack0005 = iVar6;
            if ((*puVar12 & 0x80) != 0) {
                uVar16 = fcn.00000367(iVar8);
            }
            iVar8 = iVar8 + 1;
            if ((puVar12[1] & 0x80) != 0) {
                iStack0005 = 0x71;
                uVar16 = fcn.00000367(iVar8);
            }
            iVar8 = iVar8 + 1;
            if ((puVar12[2] & 0x80) != 0) {
                iStack0005 = 0x7b;
                uVar16 = fcn.00000367(iVar8);
            }
            iVar8 = iVar8 + 1;
            if ((puVar12[3] & 0x80) != 0) {
                iStack0005 = 0x85;
                uVar16 = fcn.00000367(iVar8);
            }
            iVar8 = iVar8 + 1;
            iVar6 = in_stack_00000007 + -1;
            puVar4 = puVar12 + 4;
        } while (iVar6 != 0);
        if ((puVar12[4] & 0x80) != 0) {
            uVar16 = fcn.00000367(iVar8);
        }
        iVar8 = iVar8 + 1;
        if ((puVar12[5] & 0x80) != 0) {
            uStack0009 = 0x9c;
            uVar16 = fcn.00000367(iVar8);
        }
        iVar8 = iVar8 + 1;
        if ((puVar12[6] & 0x80) != 0) {
            uStack0009 = 0xa6;
            uVar16 = fcn.00000367(iVar8);
        }
        if ((puVar12[7] & 0x80) != 0) {
            uStack0009 = 0xaf;
            uVar16 = fcn.000003af((int16_t)uVar16, (int16_t)((uint32_t)uVar16 >> 0x10), iVar8);
        }
        pcVar13 = *(char **)0xff31;
        pcVar15 = (char *)0xe900;
        *(undefined *)0x4ff1 = 0x12;
        do {
            uStack0009 = 0xbe;
            fcn.00000dff(iVar8, (int16_t)uVar16, (int16_t)((uint32_t)uVar16 >> 0x10));
            iVar8 = 0;
            pcVar7 = pcVar13 + 4;
            if (pcVar13[3] < '\0') {
                fcn.000003e7(arg2, 0);
            }
            do {
                pcVar11 = pcVar15;
                pcVar14 = pcVar7;
                if (*pcVar14 != *pcVar11) {
                    fcn.00000128(iVar8);
                }
                iVar8 = iVar8 + 1;
                if (pcVar14[1] != pcVar11[1]) {
                    fcn.00000128(iVar8);
                }
                iVar8 = iVar8 + 1;
                if (pcVar14[2] != pcVar11[2]) {
                    fcn.00000128(iVar8);
                }
                iVar8 = iVar8 + 1;
                if (pcVar14[3] != pcVar11[3]) {
                    fcn.00000128(iVar8);
                }
                iVar8 = iVar8 + 1;
                pcVar7 = pcVar14 + 4;
                pcVar15 = pcVar11 + 4;
            } while (in_stack_0000000f != (char *)0x1);
            if (pcVar14[4] != pcVar11[4]) {
                in_stack_0000000f = (char *)0xf4;
                fcn.00000128(iVar8);
            }
            iVar8 = iVar8 + 1;
            if (pcVar14[5] != pcVar11[5]) {
                fcn.00000128(iVar8);
            }
            iVar8 = iVar8 + 1;
            if (pcVar14[6] != pcVar11[6]) {
                fcn.00000128(iVar8);
            }
            iVar8 = iVar8 + 1;
            pcVar13 = pcVar14 + 8;
            pcVar15 = pcVar11 + 8;
            if (pcVar14[7] < '\0') {
                iVar9 = 0x5010;
                LOCK();
                cVar5 = pcVar11[7];
                pcVar11[7] = -2;
                UNLOCK();
                *(char *)0x5010 = cVar5;
                LOCK();
                cVar5 = pcVar11[0x23];
                pcVar11[0x23] = -1;
                UNLOCK();
                *(char *)0x5011 = cVar5;
                cVar5 = pcVar14[7];
                pcVar14 = pcVar14 + 0x2c;
                uStack0009 = 0x506;
                fcn.00001504();
                cVar5 = fcn.000006dc((int16_t)pcVar13, (int16_t)pcVar15, iVar9, CONCAT11(extraout_AH, cVar5));
                pcVar10 = (char *)CONCAT11(extraout_DL, cVar5);
                pcVar7 = (char *)((int16_t)pcVar15 * 8 + *(int16_t *)0x4feb);
                pcVar11 = pcVar10;
                in_stack_0000000f = pcVar15;
                if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                    uVar16 = CONCAT22(pcVar7, CONCAT11(*pcVar14, cVar5));
                    pcVar15 = pcVar10;
                    if (cVar5 < '\0') {
                        uStack0009 = 0x539;
                        uVar16 = fcn.000006d5();
                    }
                    fcn.0000059d((int16_t)uVar16, (int16_t)((uint32_t)uVar16 >> 0x10), (int16_t)pcVar15);
                    pcVar7 = pcVar10;
                    pcVar11 = in_stack_00000013;
                    pcVar14 = pcVar13;
                    in_stack_0000000f = pcVar10;
                }
                iVar8 = in_stack_00000015;
                pcVar13 = in_stack_00000019;
                pcVar15 = in_stack_00000017;
                if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                    uVar16 = CONCAT22(pcVar7 + 0xa00, CONCAT11(pcVar14[2], (char)((uint16_t)pcVar11 >> 8)));
                    if ((int16_t)pcVar11 < 0) {
                        uVar16 = fcn.000006d5();
                    }
                    in_stack_00000013 = (char *)0x569;
                    fcn.0000059d((int16_t)uVar16, (int16_t)((uint32_t)uVar16 >> 0x10), (int16_t)pcVar11);
                }
            } else if (pcVar14[7] != pcVar11[7]) {
                fcn.00000128(iVar8);
            }
            pcVar13 = pcVar13 + 4;
            uVar16 = fcn.00001504();
            *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
            pcVar2 = (char *)0x4ff1;
            *pcVar2 = *pcVar2 + -1;
        } while (*pcVar2 != '\0');
        return;
    }
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x1510: fcn.00001510 */
/* ====================================================================== */


void fcn.00001510(void)
{
    uint16_t unaff_SI;
    
    if (0xdfff < unaff_SI) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x32a: fcn.0000032a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.0000032a(int16_t arg3)
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
    fcn.00001504(arg3);
    uVar1 = extraout_AH;
    if ((char)unaff_SI[0x25] < '\0') {
        uVar1 = 0;
        fcn.000006d5();
    }
    fcn.000006dc(in_stack_00000002, in_stack_00000000, arg3, CONCAT11(uVar1, uVar2));
    fcn.0000059d(CONCAT11(unaff_SI[0x28], (char)in_stack_00000000), 0x11b0, arg3);
    return;
}

/* ====================================================================== */
/* 0x1504: fcn.00001504 */
/* ====================================================================== */


void fcn.00001504(void)
{
    uint16_t unaff_SI;
    
    if (unaff_SI < 0xe900) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x6d5: fcn.000006d5 */
/* ====================================================================== */


undefined fcn.000006d5(void)
{
    uint8_t in_AL;
    
    return *(undefined *)(uint32_t)((in_AL & 0x7f) + 0xed20);
}

/* ====================================================================== */
/* 0x6dc: fcn.000006dc */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 fcn.000006dc(int16_t arg_6h, int16_t arg_4h, int16_t arg3, int16_t arg1)
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
    *(char *)0x4ff4 = cVar3;
    return CONCAT11((char)((uint16_t)pcVar5 >> 8), uVar1);
}

/* ====================================================================== */
/* 0x59d: fcn.0000059d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000059d(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 unaff_DS;
    
    uVar2 = *(uint8_t *)0x4ff4;
    cVar1 = (char)arg1;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar2 = uVar2 | 0x80;
    }
    *(undefined2 *)0x4fe9 = *(undefined2 *)((uint16_t)(uVar2 & 0x7f) * 2 + 0x4f8c);
    if (-1 < (char)uVar2) {
        fcn.00000655(arg2);
        fcn.0000068e();
        return;
    }
    fcn.00000614(CONCAT11((char)((uint16_t)*(undefined2 *)0x4fe9 >> 8), cVar1));
    fcn.0000068e();
    return;
}

/* ====================================================================== */
/* 0x367: fcn.00000367 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000367(int16_t arg3)
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
    *(undefined *)0x5010 = uVar2;
    *(undefined *)0x5011 = 0;
    *(undefined *)(arg3 + -0x16ff) = 0xff;
    uVar2 = *unaff_SI;
    fcn.00001504(arg3);
    uVar1 = *(undefined2 *)(unaff_SI + 0x24);
    *(undefined2 *)0x5014 = uVar1;
    fcn.000006dc(in_stack_00000002, in_stack_00000000, 0x5014, CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2));
    fcn.0000056f();
    return;
}

/* ====================================================================== */
/* 0x56f: fcn.0000056f */
/* ====================================================================== */


void fcn.0000056f(void)
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
            uVar1 = fcn.000006d5(0x572);
            in_DX = (int16_t)((uint32_t)uVar1 >> 0x10);
            arg1 = (int16_t)uVar1;
        }
        fcn.0000059d(arg1, in_DX, in_BX);
    }
    return;
}

/* ====================================================================== */
/* 0x3af: fcn.000003af */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000003af(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    undefined extraout_AH;
    undefined uVar2;
    undefined uVar3;
    uint8_t uVar4;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000004;
    int16_t in_stack_00000006;
    
    if (*(char *)0xe91b == -1) {
        return;
    }
    if (*(char *)0xe91b == -4) {
        return;
    }
    *(undefined *)0xe91b = 0xff;
    uVar3 = *unaff_SI;
    fcn.00001504();
    uVar2 = extraout_AH;
    if ((char)unaff_SI[0x24] < '\0') {
        uVar2 = 0;
        fcn.000006d5();
    }
    fcn.000006dc(in_stack_00000006, in_stack_00000004, arg3, CONCAT11(uVar2, uVar3));
    cVar1 = (char)in_stack_00000004;
    uVar4 = *(uint8_t *)0x4ff4;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar4 = uVar4 | 0x80;
    }
    *(undefined2 *)0x4fe9 = *(undefined2 *)((uint16_t)(uVar4 & 0x7f) * 2 + 0x4f8c);
    if (-1 < (char)uVar4) {
        fcn.00000655();
        fcn.0000068e();
        return;
    }
    fcn.00000614(CONCAT11((char)((uint16_t)*(undefined2 *)0x4fe9 >> 8), cVar1));
    fcn.0000068e();
    return;
}

/* ====================================================================== */
/* 0xdff: fcn.00000dff */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000e18: Changing call to branch
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000dff(int16_t arg3, int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    undefined2 in_CX;
    int16_t iVar6;
    int16_t iVar7;
    uint16_t extraout_DX;
    uint16_t unaff_BP;
    undefined2 *puVar8;
    uint16_t *puVar9;
    int16_t iVar10;
    int16_t unaff_DS;
    undefined4 uVar11;
    int16_t in_stack_00000000;
    uint8_t *puVar12;
    int16_t iVar13;
    uint16_t *puVar14;
    
    uVar4 = 0x12 - *(char *)0x4ff1;
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
                fcn.00000f8a(CONCAT11((char)((uint16_t)arg1 >> 8), uVar5), CONCAT11((char)((uint16_t)in_CX >> 8), uVar4)
                            );
                fcn.00000f46();
                uVar3 = *(undefined2 *)0xff2c;
                *(undefined2 *)0x4ff5 = *(undefined2 *)((uint16_t)(uint8_t)(*(char *)0x92 - 1) * 2 + 0x4086);
                iVar10 = 4;
                puVar12 = *(uint8_t **)0x4ff9;
                puVar9 = *(uint16_t **)0x4ff7;
                puVar14 = *(uint16_t **)0x4ff7;
                do {
                    do {
                        puVar1 = puVar12;
                        puVar12 = puVar12 + 1;
                        if (*puVar1 == 0xff) {
                            puVar9 = puVar9 + 0x500;
                        } else {
                            puVar8 = (undefined2 *)((uint16_t)*puVar1 * 0x10 + *(int16_t *)0xb000);
                            do {
                                puVar2 = puVar8;
                                puVar8 = puVar8 + 1;
                                uVar11 = fcn.00001096(CONCAT11((char)*puVar2, (char)((uint16_t)*puVar2 >> 8)));
                                *puVar9 = *puVar9 & ~unaff_BP;
                                *puVar9 = *puVar9 | (uint16_t)((uint32_t)uVar11 >> 0x10);
                                uVar11 = fcn.00001096((int16_t)uVar11);
                                puVar9[1] = puVar9[1] & unaff_BP;
                                puVar9[1] = puVar9[1] | (uint16_t)((uint32_t)uVar11 >> 0x10);
                                puVar12 = (uint8_t *)0x105b;
                                uVar11 = fcn.00001096((int16_t)uVar11);
                                puVar9[2] = puVar9[2] & ~unaff_BP;
                                puVar9[2] = puVar9[2] | (uint16_t)((uint32_t)uVar11 >> 0x10);
                                fcn.00001096((int16_t)uVar11);
                                puVar9[3] = puVar9[3] & unaff_BP;
                                puVar9[3] = puVar9[3] | extraout_DX;
                                puVar9 = puVar9 + 0xa0;
                            } while (iVar10 != 1);
                        }
                    } while (unaff_DS != 1);
                    puVar9 = puVar14 + 4;
                    iVar10 = in_stack_00000000 + -1;
                    puVar14 = puVar9;
                } while (iVar10 != 0);
                return;
            }
            return;
        }
        fcn.00000f2d(arg3);
    }
    if (*(char *)0xff37 == '\0') {
        *(undefined *)0xff37 = 0xff;
        iVar6 = 3;
        iVar10 = *(int16_t *)0x4fed;
        do {
            iVar7 = 3;
            do {
                iVar13 = iVar7;
                fcn.0000068e(iVar10, iVar7, iVar6, arg3);
                iVar10 = iVar13 + 8;
                iVar7 = iVar6 + -1;
            } while (iVar7 != 0);
            iVar10 = iVar13 + 0x9f0;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0xf2d: fcn.00000f2d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000f2d(int16_t arg3)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xff44 == '\0') {
        return;
    }
    fcn.00000f68(arg3);
    *(undefined *)0xff44 = 0;
    return;
}

/* ====================================================================== */
/* 0xf68: fcn.00000f68 */
/* ====================================================================== */


void fcn.00000f68(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    
    puVar5 = (undefined2 *)0xfa40;
    iVar3 = 0x20;
    puVar6 = *(undefined2 **)0x4ff7;
    do {
        for (iVar4 = 0x10; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar6 = puVar6 + 0x90;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xf8a: fcn.00000f8a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000f8a(int16_t arg1, int16_t arg4)
{
    int16_t iVar1;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    puVar2 = (uint8_t *)
             ((uint16_t)(*(char *)0x84 + *(char *)0x4ffb & 0x3f) * 0x24 +
              (uint16_t)(uint8_t)(*(char *)0x83 + *(char *)0x4ffc + 4) + *(int16_t *)0xff31);
    fcn.00001504();
    do {
        iVar1 = 4;
        do {
            puVar3 = puVar2;
            *(undefined2 *)((uint16_t)(*puVar3 & 0x7f) * 2 + 0x501d) = 0;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        puVar2 = puVar3 + 0x21;
        fcn.00001504();
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0xf46: fcn.00000f46 */
/* ====================================================================== */


void fcn.00000f46(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    
    puVar6 = (undefined2 *)0xfa40;
    iVar3 = 0x20;
    puVar5 = *(undefined2 **)0x4ff7;
    do {
        for (iVar4 = 0x10; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = puVar5 + 0x90;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1096: fcn.00001096 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00001096(int16_t arg1)
{
    int16_t iVar1;
    uint16_t uVar2;
    char cVar3;
    
    uVar2 = 0;
    cVar3 = CARRY2(arg1, arg1) * '\x02' + CARRY2(arg1 * 2, arg1 * 2);
    if ((cVar3 != '\0') && (uVar2 = (uint16_t)*(uint8_t *)0x4ff6, cVar3 != '\x03')) {
        uVar2 = (uint16_t)*(uint8_t *)0x4ff5;
    }
    iVar1 = arg1 * 0x10;
    cVar3 = CARRY2(arg1 * 4, arg1 * 4) * '\x02' + CARRY2(arg1 * 8, arg1 * 8);
    if (cVar3 == '\0') {
        return CONCAT22(uVar2, iVar1);
    }
    if (cVar3 == '\x03') {
        return CONCAT22(CONCAT11(*(uint8_t *)0x4ff6, (char)uVar2), iVar1);
    }
    return CONCAT22(CONCAT11(*(uint8_t *)0x4ff5, (char)uVar2), iVar1);
}

/* ====================================================================== */
/* 0x68e: fcn.0000068e */
/* ====================================================================== */


void fcn.0000068e(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 8;
    do {
        *unaff_DI = *unaff_SI;
        unaff_DI[1] = unaff_SI[1];
        puVar1 = unaff_SI + 3;
        unaff_DI[2] = unaff_SI[2];
        unaff_SI = unaff_SI + 4;
        unaff_DI[3] = *puVar1;
        unaff_DI = unaff_DI + 0xa0;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x3e7: fcn.000003e7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000003e7(int16_t arg2, int16_t arg3)
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
    
    iVar3 = 0x5010;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 0xff;
    UNLOCK();
    *(undefined *)0x5010 = uVar1;
    LOCK();
    uVar1 = unaff_DI[0x1c];
    unaff_DI[0x1c] = 0xff;
    UNLOCK();
    *(undefined *)0x5011 = uVar1;
    uVar1 = unaff_SI[-1];
    arg_6h = unaff_SI;
    fcn.00001504(arg3, arg3);
    fcn.000006dc((int16_t)arg_6h, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, uVar1));
    puVar4 = unaff_SI + 0x25;
    iVar2 = (int16_t)unaff_DI * 8 + *(int16_t *)0x4feb;
    iVar3 = extraout_DX;
    if ((*(char *)0x5010 != -1) && (iVar3 = extraout_DX, *(char *)0x5010 != -4)) {
        uVar5 = CONCAT22(iVar2, CONCAT11(*puVar4, (char)extraout_DX));
        iVar3 = extraout_DX;
        iVar6 = extraout_DX;
        if ((char)extraout_DX < '\0') {
            iVar6 = extraout_DX;
            uVar5 = fcn.000006d5(iVar2, puVar4);
        }
        puVar4 = arg_6h;
        iVar2 = iVar6;
        fcn.0000059d((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
        iVar3 = in_stack_00000000;
    }
    if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
        uVar5 = CONCAT22(iVar2 + 0xa00, CONCAT11(puVar4[2], (char)((uint16_t)iVar3 >> 8)));
        if (iVar3 < 0) {
            uVar5 = fcn.000006d5();
        }
        fcn.0000059d((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
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
    int16_t iVar7;
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
        *(undefined2 *)0x5010 = uVar2;
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + 0x1b);
        *(undefined2 *)(unaff_DI + 0x1b) = 0xffff;
        UNLOCK();
        *(undefined2 *)0x5012 = uVar2;
        uVar6 = unaff_SI[-1];
        iVar7 = 0x5014;
        *(undefined *)0x5015 = *unaff_SI;
        arg_4h = unaff_SI;
        fcn.00001504(arg3);
        uVar2 = *(undefined2 *)(unaff_SI + 0x23);
        *(undefined2 *)(iVar7 + 2) = uVar2;
        *(undefined *)0x4ff2 = (char)arg3;
        *(char *)0x4ff3 = '\x12' - *(char *)0x4ff1;
        uVar6 = fcn.000006dc(in_stack_00000000, (int16_t)arg_4h, iVar7, CONCAT11((char)((uint16_t)uVar2 >> 8), uVar6));
        *(undefined *)0x5014 = uVar6;
        fcn.0000056f();
        if (*(char *)0x4ff1 != '\x01') {
            iVar7 = fcn.0000056f();
            if ((*(char *)0xff34 != '\0') && (*(char *)0xff2f != '\0')) {
                fcn.0000072d(iVar7);
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
            fcn.00000276(arg3, (uint16_t)(arg3 * 8 + *(int16_t *)0x4feb) >> 1, 
                         CONCAT11((char)((uint16_t)in_AX >> 8), cVar4));
        }
    }
    uVar5 = *(uint8_t *)0xc012 - 5;
    if (*(uint8_t *)0xc012 < 5) {
        return;
    }
    if (3 < uVar5) {
        return;
    }
    (**(code **)((uint16_t)uVar5 * 2 + 0x3176))(arg3);
    return;
}

/* ====================================================================== */
/* 0x276: fcn.00000276 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000276(int16_t arg3, int16_t arg2, int16_t arg1)
{
    uint8_t uVar1;
    uint16_t *puVar2;
    uint16_t uVar3;
    undefined2 uVar4;
    uint16_t *puVar5;
    int16_t iVar6;
    int16_t iVar7;
    undefined2 *puVar8;
    undefined2 *puVar9;
    undefined2 unaff_DS;
    
    puVar9 = (undefined2 *)(arg2 * 2);
    if ((char)arg1 == '\0') {
        iVar7 = 8;
        do {
            *puVar9 = 0;
            puVar9[1] = 0;
            puVar9[2] = 0;
            puVar9[3] = 0;
            puVar9 = puVar9 + 0xa0;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        return;
    }
    iVar7 = (arg1 & 0xffU) * 2;
    if (*(int16_t *)(iVar7 + 0x501d) == 0) {
        *(undefined2 **)(iVar7 + 0x501d) = puVar9;
        uVar4 = *(undefined2 *)0xff2c;
        puVar5 = (uint16_t *)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x30 + -0x7fd0);
        iVar7 = 8;
        do {
            iVar6 = 2;
            do {
                puVar8 = puVar9;
                puVar2 = puVar5 + 1;
                uVar3 = *puVar5;
                puVar5 = (uint16_t *)((int16_t)puVar5 + 3);
                uVar1 = *(uint8_t *)puVar2;
                *(uint8_t *)puVar8 = (uint8_t)(uVar3 >> 10);
                *(uint8_t *)((int16_t)puVar8 + 1) = ((uint8_t)(uVar3 >> 3) & 0x7f) >> 1;
                *(uint8_t *)(puVar8 + 1) = (uint8_t)((uint16_t)(CONCAT11((char)uVar3, uVar1) * 4) >> 8) & 0x3f;
                *(uint8_t *)((int16_t)puVar8 + 3) = uVar1 & 0x3f;
                iVar6 = iVar6 + -1;
                puVar9 = puVar8 + 2;
            } while (iVar6 != 0);
            puVar9 = puVar8 + 0x9e;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        return;
    }
    puVar8 = *(undefined2 **)(iVar7 + 0x501d);
    iVar7 = 8;
    do {
        *puVar9 = *puVar8;
        puVar9[1] = puVar8[1];
        puVar9[2] = puVar8[2];
        puVar9[3] = puVar8[3];
        puVar9 = puVar9 + 0xa0;
        puVar8 = puVar8 + 0xa0;
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    return;
}

/* ====================================================================== */
/* 0x72d: fcn.0000072d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000072d(int16_t arg1)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0xf < *(uint8_t *)0x4ff3) {
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x4ff2;
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x4ff3;
    if (uVar1 == 0xff) {
        uVar1 = 0;
    }
    puVar2[1] = uVar1;
    puVar2[2] = 3;
    uVar1 = (*_fcn.0000011a)();
    puVar2[3] = uVar1 & 3;
    puVar2[4] = 0xff;
    return;
}

/* ====================================================================== */
/* 0x11a: fcn.0000011a */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(undefined2 param_1, undefined2 param_2, char *param_3, undefined2 param_4, char *param_5,
                 int16_t param_6, char *param_7, char *param_8)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t arg2;
    char *pcVar3;
    int16_t in_BX;
    int16_t arg3;
    char *pcVar4;
    char *arg3_00;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    
    while( true ) {
        uVar7 = fcn.00001504();
        *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
        pcVar1 = (char *)0x4ff1;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000dff(in_BX, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        in_BX = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000003e7(arg2, 0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[1] != pcVar3[1]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[2] != pcVar3[2]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[3] != pcVar3[3]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (param_3 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            param_3 = (char *)0xf4;
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar6[5] != pcVar3[5]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar6[6] != pcVar3[6]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3 = 0x5010;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5010 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x5011 = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.00001504();
            cVar2 = fcn.000006dc((int16_t)pcVar5, (int16_t)unaff_DI, arg3, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 8 + *(int16_t *)0x4feb);
            arg3_00 = pcVar4;
            param_3 = unaff_DI;
            if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.000006d5();
                }
                fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_00 = param_5;
                pcVar6 = pcVar5;
                param_3 = pcVar4;
            }
            in_BX = param_6;
            pcVar5 = param_8;
            unaff_DI = param_7;
            if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0xa00, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_00 >> 8)));
                if ((int16_t)arg3_00 < 0) {
                    uVar7 = fcn.000006d5();
                }
                param_5 = (char *)0x569;
                fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_00);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(in_BX);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x655: fcn.00000655 */
/* ====================================================================== */


void fcn.00000655(int16_t param_1)
{
    int16_t iVar1;
    
    iVar1 = 8;
    do {
        fcn.00000665(iVar1);
        fcn.00000665();
        iVar1 = param_1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x665: fcn.00000665 */
/* ====================================================================== */


void fcn.00000665(void)
{
    int16_t in_AX;
    int16_t iVar1;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    iVar1 = 4;
    do {
        in_AX = fcn.00000672(in_AX, in_BX);
        *unaff_DI = (char)in_BX;
        unaff_DI = unaff_DI + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x672: fcn.00000672 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00000672(int16_t arg1, int16_t arg3)
{
    return arg1 * 0x10;
}

/* ====================================================================== */
/* 0x614: fcn.00000614 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000614(int16_t arg1)
{
    int16_t *piVar1;
    char in_CL;
    undefined2 extraout_DX;
    undefined2 uVar2;
    int16_t arg2;
    undefined2 extraout_DX_00;
    int16_t in_BX;
    int16_t *unaff_BP;
    undefined2 unaff_DS;
    undefined *in_stack_00000000;
    int16_t in_stack_00000004;
    
    fcn.0000069c((uint16_t)(uint8_t)(in_CL - 1) * 0x30 + -0x7fd0, in_BX);
    uVar2 = extraout_DX;
    do {
        piVar1 = unaff_BP + 1;
        fcn.0000063f(*unaff_BP, CONCAT11((char)((uint16_t)uVar2 >> 8), *in_stack_00000000));
        unaff_BP = unaff_BP + 2;
        fcn.0000063f(*piVar1, arg2);
        in_stack_00000000 = in_stack_00000000 + 1;
        uVar2 = extraout_DX_00;
    } while (in_stack_00000004 != 1);
    return;
}

/* ====================================================================== */
/* 0x69c: fcn.0000069c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000069c(int16_t arg1, int16_t arg3)
{
    uint8_t uVar1;
    uint16_t *puVar2;
    uint16_t uVar3;
    int16_t iVar4;
    uint16_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar4 = 0x10;
    do {
        puVar2 = unaff_SI + 1;
        uVar3 = *unaff_SI;
        unaff_SI = (uint16_t *)((int16_t)unaff_SI + 3);
        uVar1 = *(uint8_t *)puVar2;
        *unaff_DI = (uint8_t)(uVar3 >> 10);
        unaff_DI[1] = ((uint8_t)(uVar3 >> 3) & 0x7f) >> 1;
        unaff_DI[2] = (uint8_t)((uint16_t)(CONCAT11((char)uVar3, uVar1) * 4) >> 8) & 0x3f;
        unaff_DI[3] = uVar1 & 0x3f;
        unaff_DI = unaff_DI + 4;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x63f: fcn.0000063f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000063f(int16_t arg1, int16_t arg2)
{
    int16_t iVar1;
    uint8_t extraout_DH;
    uint8_t uVar2;
    int16_t in_BX;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    
    iVar1 = 4;
    do {
        arg1 = fcn.00000672(arg1, in_BX);
        uVar2 = (uint8_t)in_BX | extraout_DH;
        in_BX = CONCAT11((char)((uint16_t)in_BX >> 8), uVar2);
        *unaff_DI = uVar2;
        unaff_DI = unaff_DI + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0xdd0: fcn.00000dd0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000dd0(int16_t arg1, int16_t arg4)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)
             ((uint16_t)*(uint8_t *)0x84 * 0x24 + (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0xff31);
    fcn.00001504();
    puVar4 = (undefined2 *)0x5014;
    iVar3 = 3;
    do {
        puVar1 = puVar4 + 1;
        *puVar4 = *puVar2;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
        *(undefined *)puVar1 = *(undefined *)(puVar2 + 1);
        puVar2 = puVar2 + 0x12;
        fcn.00001504();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xd26: fcn.00000d26 */
/* ====================================================================== */


uint8_t fcn.00000d26(void)
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
/* 0xce0: fcn.00000ce0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000ce0(int16_t arg4, int16_t arg1, int16_t arg2)
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
            fcn.0000062a((uint16_t)*(uint8_t *)0x4ff2 * 0x40 + 0x511d, arg2);
            arg2 = extraout_DX;
            unaff_SI = unaff_DS;
            pcVar1 = (char *)arg4;
            unaff_DS = unaff_ES;
        }
        unaff_SI = unaff_SI + 1;
        *(char *)0x4ff2 = *(char *)0x4ff2 + '\x01';
        arg4 = in_stack_00000000 + -1;
        unaff_ES = pcVar1;
    } while ((char *)arg4 != (char *)0x0);
    return;
}

/* ====================================================================== */
/* 0x62a: fcn.0000062a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000062a(int16_t arg1, int16_t arg2)
{
    int16_t *piVar1;
    int16_t arg2_00;
    int16_t extraout_DX;
    undefined *unaff_BP;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    do {
        piVar1 = unaff_SI + 1;
        fcn.0000063f(*unaff_SI, CONCAT11((char)((uint16_t)arg2 >> 8), *unaff_BP));
        unaff_SI = unaff_SI + 2;
        fcn.0000063f(*piVar1, arg2_00);
        unaff_BP = unaff_BP + 1;
        arg2 = extraout_DX;
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0x6cd: fcn.000006cd */
/* ====================================================================== */


void fcn.000006cd(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    
    for (iVar2 = 0x20; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0x11eb: fcn.000011eb */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000011eb(int16_t arg3, int16_t arg1)
{
    uint16_t uVar1;
    int16_t iVar2;
    undefined extraout_AH;
    undefined extraout_AH_00;
    int16_t arg3_00;
    char *unaff_DI;
    undefined2 unaff_DS;
    
    if (*unaff_DI == -1) {
        return;
    }
    if (*unaff_DI == -4) {
        return;
    }
    *(uint16_t *)0x4ffd = -(uint16_t)((uint8_t)(*(char *)0x4fff - 1U) >> 2 & 1) ^ 0xff00;
    arg3_00 = arg3 * 8 + *(int16_t *)0x4feb;
    if ((char)arg1 == '\0') {
        uVar1 = CONCAT11((char)((uint16_t)arg1 >> 8), *(undefined *)0x4fff) & 0xff03;
        fcn.000012e6(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
        fcn.000012cd(arg3);
        fcn.000012e6(CONCAT11(extraout_AH_00, *(undefined *)0x4fff));
        fcn.000012cd();
        return;
    }
    uVar1 = CONCAT11((char)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x30 + -0x7fd0 >> 8), *(undefined *)0x4fff) & 0xff03;
    iVar2 = fcn.000012e6(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
    fcn.0000125d(iVar2, arg3_00);
    iVar2 = fcn.000012e6(CONCAT11(extraout_AH, *(undefined *)0x4fff));
    fcn.0000125d(iVar2, arg3_00);
    return;
}

/* ====================================================================== */
/* 0x12e6: fcn.000012e6 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int32_t fcn.000012e6(int16_t arg1)
{
    return (uint32_t)((uint8_t)arg1 & 3) * 0x140;
}

/* ====================================================================== */
/* 0x125d: fcn.0000125d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000125d(int16_t arg1, int16_t arg3)
{
    undefined uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    int16_t iVar5;
    uint16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar5 = 2;
    do {
        uVar3 = *(uint16_t *)0x4ffd;
        uVar2 = *unaff_SI;
        uVar1 = *(undefined *)(unaff_SI + 1);
        uVar4 = ~*(uint16_t *)0x4ffd;
        *unaff_DI = *unaff_DI & uVar4;
        unaff_DI[1] = unaff_DI[1] & uVar4;
        *unaff_DI = *unaff_DI | uVar3 & CONCAT11((uint8_t)(uVar2 >> 2) >> 2, (uint8_t)(uVar2 >> 10));
        unaff_DI[1] = unaff_DI[1] |
                      *(uint16_t *)0x4ffd &
                      CONCAT11(uVar1, (char)((uint16_t)(CONCAT11((char)uVar2, uVar1) * 4) >> 8)) & 0x3f3f;
        unaff_DI = unaff_DI + 0x280;
        unaff_SI = unaff_SI + 0xc;
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0x12cd: fcn.000012cd */
/* ====================================================================== */


void fcn.000012cd(void)
{
    uint16_t uVar1;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = ~*(uint16_t *)0x4ffd;
    *unaff_DI = *unaff_DI & uVar1;
    unaff_DI[1] = unaff_DI[1] & uVar1;
    unaff_DI[0x280] = unaff_DI[0x280] & uVar1;
    unaff_DI[0x281] = unaff_DI[0x281] & uVar1;
    return;
}

/* ====================================================================== */
/* 0x1481: fcn.00001481 */
/* ====================================================================== */


void fcn.00001481(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    uint16_t *puVar4;
    uint16_t *puVar5;
    uint16_t *puVar6;
    
    puVar4 = (uint16_t *)0x11b0;
    iVar1 = 8;
    do {
        iVar2 = 0x12;
        puVar5 = puVar4;
        do {
            iVar3 = 0x70;
            puVar6 = puVar5;
            do {
                *puVar6 = *puVar6 ^ 0x1212;
                puVar6 = puVar6 + 1;
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            puVar5 = puVar5 + 0x500;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar4 = puVar4 + 0xa0;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x132b: fcn.0000132b */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001341: Changing call to branch
// WARNING: Removing unreachable block (ram,0x00001344)

void fcn.0000132b(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    uint8_t uVar4;
    int16_t arg3;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t iStack_2;
    
    arg3 = CONCAT11(*(char *)0x4fea + -1, *(char *)0x4fe9 + -1);
    iStack_2 = 0x1344;
    iVar2 = 9;
    iVar1 = CONCAT11(*(char *)0x4fea + '\x18', *(char *)0x4fe9 + '\x18');
    do {
        iVar1 = fcn.000013a5(iVar1, arg3);
        uVar4 = (uint8_t)((uint16_t)iVar2 >> 8);
        cVar3 = (uint8_t)iVar2 + 0xc;
        if (0xf3 < (uint8_t)iVar2) {
            cVar3 = -1;
        }
        arg3 = CONCAT11(uVar4 + 0xc, cVar3);
        if (0xf3 < uVar4) {
            arg3 = CONCAT11(0xff, cVar3);
        }
        fcn.0000144e(iVar1);
        iVar2 = in_stack_00000000 + -1;
        iVar1 = iStack_2;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x13a5: fcn.000013a5 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000013c0: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000013c3)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000013a5(int16_t arg2, int16_t arg3)
{
    undefined uVar1;
    undefined extraout_AH;
    int16_t iVar2;
    uint16_t uVar3;
    uint16_t arg2_00;
    int16_t unaff_DI;
    undefined *puVar5;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    undefined2 in_stack_00000002;
    uint8_t uVar4;
    
    fcn.00001408(CONCAT11((char)((uint16_t)arg3 >> 8), (char)arg2));
    fcn.00001408(in_stack_00000000);
    uVar4 = (uint8_t)((uint16_t)in_stack_00000002 >> 8);
    uVar3 = CONCAT11(uVar4, (char)in_stack_00000000);
    arg2_00 = uVar3;
    if (uVar4 < (uint8_t)(in_stack_00000000 >> 8)) {
        arg2_00 = in_stack_00000000;
        in_stack_00000000 = uVar3;
    }
    uVar4 = (uint8_t)in_stack_00000000;
    if (uVar4 == 0) {
        return;
    }
    if (0xde < uVar4) {
        return;
    }
    if ((char)(in_stack_00000000 >> 8) == '\0') {
        in_stack_00000000 = CONCAT11(1, uVar4);
    }
    if (0x8e < (uint8_t)(arg2_00 >> 8)) {
        arg2_00 = CONCAT11(0x8e, (char)arg2_00);
    }
    fcn.0000143f(arg2_00, CONCAT11(extraout_AH, (char)(in_stack_00000000 >> 8)));
    puVar5 = (undefined *)(unaff_DI + (in_stack_00000000 & 0xff));
    iVar2 = 0xc3;
    uVar1 = *(undefined *)0x4fff;
    do {
        *puVar5 = uVar1;
        puVar5 = puVar5 + 0x140;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x144e: fcn.0000144e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000144e(int16_t arg1)
{
    undefined2 unaff_DS;
    uint16_t uVar1;
    
    uVar1 = (uint16_t)(uint8_t)((*(uint8_t *)0xff33 >> 1) + 1);
    do {
        (*_fcn.00000110)(uVar1);
        uVar1 = 0x1465;
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

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000110(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t arg2;
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
    int16_t in_stack_00000006;
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
            uVar6 = fcn.00001504();
            *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
            pcVar1 = (char *)0x4ff1;
            *pcVar1 = *pcVar1 + -1;
            if (*pcVar1 == '\0') {
                return;
            }
            fcn.00000dff((int16_t)pcStack_6, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
            iVar3 = 0;
            pcVar5 = unaff_SI + 8;
            if (unaff_SI[7] < '\0') {
                fcn.000003e7(arg2, 0);
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
            } while (in_stack_00000006 != 1);
            if (pcVar4[4] != pcVar7[4]) {
                in_stack_00000006 = 0xf4;
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
            iVar3 = 0x5010;
            LOCK();
            cVar2 = pcVar7[7];
            pcVar7[7] = -2;
            UNLOCK();
            *(char *)0x5010 = cVar2;
            LOCK();
            cVar2 = pcVar7[0x23];
            pcVar7[0x23] = -1;
            UNLOCK();
            *(char *)0x5011 = cVar2;
            cVar2 = pcVar4[7];
            pcVar4 = pcVar4 + 0x2c;
            pcStackY_a = (char *)0x506;
            fcn.00001504(pcStack_6);
            pcVar7 = (char *)0x50e;
            cVar2 = fcn.000006dc((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
            arg3 = (char *)CONCAT11(extraout_DL, cVar2);
            iVar3 = (int16_t)unaff_DI * 8 + *(int16_t *)0x4feb;
            pcVar5 = pcVar4;
            if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar4, cVar2));
                unaff_DI = arg3;
                if (cVar2 < '\0') {
                    pcStackY_a = (char *)0x539;
                    uVar6 = fcn.000006d5();
                }
                fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
                arg3 = pcVar7;
                iVar3 = iStackY_c;
                pcVar5 = pcStackY_a;
                pcStack_6 = pcVar4;
            }
            if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                uVar6 = CONCAT22(iVar3 + 0xa00, CONCAT11(pcVar5[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar6 = fcn.000006d5();
                }
                fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
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

void fcn.00000112(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t arg2;
    int16_t iVar3;
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
        fcn.00000128(arg3);
        do {
            while( true ) {
                pcVar7 = (char *)0x11b;
                uVar6 = fcn.00001504();
                *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
                pcVar1 = (char *)0x4ff1;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000dff(arg3, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
                arg3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.000003e7(arg2, 0);
                }
                do {
                    pcVar4 = unaff_DI;
                    pcVar5 = pcVar8;
                    if (*pcVar5 != *pcVar4) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[1] != pcVar4[1]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[2] != pcVar4[2]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[3] != pcVar4[3]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    pcVar8 = pcVar5 + 4;
                    unaff_DI = pcVar4 + 4;
                } while (in_stack_00000008 != 1);
                if (pcVar5[4] != pcVar4[4]) {
                    in_stack_00000008 = 0xf4;
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar5[5] != pcVar4[5]) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar5[6] != pcVar4[6]) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                unaff_SI = pcVar5 + 8;
                unaff_DI = pcVar4 + 8;
                if (-1 < pcVar5[7]) break;
                iVar3 = 0x5010;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x5010 = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x5011 = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x506;
                fcn.00001504(arg3, arg3);
                pcVar8 = (char *)0x50e;
                cVar2 = fcn.000006dc((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 8 + *(int16_t *)0x4feb;
                arg3 = (int16_t)unaff_DI;
                if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    arg3 = (int16_t)pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x539;
                        uVar6 = fcn.000006d5();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0xa00, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.000006d5();
                    }
                    fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                }
            }
        } while (pcVar5[7] == pcVar4[7]);
    } while( true );
}

/* ====================================================================== */
/* 0x114: fcn.00000114 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000112(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t arg2;
    int16_t iVar3;
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
        fcn.00000128(arg3);
        do {
            while( true ) {
                pcVar7 = (char *)0x11b;
                uVar6 = fcn.00001504();
                *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
                pcVar1 = (char *)0x4ff1;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000dff(arg3, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
                arg3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.000003e7(arg2, 0);
                }
                do {
                    pcVar4 = unaff_DI;
                    pcVar5 = pcVar8;
                    if (*pcVar5 != *pcVar4) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[1] != pcVar4[1]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[2] != pcVar4[2]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    if (pcVar5[3] != pcVar4[3]) {
                        fcn.00000128(arg3);
                    }
                    arg3 = arg3 + 1;
                    pcVar8 = pcVar5 + 4;
                    unaff_DI = pcVar4 + 4;
                } while (in_stack_00000008 != 1);
                if (pcVar5[4] != pcVar4[4]) {
                    in_stack_00000008 = 0xf4;
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar5[5] != pcVar4[5]) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                if (pcVar5[6] != pcVar4[6]) {
                    fcn.00000128(arg3);
                }
                arg3 = arg3 + 1;
                unaff_SI = pcVar5 + 8;
                unaff_DI = pcVar4 + 8;
                if (-1 < pcVar5[7]) break;
                iVar3 = 0x5010;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x5010 = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x5011 = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x506;
                fcn.00001504(arg3, arg3);
                pcVar8 = (char *)0x50e;
                cVar2 = fcn.000006dc((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 8 + *(int16_t *)0x4feb;
                arg3 = (int16_t)unaff_DI;
                if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    arg3 = (int16_t)pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x539;
                        uVar6 = fcn.000006d5();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0xa00, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.000006d5();
                    }
                    fcn.0000059d((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                }
            }
        } while (pcVar5[7] == pcVar4[7]);
    } while( true );
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
    int16_t arg2;
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
        uVar7 = fcn.00001504();
        *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
        pcVar1 = (char *)0x4ff1;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000dff(in_BX, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        in_BX = 0;
        pcVar4 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000003e7(arg2, 0);
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
            arg3 = 0x5010;
            LOCK();
            cVar2 = pcVar6[7];
            pcVar6[7] = -2;
            UNLOCK();
            *(char *)0x5010 = cVar2;
            LOCK();
            cVar2 = pcVar6[0x23];
            pcVar6[0x23] = -1;
            UNLOCK();
            *(char *)0x5011 = cVar2;
            cVar2 = pcVar5[7];
            pcVar5 = pcVar5 + 0x2c;
            fcn.00001504();
            in_AL = fcn.000006dc((int16_t)pcVar4, (int16_t)unaff_DI, arg3, CONCAT11(extraout_AH, cVar2));
            pcVar6 = (char *)CONCAT11(extraout_DL, in_AL);
            pcVar3 = (char *)((int16_t)unaff_DI * 8 + *(int16_t *)0x4feb);
            arg3_00 = pcVar6;
            param_3 = unaff_DI;
            if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar5, in_AL));
                pcVar5 = pcVar6;
                if (in_AL < '\0') {
                    uVar7 = fcn.000006d5();
                }
                in_AL = fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                pcVar3 = pcVar6;
                arg3_00 = param_5;
                pcVar5 = pcVar4;
                param_3 = pcVar6;
            }
            in_BX = param_6;
            pcVar4 = param_8;
            unaff_DI = param_7;
            if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0xa00, CONCAT11(pcVar5[2], (char)((uint16_t)arg3_00 >> 8)));
                if ((int16_t)arg3_00 < 0) {
                    uVar7 = fcn.000006d5();
                }
                param_5 = (char *)0x569;
                in_AL = fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_00);
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

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(undefined2 param_1, undefined2 param_2, char *param_3, undefined2 param_4, char *param_5,
                 int16_t param_6, char *param_7, char *param_8)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    int16_t arg2;
    char *pcVar3;
    int16_t in_BX;
    int16_t arg3;
    char *pcVar4;
    char *arg3_00;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    
    while( true ) {
        uVar7 = fcn.00001504();
        *(int16_t *)0x4feb = *(int16_t *)0x4feb + 0xa00;
        pcVar1 = (char *)0x4ff1;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000dff(in_BX, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        in_BX = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000003e7(arg2, 0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[1] != pcVar3[1]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[2] != pcVar3[2]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            if (pcVar6[3] != pcVar3[3]) {
                fcn.00000128(in_BX);
            }
            in_BX = in_BX + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (param_3 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            param_3 = (char *)0xf4;
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar6[5] != pcVar3[5]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        if (pcVar6[6] != pcVar3[6]) {
            fcn.00000128(in_BX);
        }
        in_BX = in_BX + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3 = 0x5010;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5010 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x5011 = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.00001504();
            cVar2 = fcn.000006dc((int16_t)pcVar5, (int16_t)unaff_DI, arg3, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 8 + *(int16_t *)0x4feb);
            arg3_00 = pcVar4;
            param_3 = unaff_DI;
            if ((*(char *)0x5010 != -1) && (*(char *)0x5010 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.000006d5();
                }
                fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_00 = param_5;
                pcVar6 = pcVar5;
                param_3 = pcVar4;
            }
            in_BX = param_6;
            pcVar5 = param_8;
            unaff_DI = param_7;
            if (((*(char *)0x4ff1 != '\x01') && (*(char *)0x5011 != -1)) && (*(char *)0x5011 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0xa00, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_00 >> 8)));
                if ((int16_t)arg3_00 < 0) {
                    uVar7 = fcn.000006d5();
                }
                param_5 = (char *)0x569;
                fcn.0000059d((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_00);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(in_BX);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x1408: fcn.00001408 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001408(int16_t arg2)
{
    undefined uVar1;
    undefined *puVar2;
    undefined2 in_AX;
    uint16_t uVar3;
    char extraout_DL;
    uint16_t in_BX;
    uint8_t uVar4;
    int16_t unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    uVar3 = arg2;
    if ((uint8_t)arg2 < (uint8_t)in_BX) {
        uVar3 = in_BX;
        in_BX = arg2;
    }
    uVar4 = (uint8_t)(in_BX >> 8);
    if (uVar4 == 0) {
        return;
    }
    if (0x8e < uVar4) {
        return;
    }
    if ((char)in_BX == '\0') {
        in_BX = CONCAT11(uVar4, 1);
    }
    if (0xde < (uint8_t)uVar3) {
        uVar3 = CONCAT11((char)(uVar3 >> 8), 0xde);
    }
    fcn.0000143f(uVar3, CONCAT11((char)((uint16_t)in_AX >> 8), (char)(in_BX >> 8)));
    puVar5 = (undefined *)(unaff_DI + (in_BX & 0xff));
    uVar1 = *(undefined *)0x4fff;
    for (uVar3 = (uint16_t)(uint8_t)(extraout_DL - (char)in_BX); uVar3 != 0; uVar3 = uVar3 - 1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = uVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x143f: fcn.0000143f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000143f(int16_t arg2, int16_t arg1)
{
    return CONCAT22(arg2, (arg1 & 0xffU) * 0x140 + 0x11b0);
}

/* ====================================================================== */
/* 0x1644: fcn.00001644 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001644(int16_t arg1)
{
    int16_t arg1_00;
    int16_t in_BX;
    int16_t unaff_DS;
    
    arg1_00 = -0x6000;
    do {
        arg1_00 = fcn.0000166d(arg1_00, in_BX);
    } while (unaff_DS != 1);
    return;
}

/* ====================================================================== */
/* 0x166d: fcn.0000166d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000166d(int16_t arg1, int16_t arg3)
{
    uint16_t *puVar1;
    uint8_t *puVar2;
    uint8_t uVar3;
    uint16_t uVar4;
    int16_t iVar5;
    int16_t iVar6;
    uint16_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    int16_t iStack_2;
    
    iStack_2 = 2;
    do {
        puVar1 = unaff_SI + 1;
        uVar4 = *unaff_SI;
        unaff_SI = (uint16_t *)((int16_t)unaff_SI + 3);
        uVar3 = *(uint8_t *)puVar1;
        *unaff_DI = (uint8_t)(uVar4 >> 10);
        unaff_DI[1] = ((uint8_t)(uVar4 >> 3) & 0x7f) >> 1;
        unaff_DI[2] = (uint8_t)((uint16_t)(CONCAT11((char)uVar4, uVar3) * 4) >> 8) & 0x3f;
        unaff_DI[3] = uVar3 & 0x3f;
        iVar6 = (uint16_t)*(uint8_t *)0x4fff * 2;
        iVar5 = 4;
        do {
            uVar3 = *unaff_DI;
            if (uVar3 != 0) {
                (**(code **)(iVar6 + 0x46d4))();
                iStack_2 = 0x16cd;
                uVar4 = (**(code **)(iVar6 + 0x46d4))();
                uVar3 = (uint8_t)(uVar4 & 0xff38) | (uint8_t)((uVar4 & 0xff38) >> 8);
            }
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            *puVar2 = uVar3;
            iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
        iStack_2 = iStack_2 + -1;
    } while (iStack_2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1979: fcn.00001979 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001979(int16_t arg2)
{
    char *pcVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    int16_t iVar5;
    char *unaff_DI;
    undefined2 unaff_ES;
    bool bVar6;
    
    iVar5 = 4;
    do {
        bVar6 = CARRY2(arg2, arg2);
        uVar2 = arg2 * 2;
        uVar3 = arg2 * 4;
        uVar4 = arg2 * 8;
        arg2 = arg2 * 0x10;
        pcVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *pcVar1 = ((bVar6 * '\x02' + CARRY2(uVar2, uVar2)) * '\x04' + CARRY2(uVar3, uVar3)) * '\x02' +
                  CARRY2(uVar4, uVar4);
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0x1c8a: fcn.00001c8a */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00001cd5) overlaps instruction at (ram,0x00001cd4)
// 
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001c8a(short unsigned int arg3, short unsigned int arg1)
{
    uint8_t *puVar1;
    char *pcVar2;
    uint8_t uVar3;
    uint8_t uVar4;
    char cVar5;
    int16_t iVar6;
    uint16_t uVar7;
    int16_t in_CX;
    uint8_t uVar8;
    undefined2 in_DX;
    char *pcVar9;
    int16_t unaff_BP;
    char *unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    pcVar9 = (char *)(arg3 | *(uint16_t *)(unaff_SI + arg3));
    cVar5 = (char)(arg1 >> 8);
    *(char *)(unaff_BP + unaff_DI) = *(char *)(unaff_BP + unaff_DI) + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI];
    uVar4 = (char)arg1 + (pcVar9 + (int16_t)unaff_SI)[0x280];
    iVar6 = CONCAT11(cVar5, uVar4);
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    puVar1 = (uint8_t *)(pcVar9 + (int16_t)unaff_SI);
    uVar3 = *puVar1;
    *puVar1 = *puVar1 + uVar4;
    uVar8 = (uint8_t)in_DX;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar8 + CARRY1(uVar3, uVar4);
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *unaff_SI = *unaff_SI + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + -0x80;
    iVar6 = iVar6 + *(int16_t *)(pcVar9 + (int16_t)unaff_SI);
    pcVar9[unaff_DI + 0xc] = pcVar9[unaff_DI + 0xc] + (char)((uint16_t)in_DX >> 8);
    cVar5 = (char)iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *pcVar9 = *pcVar9 + cVar5;
    LOCK();
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    UNLOCK();
    uVar7 = in(0);
    *pcVar9 = *pcVar9 + (char)in_CX;
    LOCK();
    cVar5 = (char)uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    UNLOCK();
    pcVar9[iVar6] = pcVar9[iVar6] + (char)((uint16_t)pcVar9 >> 8);
    pcVar2 = pcVar9 + (int16_t)unaff_SI;
    *pcVar2 = *pcVar2 + cVar5;
    if (in_CX + -1 != 0 && *pcVar2 == '\0') {
        *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    }
    pcVar9[iVar6] = pcVar9[iVar6];
    (pcVar9 + (int16_t)unaff_SI)[4] = (pcVar9 + (int16_t)unaff_SI)[4] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] | uVar8;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    unaff_SI[unaff_BP + -0x55b6] = unaff_SI[unaff_BP + -0x55b6] + uVar8;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[iVar6] = pcVar9[iVar6] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI];
    *(char *)(unaff_BP + iVar6) = *(char *)(unaff_BP + iVar6) + (char)((uint16_t)(in_CX + -1) >> 8);
    *(char **)(iVar6 + 4) = *(char **)(iVar6 + 4) + (int16_t)pcVar9;
    out(in_DX, uVar7 & 0xffae);
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x1f4c: fcn.00001f4c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001f4c(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    int16_t iVar3;
    
    iVar3 = 4;
    do {
        uVar1 = *(uint16_t *)0x4fef << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4fef < 0);
        uVar2 = *(uint16_t *)0x4feb << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4feb < 0);
        *(uint16_t *)0x4fef = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x4feb = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1f6e: fcn.00001f6e */
/* ====================================================================== */


void fcn.00001f6e(void)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x4ff5 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4ff5 < 0);
        *(uint16_t *)0x4ff5 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

