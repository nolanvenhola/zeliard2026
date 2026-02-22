/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x473 = "{¡¡uuaB{"; // [ibm037]
static const char *STR_0xcb0 = "aG&{ßSM¾"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_02 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_02(int16_t arg2, int16_t arg3, int16_t arg1)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    uint16_t uVar3;
    undefined2 uVar4;
    undefined2 in_AX;
    uint16_t arg4;
    uint16_t in_CX;
    int16_t in_DX;
    int16_t in_BX;
    int16_t unaff_SI;
    undefined2 *puVar5;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    int16_t unaff_CS;
    undefined2 unaff_DS;
    char in_CF;
    undefined2 uStack0002;
    int16_t in_stack_00000004;
    uint16_t in_stack_00000006;
    char in_stack_00000008;
    
    arg3._0_1_ = (char)in_BX;
    *(char *)0x0 = (*(char *)0x0 - (char)arg3) - in_CF;
    if (-1 < (int16_t)((uint16_t)(uint8_t)((uint8_t)((uint16_t)(in_DX + -1) >> 8) ^ *(uint8_t *)(in_BX + unaff_SI)) << 8
                      )) {
        return;
    }
    uVar3 = (in_CX >> 8) * (in_CX & 0xff);
    puVar5 = (undefined2 *)0x0;
    *(undefined2 *)0x4aa4 = 0;
    *(undefined2 *)0x4aa6 = 0;
    arg4 = uVar3 >> 1;
    do {
        *(int16_t *)0x4aa8 = *(int16_t *)(uVar3 + (int16_t)unaff_DI);
        piVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *(int16_t *)0x4aa2 = *piVar1;
        uVar4 = equip_func_1(arg4, *(int16_t *)0x4aa2);
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = uVar4;
        arg4 = arg4 - 1;
    } while (arg4 != 0);
    uStack0002 = 0;
    uVar3 = in_stack_00000006 >> 8;
    *(undefined2 *)0x4aae = 0x3238;
    *(undefined *)0x4aad = 0;
    if (in_stack_00000008 == '\0') {
        equip_process_loop(in_stack_00000004, uVar3);
    }
    *(undefined *)0x4aad = 0xff;
    equip_process_loop(in_stack_00000004, uVar3);
    return;
}

