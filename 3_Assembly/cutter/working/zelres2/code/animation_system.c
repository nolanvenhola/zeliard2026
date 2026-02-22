/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x2b6 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x2d8 = "½þ{þQvvaGÜ"; // [ibm037]
static const char *STR_0x2f7 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x315 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x333 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x351 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x36f = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x38d = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x696 = "Z_^]FGE"; // [ascii]
static const char *STR_0x6bd = " JYJY»YaE"; // [ibm037]
static const char *STR_0x7c7 = "»BCvvaGÜ"; // [ibm037]
static const char *STR_0x7d6 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x7e6 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x7f6 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x806 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x816 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x826 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0xe40 = "ÄJYJY»YaE"; // [ibm037]
static const char *STR_0xee7 = " JYJY»YaE"; // [ibm037]
static const char *STR_0x105d = "6?R[_^"; // [ascii]
static const char *STR_0x14e9 = "$!ßSKC½"; // [ibm037]
static const char *STR_0x15c6 = "CR& 5&"; // [ascii]
static const char *STR_0x15ec = "CR& 5&"; // [ascii]
static const char *STR_0x160c = "CR& 5&"; // [ascii]
static const char *STR_0x199c = "TY]c2/."; // [ascii]
static const char *STR_0x19d2 = "4QV[_eg/-"; // [ascii]
static const char *STR_0x1a2e = "mno)&!\"*%!\""; // [ascii]
static const char *STR_0x1a68 = "muwyo+&)&"; // [ascii]
static const char *STR_0x1a85 = "vxz{12/-367<"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x0000005e) overlaps instruction at (ram,0x0000005d)
// 
// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000000(int16_t arg1, int16_t arg2, short unsigned int arg3)
{
    char *pcVar1;
    char cVar2;
    int16_t iVar3;
    undefined2 uVar4;
    undefined extraout_AH;
    int16_t in_AX;
    undefined2 in_CX;
    undefined extraout_DL;
    char *pcVar5;
    undefined2 in_DX;
    uint16_t arg3_00;
    int16_t iVar6;
    char *pcVar7;
    char *pcVar8;
    int16_t in_BX;
    uint8_t *puVar9;
    uint8_t *puVar10;
    char *pcVar11;
    char *pcVar12;
    undefined2 *unaff_SI;
    char *pcVar13;
    uint8_t *unaff_DI;
    int16_t unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar14;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    arg1._0_1_ = (uint8_t)in_AX;
    *(uint8_t *)0x26 = (uint8_t)arg1;
    *(char *)unaff_SI = *(char *)unaff_SI + (char)((uint16_t)in_CX >> 8);
    *(uint8_t *)0x723b = *(uint8_t *)0x723b ^ (uint8_t)arg1;
    iVar3 = in_AX + 1;
    if (iVar3 != 0 && SCARRY2(in_AX, 1) == iVar3 < 0) {
        out(in_DX, (char)iVar3);
        uVar4 = *unaff_SI;
        arg3_00 = 0;
        if ((*(uint8_t *)(unaff_SI + 1) & 0x80) != 0) {
            uVar14 = fcn.00000436(0);
            in_DX = (undefined2)((uint32_t)uVar14 >> 0x10);
            uVar4 = (undefined2)uVar14;
        }
        uVar14 = CONCAT22(in_DX, uVar4);
        puVar10 = (uint8_t *)((int16_t)unaff_SI + 3);
        iVar3 = 6;
        goto code_r0x0000005e;
    }
    *(int16_t *)(unaff_DI + in_BX + 0x6e) = *(int16_t *)(unaff_DI + in_BX + 0x6e) - iVar3;
    iVar6 = CONCAT11((char)((uint16_t)in_BX >> 8), (uint8_t)in_BX ^ *unaff_DI);
    arg3_00 = iVar6 + 1;
    if ((POPCOUNT(arg3_00 & 0xff) & 1U) == 0) {
        unaff_DI[iVar6 + -9] = unaff_DI[iVar6 + -9] + (char)in_DX;
        arg1._0_1_ = (char)iVar3 + 0x80;
        uVar4 = CONCAT11((char)((uint16_t)iVar3 >> 8), (uint8_t)arg1);
        puVar9 = (uint8_t *)((int16_t)unaff_SI + 1);
        iVar3 = unaff_ES;
        while( true ) {
            uVar14 = CONCAT22(in_DX, uVar4);
            if ((uint8_t)arg1 != 0) {
                uVar14 = fcn.00000473(arg3_00);
            }
            iVar6 = arg3_00 + 1;
            if ((puVar9[1] & 0x80) != 0) {
                uVar14 = fcn.00000473(iVar6);
            }
            iVar6 = iVar6 + 1;
            if ((puVar9[2] & 0x80) != 0) {
                uVar14 = fcn.00000473(iVar6);
            }
            iVar6 = iVar6 + 1;
            if ((puVar9[3] & 0x80) != 0) {
                uVar14 = fcn.00000473(iVar6);
            }
            puVar10 = puVar9 + 4;
            arg3_00 = iVar6 + 1;
            iVar3 = iVar3 + -1;
            if (iVar3 == 0) break;
code_r0x0000005e:
            in_DX = (undefined2)((uint32_t)uVar14 >> 0x10);
            uVar4 = (undefined2)uVar14;
            arg1._0_1_ = *puVar10 & 0x80;
            puVar9 = puVar10;
        }
        if ((*puVar10 & 0x80) != 0) {
            uVar14 = fcn.00000473(arg3_00);
        }
        iVar3 = arg3_00 + 1;
        if ((puVar9[5] & 0x80) != 0) {
            uVar14 = fcn.00000473(iVar3);
        }
        iVar3 = iVar3 + 1;
        if ((puVar9[6] & 0x80) != 0) {
            uVar14 = fcn.00000473(iVar3);
        }
        if ((puVar9[7] & 0x80) != 0) {
            uVar14 = fcn.000004b9();
        }
        pcVar11 = *(char **)0xff31;
        pcVar13 = (char *)0xe900;
        *(undefined *)0x5237 = 0x12;
        do {
            fcn.00000f4a(iVar3, (int16_t)uVar14, (int16_t)((uint32_t)uVar14 >> 0x10));
            iVar3 = 0;
            pcVar5 = pcVar11 + 4;
            if (pcVar11[3] < '\0') {
                fcn.000004f1(0);
            }
            do {
                pcVar8 = pcVar13;
                pcVar12 = pcVar5;
                if (*pcVar12 != *pcVar8) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar12[1] != pcVar8[1]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar12[2] != pcVar8[2]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                if (pcVar12[3] != pcVar8[3]) {
                    fcn.00000128(iVar3);
                }
                iVar3 = iVar3 + 1;
                pcVar5 = pcVar12 + 4;
                pcVar13 = pcVar8 + 4;
            } while (in_stack_00000006 != (char *)0x1);
            if (pcVar12[4] != pcVar8[4]) {
                in_stack_00000006 = (char *)0xf4;
                fcn.00000128(iVar3);
            }
            iVar3 = iVar3 + 1;
            if (pcVar12[5] != pcVar8[5]) {
                fcn.00000128(iVar3);
            }
            iVar3 = iVar3 + 1;
            if (pcVar12[6] != pcVar8[6]) {
                fcn.00000128(iVar3);
            }
            iVar3 = iVar3 + 1;
            pcVar11 = pcVar12 + 8;
            pcVar13 = pcVar8 + 8;
            if (pcVar12[7] < '\0') {
                iVar3 = 0x5255;
                LOCK();
                cVar2 = pcVar8[7];
                pcVar8[7] = -2;
                UNLOCK();
                *(char *)0x5255 = cVar2;
                LOCK();
                cVar2 = pcVar8[0x23];
                pcVar8[0x23] = -1;
                UNLOCK();
                *(char *)0x5256 = cVar2;
                cVar2 = pcVar12[7];
                pcVar12 = pcVar12 + 0x2c;
                fcn.000016f1();
                cVar2 = fcn.00000852((int16_t)pcVar11, (int16_t)pcVar13, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar7 = (char *)CONCAT11(extraout_DL, cVar2);
                pcVar5 = (char *)((int16_t)pcVar13 * 4 + *(int16_t *)0x5231);
                pcVar8 = pcVar7;
                in_stack_00000006 = pcVar13;
                if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                    uVar14 = CONCAT22(pcVar5, CONCAT11(*pcVar12, cVar2));
                    pcVar13 = pcVar7;
                    if (cVar2 < '\0') {
                        uVar14 = fcn.0000084b();
                    }
                    fcn.000006a1((int16_t)uVar14, (int16_t)((uint32_t)uVar14 >> 0x10), (int16_t)pcVar13);
                    pcVar5 = pcVar7;
                    pcVar8 = in_stack_0000000a;
                    pcVar12 = pcVar11;
                    in_stack_00000006 = pcVar7;
                }
                iVar3 = in_stack_0000000c;
                pcVar11 = in_stack_00000010;
                pcVar13 = in_stack_0000000e;
                if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                    uVar14 = CONCAT22(pcVar5 + 0x140, CONCAT11(pcVar12[2], (char)((uint16_t)pcVar8 >> 8)));
                    if ((int16_t)pcVar8 < 0) {
                        uVar14 = fcn.0000084b();
                    }
                    in_stack_0000000a = (char *)0x66d;
                    fcn.000006a1((int16_t)uVar14, (int16_t)((uint32_t)uVar14 >> 0x10), (int16_t)pcVar8);
                }
            } else if (pcVar12[7] != pcVar8[7]) {
                fcn.00000128(iVar3);
            }
            pcVar11 = pcVar11 + 4;
            uVar14 = fcn.000016f1();
            *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
            pcVar1 = (char *)0x5237;
            *pcVar1 = *pcVar1 + -1;
        } while (*pcVar1 != '\0');
        return;
    }
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x436: fcn.00000436 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000436(int16_t arg3)
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
    fcn.000016f1(arg3);
    uVar1 = extraout_AH;
    if ((char)unaff_SI[0x25] < '\0') {
        uVar1 = 0;
        fcn.0000084b();
    }
    fcn.00000852(in_stack_00000002, in_stack_00000000, arg3, CONCAT11(uVar1, uVar2));
    fcn.000006a1(CONCAT11(unaff_SI[0x28], (char)in_stack_00000000), 0x41f8, arg3);
    return;
}

