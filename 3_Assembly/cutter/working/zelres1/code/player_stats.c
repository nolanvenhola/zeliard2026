/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x49c = "{¡¡uuaBØ"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_04 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint16_t zr1_04(int16_t arg_ch, int16_t arg3, int16_t arg4, int16_t arg2)
{
    undefined2 *puVar1;
    int16_t *piVar2;
    uint8_t uVar3;
    uint8_t uVar4;
    int16_t arg1;
    undefined2 in_AX;
    uint16_t uVar5;
    undefined2 in_CX;
    undefined2 in_DX;
    uint8_t *puVar6;
    int16_t in_BX;
    uint16_t unaff_BP;
    undefined2 *unaff_SI;
    int16_t *piVar7;
    uint16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint8_t in_AF;
    undefined4 uVar8;
    undefined2 uStack0002;
    int16_t in_stack_00000004;
    int16_t in_stack_00000006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    
    uVar3 = *(uint8_t *)(in_BX + (int16_t)unaff_SI);
    puVar6 = (uint8_t *)(in_BX + -1);
    uVar4 = puVar6[(int16_t)unaff_SI];
    puVar6[(int16_t)unaff_SI] = puVar6[(int16_t)unaff_SI] ^ 0xd4;
    piVar7 = (int16_t *)(unaff_DI ^ *(uint16_t *)(puVar6 + unaff_DI + 0x33));
    if ((int16_t)piVar7 < 1) {
        *puVar6 = *puVar6 | uVar4;
        uVar4 = in(CONCAT11(uVar4, (char)((int16_t)in_AX >> 0xf)));
        *(uint8_t *)(in_BX + 0x36) = *(uint8_t *)(in_BX + 0x36) ^ uVar4;
        uVar3 = 9 < (uVar4 & 0xf) | in_AF;
        return CONCAT11(uVar3 + 0x36, uVar4 + uVar3 * '\x06') & 0xff0f;
    }
    puVar6[(int16_t)unaff_SI] = puVar6[(int16_t)unaff_SI] + ((uint8_t)in_AX & uVar3);
    *(undefined2 *)0x4c01 = 0;
    *(undefined2 *)0x4c03 = 0;
    uVar5 = unaff_BP >> 1;
    do {
        *(undefined2 *)0x4c05 =
             CONCAT11((char)*(undefined2 *)(unaff_BP + (int16_t)unaff_SI), 
                      (char)((uint16_t)*(undefined2 *)(unaff_BP + (int16_t)unaff_SI) >> 8));
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(int16_t *)0x4bff = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
        arg1 = stats_func_1(uVar5, *(int16_t *)0x4bff);
        piVar2 = piVar7 + 1;
        *piVar7 = arg1;
        uVar8 = stats_func_1(uVar5, arg1);
        piVar7 = piVar7 + 2;
        *piVar2 = (int16_t)uVar8;
        uVar5 = uVar5 - 1;
    } while (uVar5 != 0);
    uStack0008 = 0x77;
    uStack0002 = 0;
    stats_func_2((int16_t)((uint32_t)uVar8 >> 0x10), in_stack_00000006);
    *(undefined2 *)0x4c0f = 0x3234;
    *(undefined *)0x4c0c = 0;
    if ((char)uStack0008 == '\0') {
        uStack0008 = 0x195;
        copy_buffer(in_stack_00000004, in_stack_00000006);
    }
    *(undefined *)0x4c0c = 0xff;
    uStack000a = 0x19e;
    uVar5 = copy_buffer(in_stack_00000004, in_stack_00000006);
    return uVar5;
}

