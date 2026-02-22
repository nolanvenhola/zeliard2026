/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x198 = "½þ{þQvvaGÜ"; // [ibm037]
static const char *STR_0x1b7 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x1d5 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x1f3 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x211 = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x22f = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x24d = "aFµØvvaGÜ"; // [ibm037]
static const char *STR_0x2be = "6S»0JYJY»YaF"; // [ibm037]
static const char *STR_0x534 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x544 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x554 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x564 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x574 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x584 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x594 = "aGµØvvaGÜ"; // [ibm037]
static const char *STR_0x727 = "3vcF vvvv;aF"; // [ibm037]
static const char *STR_0x7b6 = "3vcÓ vvvv;aF"; // [ibm037]
static const char *STR_0xa05 = "cG&SSC×"; // [ibm037]
static const char *STR_0xe2d = "}SSC«3}ó}ó}óaS"; // [ibm037]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000047) overlaps instruction at (ram,0x00000044)
// 
// WARNING: Removing unreachable block (ram,0x00000018)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(short unsigned int arg_1639h, int16_t arg2)
{
    undefined2 *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    undefined2 in_AX;
    uint16_t in_CX;
    int16_t in_DX;
    char *in_BX;
    undefined2 *unaff_SI;
    undefined2 *puVar4;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    undefined2 *unaff_DS;
    uint8_t in_CF;
    uint8_t in_AF;
    undefined2 *puVar5;
    undefined2 *in_stack_00000000;
    int16_t in_stack_00000002;
    
    arg2 = (in_DX - *unaff_DI) - (uint16_t)in_CF;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + (char)in_AX;
    puVar4 = (undefined2 *)((int16_t)unaff_DI + 1);
    (in_BX + (int16_t)puVar4)[0x30] = (in_BX + (int16_t)puVar4)[0x30] ^ (uint8_t)in_BX;
    uVar3 = in(0x36);
    uVar2 = 9 < (uVar3 & 0xf) | in_AF;
    puVar5 = in_stack_00000000;
    if (arg2 == -1) goto code_r0x00000042;
    *in_BX = *in_BX << 1;
    in_CX = in_CX ^ *(uint16_t *)
                     ((CONCAT11((char)((uint16_t)in_AX >> 8) + uVar2, uVar3 + uVar2 * '\x06') & 0xff0f) +
                     (int16_t)unaff_SI);
    if (in_CX != 0) goto code_r0x0000004e;
    swi(4);
    puVar4 = (undefined2 *)0xa000;
    in_stack_00000000 = (undefined2 *)0xb800;
    in_stack_00000002 = 0x1c;
    do {
        in_CX = 0x18;
        unaff_ES = unaff_CS;
        puVar5 = unaff_SI;
code_r0x00000042:
        do {
            puVar1 = puVar4 + 1;
            *puVar4 = *unaff_SI;
            puVar4 = puVar4 + 2;
            *puVar1 = unaff_SI[1];
            unaff_SI = unaff_SI + 0x1000;
            unaff_CS = unaff_ES;
            unaff_DS = in_stack_00000000;
            if ((undefined2 *)0x7fff < unaff_SI) {
code_r0x0000004e:
                unaff_SI = unaff_SI + -0x3fb0;
                unaff_CS = unaff_ES;
                in_stack_00000000 = unaff_DS;
            }
            in_CX = in_CX - 1;
            unaff_ES = unaff_CS;
        } while (in_CX != 0);
        unaff_SI = puVar5 + 2;
        in_stack_00000002 = in_stack_00000002 + -1;
    } while (in_stack_00000002 != 0);
    return;
}

/* ====================================================================== */
/* 0x47f: fcn.0000047f */
/* ====================================================================== */


