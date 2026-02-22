/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x5 = ":(0W0w6"; // [ascii]
static const char *STR_0x1d = "7b8#8#:"; // [ascii]
static const char *STR_0x182 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x1c1 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x1de = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x1fb = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x218 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x235 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x252 = "aF&{vaGÚ"; // [ibm037]
static const char *STR_0x4ee = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x4fd = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x50c = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x51b = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x52a = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x539 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x548 = "aG&{vaGÚ"; // [ibm037]
static const char *STR_0x6be = "uuuu;aF"; // [ibm037]
static const char *STR_0x74b = "uuuu;aF"; // [ibm037]
static const char *STR_0xb2b = "aG&{ßSKC"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_08 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00000051) overlaps instruction at (ram,0x00000050)
// 
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_08(int16_t arg_2135h, short unsigned int arg3, int16_t arg1)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    uint8_t uVar3;
    uint8_t uVar4;
    int16_t iVar5;
    int16_t in_CX;
    uint8_t in_DL;
    int16_t in_BX;
    int16_t unaff_BP;
    undefined2 *puVar6;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t in_AF;
    int16_t in_stack_00000000;
    undefined2 *puStack_2;
    
    arg1._0_1_ = (uint8_t)arg1 % 0x11;
    *(char *)(in_BX + (int16_t)unaff_SI) = *(char *)(in_BX + (int16_t)unaff_SI) + (uint8_t)arg1;
    puVar1 = (uint8_t *)(in_BX + 0x30);
    *puVar1 = *puVar1 ^ in_DL;
    if (*puVar1 != 0) goto code_r0x00000042;
    iVar5 = (uint8_t)arg1 % 0x36 + 0x6037;
    uVar4 = (uint8_t)iVar5;
    uVar3 = 9 < (uVar4 & 0xf) | in_AF;
    puStack_2 = (undefined2 *)(CONCAT11((char)((uint16_t)iVar5 >> 8) + uVar3, uVar4 + uVar3 * '\x06') & 0xff0f);
    unaff_DI = (undefined2 *)((int16_t)unaff_DI + -1);
    if ((int16_t)((uint16_t)unaff_SI ^ *(uint16_t *)(unaff_BP + 0x2135)) < 0) {
        while( true ) {
            puStack_2 = puStack_2 + 1;
            in_stack_00000000 = in_stack_00000000 + -1;
            if (in_stack_00000000 == 0) break;
            in_CX = 0x18;
            unaff_SI = puStack_2;
code_r0x00000042:
            do {
                puVar2 = unaff_DI;
                unaff_DI = unaff_DI + 1;
                *puVar2 = *unaff_SI;
                puVar6 = unaff_SI + 0x1000;
                if ((undefined2 *)0x3fff < puVar6) {
                    puVar6 = unaff_SI + -0xfd8;
                }
                in_CX = in_CX + -1;
                unaff_SI = puVar6;
            } while (in_CX != 0);
        }
        return;
    }
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x43a: deca_scan_loop */
/* ====================================================================== */


void deca_scan_loop(undefined2 param_1, int16_t *param_2)
{
    int16_t iVar1;
    int16_t in_AX;
    uint8_t in_BL;
    int16_t *arg1;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xff2a;
    *(undefined2 *)0x3d70 = *(undefined2 *)(iVar1 + 0x25);
    *(undefined *)0x3d72 = *(undefined *)(iVar1 + 0x27);
    *(int16_t *)0x3d76 = *(int16_t *)0x80 + 3;
    if (*(char *)0x3d70 == -3) {
        in_AX = deca_get_value();
        *(undefined *)0x3d70 = (char)in_AX;
    }
    deca_process_loop_2(3, in_AX);
    arg1 = *(int16_t **)0xc00f;
    do {
        deca_process_loop();
        if (in_BL != 0) {
            in_BL = in_BL - 1;
            deca_func_17((uint16_t)in_BL * 3);
            deca_process_loop_3((int16_t)arg1);
            arg1 = param_2;
        }
        arg1 = arg1 + 4;
    } while (*arg1 != -1);
    deca_multiply_2();
    *(undefined *)0xe005 = 0xff;
    *(undefined *)0xe006 = 0xff;
    *(undefined *)0xe007 = 0xff;
    return;
}

