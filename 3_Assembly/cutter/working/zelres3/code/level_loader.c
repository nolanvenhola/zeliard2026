/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x483 = "#*,(+-).1#/24035"; // [ascii]
static const char *STR_0x4e7 = "¤vµµv}YstvF"; // [ibm037]
static const char *STR_0x4ff = "Cµ~v}YstvF"; // [ibm037]
static const char *STR_0x528 = "¸vstvµÆv"; // [ibm037]
static const char *STR_0x554 = "ævstvµ¤v"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr3_00 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr3_00(int16_t arg3)
{
    char *pcVar1;
    uint8_t uVar2;
    code *pcVar3;
    char in_AL;
    int16_t iVar4;
    uint16_t uVar5;
    int16_t iVar6;
    char cVar7;
    int16_t in_BX;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined2 in_stack_00000004;
    uint16_t uStack0006;
    int16_t in_stack_00000008;
    int16_t in_stack_0000000a;
    int16_t iStack000c;
    int16_t in_stack_0000000e;
    undefined2 uStack0012;
    undefined2 uStack0014;
    undefined2 uStack0016;
    undefined2 uStack0018;
    undefined2 uStack001a;
    undefined2 uStack0032;
    undefined2 uStack0034;
    undefined2 uStack003a;
    int16_t iStack003c;
    int16_t in_stack_0000003e;
    uint16_t uStack0040;
    int16_t in_stack_00000042;
    int16_t in_stack_00000044;
    
    *(char *)(in_BX + (int16_t)unaff_SI) = *(char *)(in_BX + (int16_t)unaff_SI) + in_AL;
    *unaff_DI = *unaff_SI;
    (**(code **)0x10c)();
    (**(code **)0x10c)();
    (**(code **)0x3028)();
    *(char *)0xa0 = *(char *)0xa0 + '\x01';
    uVar2 = *(uint8_t *)0xa0;
    if (8 < uVar2) {
        *(undefined *)0xa0 = 9;
    }
    *(bool *)0xa5a4 = 8 < uVar2;
    iVar4 = (**(code **)0x203e)();
    *(uint8_t *)0xc2 = *(uint8_t *)0xc2 & 0xfe;
    iVar6 = 0xc6e;
    uVar5 = 0xd;
    do {
        if ((uVar5 & 1) == 0) {
            *(undefined *)0xff75 = 0x1a;
        }
        *(char *)0xe7 = *(char *)0xe7 + '\x01';
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
        uStack0006 = uVar5;
        lvload_multiply(iVar4, iVar6);
        iVar4 = lvload_multiply_2();
        cVar7 = (char)((uint16_t)in_stack_00000008 >> 8);
        iVar6 = in_stack_00000008;
        if (cVar7 != '$') {
            uStack0006 = 0x96;
            iVar4 = (**(code **)0x2000)();
            iVar6 = CONCAT11(cVar7 + '\x02', (char)in_stack_00000008);
        }
        uVar5 = in_stack_0000000a - 1;
    } while (uVar5 != 0);
    *(undefined *)0xe7 = 4;
    lvload_multiply(iVar4, 0x246e);
    iStack000c = 5;
    do {
        iVar6 = lvload_multiply_2();
        iStack000c = in_stack_0000000e + -1;
    } while (iStack000c != 0);
    *(undefined *)0xe7 = 5;
    do {
        iStack000c = 0xbd;
        lvload_multiply(iVar6, 0x246e);
        lvload_multiply_2();
        iVar6 = lvload_multiply_2();
        *(char *)0xe7 = *(char *)0xe7 + '\x01';
    } while (*(uint8_t *)0xe7 < 9);
    uStack0012 = 0xd4;
    lvload_multiply(iVar6, 0x246e);
    uStack0014 = 0xd9;
    (**(code **)0x3024)();
    *(undefined *)0xa59a = *(undefined *)(*(uint8_t *)0xa0 + 0xa568);
    *(undefined *)0xa59b = 2;
    uStack0016 = 0xef;
    lvload_func_3();
    uStack0018 = 0x106;
    (**(code **)0x2026)();
    *(undefined *)0xa5a5 = 0;
    do {
        uStack001a = 0x11d;
        (**(code **)0x3026)();
        lvload_multiply_2();
        (**(code **)0x2028)();
        *(char *)0xa5a5 = *(char *)0xa5a5 + '\x01';
    } while (*(uint8_t *)0xa5a5 < 2);
    uStack001a = 0x15c;
    (**(code **)0x2026)();
    *(undefined *)0xff75 = 0x1b;
    *(undefined *)0xa5a5 = 0;
    do {
        (**(code **)0x3026)();
        lvload_multiply_2();
        lvload_multiply_2();
        (**(code **)0x2028)();
        *(char *)0xa5a5 = *(char *)0xa5a5 + '\x01';
    } while (*(uint8_t *)0xa5a5 < 2);
    (**(code **)0x2000)();
    (**(code **)0x3024)();
    (**(code **)0x2026)();
    *(undefined *)0xa5a5 = 0;
    do {
        (**(code **)0x3026)();
        lvload_multiply_2();
        (**(code **)0x2028)();
        *(char *)0xa5a5 = *(char *)0xa5a5 + '\x01';
    } while (*(uint8_t *)0xa5a5 < 4);
    *(undefined *)0xa5a7 = 200;
    *(char *)0xa5a6 = *(char *)0xa5a6 + '\x01';
    if ((*(uint8_t *)0xa5a6 & 1) == 0) {
        *(char *)0xa5a5 = *(char *)0xa5a5 + '\x01';
        *(char *)0xa5a7 = *(char *)0xa5a7 + '\x01';
        if (2 < *(uint8_t *)0xa5a7) {
            *(undefined *)0xa5a7 = 0;
            *(undefined *)0xff75 = 0x1c;
        }
    }
    (**(code **)0x2028)();
    lvload_func_4();
    (**(code **)0x2026)();
    (**(code **)0x3026)();
    lvload_multiply_2();
    (**(code **)0x2028)();
    (**(code **)0x2026)();
    *(undefined *)0xff75 = 0x1b;
    *(undefined *)0xa5a5 = 0;
    do {
        (**(code **)0x3026)();
        lvload_multiply_2();
        lvload_multiply_2();
        (**(code **)0x2028)();
        *(char *)0xa5a5 = *(char *)0xa5a5 + '\x01';
    } while (*(uint8_t *)0xa5a5 < 2);
    (**(code **)0x203e)();
    (**(code **)0x2026)();
    *(undefined *)0xa5a5 = 4;
    do {
        (**(code **)0x3026)();
        lvload_multiply_2();
        (**(code **)0x2028)();
        pcVar1 = (char *)0xa5a5;
        *pcVar1 = *pcVar1 + -1;
    } while (*pcVar1 != '\0');
    pcVar3 = (code *)swi(0x60);
    (*pcVar3)();
    do {
    } while (*(char *)0x13536 == '\0');
    pcVar3 = (code *)swi(0x60);
    (*pcVar3)();
    uStack0032 = 0x38e;
    iVar6 = (**(code **)0x2000)();
    *(uint8_t *)0x36f7 = 8;
    do {
        uStack0034 = 0x399;
        lvload_multiply(iVar6, 0x246e);
        lvload_multiply_2();
        iVar6 = lvload_multiply_2();
        *(uint8_t *)0x36f7 = *(uint8_t *)0x36f7 - 1;
    } while (4 < *(uint8_t *)0x36f7);
    uStack003a = 0x3b0;
    lvload_multiply(iVar6, 0x246e);
    iVar6 = 5;
    do {
        uStack003a = 0x3b7;
        iStack003c = iVar6;
        lvload_multiply_2();
        iVar6 = in_stack_0000003e + -1;
    } while (iVar6 != 0);
    iVar4 = (**(code **)0x2000)();
    iVar6 = 0x266e;
    uVar5 = 0xd;
    do {
        if ((uVar5 & 1) == 0) {
            *(undefined *)0x13585 = 0x1a;
        }
        *(uint8_t *)0x36f7 = *(uint8_t *)0x36f7 + 1 & 3;
        iStack003c = 0x3e6;
        uStack0040 = uVar5;
        lvload_multiply(iVar4, iVar6);
        iVar4 = lvload_multiply_2();
        cVar7 = (char)((uint16_t)in_stack_00000042 >> 8);
        iVar6 = in_stack_00000042;
        if (cVar7 != '>') {
            uStack0040 = 0x3fa;
            iVar4 = (**(code **)0x2000)();
            iVar6 = CONCAT11(cVar7 + '\x02', (char)in_stack_00000042);
        }
        uVar5 = in_stack_00000044 - 1;
    } while (uVar5 != 0);
    // WARNING: Could not recover jumptable at 0x00000406. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2000)();
    return;
}