void fcn.0000047f(undefined2 param_1, int16_t *param_2)
{
    int16_t iVar1;
    int16_t in_AX;
    uint8_t in_BL;
    int16_t *arg1;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xff2a;
    *(undefined2 *)0x3e67 = *(undefined2 *)(iVar1 + 0x25);
    *(undefined *)0x3e69 = *(undefined *)(iVar1 + 0x27);
    *(int16_t *)0x3e6d = *(int16_t *)0x80 + 3;
    if (*(char *)0x3e67 == -3) {
        in_AX = fcn.000004fe();
        *(undefined *)0x3e67 = (char)in_AX;
    }
    fcn.0000039d(3, in_AX);
    arg1 = *(int16_t **)0xc00f;
    do {
        fcn.000005f8();
        if (in_BL != 0) {
            in_BL = in_BL - 1;
            fcn.000005d2((uint16_t)in_BL * 3);
            fcn.00000638((int16_t)arg1);
            arg1 = param_2;
        }
        arg1 = arg1 + 4;
    } while (*arg1 != -1);
    fcn.00000525();
    *(undefined *)0xe005 = 0xff;
    *(undefined *)0xe006 = 0xff;
    *(undefined *)0xe007 = 0xff;
    return;
}

/* ====================================================================== */
/* 0xe1: fcn.000000e1 */
/* ====================================================================== */