/* ====================================================================== */
/* 0x1ae8: stats_func_1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 stats_func_1(int16_t arg4, int16_t arg1)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    uint8_t uVar5;
    undefined uVar6;
    int16_t iVar7;
    bool bVar8;
    bool bVar9;
    bool bVar10;
    bool bVar11;
    
    iVar7 = 4;
    do {
        bVar8 = (int16_t)*(uint16_t *)0x4c05 < 0;
        uVar1 = *(uint16_t *)0x4c05 << 1 | (uint16_t)bVar8;
        bVar9 = (int16_t)*(uint16_t *)0x4c03 < 0;
        uVar2 = *(uint16_t *)0x4c03 << 1 | (uint16_t)bVar9;
        bVar10 = (int16_t)*(uint16_t *)0x4c01 < 0;
        uVar3 = *(uint16_t *)0x4c01 << 1 | (uint16_t)bVar10;
        bVar11 = (int16_t)*(uint16_t *)0x4bff < 0;
        uVar4 = *(uint16_t *)0x4bff << 1 | (uint16_t)bVar11;
        *(uint16_t *)0x4c05 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x4c03 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        *(uint16_t *)0x4c01 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
        *(uint16_t *)0x4bff = uVar4 << 1 | (uint16_t)((int16_t)uVar4 < 0);
        uVar6 = (undefined)((uint16_t)(arg1 * 0x10) >> 8);
        uVar5 = (uint8_t)(arg1 * 0x10) |
                *(uint8_t *)
                 ((((((((uint16_t)bVar8 * 2 + (uint16_t)bVar9) * 2 + (uint16_t)bVar10) * 2 + (uint16_t)bVar11) * 2 +
                    (uint16_t)((int16_t)uVar1 < 0)) * 2 + (uint16_t)((int16_t)uVar2 < 0)) * 2 +
                  (uint16_t)((int16_t)uVar3 < 0)) * 2 + (uint16_t)((int16_t)uVar4 < 0) + *(int16_t *)0x4bfd);
        arg1 = CONCAT11(uVar6, uVar5);
        iVar7 = iVar7 + -1;
    } while (iVar7 != 0);
    return CONCAT11(uVar5, uVar6);
}

/* ====================================================================== */
/* 0x1be0: stats_func_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t stats_func_2(int16_t arg2, int16_t arg3)
{
    return ((uint16_t)arg3 >> 2 & 0x3f) * 0xa0 +
           (uint16_t)((uint8_t)((uint8_t)((uint8_t)arg3 << 7) >> 1 | ((uint8_t)arg3 >> 1) << 7) >> 1) * 0x100 +
           (uint16_t)(uint8_t)((char)((uint16_t)arg3 >> 8) * '\x02');
}

/* ====================================================================== */
/* 0x1a0: copy_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t copy_buffer(int16_t arg4, int16_t arg3)
{
    char cVar1;
    uint8_t uVar3;
    int16_t iVar2;
    int16_t iVar4;
    undefined2 unaff_SI;
    uint16_t unaff_DI;
    uint16_t uVar5;
    uint16_t uVar6;
    
    *(char *)0x4c0a = '\0';
    iVar4 = 8;
    do {
        *(char *)0x4c09 = *(char *)0x4c0a;
        *(uint8_t *)0xff1a = 0;
        iVar2 = arg4;
        uVar6 = unaff_DI;
        do {
            (**(code **)0x4c0f)(uVar6, unaff_SI);
            *(char *)0x4c09 = *(char *)0x4c09 + '\x01';
            uVar3 = (uint8_t)((uint16_t)iVar2 >> 8);
            uVar5 = unaff_DI + 0x2000;
            if (0x7fff < uVar5) {
                uVar5 = unaff_DI + 0xa0a0;
            }
            cVar1 = (char)iVar2 + -1;
            if (cVar1 == '\0') break;
            (**(code **)0x4c0f)();
            *(char *)0x4c09 = *(char *)0x4c09 + '\x01';
            unaff_DI = uVar5 + 0x2000;
            if (0x7fff < unaff_DI) {
                unaff_DI = uVar5 + 0xa0a0;
            }
            iVar2 = CONCAT11(uVar3, cVar1 + -1);
        } while ((char)(cVar1 + -1) != '\0');
        unaff_DI = uVar6;
        *(char *)0x4c0a = *(char *)0x4c0a + '\x01';
        do {
        } while (*(uint8_t *)0xff1a < 0x14);
        iVar4 = iVar4 + -1;
        if (iVar4 == 0) {
            return (uint16_t)uVar3 * 2;
        }
    } while( true );
}

/* ====================================================================== */
/* 0x35c: copy_buffer_2 */
/* ====================================================================== */


