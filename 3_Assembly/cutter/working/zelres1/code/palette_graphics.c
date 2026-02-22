/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x454 = "{¡¡uuaB"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_05 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_05(int16_t arg3, int16_t arg2)
{
    code *pcVar1;
    undefined2 in_AX;
    undefined2 in_DX;
    int16_t in_BX;
    int16_t unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_DS;
    
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + (char)in_AX + (char)((uint16_t)in_AX >> 8) * '!';
    *(undefined *)(in_BX + unaff_DI) = *(undefined *)(in_BX + unaff_DI);
    pcVar1 = (code *)swi(3);
    (*pcVar1)();
    return;
}

/* ====================================================================== */
/* 0x146d: vga_operation */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 vga_operation(int16_t arg4, int16_t arg1)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    int16_t iVar5;
    bool bVar6;
    bool bVar7;
    bool bVar8;
    bool bVar9;
    
    iVar5 = 2;
    do {
        bVar6 = (int16_t)*(uint16_t *)0x4501 < 0;
        uVar1 = *(uint16_t *)0x4501 << 1 | (uint16_t)bVar6;
        bVar7 = (int16_t)*(uint16_t *)0x44ff < 0;
        uVar2 = *(uint16_t *)0x44ff << 1 | (uint16_t)bVar7;
        bVar8 = (int16_t)*(uint16_t *)0x44fd < 0;
        uVar3 = *(uint16_t *)0x44fd << 1 | (uint16_t)bVar8;
        bVar9 = (int16_t)*(uint16_t *)0x44fb < 0;
        uVar4 = *(uint16_t *)0x44fb << 1 | (uint16_t)bVar9;
        *(uint16_t *)0x4501 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x44ff = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x44fd = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        *(uint16_t *)0x44fb = uVar4 << 1 | (uint16_t)((int16_t)uVar4 < 0);
        arg1 = (((((((arg1 * 2 + (uint16_t)bVar6) * 2 + (uint16_t)bVar7) * 2 + (uint16_t)bVar8) * 2 + (uint16_t)bVar9) *
                  2 + (uint16_t)((int16_t)uVar1 < 0)) * 2 + (uint16_t)((int16_t)uVar2 < 0)) * 2 +
               (uint16_t)((int16_t)uVar3 < 0)) * 2 + (uint16_t)((int16_t)uVar4 < 0);
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return CONCAT11((char)arg1, (char)((uint16_t)arg1 >> 8));
}

/* ====================================================================== */
/* 0x14e7: pal_func_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined4 pal_func_2(int16_t arg3)
{
    return CONCAT22((arg3 & 0xffU) / 0xcd, (arg3 & 0xffU) * 0x140 + ((uint16_t)arg3 >> 8) * 4);
}

/* ====================================================================== */
/* 0x1b8: copy_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t copy_buffer(int16_t arg4, int16_t arg3)
{
    char cVar1;
    uint8_t uVar3;
    int16_t iVar2;
    int16_t iVar4;
    undefined2 unaff_SI;
    undefined2 unaff_DI;
    
    *(char *)0x4506 = '\0';
    iVar4 = 8;
    do {
        *(char *)0x4505 = *(char *)0x4506;
        *(uint8_t *)0xff1a = 0;
        iVar2 = arg4;
        do {
            (**(code **)0x450b)(unaff_DI, unaff_SI);
            *(char *)0x4505 = *(char *)0x4505 + '\x01';
            uVar3 = (uint8_t)((uint16_t)iVar2 >> 8);
            cVar1 = (char)iVar2 + -1;
            if (cVar1 == '\0') break;
            (**(code **)0x450b)();
            *(char *)0x4505 = *(char *)0x4505 + '\x01';
            iVar2 = CONCAT11(uVar3, cVar1 + -1);
        } while ((char)(cVar1 + -1) != '\0');
        *(char *)0x4506 = *(char *)0x4506 + '\x01';
        do {
        } while (*(uint8_t *)0xff1a < 0x14);
        iVar4 = iVar4 + -1;
        if (iVar4 == 0) {
            return (uint16_t)uVar3 * 4;
        }
    } while( true );
}

/* ====================================================================== */
/* 0x327: copy_buffer_2 */
/* ====================================================================== */


char copy_buffer_2(void)
{
    char in_AL;
    
    return in_AL * '\x04';
}