void fcn.000000e1(void)
{
    int16_t iVar1;
    int16_t unaff_SI;
    int16_t iVar2;
    undefined2 unaff_DS;
    
    if (*(char *)0x3e66 == '\x1b') {
        return;
    }
    if (*(char *)0x3e66 != *(char *)0x83) {
        return;
    }
    iVar2 = (uint16_t)*(uint8_t *)0x83 * 4 + 0x5238;
    iVar1 = 2;
    do {
        fcn.00000525(iVar2);
        iVar2 = iVar1 + 4;
        iVar1 = unaff_SI + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x525: fcn.00000525 */
/* ====================================================================== */


void fcn.00000525(void)
{
    int16_t iVar1;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = 3;
    do {
        *unaff_DI = *unaff_SI;
        unaff_DI[1] = unaff_SI[1];
        puVar3 = unaff_DI + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = unaff_DI + -0x2fb0;
        }
        *puVar3 = unaff_SI[2];
        puVar3[1] = unaff_SI[3];
        puVar2 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar2) {
            puVar2 = puVar3 + -0x2fb0;
        }
        *puVar2 = unaff_SI[4];
        puVar2[1] = unaff_SI[5];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar2 + -0x2fb0;
        }
        *puVar3 = unaff_SI[6];
        puVar3[1] = unaff_SI[7];
        puVar2 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar2) {
            puVar2 = puVar3 + -0x2fb0;
        }
        *puVar2 = unaff_SI[8];
        puVar2[1] = unaff_SI[9];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar2 + -0x2fb0;
        }
        *puVar3 = unaff_SI[10];
        puVar3[1] = unaff_SI[0xb];
        puVar2 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar2) {
            puVar2 = puVar3 + -0x2fb0;
        }
        *puVar2 = unaff_SI[0xc];
        puVar2[1] = unaff_SI[0xd];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar2 + -0x2fb0;
        }
        puVar2 = unaff_SI + 0xf;
        *puVar3 = unaff_SI[0xe];
        unaff_SI = unaff_SI + 0x10;
        puVar3[1] = *puVar2;
        unaff_DI = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < unaff_DI) {
            unaff_DI = puVar3 + -0x2fb0;
        }
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x277: fcn.00000277 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000277(int16_t arg3, int16_t arg2)
{
    uint8_t uVar1;
    undefined2 uVar2;
    undefined2 *puVar3;
    uint16_t *puVar4;
    char cVar5;
    int16_t iVar6;
    uint16_t uVar7;
    uint16_t arg2_00;
    uint16_t extraout_DX;
    uint16_t *puVar8;
    undefined2 *puVar9;
    undefined2 *puVar10;
    int16_t unaff_SI;
    uint16_t *puVar11;
    int16_t unaff_DI;
    uint16_t *puVar12;
    char *pcVar13;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar5 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar5 == -1) {
        return;
    }
    uVar1 = *(uint8_t *)(unaff_SI + -1);
    cVar5 = *(char *)((uint16_t)uVar1 + *(int16_t *)0x8000);
    uVar7 = CONCAT11(cVar5, uVar1);
    if (cVar5 != '\0') {
        *(undefined *)(unaff_DI + -1) = *(undefined *)(unaff_SI + -1);
        uVar2 = *(undefined2 *)0xff2c;
        puVar4 = (uint16_t *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3e64);
        puVar11 = (uint16_t *)((uint16_t)uVar1 * 0x20 + -0x7f00);
        puVar8 = (uint16_t *)((arg3 & 0xffU) * 0x20 + (uint16_t)*(uint8_t *)0x3e66 * 0x60 + -0x6000);
        if (cVar5 == '\x04') {
            iVar6 = 8;
            do {
                *puVar4 = *puVar8;
                puVar4[1] = puVar8[1];
                puVar8 = puVar8 + 2;
                puVar11 = puVar4 + 0x1000;
                if ((uint16_t *)0x7fff < puVar11) {
                    puVar11 = puVar4 + -0x2fb0;
                }
                iVar6 = iVar6 + -1;
                puVar4 = puVar11;
            } while (iVar6 != 0);
        } else {
            do {
                fcn.00000e4f(uVar7);
                *puVar4 = *puVar8 & arg2_00 | *puVar11;
                fcn.00000e4f(arg2_00);
                puVar4[1] = puVar8[1] & extraout_DX | puVar11[1];
                puVar8 = puVar8 + 2;
                puVar11 = puVar11 + 2;
                puVar12 = puVar4 + 0x1000;
                if ((uint16_t *)0x7fff < puVar12) {
                    puVar12 = puVar4 + -0x2fb0;
                }
                uVar7 = extraout_DX;
                puVar4 = puVar12;
            } while (unaff_SI != 1);
            unaff_SI = 1;
        }
        uVar1 = *(uint8_t *)(unaff_DI + -1);
        if (uVar1 != 0) {
            if (0x18 < uVar1) {
                return;
            }
            pcVar13 = *(char **)0x8004;
            cVar5 = *pcVar13;
            while( true ) {
                if (cVar5 == '\0') {
                    return;
                }
                if (pcVar13[1] == 0xff) break;
                if (uVar1 == pcVar13[1]) {
                    *(char *)(unaff_SI + -1) = pcVar13[2];
                    return;
                }
                pcVar13 = pcVar13 + 2;
                cVar5 = cVar5 + -1;
            }
            return;
        }
        return;
    }
    cVar5 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar5 == -1) {
        return;
    }
    uVar7 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar3 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3e64);
    iVar6 = uVar7 * 2;
    if (*(int16_t *)(iVar6 + 0x431b) != 0) {
        puVar9 = *(undefined2 **)(iVar6 + 0x431b);
        *puVar3 = *puVar9;
        puVar3[1] = puVar9[1];
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        puVar3 = puVar9 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar9 + -0x2fb0;
        }
        *puVar10 = *puVar3;
        puVar10[1] = puVar3[1];
        puVar9 = puVar10 + 0x1000;
        if ((undefined2 *)0x7fff < puVar9) {
            puVar9 = puVar10 + -0x2fb0;
        }
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        *puVar9 = *puVar10;
        puVar9[1] = puVar10[1];
        puVar3 = puVar9 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar9 + -0x2fb0;
        }
        puVar9 = puVar10 + 0x1000;
        if ((undefined2 *)0x7fff < puVar9) {
            puVar9 = puVar10 + -0x2fb0;
        }
        *puVar3 = *puVar9;
        puVar3[1] = puVar9[1];
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        puVar3 = puVar9 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar9 + -0x2fb0;
        }
        *puVar10 = *puVar3;
        puVar10[1] = puVar3[1];
        puVar9 = puVar10 + 0x1000;
        if ((undefined2 *)0x7fff < puVar9) {
            puVar9 = puVar10 + -0x2fb0;
        }
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        *puVar9 = *puVar10;
        puVar9[1] = puVar10[1];
        puVar3 = puVar9 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar9 + -0x2fb0;
        }
        puVar9 = puVar10 + 0x1000;
        if ((undefined2 *)0x7fff < puVar9) {
            puVar9 = puVar10 + -0x2fb0;
        }
        *puVar3 = *puVar9;
        puVar3[1] = puVar9[1];
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        puVar3 = puVar9 + 0x1000;
        if ((undefined2 *)0x7fff < puVar3) {
            puVar3 = puVar9 + -0x2fb0;
        }
        *puVar10 = *puVar3;
        puVar10[1] = puVar3[1];
        return;
    }
    *(undefined2 **)(iVar6 + 0x431b) = puVar3;
    uVar2 = *(undefined2 *)0xff2c;
    puVar9 = (undefined2 *)(uVar7 * 0x20 + -0x7f00);
    iVar6 = 8;
    do {
        puVar10 = puVar9 + 1;
        *puVar3 = *puVar9;
        puVar9 = puVar9 + 2;
        puVar3[1] = *puVar10;
        puVar10 = puVar3 + 0x1000;
        if ((undefined2 *)0x7fff < puVar10) {
            puVar10 = puVar3 + -0x2fb0;
        }
        iVar6 = iVar6 + -1;
        puVar3 = puVar10;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0xe4f: fcn.00000e4f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000e4f(int16_t arg2)
{
    int16_t iVar1;
    
    iVar1 = 4;
    do {
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x129: fcn.00000129 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000129(int16_t arg3, int16_t arg2)
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
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar1 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar1 == -1) {
        return;
    }
    uVar5 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar3 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3e64);
    iVar4 = uVar5 * 2;
    if (*(int16_t *)(iVar4 + 0x431b) == 0) {
        *(undefined2 **)(iVar4 + 0x431b) = puVar3;
        uVar2 = *(undefined2 *)0xff2c;
        puVar6 = (undefined2 *)(uVar5 * 0x20 + -0x7f00);
        iVar4 = 8;
        do {
            puVar7 = puVar6 + 1;
            *puVar3 = *puVar6;
            puVar6 = puVar6 + 2;
            puVar3[1] = *puVar7;
            puVar7 = puVar3 + 0x1000;
            if ((undefined2 *)0x7fff < puVar7) {
                puVar7 = puVar3 + -0x2fb0;
            }
            iVar4 = iVar4 + -1;
            puVar3 = puVar7;
        } while (iVar4 != 0);
        return;
    }
    puVar6 = *(undefined2 **)(iVar4 + 0x431b);
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    *puVar6 = *puVar7;
    puVar6[1] = puVar7[1];
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    *puVar6 = *puVar7;
    puVar6[1] = puVar7[1];
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    return;
}