/* ====================================================================== */
/* 0x1a01: equip_func_1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t equip_func_1(int16_t arg4, int16_t arg1)
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
    
    iVar5 = 8;
    do {
        bVar6 = (int16_t)*(uint16_t *)0x4aa8 < 0;
        uVar1 = *(uint16_t *)0x4aa8 << 1 | (uint16_t)bVar6;
        bVar7 = (int16_t)*(uint16_t *)0x4aa6 < 0;
        uVar2 = *(uint16_t *)0x4aa6 << 1 | (uint16_t)bVar7;
        bVar8 = (int16_t)*(uint16_t *)0x4aa4 < 0;
        uVar3 = *(uint16_t *)0x4aa4 << 1 | (uint16_t)bVar8;
        bVar9 = (int16_t)*(uint16_t *)0x4aa2 < 0;
        uVar4 = *(uint16_t *)0x4aa2 << 1 | (uint16_t)bVar9;
        *(uint16_t *)0x4aa8 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x4aa6 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x4aa4 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        *(uint16_t *)0x4aa2 = uVar4 << 1 | (uint16_t)((int16_t)uVar4 < 0);
        arg1 = CONCAT11((char)((uint16_t)(arg1 * 4) >> 8), 
                        (uint8_t)(arg1 * 4) |
                        *(uint8_t *)
                         ((((((((uint16_t)bVar6 * 2 + (uint16_t)bVar7) * 2 + (uint16_t)bVar8) * 2 + (uint16_t)bVar9) * 2
                            + (uint16_t)((int16_t)uVar1 < 0)) * 2 + (uint16_t)((int16_t)uVar2 < 0)) * 2 +
                          (uint16_t)((int16_t)uVar3 < 0)) * 2 + (uint16_t)((int16_t)uVar4 < 0) + *(int16_t *)0x4aa0));
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return arg1;
}

/* ====================================================================== */
/* 0x1a4: equip_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined equip_process_loop(int16_t arg4, int16_t arg3)
{
    char cVar1;
    undefined uVar3;
    int16_t iVar2;
    int16_t iVar4;
    undefined2 unaff_SI;
    uint16_t unaff_DI;
    uint16_t uVar5;
    uint16_t uVar6;
    
    *(char *)0x4aab = '\0';
    iVar4 = 8;
    do {
        *(char *)0x4aaa = *(char *)0x4aab;
        *(uint8_t *)0xff1a = 0;
        iVar2 = arg4;
        uVar6 = unaff_DI;
        do {
            (**(code **)0x4aae)(uVar6, unaff_SI);
            *(char *)0x4aaa = *(char *)0x4aaa + '\x01';
            uVar3 = (undefined)((uint16_t)iVar2 >> 8);
            uVar5 = unaff_DI + 0x2000;
            if (0x3fff < uVar5) {
                uVar5 = unaff_DI + 0xe050;
            }
            cVar1 = (char)iVar2 + -1;
            if (cVar1 == '\0') break;
            (**(code **)0x4aae)();
            *(char *)0x4aaa = *(char *)0x4aaa + '\x01';
            unaff_DI = uVar5 + 0x2000;
            if (0x3fff < unaff_DI) {
                unaff_DI = uVar5 + 0xe050;
            }
            iVar2 = CONCAT11(uVar3, cVar1 + -1);
        } while ((char)(cVar1 + -1) != '\0');
        unaff_DI = uVar6;
        *(char *)0x4aab = *(char *)0x4aab + '\x01';
        do {
        } while (*(uint8_t *)0xff1a < 0x14);
        iVar4 = iVar4 + -1;
        if (iVar4 == 0) {
            return uVar3;
        }
    } while( true );
}

/* ====================================================================== */
/* 0x32c: copy_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer(int16_t arg3)
{
    int16_t iVar1;
    
    iVar1 = 8;
    do {
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x5ac: copy_buffer_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_2(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    uint16_t uVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_SI;
        for (uVar4 = (uint16_t)arg4 >> 8; uVar4 != 0; uVar4 = uVar4 - 1) {
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = unaff_SI + 0x2000;
        if ((undefined *)0x3fff < puVar5) {
            puVar5 = unaff_SI + -0x1fb0;
        }
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
        unaff_SI = puVar5;
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5ee: equip_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void equip_multiply(int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    char cVar3;
    uint16_t uVar4;
    uint16_t arg4_00;
    uint16_t uVar5;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    *(undefined2 *)0x4aa8 = 0;
    *(undefined2 *)0x4aa6 = 0;
    uVar4 = arg4;
    uVar5 = ((uint16_t)arg4 >> 8) * (arg4 & 0xffU);
    do {
        arg4_00 = uVar4 >> 8;
        do {
            *(uint16_t *)0x4aa4 = (uint16_t)unaff_SI[uVar5];
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *(uint16_t *)0x4aa2 = (uint16_t)*puVar1;
            uVar2 = equip_func_1(arg4_00, *(uint16_t *)0x4aa2);
            *unaff_DI = *unaff_DI | uVar2;
            unaff_DI = unaff_DI + 1;
            arg4_00 = arg4_00 - 1;
            uVar5 = uVar4;
        } while (arg4_00 != 0);
        unaff_DI = (uint8_t *)(arg4 + 0x2000);
        if ((uint8_t *)0x3fff < unaff_DI) {
            unaff_DI = (uint8_t *)(arg4 + -0x1fb0);
        }
        cVar3 = (char)uVar4 + -1;
        uVar4 = CONCAT11((char)(uVar4 >> 8), cVar3);
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5cd: equip_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void equip_multiply_2(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    char cVar3;
    uint16_t uVar4;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        puVar5 = unaff_DI;
        for (uVar4 = (uint16_t)arg4 >> 8; uVar4 != 0; uVar4 = uVar4 - 1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = unaff_DI + 0x2000;
        if ((undefined *)0x3fff < puVar5) {
            puVar5 = unaff_DI + -0x1fb0;
        }
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
        unaff_DI = puVar5;
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x712: equip_func_7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void equip_func_7(int16_t arg1, int16_t arg4, int16_t arg3)
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
/* 0x8e3: extract_bits */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits(int16_t arg1)
{
    int16_t iVar1;
    uint8_t *unaff_DI;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = (uint16_t)(uint8_t)((char)arg1 - 1) * 8;
    *unaff_DI = *(uint8_t *)(iVar1 + 0x3945) & *(uint8_t *)0x4aab | *(uint8_t *)(iVar1 + 0x3949);
    puVar2 = unaff_DI + 0x2000;
    if ((uint8_t *)0x3fff < puVar2) {
        puVar2 = unaff_DI + -0x1fb0;
    }
    *puVar2 = *(uint8_t *)(iVar1 + 0x3946) & *(uint8_t *)0x4aab | *(uint8_t *)(iVar1 + 0x394a);
    puVar3 = puVar2 + 0x2000;
    if ((uint8_t *)0x3fff < puVar3) {
        puVar3 = puVar2 + -0x1fb0;
    }
    *puVar3 = *(uint8_t *)(iVar1 + 0x3947) & *(uint8_t *)0x4aab | *(uint8_t *)(iVar1 + 0x394b);
    puVar2 = puVar3 + 0x2000;
    if ((uint8_t *)0x3fff < puVar2) {
        puVar2 = puVar3 + -0x1fb0;
    }
    *puVar2 = *(uint8_t *)(iVar1 + 0x3948) & *(uint8_t *)0x4aab | *(uint8_t *)(iVar1 + 0x394c);
    return;
}