/* ====================================================================== */
/* 0x40b: lvload_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void lvload_multiply(int16_t arg1, int16_t arg3)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t iVar3;
    char cVar4;
    undefined2 unaff_DS;
    
    iVar1 = (uint16_t)*(uint8_t *)0xe7 * 9 + -0x5bcb;
    iVar2 = 3;
    do {
        iVar3 = 3;
        do {
            cVar4 = (char)arg3;
            iVar1 = iVar1 + 1;
            (**(code **)0x3022)(arg3, iVar1);
            arg3 = (int16_t)(uint8_t)(cVar4 + 8);
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        arg3 = (int16_t)(uint8_t)(cVar4 - 0x10);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x493: lvload_multiply_2 */
/* ====================================================================== */


void lvload_multiply_2(void)
{
    undefined2 unaff_DS;
    
    do {
    } while (*(uint8_t *)0xff1a < (uint8_t)(*(char *)0xff33 * '\x04'));
    *(undefined *)0xff1a = 0;
    return;
}

/* ====================================================================== */
/* 0x4a7: lvload_func_3 */
/* ====================================================================== */


void lvload_func_3(void)
{
    char cVar1;
    undefined uVar2;
    undefined2 unaff_DS;
    
    *(undefined *)0xa59c = 0x94;
    *(undefined *)0xa59d = 0x50;
    uVar2 = 0;
    cVar1 = *(uint8_t *)0xa59a - *(uint8_t *)0xa59c;
    if (cVar1 != '\0') {
        if (*(uint8_t *)0xa59a < *(uint8_t *)0xa59c) {
            cVar1 = -cVar1;
            uVar2 = 0xff;
        } else {
            uVar2 = 1;
        }
    }
    *(char *)0xa5a0 = cVar1;
    *(undefined *)0xa59e = uVar2;
    uVar2 = 0;
    cVar1 = *(uint8_t *)0xa59b - *(uint8_t *)0xa59d;
    if (cVar1 != '\0') {
        if (*(uint8_t *)0xa59b < *(uint8_t *)0xa59d) {
            cVar1 = -cVar1;
            uVar2 = 0xff;
        } else {
            uVar2 = 1;
        }
    }
    *(char *)0xa5a1 = cVar1;
    *(undefined *)0xa59f = uVar2;
    *(uint8_t *)0xa5a3 = *(uint8_t *)0xa5a0 >> 1;
    *(undefined *)0xa5a2 = 0;
    if (*(uint8_t *)0xa5a1 <= *(uint8_t *)0xa5a0) {
        return;
    }
    *(uint8_t *)0xa5a3 = *(uint8_t *)0xa5a1 >> 1;
    *(undefined *)0xa5a2 = 0xff;
    return;
}