/* ====================================================================== */
/* 0x120: fcn.00000120 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000120(int16_t arg3, int16_t arg2)
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
    undefined2 unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000000;
    int16_t *in_stack_00000002;
    undefined2 in_stack_00000004;
    
    if (*(char *)((int16_t)unaff_SI + -1) == -3) {
        *(undefined2 *)0x3e68 = *unaff_SI;
        *(undefined2 *)0x3e6a = *(undefined2 *)((int16_t)unaff_SI + 7);
        *(undefined *)0x3e6c = *(undefined *)((int16_t)unaff_SI + 9);
        *(int16_t *)0x3e6d = (uint16_t)(uint8_t)(*(char *)0x3e66 + 4) + *(int16_t *)0x80;
        iVar4 = fcn.000004fe();
        *(undefined *)0x3e67 = (char)iVar4;
        if (*(char *)0x3e6a == -3) {
            iVar4 = fcn.000004fe();
            *(undefined *)0x3e6a = (char)iVar4;
        }
        fcn.0000039a(iVar4);
        arg3_00 = *(int16_t **)0xc00f;
        iVar4 = unaff_DS;
        do {
            arg1 = fcn.000005f8();
            if ((char)arg3 != '\0') {
                fcn.000005d2(arg1);
                iVar4 = 0x41a;
                fcn.000005b0((int16_t)arg3_00);
                arg3 = (int16_t)arg3_00;
                arg3_00 = in_stack_00000002;
            }
            arg3_00 = arg3_00 + 4;
        } while (*arg3_00 != -1);
        if (*(char *)(iVar4 + -1) != -1) {
            fcn.00000525(*(int16_t *)0x3e64 + 0x640, CONCAT11(*(char *)(iVar4 + -1), *(undefined *)(iVar4 + 7)));
        }
        if ((*(char *)0x3e66 != '\x1b') && ((char)iVar4 != -1)) {
            fcn.00000525();
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
    puVar3 = (undefined2 *)((arg3 & 0xffU) * 0x140 + *(int16_t *)0x3e64);
    iVar4 = uVar5 * 2;
    if (*(int16_t *)(iVar4 + 0x431b) == 0) {
        *(undefined2 **)(iVar4 + 0x431b) = puVar3;
        uVar2 = *(undefined2 *)0xff2c;
        puVar6 = (undefined2 *)(uVar5 * 0x20 + -0x7f00);
        iVar4 = 8;
        do {
            puVar7 = puVar6 + 1;
            *puVar3 = *puVar6;
            puVar6 = puVar6 + 2;
            puVar3[1] = *puVar7;
            puVar7 = puVar3 + 0x1000;
            if ((undefined2 *)0x7fff < puVar7) {
                puVar7 = puVar3 + -0x2fb0;
            }
            iVar4 = iVar4 + -1;
            puVar3 = puVar7;
        } while (iVar4 != 0);
        return;
    }
    puVar6 = *(undefined2 **)(iVar4 + 0x431b);
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    *puVar6 = *puVar7;
    puVar6[1] = puVar7[1];
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    *puVar6 = *puVar7;
    puVar6[1] = puVar7[1];
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    puVar6 = puVar7 + 0x1000;
    if ((undefined2 *)0x7fff < puVar6) {
        puVar6 = puVar7 + -0x2fb0;
    }
    *puVar3 = *puVar6;
    puVar3[1] = puVar6[1];
    puVar7 = puVar3 + 0x1000;
    if ((undefined2 *)0x7fff < puVar7) {
        puVar7 = puVar3 + -0x2fb0;
    }
    puVar3 = puVar6 + 0x1000;
    if ((undefined2 *)0x7fff < puVar3) {
        puVar3 = puVar6 + -0x2fb0;
    }
    *puVar7 = *puVar3;
    puVar7[1] = puVar3[1];
    return;
}

/* ====================================================================== */
/* 0x4fe: fcn.000004fe */
/* ====================================================================== */


