/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x1f4 = " !\"#$%&"; // [ascii]
static const char *STR_0x1fc = "'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]"; // [ascii]
static const char *STR_0x28e = "'/0123;<=>?"; // [ascii]
static const char *STR_0x2a2 = "'/0123;<=>?"; // [ascii]
static const char *STR_0x2b6 = "'/cd23;ef>?"; // [ascii]
static const char *STR_0x2c6 = "$%&gh/ijkl;mno?"; // [ascii]
static const char *STR_0x2e7 = "INN.GRP"; // [ascii]
static const char *STR_0x3a8 = "&golds. Will you stay? "; // [ascii]
static const char *STR_0x45b = "Please come back when you can afford it. "; // [ascii]
static const char *STR_0x4b2 = "I trust you had a good night\\s sleep. We\\ll be looking forward to seeing you again./"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    char cVar3;
    uint8_t in_AL;
    int16_t in_BX;
    int16_t unaff_SI;
    char *unaff_DI;
    undefined2 unaff_DS;
    char in_CF;
    uint8_t in_AF;
    undefined2 in_stack_00000002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    
    *unaff_DI = *unaff_DI + in_AL + in_CF;
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + in_AL;
    uVar1 = 9 < (in_AL + 0xa0 & 0xf) | in_AF;
    uVar2 = in_AL + 0xa0 + uVar1 * -6;
    *(char *)0x68e = uVar2 + (0x9f < uVar2 | 0x5f < in_AL | uVar1 * (uVar2 < 6)) * -0x60;
    (**(code **)0x10c)();
    (**(code **)0x2044)();
    *(undefined *)0xff4e = 0;
    *(undefined *)0xff4f = 0;
    (**(code **)0x2002)();
    uStack0004 = 0x3f;
    (**(code **)0x2012)();
    uStack0006 = 0x47;
    (**(code **)0x2010)();
    uStack0008 = 0x4a;
    fcn.00000063();
    *(undefined2 *)0xff4c = 0xa2f6;
    while( true ) {
        uStack000a = 0x55;
        cVar3 = (**(code **)0x6004)();
        if (cVar3 == -1) break;
        uStack0008 = 0x5c;
        fcn.00000079(in_BX);
    }
    // WARNING: Could not recover jumptable at 0x0000005e. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0x63: fcn.00000063 */
/* ====================================================================== */


void fcn.00000063(void)
{
    undefined2 unaff_DS;
    
    fcn.000001ae();
    (**(code **)0x2000)();
    *(undefined *)0xa505 = 0xff;
    return;
}

/* ====================================================================== */
/* 0x1ae: fcn.000001ae */
/* ====================================================================== */


void fcn.000001ae(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0x717;
    iVar1 = 8;
    do {
        iVar2 = 0xc;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -0xb, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x79: fcn.00000079 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000079(int16_t arg3)
{
    uint8_t in_AL;
    
    // WARNING: Could not recover jumptable at 0x0000007f. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)in_AL * 2 + -0x5f80))();
    return;
}

/* ====================================================================== */
/* 0x183: fcn.00000183 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000183(int16_t arg1)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0x827;
    iVar1 = 4;
    do {
        iVar2 = 5;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -4, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x173: fcn.00000173 */
/* ====================================================================== */


void fcn.00000173(void)
{
    int16_t in_AX;
    undefined2 unaff_DS;
    
    *(undefined *)0xff1a = 0;
    do {
        in_AX = fcn.00000233(in_AX);
    } while (*(uint8_t *)0xff1a < 0x32);
    return;
}

/* ====================================================================== */
/* 0x233: fcn.00000233 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000233(int16_t arg1)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    undefined2 unaff_DS;
    
    if (*(char *)0xa505 == '\0') {
        return;
    }
    if (*(uint16_t *)0xff50 < 0x28) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    (*_fcn.0000011a)();
    uVar4 = 0x827;
    iVar1 = 2;
    do {
        iVar2 = 2;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -1, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x11a: fcn.0000011a */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000011a(int16_t arg1)
{
    char cVar1;
    uint16_t arg1_00;
    undefined2 in_stack_00000002;
    
    arg1_00 = arg1 + 0xa5U & 0xff00;
    do {
        fcn.00000183(arg1_00);
        fcn.00000173();
        cVar1 = (char)in_stack_00000002 + '\x01';
        arg1_00 = CONCAT11((char)((uint16_t)in_stack_00000002 >> 8), cVar1);
    } while (cVar1 != '\x04');
    return;
}

/* ====================================================================== */
/* 0x163: fcn.00000163 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000163(int16_t arg1)
{
    undefined2 unaff_DS;
    
    *(undefined *)0xff1a = 0;
    do {
        arg1 = fcn.00000233(arg1);
    } while (*(uint8_t *)0xff1a < 0x96);
    return;
}

