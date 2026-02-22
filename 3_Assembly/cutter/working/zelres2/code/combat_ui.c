/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x453 = "xêuÂucuou´u"; // [ibm037]
static const char *STR_0xa03 = "SELECT-MAGIC:"; // [ascii]
static const char *STR_0xa24 = "CINVENTORY"; // [ascii]
static const char *STR_0xa46 = "\" XY[SQP."; // [ascii]
static const char *STR_0xa96 = "NOTHING"; // [ascii]
static const char *STR_0xab0 = "I have used"; // [ascii]
static const char *STR_0xb0a = "      shoes"; // [ascii]
static const char *STR_0xb1d = "      shoes"; // [ascii]
static const char *STR_0xb29 = "Silkarn"; // [ascii]
static const char *STR_0xb31 = "      shoes"; // [ascii]
static const char *STR_0xb3d = "Ruzeria"; // [ascii]
static const char *STR_0xb45 = "      shoes"; // [ascii]
static const char *STR_0xb51 = "Asbestos"; // [ascii]
static const char *STR_0xb5a = "       cape"; // [ascii]
static const char *STR_0xb76 = "       a Ken\\ko Potion."; // [ascii]
static const char *STR_0xb8e = "        a Juu-en Fruit."; // [ascii]
static const char *STR_0xba6 = "     a Elixir of Kashi."; // [ascii]
static const char *STR_0xbbe = "      a Chikara Powder."; // [ascii]
static const char *STR_0xbd6 = "         a Magia Stone."; // [ascii]
static const char *STR_0xbee = " a Holy Water of Acero."; // [ascii]
static const char *STR_0xc06 = "           a Sabre Oil."; // [ascii]
static const char *STR_0xc1e = "       a Kioku Feather."; // [ascii]
static const char *STR_0xc4f = "      Potion"; // [ascii]
static const char *STR_0xc5c = "Juu-en "; // [ascii]
static const char *STR_0xc64 = "       Fruit"; // [ascii]
static const char *STR_0xc78 = "    of Kashi"; // [ascii]
static const char *STR_0xc85 = "Chikara"; // [ascii]
static const char *STR_0xc8d = "      Powder"; // [ascii]
static const char *STR_0xc9a = "Magia Stone"; // [ascii]
static const char *STR_0xca7 = "Holy Water"; // [ascii]
static const char *STR_0xcb2 = "    of Acero"; // [ascii]
static const char *STR_0xcbf = "Sabre Oil"; // [ascii]
static const char *STR_0xcd0 = "     feather"; // [ascii]
static const char *STR_0xce9 = "Training"; // [ascii]
static const char *STR_0xcf2 = "     Sword"; // [ascii]
static const char *STR_0xcfd = "Wise man\\s"; // [ascii]
static const char *STR_0xd08 = "      Sword"; // [ascii]
static const char *STR_0xd1b = "    Sword"; // [ascii]
static const char *STR_0xd25 = "Knight\\s"; // [ascii]
static const char *STR_0xd2e = "    Sword"; // [ascii]
static const char *STR_0xd38 = "Illumination"; // [ascii]
static const char *STR_0xd45 = "       Sword"; // [ascii]
static const char *STR_0xd52 = "Enchantment"; // [ascii]
static const char *STR_0xd5e = "       Sword"; // [ascii]
static const char *STR_0xd7c = "     Shield"; // [ascii]
static const char *STR_0xd88 = "Wise Man\\s"; // [ascii]
static const char *STR_0xd93 = "      Shield"; // [ascii]
static const char *STR_0xda6 = "     Shield"; // [ascii]
static const char *STR_0xdb8 = "     Shield"; // [ascii]
static const char *STR_0xdca = "     Shield"; // [ascii]
static const char *STR_0xdd6 = "Titanium"; // [ascii]
static const char *STR_0xddf = "      Shield"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg1)
{
    char *pcVar1;
    char *pcVar2;
    char in_AL;
    int16_t arg1_00;
    uint8_t uVar3;
    undefined uVar4;
    int16_t iVar5;
    char cVar6;
    uint16_t arg4;
    int16_t iVar7;
    char *pcVar8;
    char *unaff_SI;
    char *pcVar9;
    undefined2 unaff_DS;
    undefined uVar10;
    char in_CF;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    
    arg1._0_1_ = (in_AL + -0xe) - in_CF;
    *unaff_SI = *unaff_SI + (char)arg1;
    *(undefined *)0xadf8 = 0;
    *(undefined *)0xae02 = 0;
    iVar7 = -0x5218;
    iVar5 = 4;
    do {
        iVar7 = iVar7 + 4;
        arg1_00 = (**(code **)0x2000)(iVar7);
        iVar5 = iVar5 + -1;
    } while (iVar5 != 0);
    fcn.000009d9(arg1_00);
    pcVar8 = (char *)0xbb;
    pcVar9 = (char *)0xae03;
    arg1._0_1_ = '\0';
    cVar6 = '\x01';
    do {
        pcVar1 = pcVar8;
        pcVar8 = pcVar8 + 1;
        if (*pcVar1 != '\0') {
            pcVar1 = pcVar9;
            pcVar9 = pcVar9 + 1;
            *pcVar1 = cVar6;
            arg1._0_1_ = (char)arg1 + '\x01';
        }
        cVar6 = cVar6 + '\x01';
    } while (cVar6 != '\b');
    *(char *)0xadfa = (char)arg1;
    pcVar8 = (char *)0xa1;
    pcVar9 = (char *)0xae0b;
    *(undefined *)0xae0a = 0;
    uVar3 = 0;
    arg1._0_1_ = '\x05';
    do {
        pcVar1 = pcVar8;
        pcVar8 = pcVar8 + 1;
        if (*pcVar1 != '\0') {
            pcVar2 = pcVar9;
            pcVar9 = pcVar9 + 1;
            *pcVar2 = *pcVar1;
            uVar3 = uVar3 + 1;
        }
        arg1._0_1_ = (char)arg1 + -1;
    } while ((char)arg1 != '\0');
    arg1._0_1_ = '\0';
    if (uVar3 != 0) {
        uVar3 = uVar3 + 1;
    }
    arg4 = (uint16_t)uVar3;
    *(uint8_t *)0xadfc = uVar3;
    iVar7 = fcn.00000647();
    uStack0002 = 0x7f;
    iVar7 = fcn.000008b3(arg4, iVar7);
    uStack0004 = 0x82;
    iVar7 = fcn.000006d5(arg4, iVar7);
    uStack0006 = 0x85;
    fcn.0000066d(arg4, iVar7);
    uStack0008 = 0x88;
    fcn.00000756();
    uStack000a = 0x8b;
    fcn.00000a5c();
    *(char *)0xae01 = -(char)arg1;
    uVar4 = 0;
    if ((*(char *)0xadfa == '\0') && (uVar4 = 1, *(char *)0xadfc == '\0')) {
        uVar10 = 0;
        if (*(char *)0xadf8 == '\0') {
            uVar4 = 2;
            uVar10 = 0;
            if (*(char *)0xadfe != '\0') goto code_r0x000000b8;
        }
        do {
            uStack000c = 0xb5;
            fcn.00000a5c();
        } while (!(bool)uVar10);
        return;
    }
code_r0x000000b8:
    *(undefined *)0xadf9 = uVar4;
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
    return;
}