void fcn.000004fe(void)
{
    char *pcVar1;
    int16_t in_DX;
    short unsigned int extraout_DX;
    short unsigned int arg2;
    short unsigned int extraout_DX_00;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    fcn.00000517(in_DX);
    arg2 = extraout_DX;
    if (*(char *)(unaff_SI + 3) != -3) {
        return;
    }
    do {
        fcn.0000051b(arg2);
        pcVar1 = (char *)(unaff_SI + 0xb);
        arg2 = extraout_DX_00;
        unaff_SI = unaff_SI + 8;
    } while (*pcVar1 == -3);
    return;
}

/* ====================================================================== */
/* 0x517: fcn.00000517 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000517(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x51b: fcn.0000051b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000051b(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x39a: fcn.0000039a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000039a(int16_t arg1)
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
        puVar7 = (undefined2 *)((uint16_t)*puVar1 * 0x20 + -0x7f00);
        for (iVar6 = 0x10; iVar6 != 0; iVar6 = iVar6 + -1) {
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
/* 0x5f8: fcn.000005f8 */
/* ====================================================================== */


void fcn.000005f8(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 2;
    iVar2 = *(int16_t *)0x3e6d;
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
/* 0x5d2: fcn.000005d2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char fcn.000005d2(int16_t arg1)
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
/* 0x5b0: fcn.000005b0 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000005b0(int16_t arg3)
{
    (**(code **)((uint16_t)(uint8_t)((char)arg3 - 1) * 2 + 0x35ba))();
    return;
}

/* ====================================================================== */
/* 0x39d: fcn.0000039d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000039d(int16_t arg4, int16_t arg1)
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
        puVar6 = (undefined2 *)((uint16_t)*puVar1 * 0x20 + -0x7f00);
        for (iVar5 = 0x10; iVar5 != 0; iVar5 = iVar5 + -1) {
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
/* 0x638: fcn.00000638 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000638(int16_t arg1)
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
        *(int16_t *)0x3e77 = ((uint16_t)(uint8_t)(*unaff_BP - 1) * 0x20 >> 2) + 0x7000;
        *(undefined2 *)0x3e79 = 0x2000;
        fcn.000006b3(0x2000);
        puVar1 = (undefined *)(in_stack_00000000 + -1);
        unaff_BP = unaff_ES;
        unaff_SI = unaff_DS;
        unaff_ES = pcVar3;
        unaff_DS = puVar2;
    } while ((undefined *)(in_stack_00000000 + -1) != (undefined *)0x0);
    return;
}

/* ====================================================================== */
/* 0x6b3: fcn.000006b3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000006b3(int16_t arg1)
{
    uint16_t *puVar1;
    int16_t iVar2;
    uint16_t in_DX;
    uint16_t arg2;
    uint16_t extraout_DX;
    int16_t unaff_SI;
    uint16_t *unaff_DI;
    uint16_t *puVar3;
    undefined2 unaff_ES;
    uint16_t *in_stack_00000000;
    undefined2 in_stack_00000002;
    
    puVar3 = unaff_DI;
    do {
        fcn.00000e4f(in_DX);
        *unaff_DI = *unaff_DI & arg2;
        fcn.00000e4f(arg2);
        unaff_DI[1] = unaff_DI[1] & extraout_DX;
        unaff_DI = unaff_DI + 2;
        in_DX = extraout_DX;
    } while (unaff_SI != 1);
    iVar2 = 8;
    do {
        puVar1 = in_stack_00000000 + 1;
        *puVar3 = *puVar3 | *in_stack_00000000;
        in_stack_00000000 = in_stack_00000000 + 2;
        puVar3[1] = puVar3[1] | *puVar1;
        puVar3 = puVar3 + 2;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0xe31: fcn.00000e31 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00000e31(int16_t arg2, int16_t arg3)
{
    return ((uint16_t)arg3 >> 2 & 0x3f) * 0xa0 +
           (uint16_t)((uint8_t)((uint8_t)((uint8_t)arg3 << 7) >> 1 | ((uint8_t)arg3 >> 1) << 7) >> 1) * 0x100 +
           ((uint16_t)arg3 >> 8);
}

/* ====================================================================== */
/* 0x8ff: fcn.000008ff */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000008ff(int16_t arg3)
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
        in_AX = fcn.0000091c(CONCAT11((char)((uint16_t)in_AX >> 8), *unaff_SI), (uint16_t)pcVar1 & 0xff01);
        pcVar1 = (char *)CONCAT11((char)((uint16_t)in_stack_00000000 >> 8), (char)in_stack_00000000 + '\x01');
        unaff_SI = unaff_DS;
        unaff_DS = pcVar2;
    }
    return;
}

