/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x138 = "ABMNWXABklmnABopqrsBtuvwxyz{|w"; // [ascii]
static const char *STR_0x19c = " !\"#$%&&'(&)*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTSUVSWXYZ"; // [ascii]
static const char *STR_0x29f = "CHURCH.GRP"; // [ascii]
static const char *STR_0x333 = "The Holy Spirit will help you to regain your strength."; // [ascii]
static const char *STR_0x36e = "Brave Knight, you look fatigued from battle. Why not rest awhile and let the Spirit heal you. "; // [ascii]
static const char *STR_0x3ce = "/May God go with you."; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3)
{
    char cVar1;
    char in_AL;
    int16_t arg3_00;
    int16_t in_BX;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    undefined2 in_stack_00000002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack000e;
    
    out(3, in_AL);
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + in_AL;
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
    fcn.00000156();
    arg3_00 = 0xd60;
    uStack000a = 0x57;
    (**(code **)0x2000)();
    uStack000c = 0x5a;
    fcn.0000028c();
    *(undefined2 *)0xff4c = 0xa2a6;
    while( true ) {
        uStack000e = 99;
        cVar1 = (**(code **)0x6004)();
        if (cVar1 == -1) break;
        uStack000c = 0x6a;
        fcn.00000071(arg3_00);
    }
    // WARNING: Could not recover jumptable at 0x0000006c. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0x156: fcn.00000156 */
/* ====================================================================== */


void fcn.00000156(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0xe17;
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
/* 0x28c: fcn.0000028c */
/* ====================================================================== */


void fcn.0000028c(void)
{
    undefined2 unaff_DS;
    
    if (*(int16_t *)0x90 == *(int16_t *)0xb2) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x71: fcn.00000071 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000071(int16_t arg3)
{
    uint8_t in_AL;
    
    // WARNING: Could not recover jumptable at 0x00000077. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)in_AL * 2 + -0x5f88))();
    return;
}

/* ====================================================================== */
/* 0x1db: fcn.000001db */
/* ====================================================================== */


void fcn.000001db(void)
{
    char *pcVar1;
    int16_t iVar2;
    int16_t iVar3;
    char cVar4;
    int16_t in_BX;
    undefined2 uVar5;
    char cVar6;
    char *pcVar7;
    undefined2 unaff_DS;
    
    if (*(uint16_t *)0xff50 < 0x20) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    *(char *)0xa3e5 = *(char *)0xa3e5 + '\x01';
    if (*(char *)0xa3e5 == '\x03') {
        *(undefined *)0xa3e5 = 0;
    }
    fcn.000001fe(in_BX);
    pcVar7 = (char *)((uint16_t)*(uint8_t *)0xa3e5 * 4 + -0x5d84);
    uVar5 = 0x1537;
    iVar2 = 2;
    do {
        iVar3 = 2;
        do {
            pcVar1 = pcVar7;
            pcVar7 = pcVar7 + 1;
            if (*pcVar1 != -1) {
                (**(code **)0x3016)(uVar5);
            }
            cVar6 = (char)((uint16_t)uVar5 >> 8);
            cVar4 = (char)uVar5;
            uVar5 = CONCAT11(cVar6 + '\x01', cVar4);
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        uVar5 = CONCAT11(cVar6 + -1, cVar4 + '\b');
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1fe: fcn.000001fe */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000001fe(int16_t arg3)
{
    char *pcVar1;
    int16_t iVar2;
    int16_t iVar3;
    char cVar4;
    undefined2 uVar5;
    char cVar6;
    char *pcVar7;
    undefined2 unaff_DS;
    
    pcVar7 = (char *)((uint16_t)*(uint8_t *)0xa3e5 * 6 + -0x5dcc);
    uVar5 = 0x1037;
    iVar2 = 2;
    do {
        iVar3 = 3;
        do {
            pcVar1 = pcVar7;
            pcVar7 = pcVar7 + 1;
            if (*pcVar1 != -1) {
                (**(code **)0x3016)(uVar5);
            }
            cVar6 = (char)((uint16_t)uVar5 >> 8);
            cVar4 = (char)uVar5;
            uVar5 = CONCAT11(cVar6 + '\x01', cVar4);
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        uVar5 = CONCAT11(cVar6 + -2, cVar4 + '\b');
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