/* ====================================================================== */
/* 0xdf: deca_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_multiply(int16_t arg1)
{
    int16_t iVar1;
    int16_t unaff_SI;
    int16_t iVar2;
    undefined2 unaff_DS;
    
    if (*(char *)0x3d6f == '\x1b') {
        return;
    }
    if (*(char *)0x3d6f != *(char *)0x83) {
        return;
    }
    iVar2 = (uint8_t)(*(char *)0x83 * '\x02') + 0x127c;
    iVar1 = 2;
    do {
        deca_multiply_2(iVar2);
        iVar2 = iVar1 + 2;
        iVar1 = unaff_SI + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x4e0: deca_multiply_2 */
/* ====================================================================== */


void deca_multiply_2(void)
{
    int16_t iVar1;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = 3;
    do {
        *unaff_DI = *unaff_SI;
        puVar2 = unaff_DI + 0x1000;
        if ((undefined2 *)0x3fff < puVar2) {
            puVar2 = unaff_DI + -0xfd8;
        }
        *puVar2 = unaff_SI[1];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x3fff < puVar3) {
            puVar3 = puVar2 + -0xfd8;
        }
        *puVar3 = unaff_SI[2];
        puVar2 = puVar3 + 0x1000;
        if ((undefined2 *)0x3fff < puVar2) {
            puVar2 = puVar3 + -0xfd8;
        }
        *puVar2 = unaff_SI[3];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x3fff < puVar3) {
            puVar3 = puVar2 + -0xfd8;
        }
        *puVar3 = unaff_SI[4];
        puVar2 = puVar3 + 0x1000;
        if ((undefined2 *)0x3fff < puVar2) {
            puVar2 = puVar3 + -0xfd8;
        }
        *puVar2 = unaff_SI[5];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x3fff < puVar3) {
            puVar3 = puVar2 + -0xfd8;
        }
        puVar2 = unaff_SI + 7;
        *puVar3 = unaff_SI[6];
        puVar4 = puVar3 + 0x1000;
        if ((undefined2 *)0x3fff < puVar4) {
            puVar4 = puVar3 + -0xfd8;
        }
        unaff_SI = unaff_SI + 8;
        *puVar4 = *puVar2;
        unaff_DI = puVar4 + 0x1000;
        if ((undefined2 *)0x3fff < unaff_DI) {
            unaff_DI = puVar4 + -0xfd8;
        }
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x27a: deca_func_8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_func_8(int16_t arg3, int16_t arg2)
{
    uint16_t *puVar1;
    uint16_t *puVar2;
    uint16_t *puVar3;
    uint8_t uVar4;
    undefined2 uVar5;
    undefined2 *puVar6;
    char cVar7;
    int16_t iVar8;
    uint16_t uVar9;
    uint16_t *puVar10;
    uint16_t *puVar11;
    undefined2 *puVar12;
    undefined2 *puVar13;
    int16_t unaff_SI;
    uint16_t *puVar14;
    undefined2 *puVar15;
    int16_t unaff_DI;
    uint16_t *puVar16;
    uint16_t *puVar17;
    char *pcVar18;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar7 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar7 == -1) {
        return;
    }
    uVar4 = *(uint8_t *)(unaff_SI + -1);
    if (*(char *)((uint16_t)uVar4 + *(int16_t *)0x8000) != '\0') {
        *(undefined *)(unaff_DI + -1) = *(undefined *)(unaff_SI + -1);
        uVar5 = *(undefined2 *)0xff2c;
        iVar8 = (uint16_t)uVar4 * 0x10;
        puVar14 = (uint16_t *)(iVar8 + -0x7f00);
        puVar11 = (uint16_t *)(iVar8 + -0x3000);
        puVar10 = (uint16_t *)((arg3 & 0xffU) * 0x10 + (uint16_t)*(uint8_t *)0x3d6f * 0x30 + -0x6000);
        iVar8 = 8;
        puVar16 = (uint16_t *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3d6d);
        do {
            puVar1 = puVar10;
            puVar10 = puVar10 + 1;
            puVar2 = puVar11;
            puVar11 = puVar11 + 1;
            puVar3 = puVar14;
            puVar14 = puVar14 + 1;
            *puVar16 = *puVar1 & *puVar2 | *puVar3;
            puVar17 = puVar16 + 0x1000;
            if ((uint16_t *)0x3fff < puVar17) {
                puVar17 = puVar16 + -0xfd8;
            }
            iVar8 = iVar8 + -1;
            puVar16 = puVar17;
        } while (iVar8 != 0);
        uVar4 = *(uint8_t *)(unaff_DI + -1);
        if (uVar4 != 0) {
            if (0x18 < uVar4) {
                return;
            }
            pcVar18 = *(char **)0x8004;
            cVar7 = *pcVar18;
            while( true ) {
                if (cVar7 == '\0') {
                    return;
                }
                if (pcVar18[1] == 0xff) break;
                if (uVar4 == pcVar18[1]) {
                    *(char *)(unaff_SI + -1) = pcVar18[2];
                    return;
                }
                pcVar18 = pcVar18 + 2;
                cVar7 = cVar7 + -1;
            }
            return;
        }
        return;
    }
    cVar7 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar7 == -1) {
        return;
    }
    uVar9 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar6 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3d6d);
    iVar8 = uVar9 * 2;
    if (*(int16_t *)(iVar8 + 0x3fd4) != 0) {
        puVar12 = *(undefined2 **)(iVar8 + 0x3fd4);
        *puVar6 = *puVar12;
        puVar13 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar13) {
            puVar13 = puVar6 + -0xfd8;
        }
        puVar6 = puVar12 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar12 + -0xfd8;
        }
        *puVar13 = *puVar6;
        puVar12 = puVar13 + 0x1000;
        if ((undefined2 *)0x3fff < puVar12) {
            puVar12 = puVar13 + -0xfd8;
        }
        puVar13 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar13) {
            puVar13 = puVar6 + -0xfd8;
        }
        *puVar12 = *puVar13;
        puVar6 = puVar12 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar12 + -0xfd8;
        }
        puVar12 = puVar13 + 0x1000;
        if ((undefined2 *)0x3fff < puVar12) {
            puVar12 = puVar13 + -0xfd8;
        }
        *puVar6 = *puVar12;
        puVar13 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar13) {
            puVar13 = puVar6 + -0xfd8;
        }
        puVar6 = puVar12 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar12 + -0xfd8;
        }
        *puVar13 = *puVar6;
        puVar12 = puVar13 + 0x1000;
        if ((undefined2 *)0x3fff < puVar12) {
            puVar12 = puVar13 + -0xfd8;
        }
        puVar13 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar13) {
            puVar13 = puVar6 + -0xfd8;
        }
        *puVar12 = *puVar13;
        puVar6 = puVar12 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar12 + -0xfd8;
        }
        puVar12 = puVar13 + 0x1000;
        if ((undefined2 *)0x3fff < puVar12) {
            puVar12 = puVar13 + -0xfd8;
        }
        *puVar6 = *puVar12;
        puVar13 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar13) {
            puVar13 = puVar6 + -0xfd8;
        }
        puVar6 = puVar12 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar12 + -0xfd8;
        }
        *puVar13 = *puVar6;
        return;
    }
    *(undefined2 **)(iVar8 + 0x3fd4) = puVar6;
    uVar5 = *(undefined2 *)0xff2c;
    puVar12 = (undefined2 *)(uVar9 * 0x10 + -0x7f00);
    iVar8 = 4;
    do {
        puVar13 = puVar12 + 1;
        *puVar6 = *puVar12;
        puVar15 = puVar6 + 0x1000;
        if ((undefined2 *)0x3fff < puVar15) {
            puVar15 = puVar6 + -0xfd8;
        }
        puVar12 = puVar12 + 2;
        *puVar15 = *puVar13;
        puVar6 = puVar15 + 0x1000;
        if ((undefined2 *)0x3fff < puVar6) {
            puVar6 = puVar15 + -0xfd8;
        }
        iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    return;
}