/* ====================================================================== */
/* 0x91c: fcn.0000091c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000091c(int16_t arg1, int16_t arg3)
{
    undefined2 uVar1;
    uint8_t extraout_AH;
    uint8_t uVar2;
    char cVar3;
    uint16_t uVar4;
    uint16_t *unaff_DI;
    uint16_t *puVar5;
    undefined2 unaff_ES;
    char in_stack_00000000;
    
    uVar2 = (char)arg3 << 2;
    cVar3 = '\b';
    puVar5 = unaff_DI;
    do {
        uVar1 = fcn.0000096d(cVar3);
        fcn.0000096d(uVar1);
        uVar4 = CONCAT11((char)((uint16_t)unaff_DI >> 8), extraout_AH) >> (uVar2 & 0x1f);
        *puVar5 = *puVar5 | CONCAT11((char)uVar4, (char)(uVar4 >> 8));
        puVar5[1] = puVar5[1] | ((uint16_t)extraout_AH << 8) >> (uVar2 & 0x1f) & 0xff;
        puVar5 = puVar5 + 0x28;
        cVar3 = in_stack_00000000 + -1;
    } while (cVar3 != '\0');
    if (uVar2 != 4) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x96d: fcn.0000096d */
/* ====================================================================== */


void fcn.0000096d(void)
{
    char cVar1;
    
    cVar1 = '\x02';
    do {
        cVar1 = cVar1 + -1;
    } while (cVar1 != '\0');
    return;
}

