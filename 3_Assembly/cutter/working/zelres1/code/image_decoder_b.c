/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x2d2 = "vvvvvvvv;"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_09 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_09(int16_t arg2, int16_t arg3)
{
    uint8_t *puVar1;
    char cVar2;
    undefined2 *puVar3;
    uint16_t in_AX;
    uint8_t in_CL;
    int16_t in_DX;
    int16_t in_BX;
    undefined2 *puVar4;
    int16_t unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t in_CF;
    undefined2 uStack_4;
    
    arg2 = in_DX + *(int16_t *)(in_BX + unaff_DI) + (uint16_t)in_CF;
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + (char)in_AX;
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) - (char)((uint16_t)arg2 >> 8);
    puVar1 = (uint8_t *)(in_BX + unaff_DI + -0xbcb);
    *puVar1 = *puVar1 ^ in_CL;
    puVar3 = (undefined2 *)((in_AX | 0x3a) ^ 0x362c);
    puVar4 = &uStack_4;
    cVar2 = '\x14';
    do {
        puVar3 = puVar3 + -1;
        puVar4 = puVar4 + -1;
        *puVar4 = *puVar3;
        cVar2 = cVar2 + -1;
    } while ('\0' < cVar2);
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x3b1: decb_scan_loop */
/* ====================================================================== */


void decb_scan_loop(undefined2 param_1, int16_t *param_2)
{
    int16_t iVar1;
    int16_t in_AX;
    uint8_t in_BL;
    int16_t *arg1;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xff2a;
    *(undefined2 *)0x3caf = *(undefined2 *)(iVar1 + 0x25);
    *(undefined *)0x3cb1 = *(undefined *)(iVar1 + 0x27);
    *(int16_t *)0x3cb5 = *(int16_t *)0x80 + 3;
    if (*(char *)0x3caf == -3) {
        in_AX = decb_get_value();
        *(undefined *)0x3caf = (char)in_AX;
    }
    copy_buffer_3(3, in_AX);
    arg1 = *(int16_t **)0xc00f;
    do {
        decb_process_loop();
        if (in_BL != 0) {
            in_BL = in_BL - 1;
            copy_buffer((uint16_t)in_BL * 3);
            copy_buffer_4((int16_t)arg1);
            arg1 = param_2;
        }
        arg1 = arg1 + 4;
    } while (*arg1 != -1);
    decb_multiply();
    *(undefined *)0xe005 = 0xff;
    *(undefined *)0xe006 = 0xff;
    *(undefined *)0xe007 = 0xff;
    return;
}

/* ====================================================================== */
/* 0xdf: decb_func_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_func_2(int16_t arg1)
{
    int16_t iVar1;
    int16_t unaff_SI;
    int16_t iVar2;
    undefined2 unaff_DS;
    
    if (*(char *)0x3cae == '\x1b') {
        return;
    }
    if (*(char *)0x3cae != *(char *)0x83) {
        return;
    }
    iVar2 = (uint8_t)(*(char *)0x83 * '\x02') + 0x50f1;
    iVar1 = 2;
    do {
        decb_multiply(iVar2);
        iVar2 = iVar1 + 2;
        iVar1 = unaff_SI + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x457: decb_multiply */
/* ====================================================================== */


