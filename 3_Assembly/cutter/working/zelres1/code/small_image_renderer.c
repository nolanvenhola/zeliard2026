/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x4 = "A:(0Q0(6w6"; // [ascii]
static const char *STR_0x7c8 = "`px|xp`"; // [ascii]

/* ====================================================================== */
/* 0x0: zr1_11 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_11(short unsigned int arg3, short unsigned int arg4, int16_t arg1)
{
    char *pcVar1;
    uint8_t *puVar2;
    undefined2 *puVar3;
    code *pcVar4;
    undefined2 in_AX;
    undefined2 *in_CX;
    undefined2 in_DX;
    int16_t in_BX;
    undefined2 *puVar5;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    char in_CF;
    int16_t in_stack_00000000;
    short unsigned int var_6c8h;
    undefined2 *puStack_2;
    
    out(in_DX, in_AX);
    pcVar1 = (char *)((int16_t)unaff_DI + in_BX + 0x3a);
    *pcVar1 = *pcVar1 + (char)in_AX + in_CF;
    *(char *)(in_BX + (int16_t)unaff_SI) = *(char *)(in_BX + (int16_t)unaff_SI) - (char)((uint16_t)in_DX >> 8);
    puVar2 = (uint8_t *)(in_BX + (int16_t)unaff_SI);
    *puVar2 = *puVar2 ^ (uint8_t)((uint16_t)in_CX >> 8);
    puStack_2 = in_CX;
    if (*puVar2 == 0) {
        *(undefined *)unaff_DI = *(undefined *)unaff_SI;
        pcVar4 = (code *)swi(1);
        (*pcVar4)();
        return;
    }
    do {
        *unaff_DI = *unaff_SI;
        unaff_DI[1] = unaff_SI[1];
        puVar5 = unaff_SI + 0x9e;
        in_CX = (undefined2 *)((int16_t)in_CX + -1);
        if (in_CX == (undefined2 *)0x0) {
            puVar5 = puStack_2 + 4;
            in_stack_00000000 = in_stack_00000000 + -1;
            if (in_stack_00000000 == 0) {
                return;
            }
            in_CX = (undefined2 *)0x18;
            puStack_2 = puVar5;
        }
        puVar3 = unaff_DI + 3;
        unaff_DI[2] = *puVar5;
        unaff_DI = unaff_DI + 4;
        unaff_SI = puVar5 + 2;
        *puVar3 = puVar5[1];
    } while( true );
}

/* ====================================================================== */
/* 0x418: vga_operation */
/* ====================================================================== */


void vga_operation(undefined2 param_1, int16_t *param_2)
{
    int16_t iVar1;
    undefined uVar2;
    uint8_t uVar3;
    uint16_t in_BX;
    int16_t *arg1;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xff2a;
    *(undefined2 *)0x3c9b = *(undefined2 *)(iVar1 + 0x25);
    *(undefined *)0x3c9d = *(undefined *)(iVar1 + 0x27);
    *(int16_t *)0x3ca1 = *(int16_t *)0x80 + 3;
    if (*(char *)0x3c9b == -3) {
        uVar2 = vga_operation2();
        *(undefined *)0x3c9b = uVar2;
    }
    vga_operation9(3, in_BX);
    arg1 = *(int16_t **)0xc00f;
    do {
        uVar3 = (uint8_t)in_BX;
        vga_operation6();
        in_BX = (uint16_t)uVar3;
        if (uVar3 != 0) {
            in_BX = (uint16_t)(uint8_t)(uVar3 - 1);
            vga_operation7(in_BX * 3);
            simg_process_loop((int16_t)arg1);
            arg1 = param_2;
        }
        arg1 = arg1 + 4;
    } while (*arg1 != -1);
    simg_multiply_2();
    *(undefined *)0xe005 = 0xff;
    *(undefined *)0xe006 = 0xff;
    *(undefined *)0xe007 = 0xff;
    return;
}