/* ====================================================================== */
/* 0x9ad: fcn.000009ad */
/* ====================================================================== */


void fcn.000009ad(int16_t param_1)
{
    int16_t iVar1;
    int16_t iVar2;
    undefined *puVar3;
    undefined *puVar4;
    undefined *puVar5;
    undefined2 unaff_DS;
    
    fcn.00000a0b();
    iVar1 = *(int16_t *)0xff68 * 2;
    iVar2 = 6;
    puVar3 = (undefined *)0x3a20;
    puVar4 = (undefined *)(iVar1 + 0x3ecc);
    do {
        iVar1 = fcn.000009d3(CONCAT11((char)((uint16_t)iVar1 >> 8), *puVar3));
        puVar5 = (undefined *)(iVar2 + 3);
        iVar2 = param_1 + -1;
        puVar3 = puVar4;
        puVar4 = puVar5;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0xa0b: fcn.00000a0b */
/* ====================================================================== */


void fcn.00000a0b(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x3a1f;
    fcn.00000a2a();
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
/* 0xa2a: fcn.00000a2a */
/* ====================================================================== */


void fcn.00000a2a(void)
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
    
    iVar2 = fcn.00000a70(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = fcn.00000a70(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = fcn.00000a70(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.00000a89(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.00000a89(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.00000a89(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0xa70: fcn.00000a70 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a70(int16_t arg1, int16_t arg3)
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
code_r0x00000a86:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x00000a86;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0xa89: fcn.00000a89 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000a89(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x9d3: fcn.000009d3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000009d3(int16_t arg1)
{
    uint8_t extraout_AH;
    uint8_t extraout_AH_00;
    uint8_t extraout_AH_01;
    int16_t iVar1;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    
    if ((char)arg1 == -1) {
        return;
    }
    iVar1 = 7;
    do {
        fcn.0000096d();
        *unaff_DI = *unaff_DI | extraout_AH;
        fcn.0000096d();
        unaff_DI[1] = unaff_DI[1] | extraout_AH_00;
        fcn.0000096d();
        unaff_DI[2] = unaff_DI[2] | extraout_AH_01;
        unaff_DI = unaff_DI + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0xd90: fcn.00000d90 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000d90(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t iVar4;
    
    iVar4 = 4;
    do {
        uVar1 = *(uint16_t *)0x3e73 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3e73 < 0);
        uVar2 = *(uint16_t *)0x3e71 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3e71 < 0);
        uVar3 = *(uint16_t *)0x3e6f << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3e6f < 0);
        *(uint16_t *)0x3e73 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x3e71 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x3e6f = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0xe0f: fcn.00000e0f */
/* ====================================================================== */


void fcn.00000e0f(void)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x3e75 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3e75 < 0);
        *(uint16_t *)0x3e75 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

