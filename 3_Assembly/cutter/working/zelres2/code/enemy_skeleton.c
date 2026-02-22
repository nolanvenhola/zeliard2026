/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x1a5 = "RSTUVW&'("; // [ascii]
static const char *STR_0x1b1 = "XYZ[\\)*+,"; // [ascii]
static const char *STR_0x1be = "]^_-./0123456789:;<="; // [utf8]
static const char *STR_0x1d7 = "s!sdsÞsQs"; // [ibm037]
static const char *STR_0x1ec = "FGHIJKLMNOPQRSTUVWXYZ[\\)"; // [ascii]
static const char *STR_0x216 = "FGHIJKLMNOPQR`abVWXYZ[\\)"; // [ascii]
static const char *STR_0x240 = "FGHIJKLMNOPQRcdeVWXYZ[\\)"; // [ascii]
static const char *STR_0x26a = "nopqrstuvwxyz{|}~"; // [ascii]
static const char *STR_0x294 = "°jklmnoÝ¿Þªºæ¸Æ¤µ~stuvw"; // [ibm037]
static const char *STR_0x2be = "°jklmno¡¿Ðªºæ¸Æ¤µ~stuvw"; // [ibm037]
static const char *STR_0x2e8 = "°jklmnopqrªºæ¸Æ¤µ~stuvw"; // [ibm037]
static const char *STR_0x37e = "opqro¡¿ÐoÝ¿Þ6"; // [ibm037]
static const char *STR_0x3ae = "6÷»0aFMt]"; // [ibm037]
static const char *STR_0x3d4 = "ßSVCstuvw"; // [ibm037]
static const char *STR_0x415 = "KING.GRP"; // [ascii]
static const char *STR_0x422 = "King of Felishika"; // [ascii]
static const char *STR_0x43a = "Brave Duke Garland, "; // [ascii]
static const char *STR_0x454 = "you\\ll need money for your journey./I&hereby bestow upon you 1000&Golds."; // [ascii]
static const char *STR_0x4a5 = "Go to town and outfit yourself, then make haste to the labyrinth to defeat the forces of Jashiin. My kingdom and the life of my daughter are at stake."; // [ascii]
static const char *STR_0x547 = "Brave Duke, did you forget something?"; // [ascii]
static const char *STR_0x573 = "The entrance to the labyrinth is at the edge of town."; // [ascii]
static const char *STR_0x5ad = "Please hurry, before it\\s too late! "; // [ascii]
static const char *STR_0x5dd = "Duke Garland, "; // [ascii]
static const char *STR_0x5f1 = "I am in debt to you for your efforts. "; // [ascii]
static const char *STR_0x61d = "Have you not yet succeeded in vanquishing Jashiin? "; // [ascii]
static const char *STR_0x657 = "I pray that the spirits will guide you. Please don\\t give up, the people of Zeliard are depending on you!"; // [ascii]
static const char *STR_0x6ca = "Duke Garland, "; // [ascii]
static const char *STR_0x6de = "you are a brave man. You have conquered Jashiin and returned the nine Tears of Esmesanti. "; // [ascii]
static const char *STR_0x73f = "Now go quickly to the chamber of Princess Felicia. The&crystals will bring her back to life. "; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */


void fcn.00000000(undefined2 param_1)
{
    char cVar1;
    char in_AL;
    int16_t arg3;
    char *unaff_SI;
    undefined2 unaff_DS;
    
    *(char *)0x7 = in_AL;
    *unaff_SI = *unaff_SI + in_AL;
    (**(code **)0x10c)();
    (**(code **)0x2044)();
    *(undefined *)0xff4e = 0;
    *(undefined *)0xff4f = 0;
    (**(code **)0x2002)();
    (**(code **)0x2012)();
    (**(code **)0x2010)();
    fcn.00000118();
    arg3 = 0xd60;
    (**(code **)0x2000)();
    fcn.000003ec();
    *(undefined2 *)0xff4c = 0xa41a;
    while( true ) {
        cVar1 = (**(code **)0x6004)();
        if (cVar1 == -1) break;
        fcn.00000071(arg3);
    }
    // WARNING: Could not recover jumptable at 0x0000006c. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0x118: fcn.00000118 */
/* ====================================================================== */


void fcn.00000118(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    undefined2 unaff_DS;
    
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
    if (*(char *)0x49 == '\0') {
        return;
    }
    uVar4 = 0x1117;
    iVar1 = 7;
    do {
        iVar2 = 6;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -5, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x3ec: fcn.000003ec */
/* ====================================================================== */


void fcn.000003ec(void)
{
    undefined2 unaff_DS;
    
    if ((*(uint8_t *)0x5 | *(uint8_t *)0x6) == 0) {
        return;
    }
    if (*(char *)0x6 == '\0') {
        return;
    }
    if (*(char *)0x49 == '\0') {
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
/* 0x306: fcn.00000306 */
/* ====================================================================== */


void fcn.00000306(void)
{
    int16_t in_AX;
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    undefined2 unaff_DS;
    
    if (*(uint16_t *)0xff50 < 4) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    fcn.00000319(in_AX);
    if (*(char *)0xa79d == '\0') {
        return;
    }
    *(char *)0xa79e = *(char *)0xa79e + '\x01';
    if (*(uint8_t *)0xa79e < 6) {
        return;
    }
    *(undefined *)0xa79e = 0;
    *(char *)0xa79f = *(char *)0xa79f + '\x01';
    uVar4 = 0x113f;
    iVar1 = 2;
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
/* 0x319: fcn.00000319 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000319(int16_t arg1)
{
    char cVar1;
    int16_t iVar2;
    undefined2 uVar3;
    undefined2 unaff_DS;
    
    if (*(char *)0xa7a0 == '\0') {
        return;
    }
    *(char *)0xa7a1 = *(char *)0xa7a1 + '\x01';
    if (0x19 < *(uint8_t *)0xa7a1) {
        cVar1 = (*_fcn.0000011a)();
        if (cVar1 != '\0') {
            return;
        }
        *(undefined *)0xa7a1 = 0xff;
        return;
    }
    uVar3 = 0x112f;
    iVar2 = 4;
    do {
        (**(code **)0x3016)(uVar3);
        uVar3 = CONCAT11((char)((uint16_t)uVar3 >> 8) + '\x01', (char)uVar3);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x11a: fcn.0000011a */
/* ====================================================================== */


void fcn.00000118(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    undefined2 unaff_DS;
    
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
    if (*(char *)0x49 == '\0') {
        return;
    }
    uVar4 = 0x1117;
    iVar1 = 7;
    do {
        iVar2 = 6;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -5, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x146: fcn.00000146 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000146(int16_t arg3)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0x1117;
    iVar1 = 7;
    do {
        iVar2 = 6;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -5, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x108: fcn.00000108 */
/* ====================================================================== */


void fcn.00000108(void)
{
    undefined2 unaff_DS;
    
    *(undefined *)0xff1a = 0;
    do {
        fcn.00000306();
    } while (*(uint8_t *)0xff1a < 0x19);
    return;
}