/* ====================================================================== */
/* 0x124: deca_func_9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_func_9(int16_t arg3, int16_t arg2)
{
    char cVar1;
    undefined2 uVar2;
    undefined2 *puVar3;
    int16_t iVar4;
    uint16_t uVar5;
    int16_t unaff_SI;
    undefined2 *puVar6;
    undefined2 *puVar7;
    int16_t unaff_DI;
    undefined2 *puVar8;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar1 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar1 == -1) {
        return;
    }
    uVar5 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar3 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3d6d);
    iVar4 = uVar5 * 2;
    if (*(int16_t *)(iVar4 + 0x3fd4) == 0) {
        *(undefined2 **)(iVar4 + 0x3fd4) = puVar3;
        uVar2 = *(undefined2 *)0xff2c;
        puVar6 = (undefined2 *)(uVar5 * 0x10 + -0x7f00);
        iVar4 = 4;
        do {
            puVar7 = puVar6 + 1;
            *puVar3 = *puVar6;
            puVar8 = puVar3 + 0x1000;
            if ((undefined2 *)0x3fff < puVar8) {
                puVar8 = puVar3 + -0xfd8;
            }
            puVar6 = puVar6 + 2;
            *puVar8 = *puVar7;
            puVar3 = puVar8 + 0x1000;
            if ((undefined2 *)0x3fff < puVar3) {
                puVar3 = puVar8 + -0xfd8;
            }
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        return;
    }
    puVar6 = *(undefined2 **)(iVar4 + 0x3fd4);
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    *puVar6 = *puVar7;
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    *puVar6 = *puVar7;
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    return;
}

/* ====================================================================== */
/* 0x11b: deca_check_state */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_check_state(int16_t arg3, int16_t arg2)
{
    char cVar1;
    undefined2 uVar2;
    undefined2 *puVar3;
    int16_t iVar4;
    int16_t arg1;
    uint16_t uVar5;
    int16_t *arg3_00;
    undefined2 *unaff_SI;
    undefined2 *puVar6;
    undefined2 *puVar7;
    int16_t unaff_DI;
    undefined2 *puVar8;
    undefined2 unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000000;
    int16_t *in_stack_00000002;
    undefined2 in_stack_00000004;
    
    if (*(char *)((int16_t)unaff_SI + -1) == -3) {
        *(undefined2 *)0x3d71 = *unaff_SI;
        *(undefined2 *)0x3d73 = *(undefined2 *)((int16_t)unaff_SI + 7);
        *(undefined *)0x3d75 = *(undefined *)((int16_t)unaff_SI + 9);
        *(int16_t *)0x3d76 = (uint16_t)(uint8_t)(*(char *)0x3d6f + 4) + *(int16_t *)0x80;
        iVar4 = deca_get_value();
        *(undefined *)0x3d70 = (char)iVar4;
        if (*(char *)0x3d73 == -3) {
            iVar4 = deca_get_value();
            *(undefined *)0x3d73 = (char)iVar4;
        }
        deca_multiply_4(iVar4);
        arg3_00 = *(int16_t **)0xc00f;
        iVar4 = unaff_DS;
        do {
            arg1 = deca_process_loop();
            if ((char)arg3 != '\0') {
                deca_func_17(arg1);
                iVar4 = 0x3d6;
                deca_func_18((int16_t)arg3_00);
                arg3 = (int16_t)arg3_00;
                arg3_00 = in_stack_00000002;
            }
            arg3_00 = arg3_00 + 4;
        } while (*arg3_00 != -1);
        if (*(char *)(iVar4 + -1) != -1) {
            deca_multiply_2(*(int16_t *)0x3d6d + 0x640, CONCAT11(*(char *)(iVar4 + -1), *(undefined *)(iVar4 + 7)));
        }
        if ((*(char *)0x3d6f != '\x1b') && ((char)iVar4 != -1)) {
            deca_multiply_2();
        }
        *(undefined *)((int16_t)in_stack_00000002 + -1) = 0xfe;
        *(undefined *)in_stack_00000002 = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 1) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 7) = 0xff;
        *(undefined *)(in_stack_00000002 + 4) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 9) = 0xff;
        return;
    }
    cVar1 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar1 == -1) {
        return;
    }
    uVar5 = (uint16_t)*(uint8_t *)((int16_t)unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)((int16_t)unaff_SI + -1);
    puVar3 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3d6d);
    iVar4 = uVar5 * 2;
    if (*(int16_t *)(iVar4 + 0x3fd4) == 0) {
        *(undefined2 **)(iVar4 + 0x3fd4) = puVar3;
        uVar2 = *(undefined2 *)0xff2c;
        puVar6 = (undefined2 *)(uVar5 * 0x10 + -0x7f00);
        iVar4 = 4;
        do {
            puVar7 = puVar6 + 1;
            *puVar3 = *puVar6;
            puVar8 = puVar3 + 0x1000;
            if ((undefined2 *)0x3fff < puVar8) {
                puVar8 = puVar3 + -0xfd8;
            }
            puVar6 = puVar6 + 2;
            *puVar8 = *puVar7;
            puVar3 = puVar8 + 0x1000;
            if ((undefined2 *)0x3fff < puVar3) {
                puVar3 = puVar8 + -0xfd8;
            }
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        return;
    }
    puVar6 = *(undefined2 **)(iVar4 + 0x3fd4);
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    *puVar6 = *puVar7;
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    *puVar6 = *puVar7;
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x3fff < puVar6) {
        puVar6 = puVar7 + -0xfd8;
    }
    *puVar3 = *puVar6;
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x3fff < puVar7) {
        puVar7 = puVar3 + -0xfd8;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x3fff < puVar3) {
        puVar3 = puVar6 + -0xfd8;
    }
    *puVar7 = *puVar3;
    return;
}

