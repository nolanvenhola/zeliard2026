/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x467 = "{¡¡uuaB{"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_03 */
/* ====================================================================== */


void zr1_03(void)
{
    return;
}

/* ====================================================================== */
/* 0x1b8c: imgdec_func_1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t imgdec_func_1(int16_t arg4, int16_t arg1)
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
        bVar6 = (int16_t)*(uint16_t *)0x4c5a < 0;
        uVar1 = *(uint16_t *)0x4c5a << 1 | (uint16_t)bVar6;
        bVar7 = (int16_t)*(uint16_t *)0x4c58 < 0;
        uVar2 = *(uint16_t *)0x4c58 << 1 | (uint16_t)bVar7;
        bVar8 = (int16_t)*(uint16_t *)0x4c56 < 0;
        uVar3 = *(uint16_t *)0x4c56 << 1 | (uint16_t)bVar8;
        bVar9 = (int16_t)*(uint16_t *)0x4c54 < 0;
        uVar4 = *(uint16_t *)0x4c54 << 1 | (uint16_t)bVar9;
        *(uint16_t *)0x4c5a = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x4c58 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x4c56 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        *(uint16_t *)0x4c54 = uVar4 << 1 | (uint16_t)((int16_t)uVar4 < 0);
        arg1 = CONCAT11((char)((uint16_t)(arg1 * 4) >> 8), 
                        (uint8_t)(arg1 * 4) |
                        *(uint8_t *)
                         ((((((((uint16_t)bVar6 * 2 + (uint16_t)bVar7) * 2 + (uint16_t)bVar8) * 2 + (uint16_t)bVar9) * 2
                            + (uint16_t)((int16_t)uVar1 < 0)) * 2 + (uint16_t)((int16_t)uVar2 < 0)) * 2 +
                          (uint16_t)((int16_t)uVar3 < 0)) * 2 + (uint16_t)((int16_t)uVar4 < 0) + *(int16_t *)0x4c52));
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return arg1;
}

/* ====================================================================== */
/* 0x1c30: imgdec_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t imgdec_process_loop(int16_t arg3)
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
/* 0x177: imgdec_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined imgdec_process_loop_2(int16_t arg4, int16_t arg3)
{
    char cVar1;
    undefined uVar4;
    int16_t iVar3;
    int16_t iVar5;
    undefined2 unaff_SI;
    uint16_t unaff_DI;
    uint16_t uVar6;
    uint16_t uVar7;
    undefined2 uVar2;
    
    *(uint8_t *)0x4c5d = 0;
    iVar5 = 8;
    do {
        *(uint8_t *)0x4c5c = *(uint8_t *)0x4c5d;
        *(uint8_t *)0xff1a = 0;
        iVar3 = arg4;
        uVar7 = unaff_DI;
        do {
            (**(code **)0x4c60)(*(undefined2 *)((*(uint8_t *)0x4c5c & 7) * 2 + 0x32bb), uVar7, unaff_SI);
            *(uint8_t *)0x4c5c = *(uint8_t *)0x4c5c + 1;
            uVar6 = unaff_DI + 0x2000;
            if (0x5fff < uVar6) {
                (**(code **)0x4c60)();
                uVar6 = unaff_DI + 0xc05a;
            }
            uVar4 = (undefined)((uint16_t)iVar3 >> 8);
            cVar1 = (char)iVar3 + -1;
            uVar2 = CONCAT11(uVar4, cVar1);
            if (cVar1 == '\0') break;
            (**(code **)0x4c60)(*(undefined2 *)((*(uint8_t *)0x4c5c & 7) * 2 + 0x32cb));
            *(uint8_t *)0x4c5c = *(uint8_t *)0x4c5c + 1;
            unaff_DI = uVar6 + 0x2000;
            if (0x5fff < unaff_DI) {
                (**(code **)0x4c60)();
                unaff_DI = uVar6 + 0xc05a;
            }
            uVar4 = (undefined)((uint16_t)uVar2 >> 8);
            cVar1 = (char)uVar2 + -1;
            iVar3 = CONCAT11(uVar4, cVar1);
        } while (cVar1 != '\0');
        unaff_DI = uVar7;
        *(uint8_t *)0x4c5d = *(uint8_t *)0x4c5d + 1;
        do {
        } while (*(uint8_t *)0xff1a < 0x14);
        iVar5 = iVar5 + -1;
        if (iVar5 == 0) {
            return uVar4;
        }
    } while( true );
}

/* ====================================================================== */
/* 0x323: copy_buffer */
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
/* 0x3b9: copy_buffer_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer_2(int16_t arg3, int16_t arg1)
{
    uint16_t *puVar1;
    uint16_t *puVar2;
    uint16_t uVar3;
    uint16_t *unaff_BP;
    uint16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    uVar3 = (uint16_t)arg3 >> 1;
    do {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar2 = *puVar1 | *unaff_BP;
        unaff_BP = unaff_BP + 1;
        uVar3 = uVar3 - 1;
    } while (uVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x5a1: imgdec_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_multiply(int16_t arg4)
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
        if ((undefined *)0x5fff < puVar5) {
            puVar5 = unaff_SI + -0x3fa6;
        }
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
        unaff_SI = puVar5;
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5f1: imgdec_process_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_process_loop_3(int16_t arg4, int16_t arg1)
{
    int16_t arg1_00;
    char cVar1;
    int16_t in_DX;
    int16_t arg3;
    uint16_t unaff_DI;
    uint16_t uVar3;
    undefined4 uVar4;
    uint16_t uVar2;
    
    arg1_00 = ((uint16_t)arg4 >> 8) * (arg4 & 0xffU);
    *(undefined2 *)0x4c5a = 0;
    *(undefined2 *)0x4c58 = 0;
    uVar2 = arg4;
    arg3 = arg1_00;
    do {
        uVar2 = uVar2 >> 8;
        uVar4 = imgdec_func_9(uVar2, arg3, arg1_00, in_DX);
        uVar3 = unaff_DI + 0x2000;
        if (0x5fff < uVar3) {
            uVar4 = imgdec_func_9(uVar2, arg3, (int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
            uVar3 = unaff_DI + 0xc05a;
        }
        in_DX = (int16_t)((uint32_t)uVar4 >> 0x10);
        arg1_00 = (int16_t)uVar4;
        cVar1 = (char)arg4 + -1;
        uVar2 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar1);
        unaff_DI = uVar3;
    } while (cVar1 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5c2: imgdec_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_multiply_2(int16_t arg4)
{
    undefined *puVar1;
    undefined *puVar2;
    uint16_t uVar3;
    char cVar4;
    uint16_t uVar5;
    undefined *unaff_SI;
    undefined *puVar6;
    undefined *unaff_DI;
    undefined *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    do {
        uVar3 = (uint16_t)arg4 >> 8;
        puVar7 = unaff_SI;
        puVar6 = unaff_DI;
        for (uVar5 = uVar3; uVar5 != 0; uVar5 = uVar5 - 1) {
            puVar2 = puVar6;
            puVar6 = puVar6 + 1;
            puVar1 = puVar7;
            puVar7 = puVar7 + 1;
            *puVar2 = *puVar1;
        }
        puVar7 = unaff_DI + 0x2000;
        uVar5 = uVar3;
        puVar6 = unaff_SI;
        if ((undefined *)0x5fff < puVar7) {
            for (; uVar5 != 0; uVar5 = uVar5 - 1) {
                puVar1 = puVar7;
                puVar7 = puVar7 + 1;
                *puVar1 = *puVar6;
                puVar6 = puVar6 + 1;
            }
            puVar7 = unaff_DI + -0x3fa6;
        }
        unaff_SI = unaff_SI + uVar3;
        cVar4 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar4);
        unaff_DI = puVar7;
    } while (cVar4 != '\0');
    return;
}

/* ====================================================================== */
/* 0x62a: imgdec_func_9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_func_9(int16_t arg4, int16_t arg3, int16_t arg1, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    int16_t arg4_00;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    arg4_00 = arg4;
    do {
        *(uint16_t *)0x4c56 = (uint16_t)unaff_SI[arg3];
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(uint16_t *)0x4c54 = (uint16_t)*puVar1;
        uVar2 = imgdec_func_1(arg4_00, *(uint16_t *)0x4c54);
        *unaff_DI = *unaff_DI | uVar2;
        unaff_DI = unaff_DI + 1;
        arg4_00 = arg4_00 + -1;
        arg3 = arg4;
    } while (arg4_00 != 0);
    return;
}

/* ====================================================================== */
/* 0x722: imgdec_multiply_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_multiply_3(int16_t arg1, int16_t arg4, int16_t arg3)
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
/* 0x99b: fill_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer(int16_t arg1)
{
    int16_t iVar1;
    uint8_t uVar2;
    uint8_t *unaff_DI;
    uint8_t *puVar3;
    uint8_t *puVar4;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = (uint16_t)(uint8_t)((char)arg1 - 1) * 8;
    uVar2 = *(uint8_t *)(iVar1 + 0x3a0b) & *(uint8_t *)0x4c5d | *(uint8_t *)(iVar1 + 0x3a0f);
    *unaff_DI = uVar2;
    puVar3 = unaff_DI + 0x2000;
    if ((uint8_t *)0x5fff < puVar3) {
        *puVar3 = uVar2;
        puVar3 = unaff_DI + -0x3fa6;
    }
    uVar2 = *(uint8_t *)(iVar1 + 0x3a0c) & *(uint8_t *)0x4c5d | *(uint8_t *)(iVar1 + 0x3a10);
    *puVar3 = uVar2;
    puVar4 = puVar3 + 0x2000;
    if ((uint8_t *)0x5fff < puVar4) {
        *puVar4 = uVar2;
        puVar4 = puVar3 + -0x3fa6;
    }
    uVar2 = *(uint8_t *)(iVar1 + 0x3a0d) & *(uint8_t *)0x4c5d | *(uint8_t *)(iVar1 + 0x3a11);
    *puVar4 = uVar2;
    puVar3 = puVar4 + 0x2000;
    if ((uint8_t *)0x5fff < puVar3) {
        *puVar3 = uVar2;
        puVar3 = puVar4 + -0x3fa6;
    }
    uVar2 = *(uint8_t *)(iVar1 + 0x3a0e) & *(uint8_t *)0x4c5d | *(uint8_t *)(iVar1 + 0x3a12);
    *puVar3 = uVar2;
    if ((uint8_t *)0x5fff < puVar3 + 0x2000) {
        puVar3[0x2000] = uVar2;
    }
    return;
}

/* ====================================================================== */
/* 0xc9a: clear_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void clear_buffer(int16_t arg3, int16_t arg1)
{
    undefined *puVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    int16_t iVar5;
    uint8_t uVar6;
    int16_t unaff_SI;
    undefined *puVar7;
    undefined2 *puVar8;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    puVar4 = (undefined2 *)imgdec_process_loop(CONCAT11(4, *(uint8_t *)0x4c5d + 0x10));
    uVar6 = (uint8_t)in_stack_00000000;
    if ((*(uint8_t *)0x4c5d < uVar6) || ((uint8_t)(uVar6 + *(char *)0x4c60) <= *(uint8_t *)0x4c5d)) {
        puVar8 = puVar4;
        for (iVar5 = 0x24; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar2 = puVar8;
            puVar8 = puVar8 + 1;
            *puVar2 = 0;
        }
        puVar4 = puVar4 + 0x1000;
        if (puVar4 < (undefined2 *)0x6000) {
            return;
        }
        for (iVar5 = 0x24; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar2 = puVar4;
            puVar4 = puVar4 + 1;
            *puVar2 = 0;
        }
        return;
    }
    puVar7 = (undefined *)(unaff_SI + (uint16_t)(uint8_t)(*(uint8_t *)0x4c5d - uVar6) * (uint16_t)*(uint8_t *)0x4c61);
    *(uint8_t *)0x4c5c = 0;
    iVar5 = 0x48;
    puVar8 = puVar4;
    do {
        *(undefined *)puVar8 = 0;
        uVar6 = (uint8_t)((uint16_t)in_stack_00000000 >> 8);
        if ((uVar6 <= *(uint8_t *)0x4c5c) && (*(uint8_t *)0x4c5c < (uint8_t)(uVar6 + *(uint8_t *)0x4c61))) {
            puVar1 = puVar7;
            puVar7 = puVar7 + 1;
            *(undefined *)puVar8 = *puVar1;
        }
        puVar8 = (undefined2 *)((int16_t)puVar8 + 1);
        *(uint8_t *)0x4c5c = *(uint8_t *)0x4c5c + 1;
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    puVar8 = puVar4 + 0x1000;
    if (puVar8 < (undefined2 *)0x6000) {
        return;
    }
    for (iVar5 = 0x48; iVar5 != 0; iVar5 = iVar5 + -1) {
        puVar3 = puVar8;
        puVar8 = (undefined2 *)((int16_t)puVar8 + 1);
        puVar2 = puVar4;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 1);
        *(undefined *)puVar3 = *(undefined *)puVar2;
    }
    return;
}

/* ====================================================================== */
/* 0xdb8: imgdec_get_value */
/* ====================================================================== */