/* ====================================================================== */
/* 0xbd4: fill_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer(int16_t arg1)
{
    undefined *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    uint8_t in_BL;
    uint8_t in_BH;
    int16_t unaff_SI;
    undefined *puVar4;
    undefined2 *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar5 = (undefined2 *)
             ((-(uint16_t)(*(uint8_t *)0x4aab + 0x10 & 1) & 0x2000) +
             (uint16_t)((uint8_t)(*(uint8_t *)0x4aab + 0x10) >> 1) * 0x50 + 4);
    if ((in_BL <= *(uint8_t *)0x4aab) && (*(uint8_t *)0x4aab < (uint8_t)(in_BL + *(char *)0x4aae))) {
        puVar4 = (undefined *)
                 (unaff_SI + (uint16_t)(uint8_t)(*(uint8_t *)0x4aab - in_BL) * (uint16_t)*(uint8_t *)0x4aaf);
        *(uint8_t *)0x4aaa = 0;
        iVar3 = 0x48;
        do {
            *(undefined *)puVar5 = 0;
            if ((in_BH <= *(uint8_t *)0x4aaa) && (*(uint8_t *)0x4aaa < (uint8_t)(in_BH + *(uint8_t *)0x4aaf))) {
                puVar1 = puVar4;
                puVar4 = puVar4 + 1;
                *(undefined *)puVar5 = *puVar1;
            }
            puVar5 = (undefined2 *)((int16_t)puVar5 + 1);
            *(uint8_t *)0x4aaa = *(uint8_t *)0x4aaa + 1;
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        return;
    }
    for (iVar3 = 0x24; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0xcbd: clear_buffer */
/* ====================================================================== */


void clear_buffer(void)
{
    uint8_t *puVar1;
    int16_t in_BX;
    uint8_t *unaff_DI;
    uint8_t *puVar2;
    undefined2 unaff_ES;
    
    equip_get_value();
    *unaff_DI = *unaff_DI | 0x3f;
    puVar2 = unaff_DI + 1;
    for (in_BX = in_BX + -2; in_BX != 0; in_BX = in_BX + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0xff;
    }
    *puVar2 = *puVar2 | 0xfc;
    return;
}

/* ====================================================================== */
/* 0xd0a: equip_get_value */
/* ====================================================================== */


void equip_get_value(void)
{
    int16_t unaff_DI;
    undefined2 unaff_ES;
    
    *(undefined2 *)(unaff_DI + -1) = 0;
    return;
}