/* ====================================================================== */
/* 0x4b9: deca_get_value */
/* ====================================================================== */


void deca_get_value(void)
{
    char *pcVar1;
    int16_t in_DX;
    short unsigned int extraout_DX;
    short unsigned int arg2;
    short unsigned int extraout_DX_00;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    deca_multiply_3(in_DX);
    arg2 = extraout_DX;
    if (*(char *)(unaff_SI + 3) != -3) {
        return;
    }
    do {
        deca_scan_loop_2(arg2);
        pcVar1 = (char *)(unaff_SI + 0xb);
        arg2 = extraout_DX_00;
        unaff_SI = unaff_SI + 8;
    } while (*pcVar1 == -3);
    return;
}

/* ====================================================================== */
/* 0x4d2: deca_multiply_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_multiply_3(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x4d6: deca_scan_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_scan_loop_2(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x356: deca_multiply_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_multiply_4(int16_t arg1)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 uVar4;
    int16_t iVar5;
    int16_t iVar6;
    uint8_t *unaff_SI;
    undefined2 *puVar7;
    undefined2 *unaff_DI;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    iVar5 = 6;
    do {
        uVar4 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar7 = (undefined2 *)((uint16_t)*puVar1 * 0x10 + -0x7f00);
        for (iVar6 = 8; iVar6 != 0; iVar6 = iVar6 + -1) {
            puVar3 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar2 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar3 = *puVar2;
        }
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0x5a6: deca_process_loop */
/* ====================================================================== */