void decb_multiply(void)
{
    int16_t iVar1;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar2;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = 0x18;
    do {
        *unaff_DI = *unaff_SI;
        puVar2 = unaff_DI + 0x1000;
        if ((undefined2 *)0x5fff < puVar2) {
            *puVar2 = *unaff_SI;
            puVar2 = unaff_DI + -0x1fd3;
        }
        iVar1 = iVar1 + -1;
        unaff_SI = unaff_SI + 1;
        unaff_DI = puVar2;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x1d0: decb_func_8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_func_8(int16_t arg3)
{
    uint16_t *puVar1;
    uint16_t *puVar2;
    uint8_t uVar3;
    undefined2 uVar4;
    uint16_t uVar5;
    char cVar6;
    int16_t iVar7;
    int16_t iVar8;
    uint8_t uVar9;
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
    
    cVar6 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar6 == -1) {
        return;
    }
    uVar3 = *(uint8_t *)(unaff_SI + -1);
    uVar9 = (uint8_t)arg3;
    if (*(char *)((uint16_t)uVar3 + *(int16_t *)0x8000) != '\0') {
        *(undefined *)(unaff_DI + -1) = *(undefined *)(unaff_SI + -1);
        uVar4 = *(undefined2 *)0xff2c;
        puVar16 = *(uint16_t **)0x3cac;
        uVar5 = arg3;
        while (uVar9 != 0) {
            puVar10 = puVar16 + 0x205a;
            if ((uint16_t *)0x5fff < puVar10) {
                puVar10 = puVar16 + -0xf79;
            }
            uVar9 = (char)uVar5 - 1;
            uVar5 = (uint16_t)uVar9;
            puVar16 = puVar10;
        }
        iVar7 = (uint16_t)uVar3 * 0x10;
        puVar14 = (uint16_t *)(iVar7 + -0x7f00);
        puVar11 = (uint16_t *)(iVar7 + -0x3000);
        puVar10 = (uint16_t *)(arg3 * 0x10 + (uint16_t)*(uint8_t *)0x3cae * 0x30 + -0x6000);
        iVar7 = 8;
        do {
            puVar1 = puVar10;
            puVar10 = puVar10 + 1;
            puVar2 = puVar11;
            puVar11 = puVar11 + 1;
            uVar5 = *puVar1 & *puVar2 | *puVar14;
            puVar14 = puVar14 + 1;
            *puVar16 = uVar5;
            puVar17 = puVar16 + 0x1000;
            if ((uint16_t *)0x5fff < puVar17) {
                *puVar17 = uVar5;
                puVar17 = puVar16 + -0x1fd3;
            }
            iVar7 = iVar7 + -1;
            puVar16 = puVar17;
        } while (iVar7 != 0);
        uVar3 = *(uint8_t *)(unaff_DI + -1);
        if (uVar3 != 0) {
            if (0x18 < uVar3) {
                return;
            }
            pcVar18 = *(char **)0x8004;
            cVar6 = *pcVar18;
            while( true ) {
                if (cVar6 == '\0') {
                    return;
                }
                if (pcVar18[1] == 0xff) break;
                if (uVar3 == pcVar18[1]) {
                    *(char *)(unaff_SI + -1) = pcVar18[2];
                    return;
                }
                pcVar18 = pcVar18 + 2;
                cVar6 = cVar6 + -1;
            }
            return;
        }
        return;
    }
    cVar6 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar6 == -1) {
        return;
    }
    uVar3 = *(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar13 = *(undefined2 **)0x3cac;
    while (uVar9 != 0) {
        puVar12 = puVar13 + 0x205a;
        if ((undefined2 *)0x5fff < puVar12) {
            puVar12 = puVar13 + -0xf79;
        }
        uVar9 = (char)arg3 - 1;
        arg3 = (int16_t)uVar9;
        puVar13 = puVar12;
    }
    iVar7 = (uint16_t)uVar3 * 2;
    if (*(int16_t *)(iVar7 + 0x3f13) == 0) {
        *(undefined2 **)(iVar7 + 0x3f13) = puVar13;
        uVar4 = *(undefined2 *)0xff2c;
        iVar7 = 8;
        puVar12 = (undefined2 *)((uint16_t)uVar3 * 0x10 + -0x7f00);
        do {
            *puVar13 = *puVar12;
            puVar15 = puVar13 + 0x1000;
            if ((undefined2 *)0x5fff < puVar15) {
                *puVar15 = *puVar12;
                puVar15 = puVar13 + -0x1fd3;
            }
            iVar7 = iVar7 + -1;
            puVar12 = puVar12 + 1;
            puVar13 = puVar15;
        } while (iVar7 != 0);
        return;
    }
    iVar8 = 8;
    puVar12 = *(undefined2 **)(iVar7 + 0x3f13);
    do {
        *puVar13 = *puVar12;
        puVar15 = puVar13 + 0x1000;
        if ((undefined2 *)0x5fff < puVar15) {
            *puVar15 = *puVar12;
            puVar15 = puVar13 + -0x1fd3;
        }
        puVar13 = puVar12 + 0x1000;
        if ((undefined2 *)0x5fff < puVar13) {
            puVar13 = puVar12 + -0x1fd3;
        }
        iVar8 = iVar8 + -1;
        puVar12 = puVar13;
        puVar13 = puVar15;
    } while (iVar8 != 0);
    return;
}

/* ====================================================================== */
/* 0x124: decb_func_9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_func_9(int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 uVar3;
    int16_t iVar4;
    int16_t iVar5;
    uint8_t uVar6;
    int16_t unaff_SI;
    undefined2 *puVar7;
    undefined2 *puVar8;
    int16_t unaff_DI;
    undefined2 *puVar9;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar1 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar1 == -1) {
        return;
    }
    uVar2 = *(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    uVar6 = (uint8_t)arg3;
    puVar8 = *(undefined2 **)0x3cac;
    while (uVar6 != 0) {
        puVar7 = puVar8 + 0x205a;
        if ((undefined2 *)0x5fff < puVar7) {
            puVar7 = puVar8 + -0xf79;
        }
        uVar6 = (char)arg3 - 1;
        arg3 = (int16_t)uVar6;
        puVar8 = puVar7;
    }
    iVar4 = (uint16_t)uVar2 * 2;
    if (*(int16_t *)(iVar4 + 0x3f13) != 0) {
        iVar5 = 8;
        puVar7 = *(undefined2 **)(iVar4 + 0x3f13);
        do {
            *puVar8 = *puVar7;
            puVar9 = puVar8 + 0x1000;
            if ((undefined2 *)0x5fff < puVar9) {
                *puVar9 = *puVar7;
                puVar9 = puVar8 + -0x1fd3;
            }
            puVar8 = puVar7 + 0x1000;
            if ((undefined2 *)0x5fff < puVar8) {
                puVar8 = puVar7 + -0x1fd3;
            }
            iVar5 = iVar5 + -1;
            puVar7 = puVar8;
            puVar8 = puVar9;
        } while (iVar5 != 0);
        return;
    }
    *(undefined2 **)(iVar4 + 0x3f13) = puVar8;
    uVar3 = *(undefined2 *)0xff2c;
    iVar4 = 8;
    puVar7 = (undefined2 *)((uint16_t)uVar2 * 0x10 + -0x7f00);
    do {
        *puVar8 = *puVar7;
        puVar9 = puVar8 + 0x1000;
        if ((undefined2 *)0x5fff < puVar9) {
            *puVar9 = *puVar7;
            puVar9 = puVar8 + -0x1fd3;
        }
        iVar4 = iVar4 + -1;
        puVar7 = puVar7 + 1;
        puVar8 = puVar9;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x11b: decb_scan_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_scan_loop_2(int16_t arg3, int16_t arg2)
{
    uint8_t uVar1;
    undefined2 uVar2;
    int16_t iVar3;
    int16_t iVar4;
    uint8_t uVar5;
    char cVar6;
    int16_t *arg3_00;
    undefined2 *unaff_SI;
    undefined2 *puVar7;
    undefined2 *puVar8;
    int16_t unaff_DI;
    undefined2 *puVar9;
    uint16_t uVar10;
    undefined2 unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000000;
    int16_t *in_stack_00000002;
    undefined2 in_stack_00000004;
    uint16_t uVar11;
    
    if (*(char *)((int16_t)unaff_SI + -1) == -3) {
        *(undefined2 *)0x3cb0 = *unaff_SI;
        *(undefined2 *)0x3cb2 = *(undefined2 *)((int16_t)unaff_SI + 7);
        *(undefined *)0x3cb4 = *(undefined *)((int16_t)unaff_SI + 9);
        *(int16_t *)0x3cb5 = (uint16_t)(uint8_t)(*(char *)0x3cae + 4) + *(int16_t *)0x80;
        iVar3 = decb_get_value();
        *(undefined *)0x3caf = (char)iVar3;
        if (*(char *)0x3cb2 == -3) {
            iVar3 = decb_get_value();
            *(undefined *)0x3cb2 = (char)iVar3;
        }
        decb_multiply_3(iVar3);
        arg3_00 = *(int16_t **)0xc00f;
        iVar3 = unaff_DS;
        do {
            iVar4 = decb_process_loop();
            if ((char)arg3 != '\0') {
                copy_buffer(iVar4);
                iVar3 = 0x33d;
                copy_buffer_2((int16_t)arg3_00);
                arg3 = (int16_t)arg3_00;
                arg3_00 = in_stack_00000002;
            }
            arg3_00 = arg3_00 + 4;
        } while (*arg3_00 != -1);
        cVar6 = '\x05';
        uVar11 = *(uint16_t *)0x3cac;
        do {
            uVar10 = uVar11 + 0x40b4;
            if (0x5fff < uVar10) {
                uVar10 = uVar11 + 0xe10e;
            }
            cVar6 = cVar6 + -1;
            uVar11 = uVar10;
        } while (cVar6 != '\0');
        if (*(char *)(iVar3 + -1) != -1) {
            decb_multiply(uVar10, CONCAT11(*(char *)(iVar3 + -1), *(undefined *)(iVar3 + 7)));
        }
        if ((*(char *)0x3cae != '\x1b') && ((char)iVar3 != -1)) {
            decb_multiply();
        }
        *(undefined *)((int16_t)in_stack_00000002 + -1) = 0xfe;
        *(undefined *)in_stack_00000002 = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 1) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 7) = 0xff;
        *(undefined *)(in_stack_00000002 + 4) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 9) = 0xff;
        return;
    }
    cVar6 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar6 != -1) {
        uVar1 = *(uint8_t *)((int16_t)unaff_SI + -1);
        *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)((int16_t)unaff_SI + -1);
        uVar5 = (uint8_t)arg3;
        puVar8 = *(undefined2 **)0x3cac;
        while (uVar5 != 0) {
            puVar7 = puVar8 + 0x205a;
            if ((undefined2 *)0x5fff < puVar7) {
                puVar7 = puVar8 + -0xf79;
            }
            uVar5 = (char)arg3 - 1;
            arg3 = (int16_t)uVar5;
            puVar8 = puVar7;
        }
        iVar3 = (uint16_t)uVar1 * 2;
        if (*(int16_t *)(iVar3 + 0x3f13) != 0) {
            iVar4 = 8;
            puVar7 = *(undefined2 **)(iVar3 + 0x3f13);
            do {
                *puVar8 = *puVar7;
                puVar9 = puVar8 + 0x1000;
                if ((undefined2 *)0x5fff < puVar9) {
                    *puVar9 = *puVar7;
                    puVar9 = puVar8 + -0x1fd3;
                }
                puVar8 = puVar7 + 0x1000;
                if ((undefined2 *)0x5fff < puVar8) {
                    puVar8 = puVar7 + -0x1fd3;
                }
                iVar4 = iVar4 + -1;
                puVar7 = puVar8;
                puVar8 = puVar9;
            } while (iVar4 != 0);
            return;
        }
        *(undefined2 **)(iVar3 + 0x3f13) = puVar8;
        uVar2 = *(undefined2 *)0xff2c;
        iVar3 = 8;
        puVar7 = (undefined2 *)((uint16_t)uVar1 * 0x10 + -0x7f00);
        do {
            *puVar8 = *puVar7;
            puVar9 = puVar8 + 0x1000;
            if ((undefined2 *)0x5fff < puVar9) {
                *puVar9 = *puVar7;
                puVar9 = puVar8 + -0x1fd3;
            }
            iVar3 = iVar3 + -1;
            puVar7 = puVar7 + 1;
            puVar8 = puVar9;
        } while (iVar3 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x430: decb_get_value */
/* ====================================================================== */


void decb_get_value(void)
{
    char *pcVar1;
    int16_t in_DX;
    short unsigned int extraout_DX;
    short unsigned int arg2;
    short unsigned int extraout_DX_00;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    decb_multiply_2(in_DX);
    arg2 = extraout_DX;
    if (*(char *)(unaff_SI + 3) != -3) {
        return;
    }
    do {
        decb_scan_loop_3(arg2);
        pcVar1 = (char *)(unaff_SI + 0xb);
        arg2 = extraout_DX_00;
        unaff_SI = unaff_SI + 8;
    } while (*pcVar1 == -3);
    return;
}

/* ====================================================================== */
/* 0x449: decb_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_multiply_2(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x44d: decb_scan_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_scan_loop_3(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x2ba: decb_multiply_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_multiply_3(int16_t arg1)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    int16_t iVar4;
    int16_t iVar5;
    uint8_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    iVar5 = 6;
    do {
        uVar3 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        iVar4 = (uint16_t)*puVar1 * 0x10;
        *unaff_DI = *(undefined2 *)(iVar4 + -0x7f00);
        unaff_DI[1] = *(undefined2 *)(iVar4 + -0x7efe);
        unaff_DI[2] = *(undefined2 *)(iVar4 + -0x7efc);
        unaff_DI[3] = *(undefined2 *)(iVar4 + -0x7efa);
        unaff_DI[4] = *(undefined2 *)(iVar4 + -0x7ef8);
        unaff_DI[5] = *(undefined2 *)(iVar4 + -0x7ef6);
        puVar2 = unaff_DI + 7;
        unaff_DI[6] = *(undefined2 *)(iVar4 + -0x7ef4);
        unaff_DI = unaff_DI + 8;
        *puVar2 = *(undefined2 *)(iVar4 + -0x7ef2);
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0x4b8: decb_process_loop */
/* ====================================================================== */


void decb_process_loop(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 2;
    iVar2 = *(int16_t *)0x3cb5;
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
/* 0x492: copy_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char copy_buffer(int16_t arg1)
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
/* 0x470: copy_buffer_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_2(int16_t arg3)
{
    (**(code **)((uint16_t)(uint8_t)((char)arg3 - 1) * 2 + 0x347a))();
    return;
}

/* ====================================================================== */
/* 0x2bd: copy_buffer_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_3(int16_t arg4, int16_t arg1)
{
    uint8_t *puVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    int16_t iVar4;
    uint8_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    do {
        uVar3 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        iVar4 = (uint16_t)*puVar1 * 0x10;
        *unaff_DI = *(undefined2 *)(iVar4 + -0x7f00);
        unaff_DI[1] = *(undefined2 *)(iVar4 + -0x7efe);
        unaff_DI[2] = *(undefined2 *)(iVar4 + -0x7efc);
        unaff_DI[3] = *(undefined2 *)(iVar4 + -0x7efa);
        unaff_DI[4] = *(undefined2 *)(iVar4 + -0x7ef8);
        unaff_DI[5] = *(undefined2 *)(iVar4 + -0x7ef6);
        puVar2 = unaff_DI + 7;
        unaff_DI[6] = *(undefined2 *)(iVar4 + -0x7ef4);
        unaff_DI = unaff_DI + 8;
        *puVar2 = *(undefined2 *)(iVar4 + -0x7ef2);
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x4f8: copy_buffer_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_4(int16_t arg1)
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
        *(int16_t *)0x3cbf = (uint16_t)(uint8_t)(*unaff_BP - 1) * 0x10 + 0x7000;
        *(undefined2 *)0x3cc1 = 0x2000;
        copy_buffer_5(0x2000);
        puVar1 = (undefined *)(in_stack_00000000 + -1);
        unaff_BP = unaff_ES;
        unaff_SI = unaff_DS;
        unaff_ES = pcVar3;
        unaff_DS = puVar2;
    } while ((undefined *)(in_stack_00000000 + -1) != (undefined *)0x0);
    return;
}

/* ====================================================================== */
/* 0x56b: copy_buffer_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_5(int16_t arg1)
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
    
    uVar2 = (uint32_t)*(uint16_t **)0x3cbf >> 0x10;
    puVar4 = (uint16_t *)*(uint16_t **)0x3cbf;
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
/* 0x5d3: copy_buffer_6 */
/* ====================================================================== */


void copy_buffer_6(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + -2;
    for (iVar3 = 0x36; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[0x1e];
    unaff_SI[1] = puVar4[0x1f];
    return;
}

/* ====================================================================== */
/* 0x5e4: decb_func_23 */
/* ====================================================================== */


void decb_func_23(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + -4;
    for (iVar3 = 0x34; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[0x20];
    unaff_SI[1] = puVar4[0x21];
    unaff_SI[2] = puVar4[0x22];
    unaff_SI[3] = puVar4[0x23];
    return;
}

/* ====================================================================== */
/* 0x621: decb_func_24 */
/* ====================================================================== */


void decb_func_24(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + -1;
    for (iVar3 = 0x37; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[0x1d];
    return;
}

/* ====================================================================== */
/* 0x674: decb_process_loop_2 */
/* ====================================================================== */


void decb_process_loop_2(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + 2;
    for (iVar3 = 0x36; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[-0x1e];
    unaff_SI[1] = puVar4[-0x1d];
    return;
}

/* ====================================================================== */
/* 0x685: decb_process_loop_3 */
/* ====================================================================== */


void decb_process_loop_3(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + 4;
    for (iVar3 = 0x34; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[-0x20];
    unaff_SI[1] = puVar4[-0x1f];
    unaff_SI[2] = puVar4[-0x1e];
    unaff_SI[3] = puVar4[-0x1d];
    return;
}

/* ====================================================================== */
/* 0x6c0: decb_process_loop_4 */
/* ====================================================================== */


void decb_process_loop_4(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar4 = unaff_SI + 1;
    for (iVar3 = 0x37; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = *puVar1;
    }
    *unaff_SI = puVar4[-0x1d];
    return;
}

/* ====================================================================== */
/* 0xc8a: decb_func_28 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t decb_func_28(int16_t arg3)
{
    uint16_t uVar1;
    uint8_t uVar3;
    int16_t iVar2;
    
    uVar1 = (arg3 & 0xffU) + 0x1c;
    uVar3 = (uint8_t)(uVar1 % 3);
    iVar2 = (uVar1 / 3) * 0x5a;
    return CONCAT11((char)((uint16_t)iVar2 >> 8) + ((uint8_t)((uint8_t)(uVar3 << 7) >> 1 | (uVar3 >> 1) << 7) >> 1), 
                    (char)iVar2) + (uint16_t)(uint8_t)((char)((uint16_t)arg3 >> 8) + 5);
}

/* ====================================================================== */
/* 0x7c0: decb_func_29 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_func_29(int16_t arg3)
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
        in_AX = decb_func_30(CONCAT11((char)((uint16_t)in_AX >> 8), *unaff_SI), (uint16_t)pcVar1 & 0xff03);
        pcVar1 = (char *)CONCAT11((char)((uint16_t)in_stack_00000000 >> 8), (char)in_stack_00000000 + '\x01');
        unaff_SI = unaff_DS;
        unaff_DS = pcVar2;
    }
    return;
}

/* ====================================================================== */
/* 0x7dd: decb_func_30 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void decb_func_30(int16_t arg1, int16_t arg3)
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
/* 0x84d: decb_process_loop_5 */
/* ====================================================================== */


void decb_process_loop_5(int16_t param_1)
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
    uVar8 = decb_scan_loop_4();
    uVar2 = 6;
    iVar3 = CONCAT11(uVar4, 1);
    puVar5 = (undefined *)0x38d5;
    puVar6 = (undefined *)(*(int16_t *)0xff68 + 0x3ceb);
    do {
        fcn.0000087a(CONCAT11((char)(uVar8 >> 8), *puVar5), (int16_t)(uVar8 >> 0x10));
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
/* 0x8c0: decb_scan_loop_4 */
/* ====================================================================== */


void decb_scan_loop_4(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x38d4;
    math_calc();
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
/* 0x8df: math_calc */
/* ====================================================================== */


void math_calc(void)
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
    
    iVar2 = fcn.00000925(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = fcn.00000925(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = fcn.00000925(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.0000093e(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.0000093e(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.0000093e(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0x925: fcn.00000925 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000925(int16_t arg1, int16_t arg3)
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
code_r0x0000093b:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x0000093b;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0x93e: fcn.0000093e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.0000093e(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x87a: fcn.0000087a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000087a(int16_t arg1, int16_t arg2)
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
/* 0xbed: fcn.00000bed */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000bed(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    int16_t iVar4;
    
    iVar4 = 8;
    do {
        uVar1 = *(uint16_t *)0x3cbb << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3cbb < 0);
        uVar2 = *(uint16_t *)0x3cb9 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3cb9 < 0);
        uVar3 = *(uint16_t *)0x3cb7 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3cb7 < 0);
        *(uint16_t *)0x3cbb = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x3cb9 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x3cb7 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0xc68: fcn.00000c68 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000c68(int16_t arg2)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x3cbd << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3cbd < 0);
        *(uint16_t *)0x3cbd = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