/* ====================================================================== */
/* 0x9d9: fcn.000009d9 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000009d9(int16_t arg1)
{
    undefined uVar1;
    int16_t *piVar2;
    int16_t *piVar3;
    int16_t arg1_00;
    int16_t iVar4;
    int16_t *piVar5;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    piVar5 = (int16_t *)0xa9fc;
    iVar4 = 4;
    do {
        piVar2 = piVar5;
        piVar3 = piVar5 + 1;
        piVar5 = (int16_t *)((int16_t)piVar5 + 3);
        uVar1 = *(undefined *)piVar3;
        arg1_00 = CONCAT11(3, uVar1);
        if (*(char *)0xadf9 == (char)('\x04' - (char)iVar4)) {
            arg1_00 = CONCAT11(2, uVar1);
        }
        fcn.00000a2f(*piVar2, CONCAT11((char)((uint16_t)iVar4 >> 8), uVar1), arg1_00);
        iVar4 = in_stack_00000000 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x647: fcn.00000647 */
/* ====================================================================== */


void fcn.00000647(void)
{
    char *pcVar1;
    char *pcVar2;
    char cVar3;
    char cVar4;
    char *pcVar5;
    char *pcVar6;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    pcVar5 = (char *)0xa6;
    pcVar6 = (char *)0xae11;
    *(undefined *)0xae10 = 0;
    cVar3 = '\0';
    cVar4 = '\x05';
    do {
        pcVar1 = pcVar5;
        pcVar5 = pcVar5 + 1;
        if (*pcVar1 != '\0') {
            pcVar2 = pcVar6;
            pcVar6 = pcVar6 + 1;
            *pcVar2 = *pcVar1;
            cVar3 = cVar3 + '\x01';
        }
        cVar4 = cVar4 + -1;
    } while (cVar4 != '\0');
    if (cVar3 != '\0') {
        cVar3 = cVar3 + '\x01';
    }
    *(char *)0xadfe = cVar3;
    return;
}