void deca_process_loop(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 2;
    iVar2 = *(int16_t *)0x3d76;
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
/* 0x580: deca_func_17 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char deca_func_17(int16_t arg1)
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
/* 0x55e: deca_func_18 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_func_18(int16_t arg3)
{
    (**(code **)((uint16_t)(uint8_t)((char)arg3 - 1) * 2 + 0x3568))();
    return;
}

/* ====================================================================== */
/* 0x359: deca_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_process_loop_2(int16_t arg4, int16_t arg1)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 uVar4;
    int16_t iVar5;
    uint8_t *unaff_SI;
    undefined2 *puVar6;
    undefined2 *unaff_DI;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    do {
        uVar4 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar6 = (undefined2 *)((uint16_t)*puVar1 * 0x10 + -0x7f00);
        for (iVar5 = 8; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar3 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            *puVar3 = *puVar2;
        }
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x5e6: deca_process_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_process_loop_3(int16_t arg1)
{
    undefined *puVar1;
    undefined *puVar2;
    char *unaff_BP;
    undefined *unaff_SI;
    char *pcVar3;
    char *unaff_ES;
    undefined *unaff_DS;
    int16_t in_stack_00000000;
    
    puVar1 = (undefined *)0x3;
    do {
        puVar2 = puVar1;
        *unaff_SI = 0xff;
        pcVar3 = unaff_SI + 1;
        *(int16_t *)0x3d80 = (uint16_t)(uint8_t)(*unaff_BP - 1) * 0x10 + 0x7000;
        *(undefined2 *)0x3d82 = 0x2000;
        deca_process_loop_4(0x2000);
        puVar1 = (undefined *)(in_stack_00000000 + -1);
        unaff_BP = unaff_ES;
        unaff_SI = unaff_DS;
        unaff_ES = pcVar3;
        unaff_DS = puVar2;
    } while ((undefined *)(in_stack_00000000 + -1) != (undefined *)0x0);
    return;
}

/* ====================================================================== */
/* 0x659: deca_process_loop_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_process_loop_4(int16_t arg1)
{
    uint16_t *puVar1;
    uint32_t uVar2;
    int16_t iVar3;
    uint16_t *unaff_SI;
    uint16_t *puVar4;
    uint16_t *unaff_DI;
    uint16_t *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    uVar2 = (uint32_t)*(uint16_t **)0x3d80 >> 0x10;
    puVar4 = (uint16_t *)*(uint16_t **)0x3d80;
    iVar3 = 8;
    puVar5 = unaff_DI;
    do {
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar5 = *puVar5 & *puVar1;
        puVar5 = puVar5 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    iVar3 = 8;
    do {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *unaff_DI = *unaff_DI | *puVar1;
        unaff_DI = unaff_DI + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x89f: deca_func_22 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_func_22(int16_t arg3)
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
        in_AX = deca_func_23(CONCAT11((char)((uint16_t)in_AX >> 8), *unaff_SI), (uint16_t)pcVar1 & 0xff03);
        pcVar1 = (char *)CONCAT11((char)((uint16_t)in_stack_00000000 >> 8), (char)in_stack_00000000 + '\x01');
        unaff_SI = unaff_DS;
        unaff_DS = pcVar2;
    }
    return;
}

/* ====================================================================== */
/* 0x8bc: deca_func_23 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void deca_func_23(int16_t arg1, int16_t arg3)
{
    undefined *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    uint16_t uVar4;
    int16_t iVar5;
    uint8_t uVar6;
    char cVar7;
    char cVar8;
    uint16_t uVar9;
    undefined *puVar10;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    
    uVar4 = (uint16_t)(uint8_t)((char)arg1 - 0x20) * 8;
    puVar10 = (undefined *)(uVar4 + *(int16_t *)0xf504);
    uVar2 = (char)arg3 * '\x02';
    cVar8 = '\b';
    do {
        puVar1 = puVar10;
        puVar10 = puVar10 + 1;
        iVar5 = CONCAT11((char)(uVar4 >> 8), *puVar1);
        cVar7 = '\x04';
        do {
            uVar6 = (uint8_t)((uint16_t)(iVar5 * 2) >> 8);
            iVar5 = CONCAT11(uVar6 * '\x02', (char)(iVar5 * 2));
            cVar7 = cVar7 + -1;
        } while (cVar7 != '\0');
        uVar3 = uVar6 * '\x02' | uVar6 & 0x7f;
        uVar4 = CONCAT11(uVar6, uVar3) & 0x7fff;
        uVar9 = ((uint16_t)uVar3 << 8) >> (uVar2 & 0x1f);
        *unaff_DI = *unaff_DI | (uint8_t)(uVar9 >> 8);
        unaff_DI[1] = unaff_DI[1] | (uint8_t)uVar9;
        unaff_DI = unaff_DI + 0x28;
        cVar8 = cVar8 + -1;
    } while (cVar8 != '\0');
    if (uVar2 != 6) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x92c: deca_func_24 */
/* ====================================================================== */


void deca_func_24(int16_t param_1)
{
    uint16_t uVar1;
    uint16_t uVar2;
    undefined2 extraout_DX;
    undefined2 in_BX;
    undefined uVar4;
    int16_t iVar3;
    undefined *puVar5;
    undefined *puVar6;
    int16_t iVar7;
    undefined2 unaff_DS;
    uint32_t uVar8;
    
    uVar4 = (undefined)((uint16_t)in_BX >> 8);
    uVar8 = deca_process_loop_5();
    uVar2 = 6;
    iVar3 = CONCAT11(uVar4, 1);
    puVar5 = (undefined *)0x39b4;
    puVar6 = (undefined *)(*(int16_t *)0xff68 + 0x3dac);
    do {
        fcn.00000959(CONCAT11((char)(uVar8 >> 8), *puVar5), (int16_t)(uVar8 >> 0x10));
        iVar7 = iVar3 + 1;
        uVar1 = uVar2 & 1;
        uVar8 = CONCAT22(extraout_DX, uVar2) & 0xffff0001;
        iVar3 = CONCAT11((char)(uVar2 >> 8), (char)uVar2 + '\x01');
        uVar2 = param_1 - 1;
        puVar5 = puVar6;
        puVar6 = (undefined *)(iVar7 + uVar1);
    } while (uVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x99f: deca_process_loop_5 */
/* ====================================================================== */


void deca_process_loop_5(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x39b3;
    deca_scan_loop_3();
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
/* 0x9be: deca_scan_loop_3 */
/* ====================================================================== */


void deca_scan_loop_3(void)
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
    
    iVar2 = fcn.00000a04(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = fcn.00000a04(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = fcn.00000a04(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.00000a1d(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.00000a1d(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.00000a1d(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0xa04: fcn.00000a04 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a04(int16_t arg1, int16_t arg3)
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
code_r0x00000a1a:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x00000a1a;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0xa1d: fcn.00000a1d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a1d(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x959: fcn.00000959 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000959(int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t *puVar3;
    char cVar5;
    uint16_t uVar4;
    int16_t iVar6;
    uint16_t uVar7;
    uint8_t in_BL;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    bool bVar8;
    
    if ((char)arg1 == -1) {
        return;
    }
    puVar3 = (uint8_t *)((arg1 & 0xffU) * 8 + *(int16_t *)0xf502);
    iVar6 = 7;
    do {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        uVar2 = *puVar1;
        cVar5 = '\b';
        uVar4 = arg2;
        do {
            bVar8 = CARRY1(uVar2, uVar2);
            uVar2 = uVar2 * '\x02';
            uVar7 = uVar4 * 2 + (uint16_t)bVar8;
            uVar4 = uVar7 * 2;
            cVar5 = cVar5 + -1;
        } while (cVar5 != '\0');
        arg2 = uVar7 & 0x7fff;
        uVar4 = uVar4 | arg2;
        if ((in_BL & 1) == 0) {
            uVar4 = uVar4 * 0x10;
        }
        *unaff_DI = *unaff_DI | (uint8_t)(uVar4 >> 8);
        unaff_DI[1] = unaff_DI[1] | (uint8_t)uVar4;
        unaff_DI = unaff_DI + 0x28;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0xcd4: fcn.00000cd4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000cd4(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t iVar4;
    
    iVar4 = 8;
    do {
        uVar1 = *(uint16_t *)0x3d7c << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3d7c < 0);
        uVar2 = *(uint16_t *)0x3d7a << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3d7a < 0);
        uVar3 = *(uint16_t *)0x3d78 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3d78 < 0);
        *(uint16_t *)0x3d7c = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x3d7a = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x3d78 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0xd4f: fcn.00000d4f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000d4f(int16_t arg2)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x3d7e << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3d7e < 0);
        *(uint16_t *)0x3d7e = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

