/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0xd = "AZFi@l2g8"; // [ascii]
static const char *STR_0x5b9 = "Z_^]FGEBB"; // [ascii]
static const char *STR_0x73d = "ÕuucG+uucG+uucG+uucG+uucG+uucG+uucG+uu½"; // [ibm037]
static const char *STR_0xda2 = ">&ßSCCµl"; // [ibm037]
static const char *STR_0xf8b = "6tP[_^"; // [ascii]
static const char *STR_0xfdf = "uuuuuuuucFçS3½"; // [ibm037]
static const char *STR_0x1011 = "uuuuuuuucGçS3½"; // [ibm037]
static const char *STR_0x192c = "TY]c2/."; // [ascii]
static const char *STR_0x1962 = "4QV[_eg/-"; // [ascii]
static const char *STR_0x19be = "mno)&!\"*%!\""; // [ascii]
static const char *STR_0x19f8 = "muwyo+&)&"; // [ascii]
static const char *STR_0x1a15 = "vxz{12/-367<"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000000(int16_t arg1)
{
    uint8_t *puVar1;
    char *pcVar2;
    undefined2 *puVar3;
    char *pcVar4;
    uint8_t *puVar5;
    char cVar6;
    undefined extraout_AH;
    uint16_t in_AX;
    uint32_t uVar7;
    undefined2 in_register_00000002;
    int16_t iVar8;
    undefined2 in_CX;
    undefined extraout_DL;
    char *pcVar9;
    undefined2 in_DX;
    int16_t iVar10;
    int16_t iVar11;
    char *arg3;
    int16_t in_BX;
    int16_t unaff_BP;
    uint8_t *puVar12;
    char *pcVar13;
    char *pcVar14;
    char *unaff_SI;
    undefined2 *puVar15;
    char *pcVar16;
    uint16_t unaff_DI;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    unkfloat10 in_ST0;
    undefined4 uVar17;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    *(uint16_t *)(unaff_SI + in_BX) = *(uint16_t *)(unaff_SI + in_BX) & unaff_DI;
    *unaff_SI = *unaff_SI + (char)((uint16_t)in_CX >> 8);
    *(uint8_t *)(in_BX + 0x3a) = *(uint8_t *)(in_BX + 0x3a) ^ (uint8_t)unaff_DI;
    out(in_DX, *(undefined *)0xaf3f);
    iVar11 = *(int16_t *)(unaff_SI + in_BX + 0x6d);
    *(uint16_t *)(unaff_SI + unaff_BP + 1) = *(uint16_t *)(unaff_SI + unaff_BP + 1) ^ in_AX;
    puVar1 = (uint8_t *)(unaff_BP + in_AX + 0x75);
    *puVar1 = *puVar1 << 1 | (char)*puVar1 < '\0';
    uVar7 = CONCAT22(in_register_00000002, iVar11 * 0x6732) & 0xffff00ff;
    *(int64_t *)(unaff_SI + -0x458b) = (int64_t)in_ST0;
    iVar11 = CONCAT11(0x4c, (char)uVar7);
    puVar15 = (undefined2 *)0x5097;
    for (iVar8 = 0x80; iVar8 != 0; iVar8 = iVar8 + -1) {
        puVar3 = puVar15;
        puVar15 = puVar15 + 1;
        *puVar3 = 0;
    }
    *(char *)0x5078 = *(char *)0x5078 + '\x01';
    *(undefined2 *)0x5069 = 0x46c;
    iVar8 = *(int16_t *)0xff31;
    fcn.000016b5(CONCAT22((int16_t)(uVar7 >> 0x10), iVar11));
    iVar10 = 0;
    if ((*(uint8_t *)(iVar8 + -0x21) & 0x80) != 0) {
        fcn.00000361(0);
    }
    puVar5 = (uint8_t *)(iVar8 + -0x20);
    do {
        puVar12 = puVar5;
        if ((*puVar12 & 0x80) != 0) {
            fcn.0000039e(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[1] & 0x80) != 0) {
            fcn.0000039e(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[2] & 0x80) != 0) {
            fcn.0000039e(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[3] & 0x80) != 0) {
            fcn.0000039e(iVar10);
        }
        iVar10 = iVar10 + 1;
        puVar5 = puVar12 + 4;
    } while (iVar11 != 1);
    if ((puVar12[4] & 0x80) != 0) {
        fcn.0000039e(iVar10);
    }
    iVar10 = iVar10 + 1;
    if ((puVar12[5] & 0x80) != 0) {
        fcn.0000039e(iVar10);
    }
    iVar10 = iVar10 + 1;
    if ((puVar12[6] & 0x80) != 0) {
        fcn.0000039e(iVar10);
    }
    if ((puVar12[7] & 0x80) != 0) {
        fcn.000003e2();
    }
    pcVar13 = *(char **)0xff31;
    pcVar16 = (char *)0xe900;
    *(undefined *)0x506d = 0x12;
    do {
        fcn.00000e7a(iVar10);
        iVar10 = 0;
        pcVar4 = pcVar13 + 4;
        if (pcVar13[3] < '\0') {
            fcn.0000041a(0);
        }
        do {
            pcVar9 = pcVar16;
            pcVar14 = pcVar4;
            if (*pcVar14 != *pcVar9) {
                fcn.00000128(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[1] != pcVar9[1]) {
                fcn.00000128(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[2] != pcVar9[2]) {
                fcn.00000128(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[3] != pcVar9[3]) {
                fcn.00000128(iVar10);
            }
            iVar10 = iVar10 + 1;
            pcVar4 = pcVar14 + 4;
            pcVar16 = pcVar9 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar14[4] != pcVar9[4]) {
            in_stack_00000006 = (char *)0xf4;
            fcn.00000128(iVar10);
        }
        iVar10 = iVar10 + 1;
        if (pcVar14[5] != pcVar9[5]) {
            fcn.00000128(iVar10);
        }
        iVar10 = iVar10 + 1;
        if (pcVar14[6] != pcVar9[6]) {
            fcn.00000128(iVar10);
        }
        iVar10 = iVar10 + 1;
        pcVar13 = pcVar14 + 8;
        pcVar16 = pcVar9 + 8;
        if (pcVar14[7] < '\0') {
            iVar11 = 0x508a;
            LOCK();
            cVar6 = pcVar9[7];
            pcVar9[7] = -2;
            UNLOCK();
            *(char *)0x508a = cVar6;
            LOCK();
            cVar6 = pcVar9[0x23];
            pcVar9[0x23] = -1;
            UNLOCK();
            *(char *)0x508b = cVar6;
            cVar6 = pcVar14[7];
            pcVar14 = pcVar14 + 0x2c;
            fcn.000016a9();
            cVar6 = fcn.000007a0((int16_t)pcVar13, (int16_t)pcVar16, iVar11, CONCAT11(extraout_AH, cVar6));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar6);
            pcVar9 = (char *)((int16_t)pcVar16 * 2 + *(int16_t *)0x5069);
            arg3 = pcVar4;
            in_stack_00000006 = pcVar16;
            if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                uVar17 = CONCAT22(pcVar9, CONCAT11(*pcVar14, cVar6));
                pcVar16 = pcVar4;
                if (cVar6 < '\0') {
                    uVar17 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar17, (int16_t)((uint32_t)uVar17 >> 0x10), (int16_t)pcVar16);
                pcVar9 = pcVar4;
                arg3 = in_stack_0000000a;
                pcVar14 = pcVar13;
                in_stack_00000006 = pcVar4;
            }
            iVar10 = in_stack_0000000c;
            pcVar13 = in_stack_00000010;
            pcVar16 = in_stack_0000000e;
            if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                uVar17 = CONCAT22(pcVar9 + 0x280, CONCAT11(pcVar14[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar17 = fcn.00000799();
                }
                in_stack_0000000a = (char *)0x590;
                fcn.000005c3((int16_t)uVar17, (int16_t)((uint32_t)uVar17 >> 0x10), (int16_t)arg3);
            }
        } else if (pcVar14[7] != pcVar9[7]) {
            fcn.00000128(iVar10);
        }
        pcVar13 = pcVar13 + 4;
        fcn.000016a9();
        *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
        pcVar2 = (char *)0x506d;
        *pcVar2 = *pcVar2 + -1;
    } while (*pcVar2 != '\0');
    return;
}

/* ====================================================================== */
/* 0x16b5: fcn.000016b5 */
/* ====================================================================== */


void fcn.000016b5(void)
{
    uint16_t unaff_SI;
    
    if (0xdfff < unaff_SI) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x361: fcn.00000361 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000361(int16_t arg3)
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
    fcn.000016a9(arg3);
    uVar1 = extraout_AH;
    if ((char)unaff_SI[0x25] < '\0') {
        uVar1 = 0;
        fcn.00000799();
    }
    fcn.000007a0(in_stack_00000002, in_stack_00000000, arg3, CONCAT11(uVar1, uVar2));
    fcn.000005c3(CONCAT11(unaff_SI[0x28], (char)in_stack_00000000), 0x46c, arg3);
    return;
}

/* ====================================================================== */
/* 0x16a9: fcn.000016a9 */
/* ====================================================================== */


void fcn.000016a9(void)
{
    uint16_t unaff_SI;
    
    if (unaff_SI < 0xe900) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x799: fcn.00000799 */
/* ====================================================================== */


undefined fcn.00000799(void)
{
    uint8_t in_AL;
    
    return *(undefined *)(uint32_t)((in_AL & 0x7f) + 0xed20);
}

/* ====================================================================== */
/* 0x7a0: fcn.000007a0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 fcn.000007a0(int16_t arg_6h, int16_t arg_4h, int16_t arg3, int16_t arg1)
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
    *(char *)0x5070 = cVar3;
    return CONCAT11((char)((uint16_t)pcVar5 >> 8), uVar1);
}

/* ====================================================================== */
/* 0x5c3: fcn.000005c3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000005c3(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 unaff_DS;
    
    uVar2 = *(uint8_t *)0x5070;
    cVar1 = (char)arg1;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar2 = uVar2 | 0x80;
    }
    *(undefined2 *)0x5067 = *(undefined2 *)((uint16_t)(uVar2 & 0x7f) * 2 + 0x505a);
    if (-1 < (char)uVar2) {
        fcn.000006cb(arg2);
        fcn.00000730();
        return;
    }
    fcn.0000062f(CONCAT11((char)((uint16_t)*(undefined2 *)0x5067 >> 8), cVar1));
    fcn.00000730();
    return;
}

/* ====================================================================== */
/* 0x39e: fcn.0000039e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.0000039e(int16_t arg3)
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
    *(undefined *)0x508a = uVar2;
    *(undefined *)0x508b = 0;
    *(undefined *)(arg3 + -0x16ff) = 0xff;
    uVar2 = *unaff_SI;
    fcn.000016a9(arg3);
    uVar1 = *(undefined2 *)(unaff_SI + 0x24);
    *(undefined2 *)0x508e = uVar1;
    fcn.000007a0(in_stack_00000002, in_stack_00000000, 0x508e, CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2));
    fcn.00000596();
    return;
}

/* ====================================================================== */
/* 0x596: fcn.00000596 */
/* ====================================================================== */


void fcn.00000596(void)
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
            uVar1 = fcn.00000799(0x599);
            in_DX = (int16_t)((uint32_t)uVar1 >> 0x10);
            arg1 = (int16_t)uVar1;
        }
        fcn.000005c3(arg1, in_DX, in_BX);
    }
    return;
}