/* ====================================================================== */
/* 0xcd3: equip_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void equip_process_loop_2(int16_t arg4)
{
    int16_t iVar1;
    int16_t in_BX;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        equip_get_value(unaff_DI);
        *unaff_DI = *unaff_DI | 0x30;
        *unaff_DI = *unaff_DI & 0xf0;
        for (iVar1 = in_BX + -2; unaff_DI = unaff_DI + 1, iVar1 != 0; iVar1 = iVar1 + -1) {
            *unaff_DI = 0;
        }
        *unaff_DI = *unaff_DI | 0xc;
        *unaff_DI = *unaff_DI & 0xf;
        *(char *)0x4aab = *(char *)0x4aab + '\x01';
        unaff_DI = (uint8_t *)(arg4 + 0x2000);
        if ((uint8_t *)0x3fff < unaff_DI) {
            unaff_DI = (uint8_t *)(arg4 + -0x1fb0);
        }
        arg4 = in_stack_00000000 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0xeb2: equip_process_loop_3 */
/* ====================================================================== */


void equip_process_loop_3(int16_t param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    int16_t unaff_DI;
    undefined *puVar2;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    equip_process_loop_4();
    puVar2 = (undefined *)(unaff_DI + 0x36);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    equip_process_loop_4();
    equip_process_loop_4();
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
    equip_process_loop_4();
    equip_process_loop_4();
    puVar2 = (undefined *)(param_3 + 0x2ab6);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    equip_process_loop_4();
    return;
}

/* ====================================================================== */
/* 0xf37: equip_process_loop_4 */
/* ====================================================================== */