void imgdec_get_value(void)
{
    uint8_t *puVar1;
    int16_t iVar2;
    int16_t in_BX;
    uint8_t *unaff_DI;
    uint8_t *puVar3;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    imgdec_scan_loop();
    *unaff_DI = *unaff_DI | 0x3f;
    puVar3 = unaff_DI + 1;
    for (iVar2 = in_BX + -2; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0xff;
    }
    *puVar3 = *puVar3 | 0xfc;
    if ((uint8_t *)(in_stack_00000000 + 0x2000) < (uint8_t *)0x6000) {
        return;
    }
    imgdec_scan_loop();
    puVar1 = (uint8_t *)(in_stack_00000000 + 0x2000);
    *puVar1 = *puVar1 | 0x3f;
    puVar3 = (uint8_t *)(in_stack_00000000 + 0x2001);
    for (in_BX = in_BX + -2; in_BX != 0; in_BX = in_BX + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0xff;
    }
    *puVar3 = *puVar3 | 0xfc;
    return;
}

/* ====================================================================== */
/* 0xe46: imgdec_scan_loop */
/* ====================================================================== */


void imgdec_scan_loop(void)
{
    int16_t unaff_DI;
    undefined2 unaff_ES;
    
    *(undefined2 *)(unaff_DI + -1) = 0;
    return;
}