/* ====================================================================== */
/* 0x16f1: fcn.000016f1 */
/* ====================================================================== */


void fcn.000016f1(void)
{
    uint16_t unaff_SI;
    
    if (unaff_SI < 0xe900) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x84b: fcn.0000084b */
/* ====================================================================== */


undefined fcn.0000084b(void)
{
    uint8_t in_AL;
    
    return *(undefined *)(uint32_t)((in_AL & 0x7f) + 0xed20);
}

/* ====================================================================== */
/* 0x852: fcn.00000852 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 fcn.00000852(int16_t arg_6h, int16_t arg_4h, int16_t arg3, int16_t arg1)
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
    *(char *)0x523a = cVar3;
    return CONCAT11((char)((uint16_t)pcVar5 >> 8), uVar1);
}

/* ====================================================================== */
/* 0x6a1: fcn.000006a1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000006a1(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 unaff_DS;
    
    uVar2 = *(uint8_t *)0x523a;
    cVar1 = (char)arg1;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar2 = uVar2 | 0x80;
    }
    *(undefined2 *)0x522f = *(undefined2 *)((uint16_t)(uVar2 & 0x7f) * 2 + 0x51d2);
    if (-1 < (char)uVar2) {
        fcn.0000075d(arg2);
        fcn.000007ca();
        return;
    }
    fcn.00000719(CONCAT11((char)((uint16_t)*(undefined2 *)0x522f >> 8), cVar1));
    fcn.000007ca();
    return;
}

/* ====================================================================== */
/* 0x473: fcn.00000473 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000473(int16_t arg3)
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
    *(undefined *)0x5255 = uVar2;
    *(undefined *)0x5256 = 0;
    *(undefined *)(arg3 + -0x16ff) = 0xff;
    uVar2 = *unaff_SI;
    fcn.000016f1(arg3);
    uVar1 = *(undefined2 *)(unaff_SI + 0x24);
    *(undefined2 *)0x5259 = uVar1;
    fcn.00000852(in_stack_00000002, in_stack_00000000, 0x5259, CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2));
    fcn.00000673();
    return;
}

/* ====================================================================== */
/* 0x673: fcn.00000673 */
/* ====================================================================== */


void fcn.00000673(void)
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
            uVar1 = fcn.0000084b(0x676);
            in_DX = (int16_t)((uint32_t)uVar1 >> 0x10);
            arg1 = (int16_t)uVar1;
        }
        fcn.000006a1(arg1, in_DX, in_BX);
    }
    return;
}

/* ====================================================================== */
/* 0x4b9: fcn.000004b9 */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000004b9(undefined2 param_1, int16_t param_2, int16_t param_3)
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
    fcn.000016f1();
    uVar2 = extraout_AH;
    if ((char)unaff_SI[0x24] < '\0') {
        uVar2 = 0;
        fcn.0000084b();
    }
    fcn.00000852(param_3, param_2, in_BX, CONCAT11(uVar2, uVar3));
    cVar1 = (char)param_2;
    uVar4 = *(uint8_t *)0x523a;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar4 = uVar4 | 0x80;
    }
    *(undefined2 *)0x522f = *(undefined2 *)((uint16_t)(uVar4 & 0x7f) * 2 + 0x51d2);
    if (-1 < (char)uVar4) {
        fcn.0000075d();
        fcn.000007ca();
        return;
    }
    fcn.00000719(CONCAT11((char)((uint16_t)*(undefined2 *)0x522f >> 8), cVar1));
    fcn.000007ca();
    return;
}