/* ====================================================================== */
/* 0x8b3: fcn.000008b3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000008b3(int16_t arg4, int16_t arg1)
{
    char *pcVar1;
    int16_t arg1_00;
    char cVar3;
    undefined2 uVar2;
    uint16_t uVar4;
    undefined2 uVar5;
    int16_t arg3;
    int16_t iVar6;
    char *pcVar7;
    undefined2 unaff_DS;
    
    if (*(char *)0xadfa == '\0') {
        iVar6 = 0x9e;
        uVar5 = 0x12;
        pcVar7 = (char *)0xaa92;
        uVar2 = 0x100;
    } else {
        uVar4 = (uint16_t)*(uint8_t *)0xadfa;
        arg3 = 0xe1c;
        iVar6 = -0x51fd;
        do {
            iVar6 = iVar6 + 1;
            arg1_00 = (**(code **)0x201e)(arg3, iVar6);
            arg3 = arg3 + 0x800;
            uVar4 = uVar4 - 1;
        } while (uVar4 != 0);
        fcn.0000092d(0, arg3, arg1_00);
        pcVar7 = (char *)0xae03;
        iVar6 = 7;
        do {
            if (iVar6 == 0) break;
            iVar6 = iVar6 + -1;
            pcVar1 = pcVar7;
            pcVar7 = pcVar7 + 1;
        } while (*(char *)0x9d != *pcVar1);
        *(char *)0xadfb = '\x06' - (char)iVar6;
        (**(code **)0x202e)();
        pcVar7 = *(char **)((uint16_t)(uint8_t)(*(char *)0x9d - 1) * 2 + -0x5548);
        iVar6 = 0x9e;
        uVar5 = 0x12;
        uVar2 = 0x100;
    }
    while( true ) {
        pcVar1 = pcVar7;
        pcVar7 = pcVar7 + 1;
        cVar3 = (char)((uint16_t)uVar2 >> 8);
        uVar2 = CONCAT11(cVar3, *pcVar1);
        if (*pcVar1 == '\0') break;
        if (cVar3 != '\x01') {
            (**(code **)0x2022)(uVar2, uVar5, iVar6);
        }
        (**(code **)0x2022)();
        iVar6 = iVar6 + 8;
    }
    return;
}

/* ====================================================================== */
/* 0x6d5: fcn.000006d5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000006d5(int16_t arg4, int16_t arg1)
{
    char *pcVar1;
    undefined uVar2;
    char cVar4;
    undefined2 uVar3;
    uint8_t uVar5;
    uint16_t uVar6;
    undefined uVar8;
    undefined2 uVar7;
    int16_t iVar9;
    int16_t iVar10;
    char *pcVar11;
    undefined2 unaff_DS;
    
    if (*(char *)0xadfc == '\0') {
        iVar10 = 0x5c;
        uVar7 = 0x43;
        pcVar11 = (char *)0xaa92;
        uVar3 = 0x100;
    } else {
        uVar6 = (uint16_t)*(uint8_t *)0xadfc;
        iVar9 = 0xe55;
        iVar10 = -0x51f6;
        do {
            iVar10 = iVar10 + 1;
            (**(code **)0x2034)(iVar9, iVar10);
            iVar9 = iVar9 + 0x500;
            uVar6 = uVar6 - 1;
        } while (uVar6 != 0);
        pcVar11 = (char *)0xae0a;
        iVar10 = 6;
        do {
            if (iVar10 == 0) break;
            iVar10 = iVar10 + -1;
            pcVar1 = pcVar11;
            pcVar11 = pcVar11 + 1;
        } while (*(char *)0x9e != *pcVar1);
        uVar5 = 5 - (char)iVar10;
        *(uint8_t *)0xadfd = uVar5;
        uVar8 = (undefined)((uint16_t)uVar5 * 0x500 + 0xe53 >> 8);
        uVar2 = (**(code **)0x202e)();
        pcVar11 = *(char **)((uint16_t)*(uint8_t *)0x9e * 2 + -0x550d);
        fcn.00000a2f(0x5c, CONCAT11(uVar8, 0x43), CONCAT11(1, uVar2));
        iVar10 = 0x5c;
        uVar7 = 0x4b;
        uVar3 = 0x100;
    }
    while( true ) {
        pcVar1 = pcVar11;
        pcVar11 = pcVar11 + 1;
        cVar4 = (char)((uint16_t)uVar3 >> 8);
        uVar3 = CONCAT11(cVar4, *pcVar1);
        if (*pcVar1 == '\0') break;
        if (cVar4 != '\x01') {
            (**(code **)0x2022)(uVar3, uVar7, iVar10);
        }
        (**(code **)0x2022)();
        iVar10 = iVar10 + 8;
    }
    return;
}

/* ====================================================================== */
/* 0x66d: fcn.0000066d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000066d(int16_t arg4, int16_t arg1)
{
    char *pcVar1;
    char cVar3;
    undefined2 uVar2;
    uint16_t uVar4;
    undefined2 uVar5;
    int16_t iVar6;
    int16_t iVar7;
    char *pcVar8;
    undefined2 unaff_DS;
    
    if (*(char *)0xadfe == '\0') {
        iVar7 = 0x54;
        uVar5 = 0x71;
        pcVar8 = (char *)0xaa92;
        uVar2 = 0x100;
    } else {
        uVar4 = (uint16_t)*(uint8_t *)0xadfe;
        iVar6 = 0xe83;
        iVar7 = -0x51f0;
        do {
            iVar7 = iVar7 + 1;
            (**(code **)0x2036)(iVar6, iVar7);
            iVar6 = iVar6 + 0x500;
            uVar4 = uVar4 - 1;
        } while (uVar4 != 0);
        *(undefined *)0xadff = 0;
        *(undefined *)0xae00 = 0;
        if (*(char *)0xadf8 != '\0') {
            return;
        }
        (**(code **)0x202e)();
        (**(code **)0x2000)();
        pcVar8 = (char *)0xaa9a;
        iVar7 = 0x54;
        uVar5 = 0x71;
        uVar2 = 0x100;
    }
    while( true ) {
        pcVar1 = pcVar8;
        pcVar8 = pcVar8 + 1;
        cVar3 = (char)((uint16_t)uVar2 >> 8);
        uVar2 = CONCAT11(cVar3, *pcVar1);
        if (*pcVar1 == '\0') break;
        if (cVar3 != '\x01') {
            (**(code **)0x2022)(uVar2, uVar5, iVar7);
        }
        (**(code **)0x2022)();
        iVar7 = iVar7 + 8;
    }
    return;
}

/* ====================================================================== */
/* 0xa2f: fcn.00000a2f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000a2f(int16_t arg3, int16_t arg4, int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    char *unaff_SI;
    undefined2 unaff_DS;
    
    while( true ) {
        pcVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        cVar2 = (char)((uint16_t)arg1 >> 8);
        arg1 = CONCAT11(cVar2, *pcVar1);
        if (*pcVar1 == '\0') break;
        if (cVar2 != '\x01') {
            (**(code **)0x2022)(arg1, arg4, arg3);
        }
        (**(code **)0x2022)();
        arg3 = arg3 + 8;
    }
    return;
}

/* ====================================================================== */
/* 0x756: fcn.00000756 */
/* ====================================================================== */