/* ====================================================================== */
/* 0x3e2: fcn.000003e2 */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000003e2(undefined2 param_1, int16_t param_2, int16_t param_3)
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
    fcn.000016a9();
    uVar2 = extraout_AH;
    if ((char)unaff_SI[0x24] < '\0') {
        uVar2 = 0;
        fcn.00000799();
    }
    fcn.000007a0(param_3, param_2, in_BX, CONCAT11(uVar2, uVar3));
    cVar1 = (char)param_2;
    uVar4 = *(uint8_t *)0x5070;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar4 = uVar4 | 0x80;
    }
    *(undefined2 *)0x5067 = *(undefined2 *)((uint16_t)(uVar4 & 0x7f) * 2 + 0x505a);
    if (-1 < (char)uVar4) {
        fcn.000006cb();
        fcn.00000730();
        return;
    }
    fcn.0000062f(CONCAT11((char)((uint16_t)*(undefined2 *)0x5067 >> 8), cVar1));
    fcn.00000730();
    return;
}

/* ====================================================================== */
/* 0xe7a: fcn.00000e7a */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000e93: Changing call to branch
// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00000e7a(int16_t arg3)
{
    uint8_t *puVar1;
    undefined2 uVar2;
    undefined2 uVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    undefined2 in_AX;
    undefined uVar8;
    int16_t iVar6;
    int16_t iVar7;
    undefined2 in_CX;
    int16_t iVar9;
    int16_t iVar10;
    uint8_t *puVar11;
    undefined2 *puVar12;
    undefined *puVar13;
    undefined2 unaff_DS;
    int16_t iVar14;
    
    uVar8 = (undefined)((uint16_t)in_AX >> 8);
    uVar4 = 0x12 - *(char *)0x506d;
    if (*(char *)0xff43 == '\0') {
        iVar6 = CONCAT11(uVar8, *(char *)0x84 - 2U);
        if ((uint8_t)(*(char *)0x84 - 2U) != uVar4) {
            return iVar6;
        }
    } else {
        uVar5 = *(char *)0x84 - 5;
        if (uVar4 < uVar5) {
            return CONCAT11(uVar8, uVar5);
        }
        if (uVar4 != uVar5) {
            uVar5 = *(char *)0x84 + 5;
            iVar6 = CONCAT11(uVar8, uVar5);
            if (uVar5 != uVar4) {
                return iVar6;
            }
            if (*(char *)0xff43 != '\0') {
                *(undefined *)0xff44 = 0xff;
                fcn.00001023(iVar6, CONCAT11((char)((uint16_t)in_CX >> 8), uVar4));
                fcn.00000fbf();
                uVar3 = *(undefined2 *)0xff2c;
                *(undefined *)0x5071 = *(undefined *)((uint8_t)(*(char *)0x92 - 1) + 0x4199);
                out(0x3c4, 0x702);
                out(0x3ce, 0x205);
                out(0x3ce, 8);
                iVar6 = 4;
                puVar11 = *(uint8_t **)0x5074;
                puVar13 = *(undefined **)0x5072;
                do {
                    iVar9 = 4;
                    do {
                        uVar8 = *(undefined *)0x5071;
                        puVar1 = puVar11;
                        puVar11 = puVar11 + 1;
                        iVar10 = 0x280;
                        if (*puVar1 != 0xff) {
                            puVar12 = (undefined2 *)((uint16_t)*puVar1 * 0x10 + *(int16_t *)0xb000);
                            iVar10 = 0x50;
                            uVar2 = *puVar12;
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            *puVar13 = *(undefined *)0x5071;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[1] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[1];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0x50] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0x51] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[2];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0xa0] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0xa1] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[3];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0xf0] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0xf1] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[4];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0x140] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0x141] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[5];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[400] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0x191] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[6];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0x1e0] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0x1e1] = uVar8;
                            UNLOCK();
                            uVar2 = puVar12[7];
                            out(0x3cf, (char)uVar2);
                            LOCK();
                            puVar13[0x230] = uVar8;
                            UNLOCK();
                            out(0x3cf, (char)((uint16_t)uVar2 >> 8));
                            LOCK();
                            puVar13[0x231] = uVar8;
                            UNLOCK();
                            puVar13 = puVar13 + 0x230;
                        }
                        puVar13 = puVar13 + iVar10;
                        iVar9 = iVar9 + -1;
                    } while (iVar9 != 0);
                    puVar13 = puVar13 + -0x9fe;
                    iVar6 = iVar6 + -1;
                } while (iVar6 != 0);
                out(0x3ce, 5);
                out(0x3ce, 0xff08);
                return -0xf8;
            }
            return iVar6;
        }
        iVar6 = fcn.00000fa4(arg3);
    }
    if (*(char *)0xff37 == '\0') {
        *(undefined *)0xff37 = 0xff;
        iVar9 = 3;
        iVar6 = *(int16_t *)0x506b;
        do {
            iVar10 = 3;
            do {
                iVar14 = iVar10;
                iVar7 = fcn.00000730(iVar6, iVar10, iVar9, arg3);
                iVar6 = iVar14 + 2;
                iVar10 = iVar9 + -1;
            } while (iVar10 != 0);
            iVar6 = iVar14 + 0x27c;
            iVar9 = iVar9 + -1;
        } while (iVar9 != 0);
        return iVar7;
    }
    return iVar6;
}

