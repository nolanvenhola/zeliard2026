/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x124 = "s}tnvY7"; // [ibm037]
static const char *STR_0x6cc = "lmnopqrstuvwxy"; // [ascii]
static const char *STR_0x70a = " !\"#$%&'"; // [ascii]
static const char *STR_0x712 = "«»ðýþ±°jklmnopqrªºæ¸Æ¤µ~st6"; // [ibm037]
static const char *STR_0x797 = " !\"#$%&'"; // [ascii]
static const char *STR_0x7bf = " -.#$%&'"; // [ascii]
static const char *STR_0x7e2 = "OPQL= !\"RS>?@"; // [ascii]
static const char *STR_0x809 = "bcdefg !\"hi>jk"; // [ascii]
static const char *STR_0x82e = "Ê9;ÔUäy,yly]y"; // [ibm037]
static const char *STR_0x83d = "]yly,yäy"; // [ibm037]
static const char *STR_0x867 = " !\"#$%&'"; // [ascii]
static const char *STR_0x88f = " !\"#123'"; // [ascii]
static const char *STR_0x8b2 = "/:;<= !\"#$>?@"; // [ascii]
static const char *STR_0x8da = "/0KL= !\"#$>?@"; // [ascii]
static const char *STR_0x8e9 = "BANK.GRP"; // [ascii]
static const char *STR_0x91b = "Exchange almas"; // [ascii]
static const char *STR_0x92a = "Deposit money"; // [ascii]
static const char *STR_0x938 = "Withdraw money"; // [ascii]
static const char *STR_0x947 = "Check balance"; // [ascii]
static const char *STR_0x955 = "GOLD CARRIED"; // [ascii]
static const char *STR_0x964 = " DEPOSIT AMT"; // [ascii]
static const char *STR_0x971 = "GOLD IN BANK"; // [ascii]
static const char *STR_0x980 = "WITHDRAW AMT"; // [ascii]
static const char *STR_0x991 = "Oh, excuse me. "; // [ascii]
static const char *STR_0x9a2 = "Can I help you?/"; // [ascii]
static const char *STR_0x9f5 = "&almas to "; // [ascii]
static const char *STR_0xa01 = "&golds./Will that be all right?"; // [ascii]
static const char *STR_0xb0b = "&golds."; // [ascii]
static const char *STR_0xba8 = "Here you are, sir. "; // [ascii]
static const char *STR_0xbbd = "&golds."; // [ascii]
static const char *STR_0xbc5 = "Here you are, sir. One gold."; // [ascii]
static const char *STR_0xc20 = "&golds in your account."; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3)
{
    char cVar1;
    int16_t arg1;
    undefined2 in_AX;
    int16_t arg3_00;
    int16_t in_BX;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    undefined2 in_stack_00000002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    int16_t iStack000c;
    int16_t iStack000e;
    
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + (char)in_AX;
    *(char *)(in_BX + 0x68e) = *(char *)(in_BX + 0x68e) - (char)((uint16_t)in_AX >> 8);
    (**(code **)0x10c)();
    (**(code **)0x2044)();
    *(undefined *)0xff4e = 0;
    *(undefined *)0xff4f = 0;
    *(undefined *)0xad1e = 0;
    (**(code **)0x2002)();
    uStack0004 = 0x44;
    (**(code **)0x2012)();
    uStack0006 = 0x4c;
    (**(code **)0x2010)();
    uStack0008 = 0x4f;
    fcn.000006a7();
    arg3_00 = 0xd60;
    uStack000a = 0x5c;
    (**(code **)0x2000)();
    *(undefined *)0xad21 = 0xff;
    *(undefined2 *)0xad1f = 0xa773;
    *(undefined2 *)0xff4c = 0xa989;
    iStack000c = 0x72;
    (**(code **)0x6004)();
    iStack000e = 5;
    do {
        *(undefined *)0xff1a = 0;
        *(undefined2 *)0xff4c = 0xa98b;
        iStack000c = 0x86;
        arg1 = (**(code **)0x6004)();
        do {
            uStack000a = 0x89;
            arg1 = fcn.0000072c(arg1);
        } while (*(uint8_t *)0xff1a < 0x3f);
        iStack000e = iStack000c + -1;
    } while (iStack000e != 0);
    *(undefined *)0xad21 = 0;
    *(undefined2 *)0xff4c = 0xa98d;
    while( true ) {
        iStack000e = 0xa3;
        cVar1 = (**(code **)0x6004)();
        if (cVar1 == -1) break;
        iStack000c = 0xaa;
        fcn.000000b1(arg3_00);
    }
    // WARNING: Could not recover jumptable at 0x000000ac. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0x6a7: fcn.000006a7 */
/* ====================================================================== */


void fcn.000006a7(void)
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
/* 0x72c: fcn.0000072c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000072c(int16_t arg1)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    undefined2 unaff_DS;
    
    if (*(char *)0xad21 == '\0') {
        return;
    }
    if (*(uint16_t *)0xff50 < 0x1e) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    *(char *)0xad22 = *(char *)0xad22 + '\x01';
    uVar4 = 0x91f;
    iVar1 = 5;
    do {
        iVar2 = 8;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -7, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0xb1: fcn.000000b1 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000000b1(int16_t arg3)
{
    uint8_t in_AL;
    
    // WARNING: Could not recover jumptable at 0x000000b7. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)in_AL * 2 + -0x5f48))();
    return;
}

/* ====================================================================== */
/* 0x623: fcn.00000623 */
/* ====================================================================== */


void fcn.00000623(void)
{
    // WARNING: Could not recover jumptable at 0x0000062b. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2000)();
    return;
}

/* ====================================================================== */
/* 0x755: fcn.00000755 */
/* ====================================================================== */


void fcn.00000755(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0x91f;
    iVar1 = 5;
    do {
        iVar2 = 8;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -7, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x630: fcn.00000630 */
/* ====================================================================== */


void fcn.00000630(void)
{
    uint8_t in_AL;
    uint8_t uVar1;
    uint16_t uVar2;
    undefined2 unaff_DS;
    bool bVar3;
    bool bVar4;
    
    uVar1 = *(uint8_t *)0xad29;
    uVar2 = *(uint16_t *)0xad2a;
    if ((in_AL & 8) == 0) {
        if ((in_AL & 4) == 0) {
            if ((in_AL & 2) == 0) {
                if ((in_AL & 1) != 0) {
                    bVar4 = 0xfffe < uVar2;
                    uVar2 = uVar2 + 1;
                    uVar1 = uVar1 + bVar4;
                    if (*(uint8_t *)0xad2c <= uVar1 &&
                        (uVar2 < *(uint16_t *)0xad2d) <= (uint8_t)(uVar1 - *(uint8_t *)0xad2c)) {
                        uVar1 = *(uint8_t *)0xad2c;
                        uVar2 = *(uint16_t *)0xad2d;
                    }
                }
            } else {
                bVar3 = uVar2 == 0;
                uVar2 = uVar2 - 1;
                bVar4 = uVar1 < bVar3;
                uVar1 = uVar1 - bVar3;
                if (bVar4) {
                    uVar2 = 0;
                    uVar1 = 0;
                }
            }
        } else {
            bVar4 = 0xfff5 < uVar2;
            uVar2 = uVar2 + 10;
            uVar1 = uVar1 + bVar4;
            if (*(uint8_t *)0xad2c <= uVar1 && (uVar2 < *(uint16_t *)0xad2d) <= (uint8_t)(uVar1 - *(uint8_t *)0xad2c)) {
                uVar1 = *(uint8_t *)0xad2c;
                uVar2 = *(uint16_t *)0xad2d;
            }
        }
    } else {
        bVar3 = uVar2 < 10;
        uVar2 = uVar2 - 10;
        bVar4 = uVar1 < bVar3;
        uVar1 = uVar1 - bVar3;
        if (bVar4) {
            uVar2 = 0;
            uVar1 = 0;
        }
    }
    *(uint8_t *)0xad29 = uVar1;
    *(uint16_t *)0xad2a = uVar2;
    return;
}

/* ====================================================================== */
/* 0x817: fcn.00000817 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000817(short unsigned int arg1)
{
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    int16_t *in_stack_00000000;
    
    while( true ) {
        *(undefined *)0xff1a = 0;
        if (*unaff_SI == -1) break;
        fcn.00000755(unaff_SI + 1);
        do {
            unaff_SI = in_stack_00000000;
        } while (*(uint8_t *)0xff1a < 0x28);
    }
    return;
}