void fcn.00000756(void)
{
    char *pcVar1;
    int16_t iVar2;
    undefined uVar4;
    int16_t iVar3;
    char *pcVar5;
    undefined2 unaff_DS;
    
    if (*(char *)0x92 != '\0') {
        (**(code **)0x201c)();
        (**(code **)0x2038)();
        iVar2 = (**(code **)0x2038)();
        fcn.00000872(iVar2);
    }
    if (*(char *)0x93 != '\0') {
        (**(code **)0x2020)();
        (**(code **)0x2038)();
        iVar2 = 0x3469;
        (**(code **)0x2038)();
        fcn.00000848(iVar2);
    }
    if (*(char *)0x98 != '\0') {
        (**(code **)0x203a)();
        uVar4 = 0;
        (**(code **)0x2022)();
        fcn.000009b7(CONCAT11(uVar4, 1), 0x347e, 1, (uint16_t)*(uint8_t *)0x98);
    }
    if (*(char *)0x99 != '\0') {
        (**(code **)0x203a)();
        uVar4 = 0;
        (**(code **)0x2022)();
        fcn.000009b7(CONCAT11(uVar4, 1), 0x407e, 1, (uint16_t)*(uint8_t *)0x99);
    }
    pcVar5 = (char *)0x9a;
    iVar3 = 0x3089;
    iVar2 = 3;
    do {
        pcVar1 = pcVar5;
        pcVar5 = pcVar5 + 1;
        if (*pcVar1 != '\0') {
            (**(code **)0x203c)(pcVar5, iVar3);
            iVar3 = iVar3 + 0x600;
        }
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0xa5c: fcn.00000a5c */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000a7c: Changing call to branch
// WARNING: Removing unreachable block (ram,0x00000a7f)
// WARNING: Removing unreachable block (ram,0x00000a83)
// WARNING: Removing unreachable block (ram,0x00000a82)

void fcn.00000a5c(void)
{
    undefined2 unaff_DS;
    
    (*_fcn.00000110)();
    (*_fcn.00000112)();
    (*_fcn.00000114)();
    (*_fcn.00000116)();
    (*_fcn.00000118)();
    if ((*(uint16_t *)0xff18 & 1) != 0) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x110: fcn.00000110 */
/* ====================================================================== */


void fcn.00000110(void)
{
    code *pcVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    undefined uVar3;
    undefined2 in_DX;
    int16_t in_BX;
    undefined2 unaff_DS;
    undefined in_CF;
    undefined4 uVar4;
    
    uVar4 = CONCAT22(in_DX, in_AX);
    do {
        *(undefined *)0xff75 = 0xc;
        fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
code_r0x000000dc:
        do {
            fcn.00000a5c();
            if ((bool)in_CF) {
                return;
            }
            pcVar1 = (code *)swi(0x61);
            uVar2 = (*pcVar1)();
            in_CF = 0;
        } while ((uVar2 & 0xe) == 0);
        if ((uVar2 & 0xc) == 0) {
            uVar3 = 1;
            if (*(char *)0xadfc == '\0') {
                uVar3 = 2;
                in_CF = 0;
                if (*(char *)0xadfe == '\0') goto code_r0x000000dc;
            }
            *(undefined *)0xff75 = 0xd;
            *(undefined *)0xadf9 = uVar3;
            fcn.0000017f(in_BX);
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
            return;
        }
        if ((uVar2 & 4) != 0) {
            in_CF = 0;
            if (*(char *)0xadfb != '\0') {
                in_CF = 0;
                fcn.0000017f(in_BX);
                *(char *)0xadfb = *(char *)0xadfb + -1;
                uVar4 = fcn.0000017f(in_BX);
                *(undefined *)0xff75 = 0xc;
                fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
            }
            goto code_r0x000000dc;
        }
        in_CF = (uint8_t)(*(char *)0xadfa - 1U) < (uint8_t)(*(char *)0xadfb + 1U);
        if ((bool)in_CF) goto code_r0x000000dc;
        in_CF = 0;
        fcn.0000017f(in_BX);
        *(char *)0xadfb = *(char *)0xadfb + '\x01';
        uVar4 = fcn.0000017f(in_BX);
    } while( true );
}

/* ====================================================================== */
/* 0x17f: fcn.0000017f */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000017f(int16_t arg3)
{
    // WARNING: Could not recover jumptable at 0x0000018f. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x202e)();
    return;
}

/* ====================================================================== */
/* 0x139: fcn.00000139 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000139(int16_t arg1, int16_t arg2)
{
    code *pcVar1;
    undefined uVar2;
    uint8_t uVar3;
    undefined uVar4;
    undefined2 unaff_DS;
    undefined2 uStack0002;
    undefined2 uStack0004;
    
    *(undefined *)0x9d = *(undefined *)(uint32_t)(*(uint8_t *)0xadfb + 0xae03);
    uVar4 = 0x10;
    uVar2 = (**(code **)0x2000)();
    fcn.00000a2f(0x9e, CONCAT11(uVar4, 0x12), CONCAT11(1, uVar2));
    uStack0002 = 0x173;
    (**(code **)0x201e)();
    uStack0004 = 0x178;
    (**(code **)0x2018)();
    do {
        pcVar1 = (code *)swi(0x61);
        uVar3 = (*pcVar1)();
    } while ((uVar3 & 0xc) != 0);
    return;
}

/* ====================================================================== */
/* 0xbc: fcn.000000bc */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000000bc(int16_t arg3)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
    return;
}

/* ====================================================================== */
/* 0x112: fcn.00000112 */
/* ====================================================================== */


void fcn.00000110(void)
{
    code *pcVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    undefined uVar3;
    undefined2 in_DX;
    int16_t in_BX;
    undefined2 unaff_DS;
    undefined in_CF;
    undefined4 uVar4;
    
    uVar4 = CONCAT22(in_DX, in_AX);
    do {
        *(undefined *)0xff75 = 0xc;
        fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
code_r0x000000dc:
        do {
            fcn.00000a5c();
            if ((bool)in_CF) {
                return;
            }
            pcVar1 = (code *)swi(0x61);
            uVar2 = (*pcVar1)();
            in_CF = 0;
        } while ((uVar2 & 0xe) == 0);
        if ((uVar2 & 0xc) == 0) {
            uVar3 = 1;
            if (*(char *)0xadfc == '\0') {
                uVar3 = 2;
                in_CF = 0;
                if (*(char *)0xadfe == '\0') goto code_r0x000000dc;
            }
            *(undefined *)0xff75 = 0xd;
            *(undefined *)0xadf9 = uVar3;
            fcn.0000017f(in_BX);
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
            return;
        }
        if ((uVar2 & 4) != 0) {
            in_CF = 0;
            if (*(char *)0xadfb != '\0') {
                in_CF = 0;
                fcn.0000017f(in_BX);
                *(char *)0xadfb = *(char *)0xadfb + -1;
                uVar4 = fcn.0000017f(in_BX);
                *(undefined *)0xff75 = 0xc;
                fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
            }
            goto code_r0x000000dc;
        }
        in_CF = (uint8_t)(*(char *)0xadfa - 1U) < (uint8_t)(*(char *)0xadfb + 1U);
        if ((bool)in_CF) goto code_r0x000000dc;
        in_CF = 0;
        fcn.0000017f(in_BX);
        *(char *)0xadfb = *(char *)0xadfb + '\x01';
        uVar4 = fcn.0000017f(in_BX);
    } while( true );
}

/* ====================================================================== */
/* 0x114: fcn.00000114 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000115) overlaps instruction at (ram,0x00000114)
// 
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000112(int16_t arg1, int16_t arg2, int16_t arg3)
{
    code *pcVar1;
    uint8_t uVar2;
    undefined uVar3;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    undefined in_CF;
    bool in_ZF;
    undefined4 uVar4;
    
    uVar4 = CONCAT22(arg2, arg1);
    if (!in_ZF) {
        *unaff_SI = *unaff_SI + -1;
        goto code_r0x00000115;
    }
    in_CF = 0;
    *(uint16_t *)(arg3 + (int16_t)unaff_SI) = *(uint16_t *)(arg3 + (int16_t)unaff_SI) & (arg1 | 0xe8U);
    do {
        while( true ) {
            do {
                fcn.00000a5c();
                if ((bool)in_CF) {
                    return;
                }
                pcVar1 = (code *)swi(0x61);
                uVar2 = (*pcVar1)();
                in_CF = 0;
            } while ((uVar2 & 0xe) == 0);
            if ((uVar2 & 0xc) == 0) break;
            if ((uVar2 & 4) == 0) {
                in_CF = (uint8_t)(*(char *)0xadfa - 1U) < (uint8_t)(*(char *)0xadfb + 1U);
                if (!(bool)in_CF) {
                    in_CF = 0;
                    fcn.0000017f(arg3);
                    *(char *)0xadfb = *(char *)0xadfb + '\x01';
                    uVar4 = fcn.0000017f(arg3);
                    *(undefined *)0xff75 = 0xc;
code_r0x00000115:
                    fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
                }
            } else {
                in_CF = 0;
                if (*(char *)0xadfb != '\0') {
                    in_CF = 0;
                    fcn.0000017f(arg3);
                    *(char *)0xadfb = *(char *)0xadfb + -1;
                    uVar4 = fcn.0000017f(arg3);
                    *(undefined *)0xff75 = 0xc;
                    fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
                }
            }
        }
        uVar3 = 1;
        if (*(char *)0xadfc != '\0') break;
        uVar3 = 2;
        in_CF = 0;
    } while (*(char *)0xadfe == '\0');
    *(undefined *)0xff75 = 0xd;
    *(undefined *)0xadf9 = uVar3;
    fcn.0000017f(arg3);
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
    return;
}

/* ====================================================================== */
/* 0x116: fcn.00000116 */
/* ====================================================================== */


void fcn.00000110(void)
{
    code *pcVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    undefined uVar3;
    undefined2 in_DX;
    int16_t in_BX;
    undefined2 unaff_DS;
    undefined in_CF;
    undefined4 uVar4;
    
    uVar4 = CONCAT22(in_DX, in_AX);
    do {
        *(undefined *)0xff75 = 0xc;
        fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
code_r0x000000dc:
        do {
            fcn.00000a5c();
            if ((bool)in_CF) {
                return;
            }
            pcVar1 = (code *)swi(0x61);
            uVar2 = (*pcVar1)();
            in_CF = 0;
        } while ((uVar2 & 0xe) == 0);
        if ((uVar2 & 0xc) == 0) {
            uVar3 = 1;
            if (*(char *)0xadfc == '\0') {
                uVar3 = 2;
                in_CF = 0;
                if (*(char *)0xadfe == '\0') goto code_r0x000000dc;
            }
            *(undefined *)0xff75 = 0xd;
            *(undefined *)0xadf9 = uVar3;
            fcn.0000017f(in_BX);
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
            return;
        }
        if ((uVar2 & 4) != 0) {
            in_CF = 0;
            if (*(char *)0xadfb != '\0') {
                in_CF = 0;
                fcn.0000017f(in_BX);
                *(char *)0xadfb = *(char *)0xadfb + -1;
                uVar4 = fcn.0000017f(in_BX);
                *(undefined *)0xff75 = 0xc;
                fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
            }
            goto code_r0x000000dc;
        }
        in_CF = (uint8_t)(*(char *)0xadfa - 1U) < (uint8_t)(*(char *)0xadfb + 1U);
        if ((bool)in_CF) goto code_r0x000000dc;
        in_CF = 0;
        fcn.0000017f(in_BX);
        *(char *)0xadfb = *(char *)0xadfb + '\x01';
        uVar4 = fcn.0000017f(in_BX);
    } while( true );
}

/* ====================================================================== */
/* 0x118: fcn.00000118 */
/* ====================================================================== */


void fcn.00000118(void)
{
    code *pcVar1;
    uint8_t uVar2;
    undefined uVar3;
    int16_t in_BX;
    undefined2 unaff_DS;
    undefined in_CF;
    undefined4 uVar4;
    
    do {
        while( true ) {
            do {
                fcn.00000a5c();
                if ((bool)in_CF) {
                    return;
                }
                pcVar1 = (code *)swi(0x61);
                uVar2 = (*pcVar1)();
                in_CF = 0;
            } while ((uVar2 & 0xe) == 0);
            if ((uVar2 & 0xc) == 0) break;
            if ((uVar2 & 4) == 0) {
                in_CF = (uint8_t)(*(char *)0xadfa - 1U) < (uint8_t)(*(char *)0xadfb + 1U);
                if (!(bool)in_CF) {
                    in_CF = 0;
                    fcn.0000017f(in_BX);
                    *(char *)0xadfb = *(char *)0xadfb + '\x01';
                    uVar4 = fcn.0000017f(in_BX);
                    *(undefined *)0xff75 = 0xc;
                    fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
                }
            } else {
                in_CF = 0;
                if (*(char *)0xadfb != '\0') {
                    in_CF = 0;
                    fcn.0000017f(in_BX);
                    *(char *)0xadfb = *(char *)0xadfb + -1;
                    uVar4 = fcn.0000017f(in_BX);
                    *(undefined *)0xff75 = 0xc;
                    fcn.00000139((int16_t)uVar4, (int16_t)((uint32_t)uVar4 >> 0x10));
                }
            }
        }
        uVar3 = 1;
        if (*(char *)0xadfc != '\0') break;
        uVar3 = 2;
        in_CF = 0;
    } while (*(char *)0xadfe == '\0');
    *(undefined *)0xff75 = 0xd;
    *(undefined *)0xadf9 = uVar3;
    fcn.0000017f(in_BX);
    // WARNING: Could not recover jumptable at 0x000000c4. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0xadf9 * 2 + -0x5f3c))();
    return;
}

/* ====================================================================== */
/* 0x26a: fcn.0000026a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000026a(int16_t arg3)
{
    // WARNING: Could not recover jumptable at 0x0000027c. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x202e)();
    return;
}

/* ====================================================================== */
/* 0x22c: fcn.0000022c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000022c(int16_t arg1, int16_t arg2)
{
    code *pcVar1;
    undefined uVar2;
    uint8_t uVar3;
    undefined uVar4;
    int16_t arg4;
    undefined2 unaff_DS;
    undefined2 uStack0002;
    
    *(undefined *)0x9e = *(undefined *)(uint32_t)(*(uint8_t *)0xadfd + 0xae0a);
    uVar4 = 0x16;
    uVar2 = (**(code **)0x2000)();
    arg4 = CONCAT11(uVar4, 0x43);
    uVar2 = fcn.00000a2f(0x5c, arg4, CONCAT11(1, uVar2));
    uStack0002 = 0x263;
    fcn.00000a2f(0x5c, CONCAT11((char)((uint16_t)arg4 >> 8), 0x4b), CONCAT11(1, uVar2));
    do {
        pcVar1 = (code *)swi(0x61);
        uVar3 = (*pcVar1)();
    } while ((uVar3 & 0xc) != 0);
    return;
}

/* ====================================================================== */
/* 0x37e: fcn.0000037e */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000037e(int16_t arg3)
{
    // WARNING: Could not recover jumptable at 0x00000390. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x202e)();
    return;
}

/* ====================================================================== */
/* 0x62d: fcn.0000062d */
/* ====================================================================== */


void fcn.0000062d(void)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xae02 == '\0') {
        return;
    }
    *(undefined *)0xae02 = 0;
    // WARNING: Could not recover jumptable at 0x00000642. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2028)();
    return;
}