/* ====================================================================== */
/* 0xf4a: fcn.00000f4a */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000f63: Changing call to branch
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000f4a(int16_t arg3, int16_t arg1, int16_t arg2)
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
    uint8_t *puVar9;
    uint16_t *puVar10;
    uint16_t *puVar11;
    int16_t iVar12;
    int16_t unaff_DS;
    undefined4 uVar13;
    int16_t iVar14;
    uint16_t *puVar15;
    
    uVar4 = 0x12 - *(char *)0x5237;
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
                fcn.000010e3(CONCAT11((char)((uint16_t)arg1 >> 8), uVar5), CONCAT11((char)((uint16_t)in_CX >> 8), uVar4)
                            );
                fcn.0000108f();
                uVar3 = *(undefined2 *)0xff2c;
                *(undefined2 *)0x523b = *(undefined2 *)((uint16_t)(uint8_t)(*(char *)0x92 - 1) * 2 + 0x4264);
                iVar12 = 4;
                puVar9 = *(uint8_t **)0x523f;
                puVar11 = *(uint16_t **)0x523d;
                do {
                    iVar6 = 4;
                    puVar15 = puVar11;
                    do {
                        puVar1 = puVar9;
                        puVar9 = puVar9 + 1;
                        if (*puVar1 == 0xff) {
                            puVar11 = puVar11 + 0xa0;
                        } else {
                            puVar8 = (undefined2 *)((uint16_t)*puVar1 * 0x10 + *(int16_t *)0xb000);
                            puVar10 = puVar11;
                            do {
                                puVar2 = puVar8;
                                puVar8 = puVar8 + 1;
                                uVar13 = fcn.000011d3(CONCAT11((char)*puVar2, (char)((uint16_t)*puVar2 >> 8)));
                                *puVar10 = *puVar10 & ~unaff_BP;
                                *puVar10 = *puVar10 | (uint16_t)((uint32_t)uVar13 >> 0x10);
                                fcn.000011d3((int16_t)uVar13);
                                puVar10[1] = puVar10[1] & unaff_BP;
                                puVar10[1] = puVar10[1] | extraout_DX;
                                puVar11 = puVar10 + 0x1000;
                                if ((uint16_t *)0x7fff < puVar11) {
                                    puVar11 = puVar10 + -0x2fb0;
                                }
                                puVar10 = puVar11;
                            } while (iVar6 != 1);
                        }
                        iVar6 = iVar12 + -1;
                    } while (iVar6 != 0);
                    puVar11 = puVar15 + 2;
                    iVar12 = unaff_DS + -1;
                } while (iVar12 != 0);
                return;
            }
            return;
        }
        fcn.00001076(arg3);
    }
    if (*(char *)0xff37 == '\0') {
        *(undefined *)0xff37 = 0xff;
        iVar6 = 3;
        iVar12 = *(int16_t *)0x5233;
        do {
            iVar7 = 3;
            do {
                iVar14 = iVar7;
                fcn.000007ca(iVar12, iVar7, iVar6, arg3);
                iVar12 = iVar14 + 4;
                iVar7 = iVar6 + -1;
            } while (iVar7 != 0);
            iVar12 = iVar14 + 0x138;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x1076: fcn.00001076 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001076(int16_t arg3)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xff44 == '\0') {
        return;
    }
    fcn.000010bb(arg3);
    *(undefined *)0xff44 = 0;
    return;
}

/* ====================================================================== */
/* 0x10bb: fcn.000010bb */
/* ====================================================================== */