/* ====================================================================== */
/* 0xdf0: imgdec_scan_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_scan_loop_2(int16_t arg4)
{
    uint8_t *puVar1;
    int16_t iVar2;
    int16_t in_BX;
    uint8_t *unaff_DI;
    uint8_t *puVar3;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        imgdec_scan_loop(unaff_DI);
        *unaff_DI = *unaff_DI | 0x30;
        *unaff_DI = *unaff_DI & 0xf0;
        for (iVar2 = in_BX + -2; unaff_DI = unaff_DI + 1, iVar2 != 0; iVar2 = iVar2 + -1) {
            *unaff_DI = 0;
        }
        *unaff_DI = *unaff_DI | 0xc;
        *unaff_DI = *unaff_DI & 0xf;
        *(char *)0x4c5d = *(char *)0x4c5d + '\x01';
        unaff_DI = (uint8_t *)(arg4 + 0x2000);
        if ((uint8_t *)0x5fff < unaff_DI) {
            imgdec_scan_loop(unaff_DI);
            *unaff_DI = *unaff_DI | 0x30;
            *unaff_DI = *unaff_DI & 0xf0;
            puVar3 = (uint8_t *)(arg4 + 0x2001);
            for (iVar2 = in_BX + -2; iVar2 != 0; iVar2 = iVar2 + -1) {
                puVar1 = puVar3;
                puVar3 = puVar3 + 1;
                *puVar1 = 0;
            }
            *puVar3 = *puVar3 | 0xc;
            *puVar3 = *puVar3 & 0xf;
            unaff_DI = (uint8_t *)(in_stack_00000000 + -0x5fa6);
        }
        arg4 = in_stack_00000000 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x100f: imgdec_process_loop_4 */