/* ====================================================================== */
/* 0x340: fcn.00000340 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000340(int16_t arg1, int16_t arg2)
{
    code *pcVar1;
    undefined uVar2;
    uint8_t uVar3;
    undefined uVar4;
    int16_t arg4;
    undefined2 unaff_DS;
    undefined2 uStack0002;
    
    *(undefined *)0xadff = *(undefined *)(uint32_t)(*(uint8_t *)0xae00 + 0xae10);
    uVar4 = 0x18;
    uVar2 = (**(code **)0x2000)();
    arg4 = CONCAT11(uVar4, 0x70);
    uVar2 = fcn.00000a2f(0x54, arg4, CONCAT11(1, uVar2));
    uStack0002 = 0x377;
    fcn.00000a2f(0x54, CONCAT11((char)((uint16_t)arg4 >> 8), 0x78), CONCAT11(1, uVar2));
    do {
        pcVar1 = (code *)swi(0x61);
        uVar3 = (*pcVar1)();
    } while ((uVar3 & 0xc) != 0);
    return;
}

/* ====================================================================== */
/* 0x613: fcn.00000613 */
/* ====================================================================== */


void fcn.00000613(void)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xae02 != '\0') {
        return;
    }
    *(undefined *)0xae02 = 0xff;
    // WARNING: Could not recover jumptable at 0x00000628. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2026)();
    return;
}