void fcn.000010bb(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    undefined2 *puVar7;
    undefined2 unaff_DS;
    
    puVar5 = (undefined2 *)0x5362;
    iVar3 = 0x20;
    puVar7 = *(undefined2 **)0x523d;
    do {
        puVar6 = puVar7;
        for (iVar4 = 8; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar7 = puVar6 + 0xff8;
        if ((undefined2 *)0x7fff < puVar7) {
            puVar7 = puVar6 + -0x2fb8;
        }
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x10e3: fcn.000010e3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000010e3(int16_t arg1, int16_t arg4)
{
    int16_t iVar1;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    puVar2 = (uint8_t *)
             ((uint16_t)(*(char *)0x84 + *(char *)0x5241 & 0x3f) * 0x24 +
              (uint16_t)(uint8_t)(*(char *)0x83 + *(char *)0x5242 + 4) + *(int16_t *)0xff31);
    fcn.000016f1();
    do {
        iVar1 = 4;
        do {
            puVar3 = puVar2;
            *(undefined2 *)((uint16_t)(*puVar3 & 0x7f) * 2 + 0x5262) = 0;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        puVar2 = puVar3 + 0x21;
        fcn.000016f1();
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0x108f: fcn.0000108f */
/* ====================================================================== */


void fcn.0000108f(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    undefined2 *puVar7;
    undefined2 unaff_CS;
    
    puVar7 = (undefined2 *)0x5362;
    iVar3 = 0x20;
    puVar6 = *(undefined2 **)0x523d;
    do {
        puVar5 = puVar6;
        for (iVar4 = 8; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar7;
            puVar7 = puVar7 + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar6 = puVar5 + 0xff8;
        if ((undefined2 *)0x7fff < puVar6) {
            puVar6 = puVar5 + -0x2fb8;
        }
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x11d3: fcn.000011d3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.000011d3(int16_t arg1)
{
    uint16_t uVar1;
    char cVar2;
    uint8_t uVar3;
    
    uVar1 = 0;
    cVar2 = CARRY2(arg1, arg1) * '\x02' + CARRY2(arg1 * 2, arg1 * 2);
    if (cVar2 != '\0') {
        uVar3 = *(uint8_t *)0x523c;
        if (cVar2 != '\x03') {
            uVar3 = *(uint8_t *)0x523b;
        }
        uVar1 = (CONCAT11(uVar3, cVar2) & 0xf0ff) >> 8;
    }
    cVar2 = CARRY2(arg1 * 4, arg1 * 4) * '\x02' + CARRY2(arg1 * 8, arg1 * 8);
    if (cVar2 != '\0') {
        uVar3 = *(uint8_t *)0x523c;
        if (cVar2 != '\x03') {
            uVar3 = *(uint8_t *)0x523b;
        }
        uVar1 = (uint16_t)(uint8_t)((uint8_t)uVar1 | uVar3 & 0xf);
    }
    cVar2 = CARRY2(arg1 * 0x10, arg1 * 0x10) * '\x02' + CARRY2(arg1 * 0x20, arg1 * 0x20);
    if (cVar2 != '\0') {
        uVar3 = *(uint8_t *)0x523c;
        if (cVar2 != '\x03') {
            uVar3 = *(uint8_t *)0x523b;
        }
        uVar1 = CONCAT11(uVar3, (char)uVar1) & 0xf0ff;
    }
    cVar2 = CARRY2(arg1 * 0x40, arg1 * 0x40) * '\x02' + CARRY2(arg1 * 0x80, arg1 * 0x80);
    if (cVar2 == '\0') {
        return CONCAT22(uVar1, arg1 * 0x100);
    }
    uVar3 = *(uint8_t *)0x523c;
    if (cVar2 != '\x03') {
        uVar3 = *(uint8_t *)0x523b;
    }
    return CONCAT22(CONCAT11((uint8_t)(uVar1 >> 8) | uVar3 & 0xf, (char)uVar1), arg1 * 0x100);
}

/* ====================================================================== */
/* 0x7ca: fcn.000007ca */
/* ====================================================================== */


void fcn.000007ca(void)
{
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar1;
    undefined2 *puVar2;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    *unaff_DI = *unaff_SI;
    unaff_DI[1] = unaff_SI[1];
    puVar2 = unaff_DI + 0x1000;
    if ((undefined2 *)0x7fff < puVar2) {
        puVar2 = unaff_DI + -0x2fb0;
    }
    *puVar2 = unaff_SI[2];
    puVar2[1] = unaff_SI[3];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x7fff < puVar1) {
        puVar1 = puVar2 + -0x2fb0;
    }
    *puVar1 = unaff_SI[4];
    puVar1[1] = unaff_SI[5];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x7fff < puVar2) {
        puVar2 = puVar1 + -0x2fb0;
    }
    *puVar2 = unaff_SI[6];
    puVar2[1] = unaff_SI[7];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x7fff < puVar1) {
        puVar1 = puVar2 + -0x2fb0;
    }
    *puVar1 = unaff_SI[8];
    puVar1[1] = unaff_SI[9];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x7fff < puVar2) {
        puVar2 = puVar1 + -0x2fb0;
    }
    *puVar2 = unaff_SI[10];
    puVar2[1] = unaff_SI[0xb];
    puVar1 = puVar2 + 0x1000;
    if ((undefined2 *)0x7fff < puVar1) {
        puVar1 = puVar2 + -0x2fb0;
    }
    *puVar1 = unaff_SI[0xc];
    puVar1[1] = unaff_SI[0xd];
    puVar2 = puVar1 + 0x1000;
    if ((undefined2 *)0x7fff < puVar2) {
        puVar2 = puVar1 + -0x2fb0;
    }
    *puVar2 = unaff_SI[0xe];
    puVar2[1] = unaff_SI[0xf];
    return;
}

/* ====================================================================== */
/* 0x4f1: fcn.000004f1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.000004f1(int16_t arg3)
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
    
    iVar3 = 0x5255;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 0xff;
    UNLOCK();
    *(undefined *)0x5255 = uVar1;
    LOCK();
    uVar1 = unaff_DI[0x1c];
    unaff_DI[0x1c] = 0xff;
    UNLOCK();
    *(undefined *)0x5256 = uVar1;
    uVar1 = unaff_SI[-1];
    arg_6h = unaff_SI;
    fcn.000016f1(arg3, arg3);
    fcn.00000852((int16_t)arg_6h, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, uVar1));
    puVar4 = unaff_SI + 0x25;
    iVar2 = (int16_t)unaff_DI * 4 + *(int16_t *)0x5231;
    iVar3 = extraout_DX;
    if ((*(char *)0x5255 != -1) && (iVar3 = extraout_DX, *(char *)0x5255 != -4)) {
        uVar5 = CONCAT22(iVar2, CONCAT11(*puVar4, (char)extraout_DX));
        iVar3 = extraout_DX;
        iVar6 = extraout_DX;
        if ((char)extraout_DX < '\0') {
            iVar6 = extraout_DX;
            uVar5 = fcn.0000084b(iVar2, puVar4);
        }
        puVar4 = arg_6h;
        iVar2 = iVar6;
        fcn.000006a1((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
        iVar3 = in_stack_00000000;
    }
    if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
        uVar5 = CONCAT22(iVar2 + 0x140, CONCAT11(puVar4[2], (char)((uint16_t)iVar3 >> 8)));
        if (iVar3 < 0) {
            uVar5 = fcn.0000084b();
        }
        fcn.000006a1((int16_t)uVar5, (int16_t)((uint32_t)uVar5 >> 0x10), iVar3);
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
        *(undefined2 *)0x5255 = uVar2;
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + 0x1b);
        *(undefined2 *)(unaff_DI + 0x1b) = 0xffff;
        UNLOCK();
        *(undefined2 *)0x5257 = uVar2;
        uVar6 = unaff_SI[-1];
        iVar7 = 0x5259;
        *(undefined *)0x525a = *unaff_SI;
        arg_4h = unaff_SI;
        fcn.000016f1(arg3);
        uVar2 = *(undefined2 *)(unaff_SI + 0x23);
        *(undefined2 *)(iVar7 + 2) = uVar2;
        *(undefined *)0x5238 = (char)arg3;
        *(char *)0x5239 = '\x12' - *(char *)0x5237;
        uVar6 = fcn.00000852(in_stack_00000000, (int16_t)arg_4h, iVar7, CONCAT11((char)((uint16_t)uVar2 >> 8), uVar6));
        *(undefined *)0x5259 = uVar6;
        fcn.00000673();
        if (*(char *)0x5237 != '\x01') {
            iVar7 = fcn.00000673();
            if ((*(char *)0xff34 != '\0') && (*(char *)0xff2f != '\0')) {
                fcn.000008a3(iVar7);
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
            fcn.00000272(arg3, arg3 * 4 + *(int16_t *)0x5231, CONCAT11((char)((uint16_t)in_AX >> 8), cVar4));
        }
    }
    uVar5 = *(uint8_t *)0xc012 - 5;
    if (*(uint8_t *)0xc012 < 5) {
        return;
    }
    if (3 < uVar5) {
        return;
    }
    (**(code **)((uint16_t)uVar5 * 2 + 0x3172))(arg3);
    return;
}

/* ====================================================================== */
/* 0x272: fcn.00000272 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000272(int16_t arg3, int16_t arg2, int16_t arg1)
{
    undefined2 uVar1;
    int16_t iVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 *puVar5;
    undefined2 unaff_DS;
    
    if ((char)arg1 == '\0') {
        *(undefined2 *)arg2 = 0;
        *(undefined2 *)(arg2 + 2) = 0;
        puVar5 = (undefined2 *)(arg2 + 0x2000);
        if ((undefined2 *)0x7fff < puVar5) {
            puVar5 = (undefined2 *)(arg2 + -0x5f60);
        }
        *puVar5 = 0;
        puVar5[1] = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x7fff < puVar4) {
            puVar4 = puVar5 + -0x2fb0;
        }
        *puVar4 = 0;
        puVar4[1] = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x7fff < puVar5) {
            puVar5 = puVar4 + -0x2fb0;
        }
        *puVar5 = 0;
        puVar5[1] = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x7fff < puVar4) {
            puVar4 = puVar5 + -0x2fb0;
        }
        *puVar4 = 0;
        puVar4[1] = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x7fff < puVar5) {
            puVar5 = puVar4 + -0x2fb0;
        }
        *puVar5 = 0;
        puVar5[1] = 0;
        puVar4 = puVar5 + 0x1000;
        if ((undefined2 *)0x7fff < puVar4) {
            puVar4 = puVar5 + -0x2fb0;
        }
        *puVar4 = 0;
        puVar4[1] = 0;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x7fff < puVar5) {
            puVar5 = puVar4 + -0x2fb0;
        }
        *puVar5 = 0;
        puVar5[1] = 0;
        return;
    }
    iVar2 = (arg1 & 0xffU) * 2;
    if (*(int16_t *)(iVar2 + 0x5262) == 0) {
        *(int16_t *)(iVar2 + 0x5262) = arg2;
        uVar1 = *(undefined2 *)0xff2c;
        puVar5 = (undefined2 *)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x20 + -0x7fd0);
        iVar2 = 4;
        do {
            *(undefined2 *)arg2 = *puVar5;
            *(undefined2 *)(arg2 + 2) = puVar5[1];
            puVar4 = (undefined2 *)(arg2 + 0x2000);
            if ((undefined2 *)0x7fff < puVar4) {
                puVar4 = (undefined2 *)(arg2 + -0x5f60);
            }
            puVar3 = puVar5 + 3;
            *puVar4 = puVar5[2];
            puVar5 = puVar5 + 4;
            puVar4[1] = *puVar3;
            arg2 = (int16_t)(puVar4 + 0x1000);
            if ((undefined2 *)0x7fff < (uint16_t)arg2) {
                arg2 = (int16_t)(puVar4 + -0x2fb0);
            }
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        return;
    }
    puVar5 = *(undefined2 **)(iVar2 + 0x5262);
    *(undefined2 *)arg2 = *puVar5;
    *(undefined2 *)(arg2 + 2) = puVar5[1];
    puVar4 = (undefined2 *)(arg2 + 0x2000);
    if ((undefined2 *)0x7fff < puVar4) {
        puVar4 = (undefined2 *)(arg2 + -0x5f60);
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar5 + -0x2fb0;
    }
    *puVar4 = *puVar3;
    puVar4[1] = puVar3[1];
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x7fff < puVar5) {
        puVar5 = puVar4 + -0x2fb0;
    }
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar4) {
        puVar4 = puVar3 + -0x2fb0;
    }
    *puVar5 = *puVar4;
    puVar5[1] = puVar4[1];
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar5 + -0x2fb0;
    }
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x7fff < puVar5) {
        puVar5 = puVar4 + -0x2fb0;
    }
    *puVar3 = *puVar5;
    puVar3[1] = puVar5[1];
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar4) {
        puVar4 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar5 + -0x2fb0;
    }
    *puVar4 = *puVar3;
    puVar4[1] = puVar3[1];
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x7fff < puVar5) {
        puVar5 = puVar4 + -0x2fb0;
    }
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar4) {
        puVar4 = puVar3 + -0x2fb0;
    }
    *puVar5 = *puVar4;
    puVar5[1] = puVar4[1];
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar5 + -0x2fb0;
    }
    puVar5 = puVar4 + 0x1000;
    if ((undefined2 *)0x7fff < puVar5) {
        puVar5 = puVar4 + -0x2fb0;
    }
    *puVar3 = *puVar5;
    puVar3[1] = puVar5[1];
    puVar4 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar4) {
        puVar4 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar5 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar5 + -0x2fb0;
    }
    *puVar4 = *puVar3;
    puVar4[1] = puVar3[1];
    return;
}

/* ====================================================================== */
/* 0x8a3: fcn.000008a3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000008a3(int16_t arg1)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0xf < *(uint8_t *)0x5239) {
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x5238;
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
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x5239;
    if (uVar1 == 0xff) {
        uVar1 = 0;
    }
    puVar2[1] = uVar1;
    puVar2[2] = 3;
    uVar1 = (*_fcn.0000011a)();
    puVar2[3] = *(uint8_t *)(uint32_t)((uVar1 & 7) + 0x3915);
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
        uVar7 = fcn.000016f1();
        *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
        pcVar1 = (char *)0x5237;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000f4a(arg3, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004f1(0);
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
            arg3_00 = 0x5255;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5255 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x5256 = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016f1();
            cVar2 = fcn.00000852((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 4 + *(int16_t *)0x5231);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.0000084b();
                }
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x140, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.0000084b();
                }
                in_stack_0000000a = (char *)0x66d;
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x16fd: fcn.000016fd */
/* ====================================================================== */


void fcn.000016fd(void)
{
    uint16_t unaff_SI;
    
    if (0xdfff < unaff_SI) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x75d: fcn.0000075d */
/* ====================================================================== */


void fcn.0000075d(void)
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
        piVar1 = unaff_SI + 1;
        uVar4 = fcn.0000076d(*unaff_SI, in_DX);
        puVar2 = unaff_DI + 1;
        *unaff_DI = (int16_t)uVar4;
        unaff_SI = unaff_SI + 2;
        uVar4 = fcn.0000076d(*piVar1, (int16_t)((uint32_t)uVar4 >> 0x10));
        in_DX = (int16_t)((uint32_t)uVar4 >> 0x10);
        unaff_DI = unaff_DI + 2;
        *puVar2 = (int16_t)uVar4;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x76d: fcn.0000076d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.0000076d(int16_t arg1, int16_t arg2)
{
    return CONCAT11(*(char *)(((uint16_t)arg1 >> 0xc) + *(int16_t *)0x522f) << 4 |
                    *(uint8_t *)(((arg1 & 0xf0fU) >> 8) + *(int16_t *)0x522f), 
                    *(char *)(((uint16_t)arg1 >> 4 & 0xf) + *(int16_t *)0x522f) << 4 |
                    *(uint8_t *)((uint16_t)((uint8_t)arg1 & 0xf) + *(int16_t *)0x522f));
}

/* ====================================================================== */
/* 0x719: fcn.00000719 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000719(int16_t arg1)
{
    int16_t *piVar1;
    uint16_t uVar2;
    int16_t *unaff_BP;
    uint16_t *unaff_SI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar3;
    int16_t in_stack_00000008;
    
    uVar2 = fcn.0000083d();
    do {
        uVar3 = fcn.0000219f(uVar2);
        *unaff_SI = *unaff_SI & (uint16_t)uVar3;
        piVar1 = unaff_BP + 1;
        uVar2 = fcn.0000076d(*unaff_BP, (int16_t)((uint32_t)uVar3 >> 0x10));
        *unaff_SI = *unaff_SI | uVar2;
        uVar3 = fcn.0000219f(uVar2);
        unaff_SI[1] = unaff_SI[1] & (uint16_t)uVar3;
        unaff_BP = unaff_BP + 2;
        uVar2 = fcn.0000076d(*piVar1, (int16_t)((uint32_t)uVar3 >> 0x10));
        unaff_SI[1] = unaff_SI[1] | uVar2;
        unaff_SI = unaff_SI + 2;
    } while (in_stack_00000008 != 1);
    return;
}

/* ====================================================================== */
/* 0x83d: fcn.0000083d */
/* ====================================================================== */


void fcn.0000083d(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    for (iVar3 = 0x10; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x219f: fcn.0000219f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.0000219f(int16_t arg1)
{
    uint8_t uVar1;
    undefined uVar2;
    int16_t iVar3;
    uint8_t in_DL;
    bool bVar4;
    
    iVar3 = 4;
    do {
        bVar4 = CARRY1(in_DL, in_DL);
        in_DL = in_DL * '\x02';
        uVar2 = (undefined)((uint16_t)(arg1 * 0x10) >> 8);
        uVar1 = (uint8_t)(arg1 * 0x10) | -bVar4 & 0xfU;
        arg1 = CONCAT11(uVar2, uVar1);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return CONCAT11(uVar1, uVar2);
}

/* ====================================================================== */
/* 0xf1b: fcn.00000f1b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000f1b(int16_t arg1, int16_t arg4)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)
             ((uint16_t)*(uint8_t *)0x84 * 0x24 + (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0xff31);
    fcn.000016f1();
    puVar4 = (undefined2 *)0x5259;
    iVar3 = 3;
    do {
        puVar1 = puVar4 + 1;
        *puVar4 = *puVar2;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
        *(undefined *)puVar1 = *(undefined *)(puVar2 + 1);
        puVar2 = puVar2 + 0x12;
        fcn.000016f1();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xe71: fcn.00000e71 */
/* ====================================================================== */


uint8_t fcn.00000e71(void)
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
/* 0xe2b: fcn.00000e2b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000e2b(int16_t arg4, int16_t arg1, int16_t arg2)
{
    char *unaff_SI;
    char *unaff_ES;
    char *pcVar1;
    char *unaff_DS;
    int16_t in_stack_00000000;
    
    do {
        pcVar1 = unaff_ES;
        if (*unaff_SI != '\0') {
            fcn.0000072f((uint16_t)*(uint8_t *)0x5238 * 0x20 + 0x5562);
            unaff_SI = unaff_DS;
            pcVar1 = (char *)arg4;
            unaff_DS = unaff_ES;
        }
        unaff_SI = unaff_SI + 1;
        *(char *)0x5238 = *(char *)0x5238 + '\x01';
        arg4 = in_stack_00000000 + -1;
        unaff_ES = pcVar1;
    } while ((char *)arg4 != (char *)0x0);
    return;
}

/* ====================================================================== */
/* 0x72f: fcn.0000072f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000072f(int16_t arg1)
{
    int16_t *piVar1;
    uint16_t arg1_00;
    int16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar2;
    int16_t in_stack_00000006;
    
    do {
        uVar2 = fcn.0000219f(arg1);
        *unaff_DI = *unaff_DI & (uint16_t)uVar2;
        piVar1 = unaff_SI + 1;
        arg1_00 = fcn.0000076d(*unaff_SI, (int16_t)((uint32_t)uVar2 >> 0x10));
        *unaff_DI = *unaff_DI | arg1_00;
        uVar2 = fcn.0000219f(arg1_00);
        unaff_DI[1] = unaff_DI[1] & (uint16_t)uVar2;
        unaff_SI = unaff_SI + 2;
        arg1 = fcn.0000076d(*piVar1, (int16_t)((uint32_t)uVar2 >> 0x10));
        unaff_DI[1] = unaff_DI[1] | arg1;
        unaff_DI = unaff_DI + 2;
    } while (in_stack_00000006 != 1);
    return;
}

/* ====================================================================== */
/* 0x843: fcn.00000843 */
/* ====================================================================== */


void fcn.00000843(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    
    for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0x21b8: fcn.000021b8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.000021b8(int16_t arg2, int16_t arg3)
{
    return ((uint16_t)arg3 >> 2 & 0x3f) * 0xa0 +
           (uint16_t)((uint8_t)((uint8_t)((uint8_t)arg3 << 7) >> 1 | ((uint8_t)arg3 >> 1) << 7) >> 1) * 0x100 +
           ((uint16_t)arg3 >> 8);
}

/* ====================================================================== */
/* 0x1362: fcn.00001362 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001362(int16_t arg3, int16_t arg1)
{
    uint16_t uVar1;
    int16_t iVar2;
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
    *(uint16_t *)0x5241 = -(uint16_t)((uint8_t)(*(char *)0x5243 - 1U) >> 2 & 1) ^ 0xf0f0;
    if ((char)arg1 != '\0') {
        uVar1 = CONCAT11((char)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x20 + -0x7fd0 >> 8), *(undefined *)0x5243) &
                0xff03;
        iVar2 = fcn.00001422(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
        fcn.000013d0(iVar2);
        iVar2 = fcn.00001422(CONCAT11(extraout_AH, *(undefined *)0x5243));
        fcn.000013d0(iVar2);
        return;
    }
    uVar1 = CONCAT11((char)((uint16_t)arg1 >> 8), *(undefined *)0x5243) & 0xff03;
    fcn.00001422(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
    fcn.00001411(arg3);
    fcn.00001422(CONCAT11(extraout_AH_00, *(undefined *)0x5243));
    fcn.00001411();
    return;
}

/* ====================================================================== */
/* 0x1422: fcn.00001422 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001422(int16_t arg1)
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
        if (0x7fff < uVar2) {
            uVar2 = unaff_DI + 0xa0a0;
        }
        uVar1 = uVar1 - 1;
        unaff_DI = uVar2;
    } while (uVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x13d0: fcn.000013d0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000013d0(int16_t arg1)
{
    uint16_t uVar1;
    int16_t iVar2;
    uint16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 2;
    do {
        uVar1 = *unaff_SI & *(uint16_t *)0x5241;
        *unaff_DI = *unaff_DI & ~*(uint16_t *)0x5241;
        *unaff_DI = *unaff_DI | uVar1;
        unaff_DI = unaff_DI + 0x50;
        unaff_SI = unaff_SI + 8;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1411: fcn.00001411 */
/* ====================================================================== */


void fcn.00001411(void)
{
    uint16_t uVar1;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = ~*(uint16_t *)0x5241;
    *unaff_DI = *unaff_DI & uVar1;
    unaff_DI[0x50] = unaff_DI[0x50] & uVar1;
    return;
}

/* ====================================================================== */
/* 0x1668: fcn.00001668 */
/* ====================================================================== */


void fcn.00001668(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    uint16_t *puVar4;
    uint16_t *puVar5;
    uint16_t *puVar6;
    
    iVar1 = 8;
    puVar4 = (uint16_t *)0x41f8;
    do {
        iVar2 = 0x12;
        puVar6 = puVar4;
        do {
            iVar3 = 0x38;
            puVar5 = puVar6;
            do {
                *puVar5 = *puVar5 ^ 0x4444;
                puVar5 = puVar5 + 1;
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            puVar6 = puVar6 + 0xa0;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar6 = puVar4 + 0x1000;
        if ((uint16_t *)0x7fff < puVar6) {
            puVar6 = puVar4 + -0x2fb0;
        }
        iVar1 = iVar1 + -1;
        puVar4 = puVar6;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x1475: fcn.00001475 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x0000148b: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000148e)

void fcn.00001475(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    uint8_t uVar4;
    int16_t arg3;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t iStack_2;
    
    arg3 = CONCAT11(*(char *)0x5230 + -1, *(char *)0x522f + -1);
    iStack_2 = 0x148e;
    iVar2 = 9;
    iVar1 = CONCAT11(*(char *)0x5230 + '\x18', *(char *)0x522f + '\x18');
    do {
        iVar1 = fcn.000014ef(iVar1, arg3);
        uVar4 = (uint8_t)((uint16_t)iVar2 >> 8);
        cVar3 = (uint8_t)iVar2 + 0xc;
        if (0xf3 < (uint8_t)iVar2) {
            cVar3 = -1;
        }
        arg3 = CONCAT11(uVar4 + 0xc, cVar3);
        if (0xf3 < uVar4) {
            arg3 = CONCAT11(0xff, cVar3);
        }
        fcn.00001635(iVar1);
        iVar2 = in_stack_00000000 + -1;
        iVar1 = iStack_2;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x14ef: fcn.000014ef */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x0000150a: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000150d)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000014ef(int16_t arg2, int16_t arg3)
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
    
    fcn.00001570(CONCAT11((char)((uint16_t)arg3 >> 8), (char)arg2));
    fcn.00001570(in_stack_00000000);
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
    fcn.00001615(in_stack_00000000, CONCAT11(extraout_AH, (char)(in_stack_00000000 >> 8)));
    iVar2 = 0xd;
    if ((in_stack_00000000 & 1) == 0) {
        uVar3 = 0xf0;
    } else {
        uVar3 = 0xf;
    }
    uVar1 = *(uint8_t *)0x5243;
    puVar4 = (uint8_t *)(unaff_DI + (in_stack_00000000 >> 1 & 0x7f));
    do {
        *puVar4 = *puVar4 & ~uVar3;
        *puVar4 = *puVar4 | uVar3 & uVar1;
        puVar5 = puVar4 + 0x2000;
        if ((uint8_t *)0x7fff < puVar5) {
            puVar5 = puVar4 + -0x5f60;
        }
        iVar2 = iVar2 + -1;
        puVar4 = puVar5;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1635: fcn.00001635 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001635(int16_t arg1)
{
    undefined2 unaff_DS;
    uint16_t uVar1;
    
    uVar1 = (uint16_t)(uint8_t)((*(uint8_t *)0xff33 >> 1) + 1);
    do {
        (*_fcn.00000110)(uVar1);
        uVar1 = 0x164c;
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
            uVar6 = fcn.000016f1();
            *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
            pcVar1 = (char *)0x5237;
            *pcVar1 = *pcVar1 + -1;
            if (*pcVar1 == '\0') {
                return;
            }
            fcn.00000f4a((int16_t)pcStack_6, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
            iVar3 = 0;
            pcVar5 = unaff_SI + 8;
            if (unaff_SI[7] < '\0') {
                fcn.000004f1(0);
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
            iVar3 = 0x5255;
            LOCK();
            cVar2 = pcVar7[7];
            pcVar7[7] = -2;
            UNLOCK();
            *(char *)0x5255 = cVar2;
            LOCK();
            cVar2 = pcVar7[0x23];
            pcVar7[0x23] = -1;
            UNLOCK();
            *(char *)0x5256 = cVar2;
            cVar2 = pcVar4[7];
            pcVar4 = pcVar4 + 0x2c;
            pcStackY_a = (char *)0x60c;
            fcn.000016f1(pcStack_6);
            pcVar7 = (char *)0x614;
            cVar2 = fcn.00000852((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
            arg3 = (char *)CONCAT11(extraout_DL, cVar2);
            iVar3 = (int16_t)unaff_DI * 4 + *(int16_t *)0x5231;
            pcVar5 = pcVar4;
            if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar4, cVar2));
                unaff_DI = arg3;
                if (cVar2 < '\0') {
                    pcStackY_a = (char *)0x63d;
                    uVar6 = fcn.0000084b();
                }
                fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
                arg3 = pcVar7;
                iVar3 = iStackY_c;
                pcVar5 = pcStackY_a;
                pcStack_6 = pcVar4;
            }
            if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                uVar6 = CONCAT22(iVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar6 = fcn.0000084b();
                }
                fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)arg3);
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
                uVar6 = fcn.000016f1();
                *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
                pcVar1 = (char *)0x5237;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000f4a((int16_t)in_BX, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
                iVar3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.000004f1(0);
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
                iVar3 = 0x5255;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x5255 = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x5256 = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x60c;
                fcn.000016f1(in_BX, in_BX);
                pcVar8 = (char *)0x614;
                cVar2 = fcn.00000852((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 4 + *(int16_t *)0x5231;
                in_BX = unaff_DI;
                if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    in_BX = pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x63d;
                        uVar6 = fcn.0000084b();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.0000084b();
                    }
                    fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
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
                uVar6 = fcn.000016f1();
                *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
                pcVar1 = (char *)0x5237;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                fcn.00000f4a((int16_t)in_BX, (int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10));
                iVar3 = 0;
                pcVar8 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    fcn.000004f1(0);
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
                iVar3 = 0x5255;
                LOCK();
                cVar2 = pcVar4[7];
                pcVar4[7] = -2;
                UNLOCK();
                *(char *)0x5255 = cVar2;
                LOCK();
                cVar2 = pcVar4[0x23];
                pcVar4[0x23] = -1;
                UNLOCK();
                *(char *)0x5256 = cVar2;
                cVar2 = pcVar5[7];
                pcVar5 = pcVar5 + 0x2c;
                iStackY_a = 0x60c;
                fcn.000016f1(in_BX, in_BX);
                pcVar8 = (char *)0x614;
                cVar2 = fcn.00000852((int16_t)unaff_SI, (int16_t)unaff_DI, iVar3, CONCAT11(extraout_AH, cVar2));
                pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar3 = (int16_t)unaff_DI * 4 + *(int16_t *)0x5231;
                in_BX = unaff_DI;
                if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                    uVar6 = CONCAT22(iVar3, CONCAT11(*pcVar5, cVar2));
                    pcVar9 = pcVar5;
                    in_BX = pcVar4;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x63d;
                        uVar6 = fcn.0000084b();
                        pcVar9 = pcVar5;
                    }
                    pcVar5 = pcVar8;
                    fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
                    pcVar4 = pcVar9;
                    iVar3 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                unaff_SI = pcVar7;
                if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                    uVar6 = CONCAT22(iVar3 + 0x140, CONCAT11(pcVar5[2], (char)((uint16_t)pcVar4 >> 8)));
                    if ((int16_t)pcVar4 < 0) {
                        uVar6 = fcn.0000084b();
                    }
                    fcn.000006a1((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), (int16_t)pcVar4);
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
        uVar7 = fcn.000016f1();
        *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
        pcVar1 = (char *)0x5237;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000f4a(arg3, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004f1(0);
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
            arg3_00 = 0x5255;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5255 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x5256 = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016f1();
            cVar2 = fcn.00000852((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 4 + *(int16_t *)0x5231);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.0000084b();
                }
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x140, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.0000084b();
                }
                in_stack_0000000a = (char *)0x66d;
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
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
        uVar7 = fcn.000016f1();
        *(int16_t *)0x5231 = *(int16_t *)0x5231 + 0x140;
        pcVar1 = (char *)0x5237;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        fcn.00000f4a(arg3, (int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10));
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            fcn.000004f1(0);
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
            arg3_00 = 0x5255;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5255 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x5256 = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            fcn.000016f1();
            cVar2 = fcn.00000852((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 4 + *(int16_t *)0x5231);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5255 != -1) && (*(char *)0x5255 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = fcn.0000084b();
                }
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x5237 != '\x01') && (*(char *)0x5256 != -1)) && (*(char *)0x5256 != -4)) {
                uVar7 = CONCAT22(pcVar3 + 0x140, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = fcn.0000084b();
                }
                in_stack_0000000a = (char *)0x66d;
                fcn.000006a1((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            fcn.00000128(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x1570: fcn.00001570 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001570(int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    undefined2 in_AX;
    uint8_t uVar4;
    int16_t iVar5;
    uint8_t extraout_DL;
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
    fcn.00001615(in_BX, CONCAT11((char)((uint16_t)in_AX >> 8), (char)(in_BX >> 8)));
    uVar2 = (uint8_t)in_BX >> 1;
    puVar6 = (uint8_t *)(unaff_DI + (uint16_t)uVar2);
    uVar2 = (extraout_DL >> 1) - uVar2;
    if ((in_BX & 1) == 0) {
        uVar3 = 0xff;
    } else {
        uVar3 = 0xf;
    }
    if ((extraout_DL & 1) == 0) {
        uVar4 = 0xf0;
    } else {
        uVar4 = 0xff;
    }
    if (uVar2 != 0) {
        iVar5 = uVar2 - 1;
        if (iVar5 != 0) {
            uVar2 = *(uint8_t *)0x5243;
            *puVar6 = *puVar6 & ~uVar3;
            *puVar6 = *puVar6 | uVar3 & uVar2;
            uVar2 = *(uint8_t *)0x5243;
            for (; puVar6 = puVar6 + 1, iVar5 != 0; iVar5 = iVar5 + -1) {
                *puVar6 = uVar2;
            }
            uVar2 = *(uint8_t *)0x5243;
            *puVar6 = *puVar6 & ~uVar4;
            *puVar6 = *puVar6 | uVar4 & uVar2;
            return;
        }
        uVar2 = *(uint8_t *)0x5243;
        *puVar6 = *puVar6 & ~uVar3;
        *puVar6 = *puVar6 | uVar3 & uVar2;
        uVar2 = *(uint8_t *)0x5243;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 & ~uVar4;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 | uVar4 & uVar2;
        return;
    }
    uVar2 = *(uint8_t *)0x5243;
    *puVar6 = *puVar6 & ~(uVar3 & uVar4);
    *puVar6 = *puVar6 | uVar3 & uVar4 & uVar2;
    return;
}

/* ====================================================================== */
/* 0x1615: fcn.00001615 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00001615(int16_t arg3, int16_t arg1)
{
    return (uint16_t)((uint8_t)((char)arg1 + 0xeU) >> 2) * 0xa0 + 0x18;
}

/* ====================================================================== */
/* 0x182d: fcn.0000182d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000182d(int16_t arg1)
{
    int16_t *piVar1;
    undefined2 uVar2;
    int16_t *piVar3;
    int16_t in_DX;
    int16_t in_BX;
    undefined2 *puVar4;
    undefined2 *puVar5;
    undefined4 uVar6;
    int16_t in_stack_00000000;
    
    uVar2 = *(undefined2 *)0xff2c;
    piVar3 = (int16_t *)((arg1 & 0xffU) * 0x20 + -0x8000);
    puVar4 = *(undefined2 **)0x5231;
    do {
        piVar1 = piVar3 + 1;
        uVar6 = fcn.00001867(*piVar3, in_BX, in_DX);
        *puVar4 = (int16_t)uVar6;
        piVar3 = piVar3 + 2;
        uVar6 = fcn.00001867(*piVar1, in_BX, (int16_t)((uint32_t)uVar6 >> 0x10));
        in_DX = (int16_t)((uint32_t)uVar6 >> 0x10);
        puVar4[1] = (int16_t)uVar6;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x7fff < puVar5) {
            puVar5 = puVar4 + -0x2fb0;
        }
        puVar4 = puVar5;
    } while (in_stack_00000000 != 1);
    return;
}

/* ====================================================================== */
/* 0x1867: fcn.00001867 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00001867(int16_t arg1, int16_t arg3, int16_t arg2)
{
    int16_t iVar1;
    uint8_t uVar2;
    int16_t iVar3;
    undefined4 uVar4;
    
    if (arg1 == 0) {
        return arg1;
    }
    iVar3 = 4;
    do {
        uVar2 = ((((char)iVar3 * '\x02' + CARRY2(arg1, arg1)) * '\x02' + CARRY2(arg1 * 2, arg1 * 2)) * '\x02' +
                CARRY2(arg1 * 4, arg1 * 4)) * '\x02' + CARRY2(arg1 * 8, arg1 * 8) & 0xf;
        uVar4 = (**(code **)((uint16_t)*(uint8_t *)0x5243 * 2 + 0x489d))();
        arg1 = (int16_t)uVar4;
        iVar1 = (int16_t)((uint32_t)uVar4 >> 0x10) * 0x10;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return CONCAT11((char)((uint16_t)iVar1 >> 8), (uint8_t)iVar1 | uVar2);
}

/* ====================================================================== */
/* 0x1dac: fcn.00001dac */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001dac(int16_t arg2, int16_t arg3)
{
    uint8_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t unaff_BP;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = *(uint8_t *)0x5244;
    uVar3 = (unaff_BP << 8) >> (*(uint8_t *)0x5244 & 0x1f);
    uVar2 = (unaff_BP & 0xff00) >> (*(uint8_t *)0x5244 & 0x1f);
    uVar3 = ~CONCAT11((char)(uVar3 >> 8), (uint8_t)uVar3 | (uint8_t)(uVar2 >> 8));
    *unaff_DI = *unaff_DI & (uint8_t)(uVar3 >> 8);
    unaff_DI[1] = unaff_DI[1] & (uint8_t)uVar3;
    unaff_DI[2] = unaff_DI[2] & ~(uint8_t)uVar2;
    uVar3 = (uint16_t)(arg2 << 8) >> (uVar1 & 0x1f);
    uVar2 = (arg2 & 0xff00U) >> (uVar1 & 0x1f);
    *unaff_DI = *unaff_DI | (uint8_t)(uVar3 >> 8);
    unaff_DI[1] = unaff_DI[1] | (uint8_t)uVar3 | (uint8_t)(uVar2 >> 8);
    unaff_DI[2] = unaff_DI[2] | (uint8_t)uVar2;
    return;
}

/* ====================================================================== */
/* 0x1e95: fcn.00001e95 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00001ee0) overlaps instruction at (ram,0x00001edf)
// 
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001e95(short unsigned int arg3, short unsigned int arg1)
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
/* 0x215b: fcn.0000215b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000215b(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    int16_t iVar3;
    
    iVar3 = 4;
    do {
        uVar1 = *(uint16_t *)0x5235 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x5235 < 0);
        uVar2 = *(uint16_t *)0x5231 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x5231 < 0);
        *(uint16_t *)0x5235 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x5231 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x217d: fcn.0000217d */
/* ====================================================================== */


void fcn.0000217d(void)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x523b << 1 | (uint16_t)((int16_t)*(uint16_t *)0x523b < 0);
        *(uint16_t *)0x523b = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