char copy_buffer_2(void)
{
    char in_AL;
    
    return in_AL * '\x10';
}

/* ====================================================================== */
/* 0x5b3: stats_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_multiply(int16_t arg4)
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
        for (iVar4 = ((uint16_t)arg4 >> 8) * 2; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            puVar1 = puVar5;
            puVar5 = puVar5 + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = unaff_SI + 0x2000;
        if ((undefined *)0x7fff < puVar5) {
            puVar5 = unaff_SI + -0x5f60;
        }
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
        unaff_SI = puVar5;
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5f9: stats_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_multiply_2(int16_t arg4, int16_t arg1, int16_t arg2)
{
    uint16_t uVar1;
    char cVar2;
    uint16_t uVar3;
    uint16_t arg4_00;
    uint8_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    *(undefined2 *)0x4c05 = 0;
    uVar3 = arg4;
    uVar1 = ((uint16_t)arg4 >> 8) * (arg4 & 0xffU);
    do {
        arg4_00 = uVar3 >> 8;
        do {
            *(int16_t *)0x4c01 = (uint16_t)unaff_SI[uVar1] << 8;
            *(int16_t *)0x4bff = (uint16_t)*unaff_SI << 8;
            unaff_SI = unaff_SI + 1;
            *(int16_t *)0x4c03 = *(int16_t *)0x4bff;
            uVar1 = stats_func_1(arg4_00, *(int16_t *)0x4bff);
            *unaff_DI = *unaff_DI | uVar1;
            unaff_DI = unaff_DI + 1;
            arg4_00 = arg4_00 - 1;
            uVar1 = uVar3;
        } while (arg4_00 != 0);
        unaff_DI = (uint16_t *)(arg4 + 0x2000);
        if ((uint16_t *)0x7fff < unaff_DI) {
            unaff_DI = (uint16_t *)(arg4 + -0x5f60);
        }
        cVar2 = (char)uVar3 + -1;
        uVar3 = CONCAT11((char)(uVar3 >> 8), cVar2);
    } while (cVar2 != '\0');
    return;
}

/* ====================================================================== */
/* 0x5d6: stats_func_7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_func_7(int16_t arg4)
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
        for (iVar4 = ((uint16_t)arg4 >> 8) * 2; iVar4 != 0; iVar4 = iVar4 + -1) {
            puVar2 = puVar5;
            puVar5 = puVar5 + 1;
            puVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            *puVar2 = *puVar1;
        }
        puVar5 = unaff_DI + 0x2000;
        if ((undefined *)0x7fff < puVar5) {
            puVar5 = unaff_DI + -0x5f60;
        }
        cVar3 = (char)arg4 + -1;
        arg4 = CONCAT11((char)((uint16_t)arg4 >> 8), cVar3);
        unaff_DI = puVar5;
    } while (cVar3 != '\0');
    return;
}

/* ====================================================================== */
/* 0x76c: extract_bits */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits(int16_t arg1, int16_t arg4, int16_t arg3)
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
/* 0x1b3e: stats_multiply_3 */
/* ====================================================================== */


undefined2 stats_multiply_3(void)
{
    uint16_t uVar1;
    uint16_t uVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    uint16_t uVar5;
    uint16_t uVar6;
    uint16_t uVar7;
    bool bVar8;
    
    bVar8 = (int16_t)*(int16_t *)0x4c07 < 0;
    uVar1 = *(int16_t *)0x4c07 << 1 | (uint16_t)bVar8;
    uVar2 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
    uVar3 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
    uVar4 = uVar3 << 1 | (uint16_t)((int16_t)uVar3 < 0);
    uVar5 = uVar4 << 1 | (uint16_t)((int16_t)uVar4 < 0);
    uVar6 = uVar5 << 1 | (uint16_t)((int16_t)uVar5 < 0);
    uVar7 = uVar6 << 1 | (uint16_t)((int16_t)uVar6 < 0);
    *(uint16_t *)0x4c07 = uVar7 << 1 | (uint16_t)((int16_t)uVar7 < 0);
    return CONCAT11((-((int16_t)uVar6 < 0) | -((int16_t)uVar7 < 0)) & 0xfU |
                    (-((int16_t)uVar4 < 0) | -((int16_t)uVar5 < 0)) & 0xf0U, 
                    (-((int16_t)uVar2 < 0) | -((int16_t)uVar3 < 0)) & 0xfU | (-bVar8 | -((int16_t)uVar1 < 0)) & 0xf0U);
}