/* ====================================================================== */
/* 0x9b7: fcn.000009b7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000009b7(int16_t arg3, int16_t arg2, int16_t arg4, int16_t arg1)
{
    (**(code **)0x2032)(arg4, arg2, arg3);
    // WARNING: Could not recover jumptable at 0x000009d4. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2030)();
    return;
}

/* ====================================================================== */
/* 0x92d: fcn.0000092d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000092d(int16_t arg4, int16_t arg3, int16_t arg1)
{
    bool bVar1;
    int16_t arg2;
    char *pcVar2;
    uint16_t uVar3;
    uint16_t uVar4;
    undefined uVar5;
    char *pcVar6;
    undefined2 unaff_DS;
    uint16_t uVar7;
    char *pcStack_4;
    
    uVar3 = 0xe2e;
    pcVar2 = (char *)0x0;
    pcVar6 = (char *)0xae03;
    do {
        arg2 = CONCAT11(*(undefined *)((uint8_t)(*pcVar6 - 1) + 0xb4), *(undefined *)((uint8_t)(*pcVar6 - 1) + 0xab));
        uVar4 = uVar3;
        uVar7 = uVar3;
        (**(code **)0x2000)(uVar3, arg2, uVar3, arg2);
        fcn.000009b7(CONCAT11((char)(uVar4 >> 8), 1), arg2, 3, uVar7 & 0xff);
        uVar5 = (undefined)((uVar3 - 0x1f7 >> 8) * 4 + 2 >> 8);
        (**(code **)0x2022)();
        pcStack_4 = (char *)0x994;
        fcn.000009b7(CONCAT11(uVar5, 4), (int16_t)(pcVar6 + 1), 3, (uint16_t)pcVar2 >> 8);
        (**(code **)0x2022)();
        uVar3 = uVar3 + 0x809;
        bVar1 = pcVar6 != (char *)0x0;
        pcVar2 = pcVar6;
        pcVar6 = pcStack_4;
    } while (bVar1);
    return;
}

/* ====================================================================== */
/* 0x872: fcn.00000872 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000872(int16_t arg1)
{
    undefined uVar1;
    undefined2 unaff_DS;
    undefined2 uStack0002;
    
    if (*(char *)0xe4 == '\0') {
        return;
    }
    (**(code **)0x2000)();
    uVar1 = 0;
    (**(code **)0x2022)();
    uStack0002 = 0x8a5;
    fcn.000009b7(CONCAT11(uVar1, 1), 0x3457, 1, (uint16_t)*(uint8_t *)0xe4);
    // WARNING: Could not recover jumptable at 0x000008ae. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2022)();
    return;
}

/* ====================================================================== */
/* 0x5de: fcn.000005de */
/* ====================================================================== */