/* ====================================================================== */
/* 0xd9: simg_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_multiply(int16_t arg1)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t unaff_DS;
    
    if (*(char *)0x3c9a == '\x1b') {
        return;
    }
    if (*(char *)0x3c9a != *(char *)0x83) {
        return;
    }
    iVar2 = (uint8_t)(*(char *)0x83 << 3) + 0x93b0;
    iVar1 = 2;
    do {
        simg_multiply_2(iVar2);
        iVar2 = iVar1 + 8;
        iVar1 = unaff_DS + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x4c0: simg_multiply_2 */
/* ====================================================================== */


void simg_multiply_2(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 0x18;
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
/* 0x1dc: simg_func_8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_func_8(int16_t arg3, int16_t arg2)
{
    undefined *puVar1;
    undefined uVar2;
    uint16_t *puVar3;
    undefined2 uVar4;
    undefined uVar5;
    undefined2 *puVar6;
    undefined *puVar7;
    uint8_t uVar8;
    char cVar9;
    int16_t iVar10;
    int16_t iVar11;
    uint8_t uVar12;
    uint16_t uVar13;
    undefined *puVar14;
    uint8_t *puVar15;
    uint16_t *puVar16;
    undefined2 *puVar17;
    int16_t unaff_SI;
    undefined *puVar18;
    int16_t unaff_DI;
    undefined *puVar19;
    char *pcVar20;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar9 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar9 == -1) {
        return;
    }
    uVar8 = *(uint8_t *)(unaff_SI + -1);
    if (*(char *)((uint16_t)uVar8 + *(int16_t *)0x8000) != '\0') {
        *(undefined *)(unaff_DI + -1) = *(undefined *)(unaff_SI + -1);
        uVar4 = *(undefined2 *)0xff2c;
        puVar7 = (undefined *)((arg3 & 0xffU) * 0xa00 + *(int16_t *)0x3c98);
        puVar18 = (undefined *)((uint16_t)uVar8 * 0x30 + -0x7f00);
        puVar15 = (uint8_t *)((uint16_t)uVar8 * 8 + -0x3000);
        puVar14 = (undefined *)((arg3 & 0xffU) * 0x40 + (uint16_t)*(uint8_t *)0x3c9a * 0xc0 + -0x6000);
        iVar10 = 8;
        do {
            uVar8 = *puVar15;
            puVar15 = puVar15 + 1;
            iVar11 = 2;
            do {
                puVar19 = puVar7;
                puVar7 = puVar18 + 1;
                uVar5 = *puVar18;
                puVar1 = puVar18 + 2;
                puVar18 = puVar18 + 3;
                uVar2 = *puVar1;
                uVar13 = CONCAT11(*puVar7, uVar5) >> 2;
                if (CARRY1(uVar8, uVar8)) {
                    uVar13 = CONCAT11(*puVar14, (char)uVar13);
                }
                *puVar19 = (char)(uVar13 >> 8);
                uVar12 = ((uint8_t)(uVar13 >> 1) & 0x7f) >> 1;
                if (CARRY1(uVar8 * '\x02', uVar8 * '\x02')) {
                    uVar12 = puVar14[1];
                }
                puVar19[1] = uVar12;
                uVar12 = (uint8_t)((uint16_t)(CONCAT11(uVar5, uVar2) * 4) >> 8) & 0x3f;
                if (CARRY1(uVar8 * '\x04', uVar8 * '\x04')) {
                    uVar12 = puVar14[2];
                }
                puVar19[2] = uVar12;
                uVar13 = CONCAT11(uVar8 << 3, uVar2) & 0xff3f;
                uVar12 = (uint8_t)(uVar13 >> 8);
                uVar5 = (undefined)uVar13;
                uVar8 = uVar12 * '\x02';
                if (CARRY1(uVar12, uVar12)) {
                    uVar5 = puVar14[3];
                }
                puVar14 = puVar14 + 4;
                puVar19[3] = uVar5;
                iVar11 = iVar11 + -1;
                puVar7 = puVar19 + 4;
            } while (iVar11 != 0);
            puVar7 = puVar19 + 0x13c;
            iVar10 = iVar10 + -1;
        } while (iVar10 != 0);
        uVar8 = *(uint8_t *)(unaff_DI + -1);
        if (uVar8 != 0) {
            if (0x18 < uVar8) {
                return;
            }
            pcVar20 = *(char **)0x8004;
            cVar9 = *pcVar20;
            while( true ) {
                if (cVar9 == '\0') {
                    return;
                }
                if (pcVar20[1] == 0xff) break;
                if (uVar8 == pcVar20[1]) {
                    *(char *)(unaff_SI + -1) = pcVar20[2];
                    return;
                }
                pcVar20 = pcVar20 + 2;
                cVar9 = cVar9 + -1;
            }
            return;
        }
        return;
    }
    cVar9 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar9 == -1) {
        return;
    }
    uVar13 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar6 = (undefined2 *)((arg3 & 0xffU) * 0xa00 + *(int16_t *)0x3c98);
    iVar10 = uVar13 * 2;
    if (*(int16_t *)(iVar10 + 0x42ef) != 0) {
        puVar17 = *(undefined2 **)(iVar10 + 0x42ef);
        iVar10 = 8;
        do {
            *puVar6 = *puVar17;
            puVar6[1] = puVar17[1];
            puVar6[2] = puVar17[2];
            puVar6[3] = puVar17[3];
            puVar6 = puVar6 + 0xa0;
            puVar17 = puVar17 + 0xa0;
            iVar10 = iVar10 + -1;
        } while (iVar10 != 0);
        return;
    }
    *(undefined2 **)(iVar10 + 0x42ef) = puVar6;
    uVar4 = *(undefined2 *)0xff2c;
    puVar16 = (uint16_t *)(uVar13 * 0x30 + -0x7f00);
    iVar10 = 8;
    do {
        iVar11 = 2;
        do {
            puVar17 = puVar6;
            puVar3 = puVar16 + 1;
            uVar13 = *puVar16;
            puVar16 = (uint16_t *)((int16_t)puVar16 + 3);
            uVar8 = *(uint8_t *)puVar3;
            *(uint8_t *)puVar17 = (uint8_t)(uVar13 >> 10);
            *(uint8_t *)((int16_t)puVar17 + 1) = ((uint8_t)(uVar13 >> 3) & 0x7f) >> 1;
            *(uint8_t *)(puVar17 + 1) = (uint8_t)((uint16_t)(CONCAT11((char)uVar13, uVar8) * 4) >> 8) & 0x3f;
            *(uint8_t *)((int16_t)puVar17 + 3) = uVar8 & 0x3f;
            iVar11 = iVar11 + -1;
            puVar6 = puVar17 + 2;
        } while (iVar11 != 0);
        puVar6 = puVar17 + 0x9e;
        iVar10 = iVar10 + -1;
    } while (iVar10 != 0);
    return;
}

/* ====================================================================== */
/* 0x127: simg_func_9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_func_9(int16_t arg3, int16_t arg2)
{
    uint8_t uVar1;
    uint16_t *puVar2;
    char cVar3;
    undefined2 uVar4;
    undefined2 *puVar5;
    int16_t iVar6;
    int16_t iVar7;
    uint16_t uVar8;
    int16_t unaff_SI;
    uint16_t *puVar9;
    undefined2 *puVar10;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    cVar3 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar3 == -1) {
        return;
    }
    uVar8 = (uint16_t)*(uint8_t *)(unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)(unaff_SI + -1);
    puVar5 = (undefined2 *)((arg3 & 0xffU) * 0xa00 + *(int16_t *)0x3c98);
    iVar6 = uVar8 * 2;
    if (*(int16_t *)(iVar6 + 0x42ef) == 0) {
        *(undefined2 **)(iVar6 + 0x42ef) = puVar5;
        uVar4 = *(undefined2 *)0xff2c;
        puVar9 = (uint16_t *)(uVar8 * 0x30 + -0x7f00);
        iVar6 = 8;
        do {
            iVar7 = 2;
            do {
                puVar10 = puVar5;
                puVar2 = puVar9 + 1;
                uVar8 = *puVar9;
                puVar9 = (uint16_t *)((int16_t)puVar9 + 3);
                uVar1 = *(uint8_t *)puVar2;
                *(uint8_t *)puVar10 = (uint8_t)(uVar8 >> 10);
                *(uint8_t *)((int16_t)puVar10 + 1) = ((uint8_t)(uVar8 >> 3) & 0x7f) >> 1;
                *(uint8_t *)(puVar10 + 1) = (uint8_t)((uint16_t)(CONCAT11((char)uVar8, uVar1) * 4) >> 8) & 0x3f;
                *(uint8_t *)((int16_t)puVar10 + 3) = uVar1 & 0x3f;
                iVar7 = iVar7 + -1;
                puVar5 = puVar10 + 2;
            } while (iVar7 != 0);
            puVar5 = puVar10 + 0x9e;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        return;
    }
    puVar10 = *(undefined2 **)(iVar6 + 0x42ef);
    iVar6 = 8;
    do {
        *puVar5 = *puVar10;
        puVar5[1] = puVar10[1];
        puVar5[2] = puVar10[2];
        puVar5[3] = puVar10[3];
        puVar5 = puVar5 + 0xa0;
        puVar10 = puVar10 + 0xa0;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x11e: vga_operation1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation1(int16_t arg3, int16_t arg2)
{
    uint8_t uVar1;
    uint16_t *puVar2;
    char cVar3;
    undefined2 uVar4;
    undefined uVar5;
    undefined2 *puVar6;
    int16_t iVar7;
    uint16_t uVar8;
    int16_t *arg3_00;
    undefined2 *unaff_SI;
    uint16_t *puVar9;
    undefined2 *puVar10;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000000;
    int16_t *in_stack_00000002;
    undefined2 in_stack_00000004;
    int16_t iVar11;
    
    if (*(char *)((int16_t)unaff_SI + -1) == -3) {
        *(undefined2 *)0x3c9c = *unaff_SI;
        *(undefined2 *)0x3c9e = *(undefined2 *)((int16_t)unaff_SI + 7);
        *(undefined *)0x3ca0 = *(undefined *)((int16_t)unaff_SI + 9);
        *(int16_t *)0x3ca1 = (uint16_t)(uint8_t)(*(char *)0x3c9a + 4) + *(int16_t *)0x80;
        uVar5 = vga_operation2();
        *(undefined *)0x3c9b = uVar5;
        if (*(char *)0x3c9e == -3) {
            uVar5 = vga_operation2();
            *(undefined *)0x3c9e = uVar5;
        }
        vga_operation_2(arg3);
        arg3_00 = *(int16_t **)0xc00f;
        iVar11 = unaff_DS;
        do {
            iVar7 = vga_operation6();
            if ((char)arg3 != '\0') {
                vga_operation7(iVar7);
                iVar11 = 0x3b1;
                extract_bits((int16_t)arg3_00);
                arg3 = (int16_t)arg3_00;
                arg3_00 = in_stack_00000002;
            }
            arg3_00 = arg3_00 + 4;
        } while (*arg3_00 != -1);
        if (*(char *)(iVar11 + -1) != -1) {
            simg_multiply_2(*(int16_t *)0x3c98 + 0x3200, CONCAT11(*(char *)(iVar11 + -1), *(undefined *)(iVar11 + 7)));
        }
        if ((*(char *)0x3c9a != '\x1b') && ((char)iVar11 != -1)) {
            simg_multiply_2();
        }
        *(undefined *)((int16_t)in_stack_00000002 + -1) = 0xfe;
        *(undefined *)in_stack_00000002 = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 1) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 7) = 0xff;
        *(undefined *)(in_stack_00000002 + 4) = 0xff;
        *(undefined *)((int16_t)in_stack_00000002 + 9) = 0xff;
        return;
    }
    cVar3 = *(char *)(unaff_DI + -1);
    *(undefined *)(unaff_DI + -1) = 0xfe;
    if (cVar3 == -1) {
        return;
    }
    uVar8 = (uint16_t)*(uint8_t *)((int16_t)unaff_SI + -1);
    *(uint8_t *)(unaff_DI + -1) = *(uint8_t *)((int16_t)unaff_SI + -1);
    puVar6 = (undefined2 *)((arg3 & 0xffU) * 0xa00 + *(int16_t *)0x3c98);
    iVar11 = uVar8 * 2;
    if (*(int16_t *)(iVar11 + 0x42ef) == 0) {
        *(undefined2 **)(iVar11 + 0x42ef) = puVar6;
        uVar4 = *(undefined2 *)0xff2c;
        puVar9 = (uint16_t *)(uVar8 * 0x30 + -0x7f00);
        iVar11 = 8;
        do {
            iVar7 = 2;
            do {
                puVar10 = puVar6;
                puVar2 = puVar9 + 1;
                uVar8 = *puVar9;
                puVar9 = (uint16_t *)((int16_t)puVar9 + 3);
                uVar1 = *(uint8_t *)puVar2;
                *(uint8_t *)puVar10 = (uint8_t)(uVar8 >> 10);
                *(uint8_t *)((int16_t)puVar10 + 1) = ((uint8_t)(uVar8 >> 3) & 0x7f) >> 1;
                *(uint8_t *)(puVar10 + 1) = (uint8_t)((uint16_t)(CONCAT11((char)uVar8, uVar1) * 4) >> 8) & 0x3f;
                *(uint8_t *)((int16_t)puVar10 + 3) = uVar1 & 0x3f;
                iVar7 = iVar7 + -1;
                puVar6 = puVar10 + 2;
            } while (iVar7 != 0);
            puVar6 = puVar10 + 0x9e;
            iVar11 = iVar11 + -1;
        } while (iVar11 != 0);
        return;
    }
    puVar10 = *(undefined2 **)(iVar11 + 0x42ef);
    iVar11 = 8;
    do {
        *puVar6 = *puVar10;
        puVar6[1] = puVar10[1];
        puVar6[2] = puVar10[2];
        puVar6[3] = puVar10[3];
        puVar6 = puVar6 + 0xa0;
        puVar10 = puVar10 + 0xa0;
        iVar11 = iVar11 + -1;
    } while (iVar11 != 0);
    return;
}

/* ====================================================================== */
/* 0x499: vga_operation2 */
/* ====================================================================== */


void vga_operation2(void)
{
    char *pcVar1;
    int16_t in_DX;
    short unsigned int extraout_DX;
    short unsigned int arg2;
    short unsigned int extraout_DX_00;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    
    vga_operation3(in_DX);
    arg2 = extraout_DX;
    if (*(char *)(unaff_SI + 3) != -3) {
        return;
    }
    do {
        vga_operation4(arg2);
        pcVar1 = (char *)(unaff_SI + 0xb);
        arg2 = extraout_DX_00;
        unaff_SI = unaff_SI + 8;
    } while (*pcVar1 == -3);
    return;
}

/* ====================================================================== */
/* 0x4b2: vga_operation3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation3(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x4b6: vga_operation4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation4(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x303: vga_operation_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation_2(int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint16_t *puVar3;
    uint16_t uVar4;
    undefined2 uVar5;
    int16_t iVar6;
    int16_t iVar7;
    uint8_t *unaff_SI;
    uint16_t *puVar8;
    uint8_t *unaff_DI;
    undefined2 unaff_DS;
    
    iVar6 = 6;
    do {
        uVar5 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar8 = (uint16_t *)((uint16_t)*puVar1 * 0x30 + -0x7f00);
        iVar7 = 0x10;
        do {
            puVar3 = puVar8 + 1;
            uVar4 = *puVar8;
            puVar8 = (uint16_t *)((int16_t)puVar8 + 3);
            uVar2 = *(uint8_t *)puVar3;
            *unaff_DI = (uint8_t)(uVar4 >> 10);
            unaff_DI[1] = ((uint8_t)(uVar4 >> 3) & 0x7f) >> 1;
            unaff_DI[2] = (uint8_t)((uint16_t)(CONCAT11((char)uVar4, uVar2) * 4) >> 8) & 0x3f;
            unaff_DI[3] = uVar2 & 0x3f;
            unaff_DI = unaff_DI + 4;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x516: vga_operation6 */
/* ====================================================================== */


void vga_operation6(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar1 = 2;
    iVar2 = *(int16_t *)0x3ca1;
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
/* 0x4f0: vga_operation7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char vga_operation7(int16_t arg1)
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
/* 0x4ce: extract_bits */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits(int16_t arg3)
{
    (**(code **)((uint16_t)(uint8_t)((char)arg3 - 1) * 2 + 0x34d8))();
    return;
}

/* ====================================================================== */
/* 0x306: vga_operation9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation9(int16_t arg4, int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint16_t *puVar3;
    uint16_t uVar4;
    undefined2 uVar5;
    int16_t iVar6;
    uint8_t *unaff_SI;
    uint16_t *puVar7;
    uint8_t *unaff_DI;
    undefined2 unaff_DS;
    
    do {
        uVar5 = *(undefined2 *)0xff2c;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar7 = (uint16_t *)((uint16_t)*puVar1 * 0x30 + -0x7f00);
        iVar6 = 0x10;
        do {
            puVar3 = puVar7 + 1;
            uVar4 = *puVar7;
            puVar7 = (uint16_t *)((int16_t)puVar7 + 3);
            uVar2 = *(uint8_t *)puVar3;
            *unaff_DI = (uint8_t)(uVar4 >> 10);
            unaff_DI[1] = ((uint8_t)(uVar4 >> 3) & 0x7f) >> 1;
            unaff_DI[2] = (uint8_t)((uint16_t)(CONCAT11((char)uVar4, uVar2) * 4) >> 8) & 0x3f;
            unaff_DI[3] = uVar2 & 0x3f;
            unaff_DI = unaff_DI + 4;
            iVar6 = iVar6 + -1;
        } while (iVar6 != 0);
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x556: simg_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_process_loop(int16_t arg1)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t in_BX;
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
        *(int16_t *)0x3cab = (uint16_t)(uint8_t)(*unaff_BP - 1) * 8 + 0x7000;
        *(undefined2 *)0x3cad = 0x2000;
        simg_process_loop_2(-0x6000, in_BX);
        puVar1 = (undefined *)(in_stack_00000000 + -1);
        unaff_BP = unaff_ES;
        unaff_SI = unaff_DS;
        unaff_ES = pcVar3;
        unaff_DS = puVar2;
    } while ((undefined *)(in_stack_00000000 + -1) != (undefined *)0x0);
    return;
}

/* ====================================================================== */
/* 0x5db: simg_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_process_loop_2(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    uint16_t *puVar2;
    uint16_t uVar3;
    uint32_t uVar4;
    uint8_t uVar5;
    int16_t iVar6;
    int16_t iVar7;
    uint16_t *unaff_SI;
    uint8_t *puVar8;
    uint8_t *unaff_DI;
    uint8_t *puVar9;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    bool bVar10;
    
    uVar4 = (uint32_t)*(uint8_t **)0x3cab >> 0x10;
    puVar8 = (uint8_t *)*(uint8_t **)0x3cab;
    iVar6 = 8;
    puVar9 = unaff_DI;
    do {
        puVar1 = puVar8;
        puVar8 = puVar8 + 1;
        uVar5 = *puVar1;
        iVar7 = 8;
        do {
            bVar10 = CARRY1(uVar5, uVar5);
            uVar5 = uVar5 * '\x02';
            *puVar9 = *puVar9 & -bVar10;
            puVar9 = puVar9 + 1;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    iVar6 = 0x10;
    do {
        puVar2 = unaff_SI + 1;
        uVar3 = *unaff_SI;
        unaff_SI = (uint16_t *)((int16_t)unaff_SI + 3);
        uVar5 = *(uint8_t *)puVar2;
        *unaff_DI = *unaff_DI | (uint8_t)(uVar3 >> 10);
        unaff_DI[1] = unaff_DI[1] | ((uint8_t)(uVar3 >> 3) & 0x7f) >> 1;
        unaff_DI[2] = unaff_DI[2] | (uint8_t)((uint16_t)(CONCAT11((char)uVar3, uVar5) * 4) >> 8) & 0x3f;
        unaff_DI[3] = unaff_DI[3] | uVar5 & 0x3f;
        unaff_DI = unaff_DI + 4;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x842: simg_func_22 */
/* ====================================================================== */


void simg_func_22(void)
{
    char *pcVar1;
    undefined2 in_AX;
    uint16_t in_BX;
    uint16_t arg3;
    char *unaff_SI;
    char *unaff_DS;
    char *in_stack_00000000;
    
    arg3 = in_BX & 0xff00;
    while( true ) {
        pcVar1 = unaff_SI;
        if (*pcVar1 == '\0') break;
        unaff_SI = unaff_DS;
        in_AX = simg_func_23(CONCAT11((char)((uint16_t)in_AX >> 8), *pcVar1), arg3);
        unaff_DS = in_stack_00000000;
        in_stack_00000000 = unaff_DS;
    }
    return;
}

/* ====================================================================== */
/* 0x858: simg_func_23 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void simg_func_23(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    char cVar2;
    uint8_t uVar3;
    char cVar4;
    uint8_t *puVar5;
    uint8_t *unaff_DI;
    uint8_t *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
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
            *puVar6 = -bVar7 & 9;
            puVar6 = puVar6 + 1;
            cVar2 = cVar2 + -1;
        } while (cVar2 != '\0');
        unaff_DI = unaff_DI + 0xa0;
        cVar4 = cVar4 + -1;
    } while (cVar4 != '\0');
    return;
}

/* ====================================================================== */
/* 0x8b8: simg_func_24 */
/* ====================================================================== */


void simg_func_24(int16_t param_1)
{
    int16_t iVar1;
    int16_t iVar2;
    undefined *puVar3;
    undefined *puVar4;
    undefined *puVar5;
    undefined2 unaff_DS;
    
    simg_process_loop_3();
    iVar1 = *(int16_t *)0xff68 * 4;
    iVar2 = 6;
    puVar3 = (undefined *)0x392a;
    puVar4 = (undefined *)(iVar1 + 0x3def);
    do {
        iVar1 = fcn.000008df(CONCAT11((char)((uint16_t)iVar1 >> 8), *puVar3));
        puVar5 = (undefined *)(iVar2 + 6);
        iVar2 = param_1 + -1;
        puVar3 = puVar4;
        puVar4 = puVar5;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x915: simg_process_loop_3 */
/* ====================================================================== */


void simg_process_loop_3(void)
{
    int16_t iVar1;
    char *pcVar2;
    
    pcVar2 = (char *)0x3929;
    simg_func_26();
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
/* 0x934: simg_func_26 */
/* ====================================================================== */


void simg_func_26(void)
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
    
    iVar2 = simg_scan_loop(in_AX, 0x4240);
    *unaff_DI = extraout_DH;
    iVar2 = simg_scan_loop(iVar2, -0x7960);
    unaff_DI[1] = extraout_DH_00;
    iVar2 = simg_scan_loop(iVar2, 10000);
    unaff_DI[2] = extraout_DH_01;
    iVar2 = fcn.00000993(iVar2);
    unaff_DI[3] = extraout_DH_02;
    iVar2 = fcn.00000993(iVar2);
    unaff_DI[4] = extraout_DH_03;
    uVar1 = fcn.00000993(iVar2);
    unaff_DI[5] = extraout_DH_04;
    unaff_DI[6] = uVar1;
    return;
}

/* ====================================================================== */
/* 0x97a: simg_scan_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 simg_scan_loop(int16_t arg1, int16_t arg3)
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
code_r0x00000990:
            return CONCAT13(cVar1, CONCAT12(in_DL + in_CL, arg1));
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg3;
        arg1 = arg1 - arg3;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg3;
                goto code_r0x00000990;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0x993: fcn.00000993 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 fcn.00000993(int16_t arg1)
{
    uint32_t uVar1;
    undefined2 in_DX;
    uint16_t in_BX;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    return CONCAT22((uint16_t)(uint8_t)(uVar1 / in_BX) << 8, (int16_t)(uVar1 % (uint32_t)in_BX));
}

/* ====================================================================== */
/* 0x8df: fcn.000008df */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000008df(int16_t arg1)
{
    char *pcVar1;
    uint8_t uVar2;
    char *pcVar3;
    char cVar4;
    int16_t iVar5;
    uint8_t *unaff_DI;
    uint8_t *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    bool bVar7;
    
    if ((char)arg1 == -1) {
        return;
    }
    pcVar3 = (char *)((arg1 & 0xffU) * 8 + *(int16_t *)0xf502);
    iVar5 = 7;
    do {
        pcVar1 = pcVar3;
        pcVar3 = pcVar3 + 1;
        uVar2 = *pcVar1 * '\x04';
        cVar4 = '\x06';
        do {
            puVar6 = unaff_DI;
            bVar7 = CARRY1(uVar2, uVar2);
            uVar2 = uVar2 * '\x02';
            *puVar6 = -bVar7 & 9;
            cVar4 = cVar4 + -1;
            unaff_DI = puVar6 + 1;
        } while (cVar4 != '\0');
        unaff_DI = puVar6 + 0x9b;
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0xc32: fcn.00000c32 */
/* ====================================================================== */


void fcn.00000c32(void)
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
        iVar2 = fcn.00000c64(in_AX);
        iVar2 = fcn.00000c64(iVar2);
        iVar2 = fcn.00000c64(iVar2);
        iVar2 = fcn.00000c64(iVar2);
        iVar2 = fcn.00000c64(iVar2);
        bVar4 = (int16_t)*(uint16_t *)0x3ca7 < 0;
        *(uint16_t *)0x3ca7 = *(uint16_t *)0x3ca7 << 1 | (uint16_t)bVar4;
        iVar2 = iVar2 * 2 + (uint16_t)bVar4;
        piVar1 = unaff_DI + 1;
        *unaff_DI = iVar2;
        bVar4 = (int16_t)*(uint16_t *)0x3ca5 < 0;
        *(uint16_t *)0x3ca5 = *(uint16_t *)0x3ca5 << 1 | (uint16_t)bVar4;
        bVar5 = (int16_t)*(uint16_t *)0x3ca3 < 0;
        *(uint16_t *)0x3ca3 = *(uint16_t *)0x3ca3 << 1 | (uint16_t)bVar5;
        iVar2 = fcn.00000c64((iVar2 * 2 + (uint16_t)bVar4) * 2 + (uint16_t)bVar5);
        in_AX = fcn.00000c64(iVar2);
        unaff_DI = (int16_t *)((int16_t)unaff_DI + 3);
        *(char *)piVar1 = (char)in_AX;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0xc64: fcn.00000c64 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t fcn.00000c64(int16_t arg1)
{
    bool bVar1;
    bool bVar2;
    bool bVar3;
    
    bVar1 = (int16_t)*(int16_t *)0x3ca7 < 0;
    *(uint16_t *)0x3ca7 = *(int16_t *)0x3ca7 << 1 | (uint16_t)bVar1;
    bVar2 = (int16_t)*(int16_t *)0x3ca5 < 0;
    *(uint16_t *)0x3ca5 = *(int16_t *)0x3ca5 << 1 | (uint16_t)bVar2;
    bVar3 = (int16_t)*(int16_t *)0x3ca3 < 0;
    *(uint16_t *)0x3ca3 = *(int16_t *)0x3ca3 << 1 | (uint16_t)bVar3;
    return ((arg1 * 2 + (uint16_t)bVar1) * 2 + (uint16_t)bVar2) * 2 + (uint16_t)bVar3;
}

/* ====================================================================== */
/* 0xc7a: fcn.00000c7a */
/* ====================================================================== */


void fcn.00000c7a(void)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x3ca9 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x3ca9 < 0);
        *(uint16_t *)0x3ca9 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