/* ====================================================================== */


void imgdec_process_loop_4(int16_t param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    int16_t unaff_DI;
    undefined *puVar2;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    fill_buffer_2();
    puVar2 = (undefined *)(unaff_DI + 0x36);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fill_buffer_2();
    fill_buffer_2();
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
    fill_buffer_2();
    fill_buffer_2();
    puVar2 = (undefined *)(param_3 + 0x2ab6);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    fill_buffer_2();
    return;
}

/* ====================================================================== */
/* 0x1094: fill_buffer_2 */
/* ====================================================================== */


void fill_buffer_2(void)
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
/* 0xf76: imgdec_multiply_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_multiply_4(int16_t arg1, int16_t arg2)
{
    int16_t *piVar1;
    int16_t *piVar2;
    undefined uVar3;
    undefined2 uVar4;
    int16_t iVar5;
    uint8_t *unaff_SI;
    uint8_t *puVar6;
    int16_t *piVar7;
    undefined *unaff_DI;
    undefined *puVar8;
    undefined2 *puVar9;
    undefined2 *puVar10;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar5 = 0xb;
    *(undefined2 *)0x4c5a = 0;
    do {
        puVar8 = unaff_DI;
        puVar6 = unaff_SI;
        *(uint16_t *)0x4c58 = (uint16_t)puVar6[0x5500];
        *(uint16_t *)0x4c56 = (uint16_t)puVar6[0x2a80];
        *(uint16_t *)0x4c54 = (uint16_t)*puVar6;
        uVar3 = imgdec_func_1(iVar5, *(uint16_t *)0x4c54);
        *puVar8 = uVar3;
        if ((undefined *)0x5fff < puVar8 + 0x2000) {
            puVar8[0x2000] = uVar3;
        }
        iVar5 = iVar5 + -1;
        unaff_SI = puVar6 + 1;
        unaff_DI = puVar8 + 1;
    } while (iVar5 != 0);
    iVar5 = 5;
    piVar2 = (int16_t *)(puVar6 + 0x19);
    puVar10 = (undefined2 *)(puVar8 + 0x19);
    do {
        puVar9 = puVar10;
        piVar7 = piVar2;
        *(int16_t *)0x4c58 = piVar7[0x2a80];
        *(int16_t *)0x4c56 = piVar7[0x1540];
        *(int16_t *)0x4c54 = *piVar7;
        uVar4 = imgdec_func_1(iVar5, *(int16_t *)0x4c54);
        *puVar9 = uVar4;
        if ((undefined2 *)0x5fff < puVar9 + 0x1000) {
            puVar9[0x1000] = uVar4;
        }
        iVar5 = iVar5 + -1;
        piVar2 = piVar7 + 1;
        puVar10 = puVar9 + 1;
    } while (iVar5 != 0);
    piVar7 = piVar7 + 0xd;
    iVar5 = 0xb;
    puVar10 = puVar9 + 0xd;
    do {
        *(uint16_t *)0x4c58 = (uint16_t)*(uint8_t *)(piVar7 + 0x2a80);
        *(uint16_t *)0x4c56 = (uint16_t)*(uint8_t *)(piVar7 + 0x1540);
        piVar1 = piVar7;
        piVar7 = (int16_t *)((int16_t)piVar7 + 1);
        *(uint16_t *)0x4c54 = (uint16_t)*(uint8_t *)piVar1;
        uVar3 = imgdec_func_1(iVar5, *(uint16_t *)0x4c54);
        *(undefined *)puVar10 = uVar3;
        if ((undefined2 *)0x5fff < puVar10 + 0x1000) {
            *(undefined *)(puVar10 + 0x1000) = uVar3;
        }
        iVar5 = iVar5 + -1;
        puVar10 = (undefined2 *)((int16_t)puVar10 + 1);
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0xf43: imgdec_multiply_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_multiply_5(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 uVar2;
    int16_t arg4;
    int16_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    arg4 = 0x28;
    *(undefined2 *)0x4c5a = 0;
    do {
        *(int16_t *)0x4c58 = unaff_SI[0x2a80];
        *(int16_t *)0x4c56 = unaff_SI[0x1540];
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(int16_t *)0x4c54 = *piVar1;
        uVar2 = imgdec_func_1(arg4, *(int16_t *)0x4c54);
        *unaff_DI = uVar2;
        if ((undefined2 *)0x5fff < unaff_DI + 0x1000) {
            unaff_DI[0x1000] = uVar2;
        }
        arg4 = arg4 + -1;
        unaff_DI = unaff_DI + 1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x10de: imgdec_process_loop_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void imgdec_process_loop_5(int16_t arg1)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t *puVar3;
    uint8_t *puVar4;
    int16_t iVar5;
    uint8_t *puVar6;
    uint8_t *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    
    puVar3 = (uint8_t *)((arg1 & 0xffU) * 0x2f + *(int16_t *)0x4c62);
    puVar4 = (uint8_t *)imgdec_process_loop(arg1 & 0xff);
    if (in_stack_00000000 < 0x14) {
        iVar5 = 0x2f;
    } else {
        iVar5 = 0x23;
        if (0x16 < in_stack_00000000) {
            if (in_stack_00000000 < 0x1c) {
                iVar5 = 0x21;
                *(undefined2 *)0x4c5a = 0;
                do {
                    puVar7 = puVar4;
                    puVar6 = puVar3;
                    *(uint16_t *)0x4c58 = (uint16_t)puVar6[0x29dc];
                    *(uint16_t *)0x4c56 = (uint16_t)puVar6[0x14ee];
                    *(uint16_t *)0x4c54 = (uint16_t)*puVar6;
                    uVar2 = imgdec_func_1(iVar5, *(uint16_t *)0x4c54);
                    puVar4 = puVar7 + 1;
                    *puVar7 = uVar2;
                    if ((uint8_t *)0x5fff < puVar7 + 0x2000) {
                        puVar7[0x2000] = uVar2;
                    }
                    iVar5 = iVar5 + -1;
                    puVar3 = puVar6 + 1;
                } while (iVar5 != 0);
                *(uint16_t *)0x4c58 = (uint16_t)puVar6[0x29dd];
                *(uint16_t *)0x4c56 = (uint16_t)puVar6[0x14ef];
                *(uint16_t *)0x4c54 = (uint16_t)puVar6[1];
                uVar2 = imgdec_func_1(0, *(uint16_t *)0x4c54);
                *puVar4 = *puVar4 & 3;
                *puVar4 = *puVar4 | uVar2 & 0xfc;
                puVar7 = puVar7 + 0x2000;
                if (puVar7 < (uint8_t *)0x6000) {
                    return;
                }
                *puVar7 = *puVar7 & 3;
                *puVar7 = *puVar7 | uVar2 & 0xfc;
                return;
            }
            iVar5 = 0x21;
        }
    }
    *(undefined2 *)0x4c5a = 0;
    do {
        *(uint16_t *)0x4c58 = (uint16_t)puVar3[0x29dc];
        *(uint16_t *)0x4c56 = (uint16_t)puVar3[0x14ee];
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *(uint16_t *)0x4c54 = (uint16_t)*puVar1;
        uVar2 = imgdec_func_1(iVar5, *(uint16_t *)0x4c54);
        *puVar4 = uVar2;
        if ((uint8_t *)0x5fff < puVar4 + 0x2000) {
            puVar4[0x2000] = uVar2;
        }
        iVar5 = iVar5 + -1;
        puVar4 = puVar4 + 1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0x11e8: math_calc */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void math_calc(int16_t arg1)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    int16_t *piVar3;
    int16_t iVar4;
    undefined2 uVar5;
    int16_t iVar6;
    undefined2 *puVar7;
    undefined2 *puVar8;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    
    piVar3 = (int16_t *)((arg1 & 0xffU) * 0x2f + 0x3cd + *(int16_t *)0x4c62);
    iVar4 = imgdec_process_loop((uint16_t)(uint8_t)((char)arg1 + 0x14));
    puVar7 = (undefined2 *)(iVar4 + 0x21);
    iVar6 = 0x2f;
    puVar8 = puVar7;
    iVar4 = iVar6;
    if (in_stack_00000000 < 0x5e) {
        iVar4 = 7;
        *(undefined2 *)0x4c5a = 0;
        do {
            *(int16_t *)0x4c58 = piVar3[0x14ee];
            *(int16_t *)0x4c56 = piVar3[0xa77];
            piVar1 = piVar3;
            piVar3 = piVar3 + 1;
            *(int16_t *)0x4c54 = *piVar1;
            uVar5 = imgdec_func_1(iVar4, *(int16_t *)0x4c54);
            puVar7 = puVar8 + 1;
            *puVar8 = uVar5;
            if ((undefined2 *)0x5fff < puVar8 + 0x1000) {
                puVar8[0x1000] = uVar5;
            }
            iVar4 = iVar4 + -1;
            puVar8 = puVar7;
        } while (iVar4 != 0);
        iVar6 = 0x21;
        iVar4 = iVar6;
    }
    for (; iVar6 != 0; iVar6 = iVar6 + -1) {
        puVar2 = puVar7;
        puVar7 = (undefined2 *)((int16_t)puVar7 + 1);
        *(undefined *)puVar2 = 0;
    }
    puVar8 = puVar8 + 0x1000;
    if ((undefined2 *)0x5fff < puVar8) {
        for (; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar8;
            puVar8 = (undefined2 *)((int16_t)puVar8 + 1);
            *(undefined *)puVar2 = 0;
        }
        return;
    }
    return;
}