void equip_process_loop_4(void)
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
/* 0xe40: fill_buffer_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer_2(int16_t arg1, int16_t arg2)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    int16_t *piVar3;
    undefined2 *puVar4;
    undefined uVar5;
    undefined2 uVar6;
    int16_t iVar7;
    uint8_t *unaff_SI;
    uint8_t *puVar8;
    int16_t *piVar9;
    undefined *unaff_DI;
    undefined *puVar10;
    undefined2 *puVar11;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar7 = 0xb;
    *(undefined2 *)0x4aa8 = 0;
    do {
        puVar10 = unaff_DI;
        puVar8 = unaff_SI;
        *(uint16_t *)0x4aa6 = (uint16_t)puVar8[0x5500];
        *(uint16_t *)0x4aa4 = (uint16_t)puVar8[0x2a80];
        *(uint16_t *)0x4aa2 = (uint16_t)*puVar8;
        uVar5 = equip_func_1(iVar7, *(uint16_t *)0x4aa2);
        *puVar10 = uVar5;
        iVar7 = iVar7 + -1;
        unaff_SI = puVar8 + 1;
        unaff_DI = puVar10 + 1;
    } while (iVar7 != 0);
    iVar7 = 5;
    piVar3 = (int16_t *)(puVar8 + 0x19);
    puVar4 = (undefined2 *)(puVar10 + 0x19);
    do {
        puVar11 = puVar4;
        piVar9 = piVar3;
        *(int16_t *)0x4aa6 = piVar9[0x2a80];
        *(int16_t *)0x4aa4 = piVar9[0x1540];
        *(int16_t *)0x4aa2 = *piVar9;
        uVar6 = equip_func_1(iVar7, *(int16_t *)0x4aa2);
        *puVar11 = uVar6;
        iVar7 = iVar7 + -1;
        piVar3 = piVar9 + 1;
        puVar4 = puVar11 + 1;
    } while (iVar7 != 0);
    piVar9 = piVar9 + 0xd;
    puVar11 = puVar11 + 0xd;
    iVar7 = 0xb;
    do {
        *(uint16_t *)0x4aa6 = (uint16_t)*(uint8_t *)(piVar9 + 0x2a80);
        *(uint16_t *)0x4aa4 = (uint16_t)*(uint8_t *)(piVar9 + 0x1540);
        piVar1 = piVar9;
        piVar9 = (int16_t *)((int16_t)piVar9 + 1);
        *(uint16_t *)0x4aa2 = (uint16_t)*(uint8_t *)piVar1;
        uVar5 = equip_func_1(iVar7, *(uint16_t *)0x4aa2);
        puVar2 = puVar11;
        puVar11 = (undefined2 *)((int16_t)puVar11 + 1);
        *(undefined *)puVar2 = uVar5;
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    return;
}

/* ====================================================================== */
/* 0xe1a: extract_bits_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits_2(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    undefined2 uVar3;
    int16_t arg4;
    int16_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    arg4 = 0x28;
    *(undefined2 *)0x4aa8 = 0;
    do {
        *(int16_t *)0x4aa6 = unaff_SI[0x2a80];
        *(int16_t *)0x4aa4 = unaff_SI[0x1540];
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(int16_t *)0x4aa2 = *piVar1;
        uVar3 = equip_func_1(arg4, *(int16_t *)0x4aa2);
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar2 = uVar3;
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0xf81: extract_bits_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits_3(int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t *puVar3;
    int16_t iVar4;
    uint8_t *puVar5;
    uint8_t *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    puVar3 = (uint8_t *)((arg1 & 0xffU) * 0x2f + *(int16_t *)0x4ab0);
    puVar6 = (uint8_t *)((-(uint16_t)((uint8_t)arg1 & 1) & 0x2000) + (uint16_t)(uint8_t)((uint8_t)arg1 >> 1) * 0x50);
    if ((uint16_t)arg1 < 0x14) {
        iVar4 = 0x2f;
    } else {
        iVar4 = 0x23;
        if (0x16 < (uint16_t)arg1) {
            if ((uint16_t)arg1 < 0x1c) {
                iVar4 = 0x21;
                *(undefined2 *)0x4aa8 = 0;
                do {
                    puVar5 = puVar3;
                    *(uint16_t *)0x4aa6 = (uint16_t)puVar5[0x29dc];
                    *(uint16_t *)0x4aa4 = (uint16_t)puVar5[0x14ee];
                    *(uint16_t *)0x4aa2 = (uint16_t)*puVar5;
                    uVar2 = equip_func_1(iVar4, *(uint16_t *)0x4aa2);
                    puVar1 = puVar6;
                    puVar6 = puVar6 + 1;
                    *puVar1 = uVar2;
                    iVar4 = iVar4 + -1;
                    puVar3 = puVar5 + 1;
                } while (iVar4 != 0);
                *(uint16_t *)0x4aa6 = (uint16_t)puVar5[0x29dd];
                *(uint16_t *)0x4aa4 = (uint16_t)puVar5[0x14ef];
                *(uint16_t *)0x4aa2 = (uint16_t)puVar5[1];
                uVar2 = equip_func_1(0, *(uint16_t *)0x4aa2);
                *puVar6 = *puVar6 & 3;
                *puVar6 = *puVar6 | uVar2 & 0xfc;
                return;
            }
            iVar4 = 0x21;
        }
    }
    *(undefined2 *)0x4aa8 = 0;
    do {
        *(uint16_t *)0x4aa6 = (uint16_t)puVar3[0x29dc];
        *(uint16_t *)0x4aa4 = (uint16_t)puVar3[0x14ee];
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *(uint16_t *)0x4aa2 = (uint16_t)*puVar1;
        uVar2 = equip_func_1(iVar4, *(uint16_t *)0x4aa2);
        puVar1 = puVar6;
        puVar6 = puVar6 + 1;
        *puVar1 = uVar2;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x1066: equip_process_loop_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void equip_process_loop_5(int16_t arg1, int16_t arg2)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    int16_t *piVar3;
    undefined2 uVar4;
    int16_t iVar5;
    uint8_t uVar6;
    undefined2 *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    piVar3 = (int16_t *)((arg1 & 0xffU) * 0x2f + 0x3cd + *(int16_t *)0x4ab0);
    uVar6 = (char)arg1 + 0x14;
    puVar7 = (undefined2 *)((-(uint16_t)(uVar6 & 1) & 0x2000) + (uint16_t)(uVar6 >> 1) * 0x50 + 0x21);
    iVar5 = 0x2f;
    if ((uint16_t)arg1 < 0x5e) {
        iVar5 = 7;
        *(undefined2 *)0x4aa8 = 0;
        do {
            *(int16_t *)0x4aa6 = piVar3[0x14ee];
            *(int16_t *)0x4aa4 = piVar3[0xa77];
            piVar1 = piVar3;
            piVar3 = piVar3 + 1;
            *(int16_t *)0x4aa2 = *piVar1;
            uVar4 = equip_func_1(iVar5, *(int16_t *)0x4aa2);
            puVar2 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar2 = uVar4;
            iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
        iVar5 = 0x21;
    }
    for (; iVar5 != 0; iVar5 = iVar5 + -1) {
        puVar2 = puVar7;
        puVar7 = (undefined2 *)((int16_t)puVar7 + 1);
        *(undefined *)puVar2 = 0;
    }
    return;
}