/* ====================================================================== */
/* 0x59a: pal_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_multiply(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    int16_t iVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_SI;
        for (iVar4 = ((uint16_t)arg4 >> 8) * 4; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        unaff_SI = unaff_SI + 0x140;
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x1225: pal_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 pal_multiply_2(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    char cVar3;
    char cVar4;
    undefined uVar5;
    int16_t iVar6;
    int16_t iVar7;
    int16_t iVar8;
    char *pcVar9;
    char *pcVar10;
    undefined2 unaff_DS;
    
    *(int16_t *)0x44f8 = arg1 * 0x30 + 0x4289;
    pcVar9 = *(char **)0x44f8;
    iVar8 = *(int16_t *)0x463 + 6;
    in(iVar8);
    *(undefined *)0x44fa = 0;
    iVar6 = 0x10;
    do {
        cVar2 = *pcVar9;
        pcVar10 = pcVar9 + 2;
        cVar3 = pcVar9[1];
        pcVar9 = pcVar9 + 3;
        cVar4 = *pcVar10;
        pcVar10 = *(char **)0x44f8;
        iVar7 = 0x10;
        do {
            out(0x3c8, *(undefined *)0x44fa);
            out(0x3c9, *pcVar10 + cVar2);
            pcVar1 = pcVar10 + 2;
            out(0x3c9, pcVar10[1] + cVar3);
            pcVar10 = pcVar10 + 3;
            out(0x3c9, *pcVar1 + cVar4);
            *(char *)0x44fa = *(char *)0x44fa + '\x01';
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    uVar5 = in(iVar8);
    return CONCAT11(cVar4, uVar5);
}

/* ====================================================================== */
/* 0x5d0: pal_func_7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_func_7(int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint16_t uVar1;
    char cVar2;
    uint16_t arg4_00;
    uint16_t *puVar3;
    uint8_t *unaff_SI;
    uint16_t *unaff_DI;
    uint16_t *puVar4;
    uint16_t *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    *(undefined2 *)0x4501 = 0;
    puVar3 = (uint16_t *)(((uint16_t)arg4 >> 8) * (arg4 & 0xffU));
    puVar4 = unaff_DI;
    do {
        arg4_00 = (uint16_t)arg4 >> 8;
        puVar5 = puVar4;
        do {
            *(int16_t *)0x44fd = (uint16_t)*(uint8_t *)((int16_t)puVar3 + (int16_t)unaff_SI) << 8;
            *(int16_t *)0x44fb = (uint16_t)*unaff_SI << 8;
            unaff_SI = unaff_SI + 1;
            *(int16_t *)0x44ff = *(int16_t *)0x44fb;
            uVar1 = vga_operation(arg4_00, *(int16_t *)0x44fb);
            *puVar5 = *puVar5 | uVar1;
            uVar1 = vga_operation(arg4_00, uVar1);
            puVar5[1] = puVar5[1] | uVar1;
            puVar5 = puVar5 + 2;
            arg4_00 = arg4_00 - 1;
            puVar3 = puVar4;
        } while (arg4_00 != 0);
        cVar2 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar2);
        puVar4 = unaff_DI + 0xa0;
    } while (cVar2 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5b5: extract_bits */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    int16_t iVar4;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_DI;
        for (iVar4 = ((uint16_t)arg4 >> 8) * 4; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        unaff_DI = unaff_DI + 0x140;
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x757: pal_multiply_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_multiply_3(int16_t arg1, int16_t arg4, int16_t arg3)
{
    undefined2 uVar1;
    uint16_t uVar2;
    uint8_t uVar5;
    undefined *puVar3;
    undefined *puVar4;
    int16_t iVar6;
    int16_t iVar7;
    undefined *puVar8;
    undefined *puVar9;
    
    uVar1 = *(undefined2 *)0xff2c;
    uVar2 = arg1 & 0xff;
    while( true ) {
        uVar5 = (uint8_t)(uVar2 >> 8);
        if ((uint8_t)uVar2 < 0x28) break;
        uVar2 = CONCAT11(uVar5 + 1, (uint8_t)uVar2 - 0x28);
    }
    puVar3 = (undefined *)((uint16_t)uVar5 * 0x140 + (uVar2 & 0xff) + 0x4000);
    puVar4 = (undefined *)((arg3 & 0xffU) * 0x110 + ((uint16_t)arg3 >> 8));
    iVar6 = 3;
    do {
        iVar7 = 8;
        puVar8 = puVar3;
        puVar9 = puVar4;
        do {
            *puVar9 = *puVar8;
            puVar9 = puVar9 + 0x22;
            puVar8 = puVar8 + 0x28;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        puVar4 = puVar4 + 0x1a90;
        puVar3 = puVar3 + 0x640;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x14af: fill_buffer */
/* ====================================================================== */


undefined2 fill_buffer(void)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    bool bVar4;
    
    bVar4 = (int16_t)*(int16_t *)0x4503 < 0;
    uVar1 = *(int16_t *)0x4503 << 1 | (uint16_t)bVar4;
    uVar2 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
    uVar3 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
    *(uint16_t *)0x4503 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
    return CONCAT11(-((int16_t)uVar3 < 0) | -((int16_t)uVar2 < 0), -bVar4 | -((int16_t)uVar1 < 0));
}

/* ====================================================================== */
/* 0x9c8: clear_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void clear_buffer(int16_t arg1)
{
    int16_t iVar1;
    int16_t in_CX;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack000e;
    undefined2 uStack0010;
    
    iVar1 = vga_operation2((uint16_t)(uint8_t)((char)arg1 - 1) * 8 + 0x3a5f);
    iVar1 = vga_operation(in_CX, iVar1);
    *unaff_DI = iVar1;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[1] = iVar1;
    iVar1 = vga_operation2(iVar1);
    uStack0002 = 0x9fa;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0xa0] = iVar1;
    uStack0004 = 0x9fe;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0xa1] = iVar1;
    uStack0006 = 0xa0b;
    iVar1 = vga_operation2(iVar1);
    uStack0008 = 0xa0e;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0x140] = iVar1;
    uStack000a = 0xa12;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0x141] = iVar1;
    uStack000c = 0xa21;
    iVar1 = vga_operation2(iVar1);
    uStack000e = 0xa24;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0x1e0] = iVar1;
    uStack0010 = 0xa28;
    iVar1 = vga_operation(in_CX, iVar1);
    unaff_DI[0x1e1] = iVar1;
    return;
}

/* ====================================================================== */
/* 0xa2c: vga_operation2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation2(int16_t arg1)
{
    uint8_t uVar1;
    uint8_t uVar2;
    undefined2 uVar3;
    uint8_t in_BH;
    uint8_t *unaff_SI;
    undefined2 unaff_DS;
    
    *(undefined2 *)0x44fb = 0;
    *(undefined2 *)0x4501 = 0;
    uVar3 = CONCAT11(unaff_SI[4], (char)arg1);
    *(undefined2 *)0x44ff = uVar3;
    *(undefined2 *)0x44fd = uVar3;
    uVar2 = *unaff_SI & in_BH;
    uVar1 = *(uint8_t *)0x4506;
    if ((bool)(uVar1 & 1)) {
        *(uint16_t *)0x44fb = *(uint16_t *)0x44fb | CONCAT11(uVar2, uVar1 >> 1);
    }
    if ((bool)(uVar1 >> 1 & 1)) {
        *(uint16_t *)0x44fd = *(uint16_t *)0x44fd | CONCAT11(uVar2, uVar1 >> 2);
    }
    if (!(bool)(uVar1 >> 2 & 1)) {
        return;
    }
    *(uint16_t *)0x44ff = *(uint16_t *)0x44ff | CONCAT11(uVar2, uVar1 >> 3);
    return;
}

/* ====================================================================== */
/* 0xd03: vga_operation3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation3(int16_t arg3, int16_t arg1)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    int16_t iVar4;
    uint8_t uVar5;
    int16_t unaff_SI;
    undefined2 *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    puVar3 = (undefined2 *)pal_func_2(CONCAT11(4, *(uint8_t *)0x4506 + 0x10));
    uVar5 = (uint8_t)in_stack_00000000;
    if ((uVar5 <= *(uint8_t *)0x4506) && (*(uint8_t *)0x4506 < (uint8_t)(uVar5 + *(char *)0x450b))) {
        puVar6 = (undefined2 *)
                 (unaff_SI + (uint16_t)(uint8_t)(*(uint8_t *)0x4506 - uVar5) * (uint16_t)*(uint8_t *)0x450c * 4);
        *(uint8_t *)0x4505 = 0;
        iVar4 = 0x48;
        do {
            *puVar3 = 0;
            puVar3[1] = 0;
            uVar5 = (uint8_t)((uint16_t)in_stack_00000000 >> 8);
            if ((uVar5 <= *(uint8_t *)0x4505) && (*(uint8_t *)0x4505 < (uint8_t)(uVar5 + *(uint8_t *)0x450c))) {
                puVar1 = puVar6 + 1;
                *puVar3 = *puVar6;
                puVar6 = puVar6 + 2;
                puVar3[1] = *puVar1;
            }
            puVar3 = puVar3 + 2;
            *(uint8_t *)0x4505 = *(uint8_t *)0x4505 + 1;
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        return;
    }
    for (iVar4 = 0x90; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar2 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar2 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0xdee: vga_operation4 */
/* ====================================================================== */


void vga_operation4(void)
{
    undefined *puVar1;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    vga_operation5();
    for (in_BX = in_BX + 4; in_BX != 0; in_BX = in_BX + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0xff;
    }
    return;
}

/* ====================================================================== */
/* 0xe20: vga_operation5 */
/* ====================================================================== */


void vga_operation5(void)
{
    int16_t unaff_DI;
    undefined2 unaff_ES;
    
    *(undefined2 *)(unaff_DI + -7) = 0x202;
    *(undefined2 *)(unaff_DI + -5) = 0x202;
    *(undefined2 *)(unaff_DI + -3) = 0x202;
    *(undefined2 *)(unaff_DI + -1) = 0x202;
    return;
}

/* ====================================================================== */
/* 0xdfb: fill_buffer_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer_2(int16_t arg4)
{
    int16_t iVar1;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        vga_operation5(unaff_DI);
        *unaff_DI = 0xff;
        for (iVar1 = in_BX + 2; unaff_DI = unaff_DI + 1, iVar1 != 0; iVar1 = iVar1 + -1) {
            *unaff_DI = 0;
        }
        *unaff_DI = 0xff;
        *(char *)0x4506 = *(char *)0x4506 + '\x01';
        unaff_DI = (undefined *)(arg4 + 0x140);
        arg4 = in_stack_00000000 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0xff3: vga_operation7 */
/* ====================================================================== */


void vga_operation7(int16_t param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    int16_t unaff_DI;
    undefined *puVar2;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    vga_operation8();
    puVar2 = (undefined *)(unaff_DI + 0x36);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    vga_operation8();
    vga_operation8();
    iVar1 = 0x2d;
    puVar2 = (undefined *)(param_1 + 0x2ab6);
    do {
        puVar3 = puVar2;
        *puVar3 = 0xb0;
        puVar3[0x19] = 0xe;
        puVar3[0x50] = 0x70;
        puVar3[0x69] = 0xd;
        iVar1 = iVar1 + -1;
        puVar2 = puVar3 + 0xa0;
    } while (iVar1 != 0);
    puVar3[0xa0] = 0xb0;
    puVar3[0xb9] = 0xe;
    vga_operation8();
    vga_operation8();
    puVar2 = (undefined *)(param_3 + 0x2ab6);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    vga_operation8();
    return;
}

/* ====================================================================== */
/* 0x1078: vga_operation8 */
/* ====================================================================== */


void vga_operation8(void)
{
    undefined *puVar1;
    undefined *puVar2;
    undefined in_AL;
    undefined in_AH;
    int16_t iVar3;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    puVar2 = unaff_DI + 1;
    *unaff_DI = in_AL;
    for (iVar3 = 0x18; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0xff;
    }
    *puVar2 = in_AH;
    return;
}

/* ====================================================================== */
/* 0xf67: vga_operation9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void vga_operation9(int16_t arg1, int16_t arg2)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t iVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined2 *puVar6;
    int16_t *unaff_DI;
    int16_t *piVar7;
    int16_t *piVar8;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar4 = 0xb;
    *(undefined2 *)0x4501 = 0;
    do {
        piVar7 = unaff_DI;
        puVar5 = unaff_SI;
        *(undefined2 *)0x44ff = CONCAT11(puVar5[0x5500], (char)arg1);
        *(undefined2 *)0x44fd = CONCAT11(puVar5[0x2a80], (char)arg1);
        *(int16_t *)0x44fb = CONCAT11(*puVar5, puVar5[0x2a80]);
        iVar3 = vga_operation(iVar4, *(int16_t *)0x44fb);
        *piVar7 = iVar3;
        arg1 = vga_operation(iVar4, iVar3);
        piVar7[1] = arg1;
        iVar4 = iVar4 + -1;
        unaff_SI = puVar5 + 1;
        unaff_DI = piVar7 + 2;
    } while (iVar4 != 0);
    iVar4 = 5;
    puVar2 = (undefined2 *)(puVar5 + 0x19);
    piVar7 = piVar7 + 0x32;
    do {
        piVar8 = piVar7;
        puVar6 = puVar2;
        *(undefined2 *)0x44ff = CONCAT11((char)puVar6[0x2a80], (char)((uint16_t)puVar6[0x2a80] >> 8));
        *(undefined2 *)0x44fd = CONCAT11((char)puVar6[0x1540], (char)((uint16_t)puVar6[0x1540] >> 8));
        *(int16_t *)0x44fb = CONCAT11((char)*puVar6, (char)((uint16_t)*puVar6 >> 8));
        iVar3 = vga_operation(iVar4, *(int16_t *)0x44fb);
        *piVar8 = iVar3;
        iVar3 = vga_operation(iVar4, iVar3);
        piVar8[1] = iVar3;
        iVar3 = vga_operation(iVar4, iVar3);
        piVar8[2] = iVar3;
        iVar3 = vga_operation(iVar4, iVar3);
        piVar8[3] = iVar3;
        iVar4 = iVar4 + -1;
        puVar2 = puVar6 + 1;
        piVar7 = piVar8 + 4;
    } while (iVar4 != 0);
    puVar6 = puVar6 + 0xd;
    piVar8 = piVar8 + 0x34;
    iVar4 = 0xb;
    do {
        *(undefined2 *)0x44ff = CONCAT11(*(undefined *)(puVar6 + 0x2a80), (char)iVar3);
        puVar2 = puVar6 + 0x1540;
        *(undefined2 *)0x44fd = CONCAT11(*(undefined *)puVar2, (char)iVar3);
        puVar1 = puVar6;
        puVar6 = (undefined2 *)((int16_t)puVar6 + 1);
        *(int16_t *)0x44fb = CONCAT11(*(undefined *)puVar1, *(undefined *)puVar2);
        iVar3 = vga_operation(iVar4, *(int16_t *)0x44fb);
        piVar7 = piVar8 + 1;
        *piVar8 = iVar3;
        iVar3 = vga_operation(iVar4, iVar3);
        piVar8 = piVar8 + 2;
        *piVar7 = iVar3;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0xf2f: pal_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_process_loop(int16_t arg2)
{
    undefined2 *puVar1;
    int16_t *piVar2;
    int16_t iVar3;
    int16_t arg4;
    undefined2 *unaff_SI;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    arg4 = 0x28;
    *(undefined2 *)0x4501 = 0;
    do {
        *(undefined2 *)0x44ff = CONCAT11((char)unaff_SI[0x2a80], (char)((uint16_t)unaff_SI[0x2a80] >> 8));
        *(undefined2 *)0x44fd = CONCAT11((char)unaff_SI[0x1540], (char)((uint16_t)unaff_SI[0x1540] >> 8));
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(int16_t *)0x44fb = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
        iVar3 = vga_operation(arg4, *(int16_t *)0x44fb);
        *unaff_DI = iVar3;
        iVar3 = vga_operation(arg4, iVar3);
        unaff_DI[1] = iVar3;
        iVar3 = vga_operation(arg4, iVar3);
        piVar2 = unaff_DI + 3;
        unaff_DI[2] = iVar3;
        iVar3 = vga_operation(arg4, iVar3);
        unaff_DI = unaff_DI + 4;
        *piVar2 = iVar3;
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x10c2: pal_func_21 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_func_21(int16_t arg1)
{
    undefined *puVar1;
    uint16_t *puVar2;
    undefined uVar3;
    undefined *puVar4;
    int16_t *piVar5;
    int16_t iVar6;
    int16_t iVar7;
    undefined *puVar8;
    int16_t *piVar9;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    undefined2 uStack0004;
    undefined2 uStack0006;
    
    puVar4 = (undefined *)((arg1 & 0xffU) * 0x2f + *(int16_t *)0x450d);
    piVar5 = (int16_t *)pal_func_2(arg1 & 0xff);
    if (in_stack_00000000 < 0x14) {
        iVar7 = 0x2f;
    } else {
        iVar7 = 0x23;
        if (0x16 < in_stack_00000000) {
            if (in_stack_00000000 < 0x1c) {
                iVar7 = 0x21;
                *(undefined2 *)0x4501 = 0;
                do {
                    piVar9 = piVar5;
                    puVar8 = puVar4;
                    *(undefined2 *)0x44ff = CONCAT11(puVar8[0x29dc], (char)in_stack_00000000);
                    *(undefined2 *)0x44fd = CONCAT11(puVar8[0x14ee], (char)in_stack_00000000);
                    *(int16_t *)0x44fb = CONCAT11(*puVar8, puVar8[0x14ee]);
                    iVar6 = vga_operation(iVar7, *(int16_t *)0x44fb);
                    *piVar9 = iVar6;
                    in_stack_00000000 = vga_operation(iVar7, iVar6);
                    piVar9[1] = in_stack_00000000;
                    iVar7 = iVar7 + -1;
                    puVar4 = puVar8 + 1;
                    piVar5 = piVar9 + 2;
                } while (iVar7 != 0);
                *(undefined2 *)0x44ff = CONCAT11(puVar8[0x29dd], (char)in_stack_00000000);
                *(undefined2 *)0x44fd = CONCAT11(puVar8[0x14ef], (char)in_stack_00000000);
                *(int16_t *)0x44fb = CONCAT11(puVar8[1], puVar8[0x14ef]);
                uStack0004 = 0x1160;
                iVar6 = vga_operation(0, *(int16_t *)0x44fb);
                piVar9[2] = iVar6;
                uStack0006 = 0x1164;
                uVar3 = vga_operation(iVar7, iVar6);
                *(undefined *)(piVar9 + 3) = uVar3;
                return;
            }
            iVar7 = 0x21;
        }
    }
    *(undefined2 *)0x4501 = 0;
    do {
        *(undefined2 *)0x44ff = CONCAT11(puVar4[0x29dc], (char)in_stack_00000000);
        puVar8 = puVar4 + 0x14ee;
        *(undefined2 *)0x44fd = CONCAT11(*puVar8, (char)in_stack_00000000);
        puVar1 = puVar4;
        puVar4 = puVar4 + 1;
        *(int16_t *)0x44fb = CONCAT11(*puVar1, *puVar8);
        iVar6 = vga_operation(iVar7, *(int16_t *)0x44fb);
        puVar2 = (uint16_t *)(piVar5 + 1);
        *piVar5 = iVar6;
        in_stack_00000000 = vga_operation(iVar7, iVar6);
        piVar5 = piVar5 + 2;
        *puVar2 = in_stack_00000000;
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    return;
}

/* ====================================================================== */
/* 0x11a4: pal_multiply_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void pal_multiply_4(int16_t arg1)
{
    undefined2 *puVar1;
    int16_t *piVar2;
    int16_t *piVar3;
    undefined2 *puVar4;
    int16_t *piVar5;
    int16_t iVar6;
    int16_t iVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    
    puVar4 = (undefined2 *)((arg1 & 0xffU) * 0x2f + 0x3cd + *(int16_t *)0x450d);
    piVar5 = (int16_t *)pal_func_2(CONCAT11(0x21, (char)arg1 + '\x14'));
    iVar7 = 0x2f;
    if (in_stack_00000000 < 0x5e) {
        iVar7 = 7;
        *(undefined2 *)0x4501 = 0;
        do {
            *(undefined2 *)0x44ff = CONCAT11((char)puVar4[0x14ee], (char)((uint16_t)puVar4[0x14ee] >> 8));
            *(undefined2 *)0x44fd = CONCAT11((char)puVar4[0xa77], (char)((uint16_t)puVar4[0xa77] >> 8));
            puVar1 = puVar4;
            puVar4 = puVar4 + 1;
            *(int16_t *)0x44fb = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
            iVar6 = vga_operation(iVar7, *(int16_t *)0x44fb);
            *piVar5 = iVar6;
            iVar6 = vga_operation(iVar7, iVar6);
            piVar5[1] = iVar6;
            iVar6 = vga_operation(iVar7, iVar6);
            piVar3 = piVar5 + 3;
            piVar5[2] = iVar6;
            iVar6 = vga_operation(iVar7, iVar6);
            piVar5 = piVar5 + 4;
            *piVar3 = iVar6;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        iVar7 = 0x21;
    }
    for (iVar7 = iVar7 * 2; iVar7 != 0; iVar7 = iVar7 + -1) {
        piVar2 = piVar5;
        piVar5 = piVar5 + 1;
        *piVar2 = 0;
    }
    return;
}