/* ====================================================================== */
/* 0xfa4: fcn.00000fa4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000fa4(int16_t arg3)
{
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    if (*(char *)0xff44 == '\0') {
        return;
    }
    fcn.00000ff1(arg3);
    *(undefined *)0xff44 = 0;
    return;
}

/* ====================================================================== */
/* 0xff1: fcn.00000ff1 */
/* ====================================================================== */


undefined4 fcn.00000ff1(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *puVar3;
    undefined *puVar4;
    
    puVar3 = (undefined *)0x3f20;
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    iVar2 = 0x20;
    puVar4 = *(undefined **)0x5072;
    do {
        *puVar4 = *puVar3;
        puVar4[1] = puVar3[1];
        puVar4[2] = puVar3[2];
        puVar4[3] = puVar3[3];
        puVar4[4] = puVar3[4];
        puVar4[5] = puVar3[5];
        puVar1 = puVar3 + 7;
        puVar4[6] = puVar3[6];
        puVar3 = puVar3 + 8;
        puVar4[7] = *puVar1;
        puVar4 = puVar4 + 0x50;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x1023: fcn.00001023 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001023(int16_t arg1, int16_t arg4)
{
    int16_t iVar1;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    puVar2 = (uint8_t *)
             ((uint16_t)(*(char *)0x84 + *(char *)0x5076 & 0x3f) * 0x24 +
              (uint16_t)(uint8_t)(*(char *)0x83 + *(char *)0x5077 + 4) + *(int16_t *)0xff31);
    fcn.000016a9();
    do {
        iVar1 = 4;
        do {
            puVar3 = puVar2;
            *(undefined2 *)((uint16_t)(*puVar3 & 0x7f) * 2 + 0x5097) = 0;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        puVar2 = puVar3 + 0x21;
        fcn.000016a9();
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0xfbf: fcn.00000fbf */
/* ====================================================================== */


undefined4 fcn.00000fbf(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *puVar3;
    undefined *puVar4;
    
    puVar4 = (undefined *)0x3f20;
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    iVar2 = 0x20;
    puVar3 = *(undefined **)0x5072;
    do {
        *puVar4 = *puVar3;
        puVar4[1] = puVar3[1];
        puVar4[2] = puVar3[2];
        puVar4[3] = puVar3[3];
        puVar4[4] = puVar3[4];
        puVar4[5] = puVar3[5];
        puVar1 = puVar4 + 7;
        puVar4[6] = puVar3[6];
        puVar4 = puVar4 + 8;
        *puVar1 = puVar3[7];
        puVar3 = puVar3 + 0x50;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x730: fcn.00000730 */
/* ====================================================================== */


undefined4 fcn.00000730(void)
{
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
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
    unaff_DI[0x230] = unaff_SI[0xe];
    unaff_DI[0x231] = unaff_SI[0xf];
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x41a: fcn.0000041a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.0000041a(int16_t arg3)
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
    
    iVar3 = 0x508a;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 0xff;
    UNLOCK();
    *(undefined *)0x508a = uVar1;
    LOCK();
    uVar1 = unaff_DI[0x1c];
    unaff_DI[0x1c] = 0xff;
    UNLOCK();
    *(undefined *)0x508b = uVar1;
    uVar1 = unaff_SI[-1];
    arg_6h = unaff_SI;
    fcn.000016a9(arg3, arg3);
    fcn.000007a0((int16_t)arg_6h, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, uVar1));
    puVar4 = unaff_SI + 0x25;
    iVar2 = (int16_t)unaff_DI * 2 + *(int16_t *)0x5069;
    iVar3 = extraout_DX;
    if ((*(char *)0x508a != -1) && (iVar3 = extraout_DX, *(char *)0x508a != -4)) {
        uVar5 = CONCAT22(iVar2, CONCAT11(*puVar4, (char)extraout_DX));
        iVar3 = extraout_DX;
        iVar6 = extraout_DX;
        if ((char)extraout_DX < '\0') {
            iVar6 = extraout_DX;
            uVar5 = fcn.00000799(iVar2, puVar4);
        }
        puVar4 = arg_6h;
        iVar2 = iVar6;
        fcn.000005c3((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
        iVar3 = in_stack_00000000;
    }
    if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
        uVar5 = CONCAT22(iVar2 + 0x280, CONCAT11(puVar4[2], (char)((uint16_t)iVar3 >> 8)));
        if (iVar3 < 0) {
            uVar5 = fcn.00000799();
        }
        fcn.000005c3((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
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
        *(undefined2 *)0x508a = uVar2;
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + 0x1b);
        *(undefined2 *)(unaff_DI + 0x1b) = 0xffff;
        UNLOCK();
        *(undefined2 *)0x508c = uVar2;
        uVar6 = unaff_SI[-1];
        arg3_00 = 0x508e;
        *(undefined *)0x508f = *unaff_SI;
        arg_4h = unaff_SI;
        fcn.000016a9(arg3);
        uVar2 = *(undefined2 *)(unaff_SI + 0x23);
        *(undefined2 *)(arg3_00 + 2) = uVar2;
        *(undefined *)0x506e = (char)arg3;
        *(char *)0x506f = '\x12' - *(char *)0x506d;
        uVar6 = fcn.000007a0(in_stack_00000000, (int16_t)arg_4h, arg3_00, CONCAT11((char)((uint16_t)uVar2 >> 8), uVar6))
        ;
        *(undefined *)0x508e = uVar6;
        fcn.00000596();
        if (*(char *)0x506d != '\x01') {
            fcn.00000596();
            if ((*(char *)0xff34 != '\0') && (*(char *)0xff2f != '\0')) {
                fcn.000007f1();
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
            fcn.00000270(arg3, arg3 * 2 + *(int16_t *)0x5069, CONCAT11((char)((uint16_t)in_AX >> 8), cVar4));
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

undefined4 fcn.00000270(int16_t arg3, int16_t arg2, int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    undefined *puVar3;
    undefined2 uVar4;
    undefined2 *puVar5;
    int16_t iVar6;
    undefined2 unaff_DS;
    
    if ((char)arg1 == '\0') {
        out(0x3c4, 0x702);
        *(undefined2 *)arg2 = 0;
        *(undefined2 *)(arg2 + 0x50) = 0;
        *(undefined2 *)(arg2 + 0xa0) = 0;
        *(undefined2 *)(arg2 + 0xf0) = 0;
        *(undefined2 *)(arg2 + 0x140) = 0;
        *(undefined2 *)(arg2 + 400) = 0;
        *(undefined2 *)(arg2 + 0x1e0) = 0;
        *(undefined2 *)(arg2 + 0x230) = 0;
        return 0x3c40000;
    }
    iVar6 = (arg1 & 0xffU) * 2;
    if (*(int16_t *)(iVar6 + 0x5097) == 0) {
        *(int16_t *)(iVar6 + 0x5097) = arg2;
        uVar4 = *(undefined2 *)0xff2c;
        puVar5 = (undefined2 *)((arg1 & 0xffU) * 0x30 + -0x8000);
        out(0x3c4, 2);
        iVar6 = 4;
        do {
            out(0x3c5, 1);
            *(undefined2 *)arg2 = *puVar5;
            out(0x3c5, 2);
            *(undefined2 *)arg2 = puVar5[1];
            out(0x3c5, 4);
            *(undefined2 *)arg2 = puVar5[2];
            out(0x3c5, 1);
            *(undefined2 *)(arg2 + 0x50) = puVar5[3];
            out(0x3c5, 2);
            puVar1 = puVar5 + 5;
            uVar2 = puVar5[4];
            *(undefined2 *)(arg2 + 0x50) = uVar2;
            out(0x3c5, 4);
            puVar5 = puVar5 + 6;
            *(undefined2 *)(arg2 + 0x50) = *puVar1;
            arg2 = arg2 + 0xa0;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar2 >> 8), 4));
    }
    puVar3 = (undefined *)*(undefined2 *)(iVar6 + 0x5097);
    out(0x3c4, 0x702);
    out(0x3ce, 0x105);
    *(undefined *)arg2 = *puVar3;
    *(undefined *)(arg2 + 1) = puVar3[1];
    *(undefined *)(arg2 + 0x50) = puVar3[0x50];
    *(undefined *)(arg2 + 0x51) = puVar3[0x51];
    *(undefined *)(arg2 + 0xa0) = puVar3[0xa0];
    *(undefined *)(arg2 + 0xa1) = puVar3[0xa1];
    *(undefined *)(arg2 + 0xf0) = puVar3[0xf0];
    *(undefined *)(arg2 + 0xf1) = puVar3[0xf1];
    *(undefined *)(arg2 + 0x140) = puVar3[0x140];
    *(undefined *)(arg2 + 0x141) = puVar3[0x141];
    *(undefined *)(arg2 + 400) = puVar3[400];
    *(undefined *)(arg2 + 0x191) = puVar3[0x191];
    *(undefined *)(arg2 + 0x1e0) = puVar3[0x1e0];
    *(undefined *)(arg2 + 0x1e1) = puVar3[0x1e1];
    *(undefined *)(arg2 + 0x230) = puVar3[0x230];
    *(undefined *)(arg2 + 0x231) = puVar3[0x231];
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x7f1: fcn.000007f1 */
/* ====================================================================== */


void fcn.000007f1(void)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0xf < *(uint8_t *)0x506f) {
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x506e;
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x506f;
    if (uVar1 == 0xff) {
        uVar1 = 0;
    }
    puVar2[1] = uVar1;
    puVar2[2] = 3;
    uVar1 = (*_fcn.0000011a)();
    puVar2[3] = *(uint8_t *)(uint32_t)((uVar1 & 3) + 0x3863);
    puVar2[4] = 0xff;
    return;
}

/* ====================================================================== */
/* 0x11a: fcn.0000011a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    int16_t arg3_00;
    char *pcVar4;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        fcn.000016a9();
        *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
        pcVar1 = (char *)0x506d;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000e7a(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.0000041a(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x508a;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x508a = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x508b = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016a9();
            cVar2 = fcn.000007a0((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x5069);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x280, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.00000799();
                }
                in_stack_0000000a = (char *)0x590;
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x6cb: fcn.000006cb */
/* ====================================================================== */


undefined4 fcn.000006cb(void)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x205);
    iVar3 = 8;
    do {
        out(0x3ce, 3);
        out(0x3ce, 0xff08);
        LOCK();
        *unaff_DI = 0;
        UNLOCK();
        LOCK();
        unaff_DI[1] = 0;
        UNLOCK();
        out(0x3ce, 0x1003);
        out(0x3ce, 8);
        puVar1 = unaff_SI + 1;
        uVar2 = *unaff_SI;
        out(0x3cf, (char)uVar2);
        LOCK();
        *unaff_DI = *(undefined *)0x5067;
        UNLOCK();
        out(0x3cf, (char)((uint16_t)uVar2 >> 8));
        LOCK();
        unaff_DI[1] = *(undefined *)0x5067;
        UNLOCK();
        unaff_SI = unaff_SI + 2;
        uVar2 = *puVar1;
        out(0x3cf, (char)uVar2);
        LOCK();
        *unaff_DI = *(undefined *)0x5068;
        UNLOCK();
        out(0x3cf, (char)((uint16_t)uVar2 >> 8));
        LOCK();
        unaff_DI[1] = *(undefined *)0x5068;
        UNLOCK();
        unaff_DI = unaff_DI + 2;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    out(0x3ce, 3);
    out(0x3ce, 5);
    out(0x3ce, 0xff08);
    return 0x3ceff08;
}

/* ====================================================================== */
/* 0x62f: fcn.0000062f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000062f(int16_t arg1)
{
    undefined2 *puVar1;
    undefined uVar2;
    undefined uVar3;
    undefined uVar5;
    undefined uVar6;
    uint16_t uVar4;
    uint16_t in_CX;
    int16_t iVar7;
    undefined *unaff_SI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 *in_stack_00000000;
    
    fcn.00000768((in_CX & 0xff) * 0x30 + -0x8000);
    out(0x3c4, 0x702);
    out(0x3ce, 0x205);
    iVar7 = 8;
    do {
        puVar1 = in_stack_00000000 + 1;
        uVar5 = (undefined)((uint16_t)*in_stack_00000000 >> 8);
        uVar2 = (undefined)*in_stack_00000000;
        in_stack_00000000 = in_stack_00000000 + 2;
        uVar6 = (undefined)((uint16_t)*puVar1 >> 8);
        uVar3 = (undefined)*puVar1;
        out(0x3ce, 3);
        out(0x3ce, 8);
        uVar4 = CONCAT11(uVar2, uVar5) | CONCAT11(uVar3, uVar6);
        uVar4 = uVar4 | uVar4 << 1 | (uVar4 & 0x7fff) >> 1;
        out(0x3cf, (char)(uVar4 >> 8));
        LOCK();
        *unaff_SI = 0;
        UNLOCK();
        out(0x3cf, (char)uVar4);
        LOCK();
        unaff_SI[1] = 0;
        UNLOCK();
        out(0x3ce, 0x1003);
        out(0x3ce, 8);
        out(0x3cf, uVar2);
        LOCK();
        *unaff_SI = *(undefined *)0x5067;
        UNLOCK();
        out(0x3cf, uVar5);
        LOCK();
        unaff_SI[1] = *(undefined *)0x5067;
        UNLOCK();
        out(0x3cf, uVar3);
        LOCK();
        *unaff_SI = *(undefined *)0x5068;
        UNLOCK();
        out(0x3cf, uVar6);
        LOCK();
        unaff_SI[1] = *(undefined *)0x5068;
        UNLOCK();
        unaff_SI = unaff_SI + 2;
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    out(0x3ce, 3);
    out(0x3ce, 5);
    out(0x3ce, 0xff08);
    return 0x3ceff08;
}

/* ====================================================================== */
/* 0x768: fcn.00000768 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000768(int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 2);
    iVar3 = 8;
    do {
        out(0x3c5, 1);
        *unaff_DI = *unaff_SI;
        out(0x3c5, 2);
        puVar1 = unaff_SI + 2;
        uVar2 = unaff_SI[1];
        *unaff_DI = uVar2;
        out(0x3c5, 4);
        unaff_SI = unaff_SI + 3;
        *unaff_DI = *puVar1;
        iVar3 = iVar3 + -1;
        unaff_DI = unaff_DI + 1;
    } while (iVar3 != 0);
    return CONCAT22(0x3c5, CONCAT11((char)((uint16_t)uVar2 >> 8), 4));
}

/* ====================================================================== */
/* 0xe4b: fcn.00000e4b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000e4b(int16_t arg1, int16_t arg4)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)
             ((uint16_t)*(uint8_t *)0x84 * 0x24 + (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0xff31);
    fcn.000016a9();
    puVar4 = (undefined2 *)0x508e;
    iVar3 = 3;
    do {
        puVar1 = puVar4 + 1;
        *puVar4 = *puVar2;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
        *(undefined *)puVar1 = *(undefined *)(puVar2 + 1);
        puVar2 = puVar2 + 0x12;
        fcn.000016a9();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xda8: fcn.00000da8 */
/* ====================================================================== */


uint8_t fcn.00000da8(void)
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
/* 0xd6a: fcn.00000d6a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000d6a(int16_t arg4, int16_t arg1, int16_t arg2)
{
    char *unaff_SI;
    char *pcVar1;
    char *unaff_DI;
    char *unaff_ES;
    char *pcVar2;
    char *unaff_DS;
    int16_t in_stack_00000000;
    
    do {
        pcVar1 = unaff_SI;
        pcVar2 = unaff_ES;
        if (*unaff_SI != '\0') {
            fcn.00000641(unaff_DI);
            pcVar1 = unaff_DS;
            unaff_DI = unaff_SI;
            pcVar2 = (char *)arg4;
            unaff_DS = unaff_ES;
        }
        unaff_SI = pcVar1 + 1;
        *(char *)0x506e = *(char *)0x506e + '\x01';
        arg4 = in_stack_00000000 + -1;
        unaff_ES = pcVar2;
    } while ((char *)arg4 != (char *)0x0);
    return;
}

/* ====================================================================== */
/* 0x641: fcn.00000641 */
/* ====================================================================== */


undefined4 fcn.00000641(void)
{
    undefined2 *puVar1;
    undefined uVar2;
    undefined uVar3;
    undefined uVar5;
    undefined uVar6;
    uint16_t uVar4;
    int16_t iVar7;
    undefined2 *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x205);
    iVar7 = 8;
    do {
        puVar1 = unaff_SI + 1;
        uVar5 = (undefined)((uint16_t)*unaff_SI >> 8);
        uVar2 = (undefined)*unaff_SI;
        unaff_SI = unaff_SI + 2;
        uVar6 = (undefined)((uint16_t)*puVar1 >> 8);
        uVar3 = (undefined)*puVar1;
        out(0x3ce, 3);
        out(0x3ce, 8);
        uVar4 = CONCAT11(uVar2, uVar5) | CONCAT11(uVar3, uVar6);
        uVar4 = uVar4 | uVar4 << 1 | (uVar4 & 0x7fff) >> 1;
        out(0x3cf, (char)(uVar4 >> 8));
        LOCK();
        *unaff_DI = 0;
        UNLOCK();
        out(0x3cf, (char)uVar4);
        LOCK();
        unaff_DI[1] = 0;
        UNLOCK();
        out(0x3ce, 0x1003);
        out(0x3ce, 8);
        out(0x3cf, uVar2);
        LOCK();
        *unaff_DI = *(undefined *)0x5067;
        UNLOCK();
        out(0x3cf, uVar5);
        LOCK();
        unaff_DI[1] = *(undefined *)0x5067;
        UNLOCK();
        out(0x3cf, uVar3);
        LOCK();
        *unaff_DI = *(undefined *)0x5068;
        UNLOCK();
        out(0x3cf, uVar6);
        LOCK();
        unaff_DI[1] = *(undefined *)0x5068;
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
/* 0x787: fcn.00000787 */
/* ====================================================================== */


void fcn.00000787(void)
{
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    
    out(0x3c4, 0x702);
    *unaff_DI = 0;
    unaff_DI[1] = 0;
    unaff_DI[2] = 0;
    unaff_DI[3] = 0;
    unaff_DI[4] = 0;
    unaff_DI[5] = 0;
    unaff_DI[6] = 0;
    unaff_DI[7] = 0;
    return;
}

/* ====================================================================== */
/* 0x12ea: fcn.000012ea */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000012ea(int16_t arg3, int16_t arg1)
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
    out(0x3ce, CONCAT11(-((uint8_t)(*(char *)0x5078 - 1U) >> 2 & 1) ^ 0xcc, 8));
    if ((char)arg1 != '\0') {
        iVar1 = (arg1 & 0xffU) * 0x30 + -0x8000;
        out(0x3c4, 2);
        uVar2 = CONCAT11((char)((uint16_t)iVar1 >> 8), *(undefined *)0x5078) & 0xff03;
        fcn.000013b5(CONCAT11((char)(uVar2 >> 8), '\x03' - (char)uVar2));
        fcn.00001359(iVar1);
        fcn.000013b5(CONCAT11(extraout_AH, *(undefined *)0x5078));
        fcn.00001359();
        return;
    }
    out(0x3c4, 0x702);
    uVar2 = CONCAT11(7, *(undefined *)0x5078) & 0xff03;
    fcn.000013b5(CONCAT11((char)(uVar2 >> 8), '\x03' - (char)uVar2));
    fcn.000013a6(arg3);
    fcn.000013b5(CONCAT11(extraout_AH_00, *(undefined *)0x5078));
    fcn.000013a6();
    return;
}

/* ====================================================================== */
/* 0x13b5: fcn.000013b5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined fcn.000013b5(int16_t arg1)
{
    return *(undefined *)((uint8_t)(((uint8_t)arg1 & 3) * '\x02') + 0x43c9);
}

/* ====================================================================== */
/* 0x1359: fcn.00001359 */
/* ====================================================================== */


undefined fcn.00001359(void)
{
    undefined uVar1;
    int16_t iVar2;
    undefined2 in_DX;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 2;
    do {
        out(in_DX, 1);
        LOCK();
        *unaff_DI = *unaff_SI;
        UNLOCK();
        out(in_DX, 2);
        LOCK();
        *unaff_DI = unaff_SI[2];
        UNLOCK();
        out(in_DX, 4);
        LOCK();
        uVar1 = *unaff_DI;
        *unaff_DI = unaff_SI[4];
        UNLOCK();
        unaff_DI = unaff_DI + 0x140;
        unaff_SI = unaff_SI + 0x18;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return uVar1;
}

/* ====================================================================== */
/* 0x13a6: fcn.000013a6 */
/* ====================================================================== */


undefined fcn.000013a6(void)
{
    undefined uVar1;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    LOCK();
    *unaff_DI = 0;
    UNLOCK();
    LOCK();
    uVar1 = unaff_DI[0x140];
    unaff_DI[0x140] = 0;
    UNLOCK();
    return uVar1;
}

/* ====================================================================== */
/* 0x1614: fcn.00001614 */
/* ====================================================================== */


undefined4 fcn.00001614(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    undefined *puVar4;
    undefined *puVar5;
    undefined *puVar6;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x1803);
    out(0x3ce, 0x205);
    puVar4 = (undefined *)0x46c;
    iVar1 = 8;
    do {
        iVar2 = 0x12;
        puVar6 = puVar4;
        do {
            iVar3 = 0x38;
            puVar5 = puVar6;
            do {
                LOCK();
                *puVar5 = 2;
                UNLOCK();
                puVar5 = puVar5 + 1;
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            puVar6 = puVar6 + 0x280;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar4 = puVar4 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    out(0x3ce, 3);
    out(0x3ce, 5);
    return 0x3ce0005;
}

/* ====================================================================== */
/* 0x1404: fcn.00001404 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x0000141a: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000141d)

void fcn.00001404(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    uint8_t uVar4;
    int16_t arg3;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t iStack_2;
    
    arg3 = CONCAT11(*(char *)0x5068 + -1, *(char *)0x5067 + -1);
    iStack_2 = 0x141d;
    iVar2 = 9;
    iVar1 = CONCAT11(*(char *)0x5068 + '\x18', *(char *)0x5067 + '\x18');
    do {
        iVar1 = fcn.0000147e(iVar1, arg3);
        uVar4 = (uint8_t)((uint16_t)iVar2 >> 8);
        cVar3 = (uint8_t)iVar2 + 0xc;
        if (0xf3 < (uint8_t)iVar2) {
            cVar3 = -1;
        }
        arg3 = CONCAT11(uVar4 + 0xc, cVar3);
        if (0xf3 < uVar4) {
            arg3 = CONCAT11(0xff, cVar3);
        }
        fcn.000015e1(iVar1);
        iVar2 = in_stack_00000000 + -1;
        iVar1 = iStack_2;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x147e: fcn.0000147e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000147e(int16_t arg2, int16_t arg3)
{
    int16_t iVar1;
    int16_t in_stack_00000000;
    undefined2 in_stack_00000002;
    int16_t in_stack_00000004;
    
    out(0x3c4, 0x702);
    out(0x3ce, 0x205);
    fcn.00001522(CONCAT11((char)((uint16_t)arg3 >> 8), (char)arg2));
    iVar1 = fcn.00001522(in_stack_00000000);
    iVar1 = fcn.000014bf(iVar1, CONCAT11((char)((uint16_t)in_stack_00000002 >> 8), (char)in_stack_00000000));
    fcn.000014bf(iVar1, in_stack_00000004);
    out(0x3ce, 5);
    out(0x3ce, 0xff08);
    return 0x3ceff08;
}

/* ====================================================================== */
/* 0x1522: fcn.00001522 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00001522(int16_t arg2)
{
    undefined uVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    int16_t iVar3;
    uint8_t extraout_DL;
    uint8_t uVar4;
    uint16_t uVar5;
    uint8_t uVar6;
    uint16_t in_BX;
    int16_t unaff_DI;
    undefined *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    uVar5 = arg2;
    if ((uint8_t)arg2 < (uint8_t)in_BX) {
        uVar5 = in_BX;
        in_BX = arg2;
    }
    uVar2 = (uint8_t)(in_BX >> 8);
    if (uVar2 == 0) {
        return CONCAT22(uVar5, in_AX);
    }
    if (0x8e < uVar2) {
        return CONCAT22(uVar5, in_AX);
    }
    if ((char)in_BX == '\0') {
        in_BX = CONCAT11(uVar2, 1);
    }
    fcn.000015d7(CONCAT11((char)((uint16_t)in_AX >> 8), (char)(in_BX >> 8)));
    uVar2 = (uint8_t)in_BX >> 2;
    puVar7 = (undefined *)(unaff_DI + (uint16_t)uVar2);
    uVar2 = (extraout_DL >> 2) - uVar2;
    uVar6 = (uint8_t)in_BX & 3;
    if ((in_BX & 3) == 0) {
        uVar6 = 0xff;
    } else if (uVar6 < 2) {
        uVar6 = 0x3f;
    } else if (uVar6 == 2) {
        uVar6 = 0xf;
    } else {
        uVar6 = 3;
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
    out(0x3ce, 8);
    if (uVar2 != 0) {
        iVar3 = uVar2 - 1;
        if (iVar3 != 0) {
            out(0x3cf, uVar6);
            LOCK();
            *puVar7 = *(undefined *)0x5078;
            UNLOCK();
            puVar7 = puVar7 + 1;
            out(0x3cf, 0xff);
            do {
                LOCK();
                *puVar7 = *(undefined *)0x5078;
                UNLOCK();
                puVar7 = puVar7 + 1;
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            out(0x3cf, uVar4);
            LOCK();
            uVar1 = *puVar7;
            *puVar7 = *(undefined *)0x5078;
            UNLOCK();
            return CONCAT22(0x3cf, CONCAT11(uVar4, uVar1));
        }
        out(0x3cf, uVar6);
        LOCK();
        *puVar7 = *(undefined *)0x5078;
        UNLOCK();
        out(0x3cf, uVar4);
        LOCK();
        uVar1 = puVar7[1];
        puVar7[1] = *(undefined *)0x5078;
        UNLOCK();
        return CONCAT22(0x3cf, CONCAT11(uVar4, uVar1));
    }
    out(0x3cf, uVar6 & uVar4);
    LOCK();
    uVar1 = *puVar7;
    *puVar7 = *(undefined *)0x5078;
    UNLOCK();
    return CONCAT22(0x3cf, CONCAT11(uVar4, uVar1));
}

/* ====================================================================== */
/* 0x14bf: fcn.000014bf */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.000014bf(int16_t arg1, int16_t arg2)
{
    undefined uVar2;
    undefined2 uVar1;
    uint16_t uVar3;
    uint8_t uVar4;
    uint16_t in_BX;
    int16_t unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    
    uVar3 = arg2;
    if ((uint8_t)((uint16_t)arg2 >> 8) < (uint8_t)(in_BX >> 8)) {
        uVar3 = in_BX;
        in_BX = arg2;
    }
    uVar4 = (uint8_t)in_BX;
    if (uVar4 == 0) {
        return CONCAT22(uVar3, arg1);
    }
    if (0xde < uVar4) {
        return CONCAT22(uVar3, arg1);
    }
    if ((char)(in_BX >> 8) == '\0') {
        in_BX = CONCAT11(1, uVar4);
    }
    fcn.000015d7(CONCAT11((char)((uint16_t)arg1 >> 8), (char)(in_BX >> 8)));
    puVar5 = (undefined *)(unaff_DI + (uint16_t)(uint8_t)((uint8_t)in_BX >> 2));
    in_stack_00000000 = in_stack_00000000 & 0xff;
    uVar4 = (uint8_t)in_BX & 3;
    if ((in_BX & 3) == 0) {
        uVar2 = 0xc0;
    } else if (uVar4 < 2) {
        uVar2 = 0x30;
    } else if (uVar4 == 2) {
        uVar2 = 0xc;
    } else {
        uVar2 = 3;
    }
    uVar1 = CONCAT11(uVar2, 8);
    out(0x3ce, uVar1);
    do {
        LOCK();
        uVar2 = *puVar5;
        *puVar5 = *(undefined *)0x5078;
        uVar1 = CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2);
        UNLOCK();
        puVar5 = puVar5 + 0x50;
        in_stack_00000000 = in_stack_00000000 - 1;
    } while (in_stack_00000000 != 0);
    return CONCAT22(0x3ce, uVar1);
}

/* ====================================================================== */
/* 0x15e1: fcn.000015e1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000015e1(int16_t arg1)
{
    undefined2 unaff_DS;
    uint16_t uVar1;
    
    uVar1 = (uint16_t)(uint8_t)((*(uint8_t *)0xff33 >> 1) + 1);
    do {
        (*_fcn.00000110)(uVar1);
        uVar1 = 0x15f8;
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
            fcn.000016a9();
            *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
            pcVar1 = (char *)0x506d;
            *pcVar1 = *pcVar1 + -1;
            if (*pcVar1 == '\0') {
                return;
            }
            fcn.00000e7a((int16_t)pcStack_6);
            iVar3 = 0;
            pcVar5 = unaff_SI + 8;
            if (unaff_SI[7] < '\0') {
                fcn.0000041a(0);
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
            iVar3 = 0x508a;
            LOCK();
            cVar2 = pcVar7[7];
            pcVar7[7] = -2;
            UNLOCK();
            *(char *)0x508a = cVar2;
            LOCK();
            cVar2 = pcVar7[0x23];
            pcVar7[0x23] = -1;
            UNLOCK();
            *(char *)0x508b = cVar2;
            cVar2 = pcVar4[7];
            pcVar4 = pcVar4 + 0x2c;
            pcStackY_a = (char *)0x531;
            fcn.000016a9(pcStack_6);
            pcVar7 = (char *)0x539;
            cVar2 = fcn.000007a0((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
            arg3 = (char *)CONCAT11(extraout_DL, cVar2);
            iVar3 = (int16_t)unaff_DI * 2 + *(int16_t *)0x5069;
            pcVar5 = pcVar4;
            if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar4, cVar2));
                unaff_DI = arg3;
                if (cVar2 < '\0') {
                    pcStackY_a = (char *)0x560;
                    uVar6 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
                arg3 = pcVar7;
                iVar3 = iStackY_c;
                pcVar5 = pcStackY_a;
                pcStack_6 = pcVar4;
            }
            if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                uVar6 = CONCAT22(iVar3 + 0x280, CONCAT11(pcVar5[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar6 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
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
                fcn.000016a9();
                *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
                pcVar1 = (char *)0x506d;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000e7a((int16_t)in_BX);
                iVar3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.0000041a(0);
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
                iVar3 = 0x508a;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x508a = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x508b = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x531;
                fcn.000016a9(in_BX, in_BX);
                pcVar8 = (char *)0x539;
                cVar2 = fcn.000007a0((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 2 + *(int16_t *)0x5069;
                in_BX = unaff_DI;
                if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    in_BX = pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x560;
                        uVar6 = fcn.00000799();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0x280, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.00000799();
                    }
                    fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
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
                fcn.000016a9();
                *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
                pcVar1 = (char *)0x506d;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000e7a((int16_t)in_BX);
                iVar3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.0000041a(0);
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
                iVar3 = 0x508a;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x508a = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x508b = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x531;
                fcn.000016a9(in_BX, in_BX);
                pcVar8 = (char *)0x539;
                cVar2 = fcn.000007a0((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 2 + *(int16_t *)0x5069;
                in_BX = unaff_DI;
                if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    in_BX = pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x560;
                        uVar6 = fcn.00000799();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0x280, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.00000799();
                    }
                    fcn.000005c3((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                }
            }
        } while (pcVar5[7] == pcVar4[7]);
    } while( true );
}

/* ====================================================================== */
/* 0x116: fcn.00000116 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    int16_t arg3_00;
    char *pcVar4;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        fcn.000016a9();
        *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
        pcVar1 = (char *)0x506d;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000e7a(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.0000041a(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x508a;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x508a = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x508b = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016a9();
            cVar2 = fcn.000007a0((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x5069);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x280, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.00000799();
                }
                in_stack_0000000a = (char *)0x590;
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x118: fcn.00000118 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    int16_t arg3_00;
    char *pcVar4;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        fcn.000016a9();
        *(int16_t *)0x5069 = *(int16_t *)0x5069 + 0x280;
        pcVar1 = (char *)0x506d;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000e7a(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.0000041a(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                fcn.00000128(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            fcn.00000128(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x508a;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x508a = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x508b = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016a9();
            cVar2 = fcn.000007a0((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x5069);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x508a != -1) && (*(char *)0x508a != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.00000799();
                }
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x506d != '\x01') && (*(char *)0x508b != -1)) && (*(char *)0x508b != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x280, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.00000799();
                }
                in_stack_0000000a = (char *)0x590;
                fcn.000005c3((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x15d7: fcn.000015d7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.000015d7(int16_t arg1)
{
    return (arg1 & 0xffU) * 0x50;
}

/* ====================================================================== */
/* 0x17ea: fcn.000017ea */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.000017ea(int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    undefined2 *puVar3;
    int16_t iVar4;
    undefined2 extraout_DX;
    undefined2 *puVar5;
    
    uVar2 = *(undefined2 *)0xff2c;
    puVar3 = (undefined2 *)((arg1 & 0xffU) * 0x30 + -0x8000);
    out(0x3c4, 2);
    iVar4 = 4;
    puVar5 = *(undefined2 **)0x5069;
    do {
        out(0x3c5, 1);
        *puVar5 = *puVar3;
        out(0x3c5, 2);
        *puVar5 = puVar3[1];
        out(0x3c5, 4);
        *puVar5 = puVar3[2];
        out(0x3c5, 1);
        puVar5[0x28] = puVar3[3];
        out(0x3c5, 2);
        puVar1 = puVar3 + 5;
        puVar5[0x28] = puVar3[4];
        out(0x3c5, 4);
        puVar3 = puVar3 + 6;
        puVar5[0x28] = *puVar1;
        puVar5 = puVar5 + 0x50;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    out(0x3c5, 7);
    out(0x3ce, 0xa05);
    (**(code **)((uint16_t)*(uint8_t *)0x5078 * 2 + 0x485c))();
    out(extraout_DX, 0xff08);
    out(extraout_DX, 0xf02);
    out(extraout_DX, 5);
    return 5;
}

/* ====================================================================== */
/* 0x18c8: fcn.000018c8 */
/* ====================================================================== */


void fcn.000018c8(void)
{
    undefined2 uVar1;
    int16_t iVar2;
    undefined2 in_DX;
    undefined in_BL;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    uVar1 = 8;
    iVar2 = 8;
    puVar3 = *(undefined **)0x5069;
    do {
        out(in_DX, CONCAT11(*puVar3, (char)uVar1));
        *puVar3 = in_BL;
        uVar1 = CONCAT11(puVar3[1], (char)uVar1);
        out(in_DX, uVar1);
        puVar3[1] = in_BL;
        puVar3 = puVar3 + 0x50;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1e07: fcn.00001e07 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00001e52) overlaps instruction at (ram,0x00001e51)
// 
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001e07(short unsigned int arg3, short unsigned int arg1)
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