/* ====================================================================== */
/* 0x50e: lvload_func_4 */
/* ====================================================================== */


void lvload_func_4(void)
{
    char cVar1;
    undefined2 unaff_DS;
    
    if (*(char *)0xa5a2 != '\0') {
        cVar1 = *(uint8_t *)0xa5a3 - *(uint8_t *)0xa5a0;
        if (*(uint8_t *)0xa5a3 < *(uint8_t *)0xa5a0) {
            cVar1 = cVar1 + *(char *)0xa5a1;
            *(char *)0xa59c = *(char *)0xa59c + *(char *)0xa59e;
        }
        *(char *)0xa5a3 = cVar1;
        *(char *)0xa59d = *(char *)0xa59d + *(char *)0xa59f;
        if (*(char *)0xa59b == *(char *)0xa59d) {
            return;
        }
        return;
    }
    cVar1 = *(uint8_t *)0xa5a3 - *(uint8_t *)0xa5a1;
    if (*(uint8_t *)0xa5a3 < *(uint8_t *)0xa5a1) {
        cVar1 = cVar1 + *(char *)0xa5a0;
        *(char *)0xa59d = *(char *)0xa59d + *(char *)0xa59f;
    }
    *(char *)0xa5a3 = cVar1;
    *(char *)0xa59c = *(char *)0xa59c + *(char *)0xa59e;
    if (*(char *)0xa59a == *(char *)0xa59c) {
        return;
    }
    return;
}