// WARNING: Removing unreachable block (ram,0x00000a3b)

void fcn.000005de(void)
{
    char *pcVar1;
    undefined uVar2;
    undefined uVar3;
    char *pcVar4;
    undefined2 unaff_DS;
    
    fcn.00000613();
    uVar3 = 0x32;
    uVar2 = (**(code **)0x2000)();
    fcn.00000a2f(0x44, CONCAT11(uVar3, 0x4c), CONCAT11(1, uVar2));
    pcVar4 = *(char **)((uint16_t)(uint8_t)(*(char *)0xadff - 1) * 2 + -0x549e);
    while (pcVar1 = pcVar4, pcVar4 = pcVar4 + 1, *pcVar1 != '\0') {
        (**(code **)0x2022)();
    }
    return;
}

/* ====================================================================== */
/* 0x5b8: fcn.000005b8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000005b8(int16_t arg1)
{
    int16_t arg1_00;
    int16_t arg4;
    int16_t in_BX;
    undefined2 unaff_DS;
    undefined2 uStack0002;
    
    fcn.0000037e(in_BX);
    arg4 = 0x1e10;
    arg1_00 = (**(code **)0x2000)();
    if (*(char *)0xadfe == '\0') {
        *(undefined *)0xadfe = 1;
    }
    uStack0002 = 0x5d9;
    fcn.0000066d(arg4, arg1_00);
    // WARNING: Could not recover jumptable at 0x00000390. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x202e)();
    return;
}

/* ====================================================================== */
/* 0x848: fcn.00000848 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000848(int16_t arg3)
{
    undefined2 unaff_DS;
    
    fcn.000009b7(CONCAT11((char)((uint16_t)arg3 >> 8), 4), 0x3469, 3, *(int16_t *)0x96);
    (**(code **)0x2022)();
    // WARNING: Could not recover jumptable at 0x0000086d. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2022)();
    return;
}