/* ====================================================================== */
/* 0x99f: fill_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer(int16_t arg1)
{
    int16_t iVar1;
    int16_t in_CX;
    int16_t *unaff_DI;
    int16_t *piVar2;
    int16_t *piVar3;
    undefined2 unaff_ES;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    
    iVar1 = clear_buffer((uint16_t)(uint8_t)((char)arg1 - 1) * 8 + 0x3a44);
    iVar1 = stats_func_1(in_CX, iVar1);
    *unaff_DI = iVar1;
    piVar3 = unaff_DI + 0x1000;
    if ((int16_t *)0x7fff < piVar3) {
        piVar3 = unaff_DI + -0x2fb0;
    }
    iVar1 = clear_buffer(iVar1);
    iVar1 = stats_func_1(in_CX, iVar1);
    *piVar3 = iVar1;
    piVar2 = piVar3 + 0x1000;
    if ((int16_t *)0x7fff < piVar2) {
        piVar2 = piVar3 + -0x2fb0;
    }
    uStack0002 = 0x9ee;
    iVar1 = clear_buffer(iVar1);
    uStack0004 = 0x9f1;
    iVar1 = stats_func_1(in_CX, iVar1);
    *piVar2 = iVar1;
    piVar3 = piVar2 + 0x1000;
    if ((int16_t *)0x7fff < piVar3) {
        piVar3 = piVar2 + -0x2fb0;
    }
    uStack0006 = 0xa0a;
    iVar1 = clear_buffer(iVar1);
    uStack0008 = 0xa0d;
    iVar1 = stats_func_1(in_CX, iVar1);
    *piVar3 = iVar1;
    return;
}

/* ====================================================================== */
/* 0xa11: clear_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void clear_buffer(int16_t arg1)
{
    uint8_t uVar1;
    uint8_t uVar2;
    undefined2 uVar3;
    uint8_t in_BH;
    uint8_t *unaff_SI;
    undefined2 unaff_DS;
    
    *(undefined2 *)0x4bff = 0;
    *(undefined2 *)0x4c05 = 0;
    uVar3 = CONCAT11(unaff_SI[4], (char)arg1);
    *(undefined2 *)0x4c03 = uVar3;
    *(undefined2 *)0x4c01 = uVar3;
    uVar2 = *unaff_SI & in_BH;
    uVar1 = *(uint8_t *)0x4c0a;
    if ((bool)(uVar1 & 1)) {
        *(uint16_t *)0x4bff = *(uint16_t *)0x4bff | CONCAT11(uVar2, uVar1 >> 1);
    }
    if ((bool)(uVar1 >> 1 & 1)) {
        *(uint16_t *)0x4c01 = *(uint16_t *)0x4c01 | CONCAT11(uVar2, uVar1 >> 2);
    }
    if (!(bool)(uVar1 >> 2 & 1)) {
        return;
    }
    *(uint16_t *)0x4c03 = *(uint16_t *)0x4c03 | CONCAT11(uVar2, uVar1 >> 3);
    return;
}

/* ====================================================================== */
/* 0xce0: stats_get_value */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_get_value(int16_t arg3, int16_t arg1, int16_t arg2)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    uint8_t uVar4;
    int16_t unaff_SI;
    undefined2 *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    puVar2 = (undefined2 *)stats_func_2(arg2, CONCAT11(4, *(uint8_t *)0x4c0a + 0x10));
    uVar4 = (uint8_t)in_stack_00000000;
    if ((uVar4 <= *(uint8_t *)0x4c0a) && (*(uint8_t *)0x4c0a < (uint8_t)(uVar4 + *(char *)0x4c0f))) {
        puVar5 = (undefined2 *)
                 (unaff_SI + (uint16_t)(uint8_t)((*(uint8_t *)0x4c0a - uVar4) * '\x02') * (uint16_t)*(uint8_t *)0x4c10);
        *(uint8_t *)0x4c09 = 0;
        iVar3 = 0x48;
        do {
            *puVar2 = 0;
            uVar4 = (uint8_t)((uint16_t)in_stack_00000000 >> 8);
            if ((uVar4 <= *(uint8_t *)0x4c09) && (*(uint8_t *)0x4c09 < (uint8_t)(uVar4 + *(uint8_t *)0x4c10))) {
                puVar1 = puVar5;
                puVar5 = puVar5 + 1;
                *puVar2 = *puVar1;
            }
            puVar2 = puVar2 + 1;
            *(uint8_t *)0x4c09 = *(uint8_t *)0x4c09 + 1;
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        return;
    }
    for (iVar3 = 0x48; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0xdbe: stats_process_loop */
/* ====================================================================== */


void stats_process_loop(void)
{
    uint8_t *puVar1;
    int16_t in_BX;
    uint8_t *unaff_DI;
    uint8_t *puVar2;
    undefined2 unaff_ES;
    
    stats_process_loop_2();
    *unaff_DI = *unaff_DI | 0xf;
    puVar2 = unaff_DI + 1;
    for (; in_BX != 0; in_BX = in_BX + -1) {
        puVar1 = puVar2;
        puVar2 = puVar2 + 1;
        *puVar1 = 0xff;
    }
    *puVar2 = *puVar2 | 0xf0;
    return;
}

/* ====================================================================== */
/* 0xdfd: stats_process_loop_2 */
/* ====================================================================== */


void stats_process_loop_2(void)
{
    int16_t unaff_DI;
    undefined2 unaff_ES;
    
    *(undefined2 *)(unaff_DI + -3) = 0x4444;
    *(undefined2 *)(unaff_DI + -1) = 0x4444;
    return;
}

/* ====================================================================== */
/* 0xdd1: stats_process_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_process_loop_3(int16_t arg4)
{
    int16_t iVar1;
    int16_t in_BX;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        stats_process_loop_2(unaff_DI);
        *unaff_DI = *unaff_DI | 0xf;
        for (iVar1 = in_BX; unaff_DI = unaff_DI + 1, iVar1 != 0; iVar1 = iVar1 + -1) {
            *unaff_DI = 0;
        }
        *unaff_DI = *unaff_DI | 0xf0;
        *(char *)0x4c0a = *(char *)0x4c0a + '\x01';
        unaff_DI = (uint8_t *)(arg4 + 0x2000);
        if ((uint8_t *)0x7fff < unaff_DI) {
            unaff_DI = (uint8_t *)(arg4 + -0x5f60);
        }
        arg4 = in_stack_00000000 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0xfac: fill_buffer_2 */
/* ====================================================================== */


void fill_buffer_2(int16_t param_1, undefined2 param_2, int16_t param_3)
{
    int16_t iVar1;
    int16_t unaff_DI;
    undefined *puVar2;
    undefined *puVar3;
    undefined2 unaff_ES;
    
    stats_multiply_4();
    puVar2 = (undefined *)(unaff_DI + 0x36);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    stats_multiply_4();
    stats_multiply_4();
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
    stats_multiply_4();
    stats_multiply_4();
    puVar2 = (undefined *)(param_3 + 0x2ab6);
    iVar1 = 0x5b;
    do {
        *puVar2 = 0x30;
        puVar2[0x19] = 0xc;
        puVar2 = puVar2 + 0x50;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    stats_multiply_4();
    return;
}

/* ====================================================================== */
/* 0x1031: stats_multiply_4 */
/* ====================================================================== */


void stats_multiply_4(void)
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
/* 0xf30: stats_fill_buf */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_fill_buf(int16_t arg1, int16_t arg2)
{
    undefined2 *puVar1;
    int16_t *piVar2;
    undefined2 *puVar3;
    int16_t iVar4;
    int16_t iVar5;
    undefined *unaff_SI;
    undefined *puVar6;
    undefined2 *puVar7;
    int16_t *unaff_DI;
    int16_t *piVar8;
    int16_t *piVar9;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar5 = 0xb;
    *(undefined2 *)0x4c05 = 0;
    do {
        piVar8 = unaff_DI;
        puVar6 = unaff_SI;
        *(undefined2 *)0x4c03 = CONCAT11(puVar6[0x5500], (char)arg1);
        *(undefined2 *)0x4c01 = CONCAT11(puVar6[0x2a80], (char)arg1);
        *(int16_t *)0x4bff = CONCAT11(*puVar6, puVar6[0x2a80]);
        arg1 = stats_func_1(iVar5, *(int16_t *)0x4bff);
        *piVar8 = arg1;
        iVar5 = iVar5 + -1;
        unaff_SI = puVar6 + 1;
        unaff_DI = piVar8 + 1;
    } while (iVar5 != 0);
    iVar5 = 5;
    puVar3 = (undefined2 *)(puVar6 + 0x19);
    piVar8 = piVar8 + 0x19;
    do {
        piVar9 = piVar8;
        puVar7 = puVar3;
        *(undefined2 *)0x4c03 = CONCAT11((char)puVar7[0x2a80], (char)((uint16_t)puVar7[0x2a80] >> 8));
        *(undefined2 *)0x4c01 = CONCAT11((char)puVar7[0x1540], (char)((uint16_t)puVar7[0x1540] >> 8));
        *(int16_t *)0x4bff = CONCAT11((char)*puVar7, (char)((uint16_t)*puVar7 >> 8));
        iVar4 = stats_func_1(iVar5, *(int16_t *)0x4bff);
        *piVar9 = iVar4;
        iVar4 = stats_func_1(iVar5, iVar4);
        piVar9[1] = iVar4;
        iVar5 = iVar5 + -1;
        puVar3 = puVar7 + 1;
        piVar8 = piVar9 + 2;
    } while (iVar5 != 0);
    puVar7 = puVar7 + 0xd;
    piVar9 = piVar9 + 0x1a;
    iVar5 = 0xb;
    do {
        *(undefined2 *)0x4c03 = CONCAT11(*(undefined *)(puVar7 + 0x2a80), (char)iVar4);
        puVar3 = puVar7 + 0x1540;
        *(undefined2 *)0x4c01 = CONCAT11(*(undefined *)puVar3, (char)iVar4);
        puVar1 = puVar7;
        puVar7 = (undefined2 *)((int16_t)puVar7 + 1);
        *(int16_t *)0x4bff = CONCAT11(*(undefined *)puVar1, *(undefined *)puVar3);
        iVar4 = stats_func_1(iVar5, *(int16_t *)0x4bff);
        piVar2 = piVar9;
        piVar9 = piVar9 + 1;
        *piVar2 = iVar4;
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    return;
}

/* ====================================================================== */
/* 0xf00: stats_process_loop_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_process_loop_4(int16_t arg2)
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
    *(undefined2 *)0x4c05 = 0;
    do {
        *(undefined2 *)0x4c03 = CONCAT11((char)unaff_SI[0x2a80], (char)((uint16_t)unaff_SI[0x2a80] >> 8));
        *(undefined2 *)0x4c01 = CONCAT11((char)unaff_SI[0x1540], (char)((uint16_t)unaff_SI[0x1540] >> 8));
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *(int16_t *)0x4bff = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
        iVar3 = stats_func_1(arg4, *(int16_t *)0x4bff);
        piVar2 = unaff_DI + 1;
        *unaff_DI = iVar3;
        iVar3 = stats_func_1(arg4, iVar3);
        unaff_DI = unaff_DI + 2;
        *piVar2 = iVar3;
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x107b: stats_func_20 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void stats_func_20(int16_t arg1, int16_t arg2)
{
    undefined *puVar1;
    uint16_t *puVar2;
    undefined *puVar3;
    uint16_t *puVar4;
    uint16_t uVar5;
    int16_t iVar6;
    undefined *puVar7;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    undefined2 uStack0002;
    
    puVar3 = (undefined *)((arg1 & 0xffU) * 0x2f + *(int16_t *)0x4c11);
    puVar4 = (uint16_t *)stats_func_2(arg2, arg1 & 0xff);
    if (in_stack_00000000 < 0x14) {
        iVar6 = 0x2f;
    } else {
        iVar6 = 0x23;
        if (0x16 < in_stack_00000000) {
            if (in_stack_00000000 < 0x1c) {
                iVar6 = 0x21;
                *(undefined2 *)0x4c05 = 0;
                do {
                    puVar7 = puVar3;
                    *(undefined2 *)0x4c03 = CONCAT11(puVar7[0x29dc], (char)in_stack_00000000);
                    *(undefined2 *)0x4c01 = CONCAT11(puVar7[0x14ee], (char)in_stack_00000000);
                    *(int16_t *)0x4bff = CONCAT11(*puVar7, puVar7[0x14ee]);
                    in_stack_00000000 = stats_func_1(iVar6, *(int16_t *)0x4bff);
                    puVar2 = puVar4;
                    puVar4 = puVar4 + 1;
                    *puVar2 = in_stack_00000000;
                    iVar6 = iVar6 + -1;
                    puVar3 = puVar7 + 1;
                } while (iVar6 != 0);
                *(undefined2 *)0x4c03 = CONCAT11(puVar7[0x29dd], (char)in_stack_00000000);
                *(undefined2 *)0x4c01 = CONCAT11(puVar7[0x14ef], (char)in_stack_00000000);
                *(int16_t *)0x4bff = CONCAT11(puVar7[1], puVar7[0x14ef]);
                uStack0002 = 0x1111;
                uVar5 = stats_func_1(0, *(int16_t *)0x4bff);
                *puVar4 = *puVar4 & 0xf00;
                *puVar4 = *puVar4 | uVar5 & 0xf0ff;
                return;
            }
            iVar6 = 0x21;
        }
    }
    *(undefined2 *)0x4c05 = 0;
    do {
        *(undefined2 *)0x4c03 = CONCAT11(puVar3[0x29dc], (char)in_stack_00000000);
        puVar7 = puVar3 + 0x14ee;
        *(undefined2 *)0x4c01 = CONCAT11(*puVar7, (char)in_stack_00000000);
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *(int16_t *)0x4bff = CONCAT11(*puVar1, *puVar7);
        in_stack_00000000 = stats_func_1(iVar6, *(int16_t *)0x4bff);
        puVar2 = puVar4;
        puVar4 = puVar4 + 1;
        *puVar2 = in_stack_00000000;
        iVar6 = iVar6 + -1;
    } while (iVar6 != 0);
    return;
}

/* ====================================================================== */
/* 0x115b: extract_bits_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void extract_bits_2(int16_t arg1, int16_t arg2)
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
    
    puVar4 = (undefined2 *)((arg1 & 0xffU) * 0x2f + 0x3cd + *(int16_t *)0x4c11);
    piVar5 = (int16_t *)stats_func_2(arg2, CONCAT11(0x21, (char)arg1 + '\x14'));
    iVar7 = 0x2f;
    if (in_stack_00000000 < 0x5e) {
        iVar7 = 7;
        *(undefined2 *)0x4c05 = 0;
        do {
            *(undefined2 *)0x4c03 = CONCAT11((char)puVar4[0x14ee], (char)((uint16_t)puVar4[0x14ee] >> 8));
            *(undefined2 *)0x4c01 = CONCAT11((char)puVar4[0xa77], (char)((uint16_t)puVar4[0xa77] >> 8));
            puVar1 = puVar4;
            puVar4 = puVar4 + 1;
            *(int16_t *)0x4bff = CONCAT11((char)*puVar1, (char)((uint16_t)*puVar1 >> 8));
            iVar6 = stats_func_1(iVar7, *(int16_t *)0x4bff);
            piVar3 = piVar5 + 1;
            *piVar5 = iVar6;
            iVar6 = stats_func_1(iVar7, iVar6);
            piVar5 = piVar5 + 2;
            *piVar3 = iVar6;
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        iVar7 = 0x21;
    }
    for (; iVar7 != 0; iVar7 = iVar7 + -1) {
        piVar2 = piVar5;
        piVar5 = piVar5 + 1;
        *piVar2 = 0;
    }
    return;
}

