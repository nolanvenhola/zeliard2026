/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0xa0c = "ßSV;ßSNC"; // [ibm037]
static const char *STR_0xb5d = "qEFGrsJKLMNyz{R]"; // [ascii]
static const char *STR_0xb8e = "stuvwxyzáãåÊ¡¿.<(+ÐÝ#ê"; // [ibm037]
static const char *STR_0xbd1 = "qEFGrsJKLMNyz{R"; // [ascii]
static const char *STR_0xbfa = "óõ}JKLM"; // [ibm037]
static const char *STR_0xc31 = "qEFGrsJKLMNyz{R"; // [ascii]
static const char *STR_0xc58 = "YZ²ÔuvwxÖÒáãÓÕ0123456789"; // [ibm037]
static const char *STR_0xca8 = "ARMOR.GRP"; // [ascii]
static const char *STR_0xcb6 = "Weapon and Armour ShopGo outside"; // [ascii]
static const char *STR_0xcd7 = "Repair shield"; // [ascii]
static const char *STR_0xce5 = "Buy weapon"; // [ascii]
static const char *STR_0xcf0 = "Buy shield"; // [ascii]
static const char *STR_0xcfb = "Explain goods"; // [ascii]
static const char *STR_0xd1f = "íTraining sword"; // [utf8]
static const char *STR_0xd30 = "Wise man\\s sword"; // [ascii]
static const char *STR_0xd41 = "Spirit sword"; // [ascii]
static const char *STR_0xd4e = "Knight\\s sword"; // [ascii]
static const char *STR_0xd5d = "Illumination sword"; // [ascii]
static const char *STR_0xd70 = "Enchantment sword"; // [ascii]
static const char *STR_0xd82 = "Clay shield"; // [ascii]
static const char *STR_0xd8e = "Wise man\\s shield"; // [ascii]
static const char *STR_0xda0 = "Stone shield"; // [ascii]
static const char *STR_0xdad = "Honor shield"; // [ascii]
static const char *STR_0xdba = "Light shield"; // [ascii]
static const char *STR_0xdc7 = "Titanium Shield"; // [ascii]
static const char *STR_0xdd7 = "May I&be of service, sir?/"; // [ascii]
static const char *STR_0xf3d = "&golds. Shall I&proceed?"; // [ascii]
static const char *STR_0x104a = "I\\ll give you "; // [ascii]
static const char *STR_0x105a = "&golds on your old weapon as a trade-in.\r"; // [ascii]
static const char *STR_0x10a5 = "I\\ll give you "; // [ascii]
static const char *STR_0x10b5 = "&golds on your old shield as a trade-in.\r"; // [ascii]
static const char *STR_0x10f1 = "Will that be all right?"; // [ascii]
static const char *STR_0x110a = "That will be "; // [ascii]
static const char *STR_0x1119 = "&golds./"; // [ascii]
static const char *STR_0x11ad = "Is there another item you would like to know about?/"; // [ascii]
static const char *STR_0x12c4 = "Isn\\t that the crest of honor you bear? Please come in... I mean...uh... /Might I trade you a knight\\s sword for it?"; // [ascii]
static const char *STR_0x13ba = "Thank you, and please come back soon."; // [ascii]
static const char *STR_0x13fa = "Well, I\\d say this sword is all right for a beginner./You get what you pay for./It\\s your standard, maintenance-free sword. If money\\s a problem, this one\\s for you."; // [ascii]
static const char *STR_0x14a3 = "This one is just a bit better than the Training Sword. Once you get the hang of it, it\\s an easy one to wield. The price is a bit higher, but you can\\t lose on this one./Why not take it with you?"; // [ascii]
static const char *STR_0x156a = "You like this one?/A wise choice./This is a high grade product. It\\s one of my biggest sellers."; // [ascii]
static const char *STR_0x15cd = "Oh, I\\d be more than happy to tell you about this one./This is a real man\\s sword. It\\ll topple monsters in the wink of an eye."; // [ascii]
static const char *STR_0x1650 = "You\\ve got a lot of grit I\\d say. This one really packs a punch. A top-of-the-line sword for a top-of-the-line-swordsman. Will you take it?"; // [ascii]
static const char *STR_0x16df = "Isn\\t that the sword you brought in with you?"; // [ascii]
static const char *STR_0x1710 = "This shield is small and has limited defense capability. It\\s not very durable -- unless it\\s used with great skill, it won\\t last long. It\\s better than nothing, I guess."; // [ascii]
static const char *STR_0x17bf = "Well, it\\s slightly better than the Clay Shield. Long ago, a well-known hero used it for a short time. You could do a lot worse."; // [ascii]
static const char *STR_0x1843 = "This one is more of a general-use shield. It\\s not the best one I carry. I can\\t really recommend it, I think it will soon be obsolete."; // [ascii]
static const char *STR_0x18ce = "This shield is in a class by itself. It is strong and light and easy to use. This is a superior shield, the least a brave man should have."; // [ascii]
static const char *STR_0x195c = "Ho! You\\ve got quite an eye for these things, I see. This shield is not made of common iron. It is made of a magic metal called Magane. Against ordinary weapons, it\\s unbreakable."; // [ascii]
static const char *STR_0x1a13 = "This shield makes the mightiest swords seem like paper. It\\s light as a feather and hard as a diamond. Used well, this one will last you a lifetime."; // [ascii]

/* ====================================================================== */
/* 0x0: zr2_12 */
/* ====================================================================== */


void zr2_12(undefined2 param_1)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    char cVar3;
    char in_AL;
    int16_t iVar4;
    uint16_t uVar5;
    undefined2 *puVar6;
    char *unaff_SI;
    undefined2 *puVar7;
    undefined2 unaff_DS;
    char in_CF;
    
    *unaff_SI = *unaff_SI + (in_AL - in_CF);
    (**(code **)0x10c)();
    (**(code **)0x2044)();
    *(undefined *)0xff4e = 0;
    *(undefined *)0xff4f = 0;
    *(undefined *)0xbc21 = 0;
    (**(code **)0x2002)();
    (**(code **)0x2012)();
    iVar4 = (**(code **)0x2010)();
    iVar4 = ghost_process_loop(iVar4);
    uVar5 = ghost_process_loop_2(iVar4);
    puVar6 = *(undefined2 **)((uint8_t)((*(char *)0xc006 + -1) * '\x02') + 0xbaa7);
    puVar7 = (undefined2 *)0xbbfd;
    for (iVar4 = 0x12; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar2 = puVar7;
        puVar7 = puVar7 + 1;
        puVar1 = puVar6;
        puVar6 = puVar6 + 1;
        *puVar2 = *puVar1;
    }
    ghost_func_3(uVar5 & 0xff00);
    *(undefined *)0xbc23 = 0xff;
    iVar4 = 0xd60;
    (**(code **)0x2000)();
    *(undefined2 *)0xff4c = 0xadd3;
    if ((((*(uint8_t *)0x24 & 2) == 0) && (*(char *)0xc006 == '\x05')) && (*(char *)0x9b != '\0')) {
        *(undefined2 *)0xff4c = 0xb2a2;
        *(undefined *)0xbc23 = 0;
    }
    while( true ) {
        cVar3 = (**(code **)0x6004)();
        if (cVar3 == -1) break;
        ghost_func_4(iVar4);
    }
    // WARNING: Could not recover jumptable at 0x000000b5. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0xba: ghost_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_process_loop(int16_t arg1)
{
    char *pcVar1;
    int16_t iVar2;
    uint8_t uVar3;
    char cVar4;
    char *pcVar5;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    bool bVar6;
    
    uVar3 = *(uint8_t *)((uint8_t)(*(char *)0xc006 - 1) + 0xd2);
    pcVar5 = (char *)0xbc3b;
    cVar4 = '\0';
    iVar2 = 6;
    do {
        bVar6 = CARRY1(uVar3, uVar3);
        uVar3 = uVar3 * '\x02';
        if (bVar6) {
            pcVar1 = pcVar5;
            pcVar5 = pcVar5 + 1;
            *pcVar1 = '\x06' - (char)iVar2;
            cVar4 = cVar4 + '\x01';
        }
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *(char *)0xbc31 = cVar4;
    return;
}

/* ====================================================================== */
/* 0xe6: ghost_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_process_loop_2(int16_t arg1)
{
    char *pcVar1;
    int16_t iVar2;
    uint8_t uVar3;
    char cVar4;
    char *pcVar5;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    bool bVar6;
    
    uVar3 = *(uint8_t *)((uint8_t)(*(char *)0xc006 - 1) + 0xdb);
    pcVar5 = (char *)0xbc41;
    cVar4 = '\0';
    iVar2 = 6;
    do {
        bVar6 = CARRY1(uVar3, uVar3);
        uVar3 = uVar3 * '\x02';
        if (bVar6) {
            pcVar1 = pcVar5;
            pcVar5 = pcVar5 + 1;
            *pcVar1 = '\x06' - (char)iVar2;
            cVar4 = cVar4 + '\x01';
        }
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *(char *)0xbc32 = cVar4;
    return;
}

/* ====================================================================== */
/* 0x9d3: ghost_func_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_func_3(int16_t arg1)
{
    char *pcVar1;
    int16_t iVar2;
    int16_t iVar3;
    int16_t iVar4;
    char cVar5;
    undefined2 uVar6;
    char cVar7;
    undefined2 unaff_DS;
    
    pcVar1 = (char *)((arg1 & 0xffU) * 6 + -22000);
    uVar6 = 0x717;
    iVar2 = 2;
    do {
        if (*pcVar1 == '\0') {
            return;
        }
        iVar4 = CONCAT11((char)((uint16_t)iVar2 >> 8), *pcVar1);
        pcVar1 = pcVar1 + 3;
        do {
            iVar3 = 0xc;
            do {
                (**(code **)0x3016)(uVar6);
                cVar7 = (char)((uint16_t)uVar6 >> 8);
                cVar5 = (char)uVar6;
                uVar6 = CONCAT11(cVar7 + '\x01', cVar5);
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            uVar6 = CONCAT11(cVar7 + -0xb, cVar5 + '\b');
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x112: ghost_func_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_func_4(int16_t arg3)
{
    uint8_t in_AL;
    
    // WARNING: Could not recover jumptable at 0x00000118. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)in_AL * 2 + -0x5ee7))();
    return;
}

/* ====================================================================== */
/* 0x70a: ghost_func_6 */
/* ====================================================================== */


void ghost_func_6(void)
{
    int16_t in_AX;
    undefined2 unaff_DS;
    
    *(undefined *)0xff1a = 0;
    do {
        in_AX = ghost_func_7(in_AX);
    } while (*(uint8_t *)0xff1a < 0x96);
    return;
}

/* ====================================================================== */
/* 0x913: ghost_func_7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_func_7(int16_t arg1)
{
    uint16_t uVar1;
    char *pcVar2;
    int16_t iVar3;
    int16_t iVar4;
    int16_t iVar5;
    char cVar6;
    undefined2 uVar7;
    char cVar8;
    undefined2 unaff_DS;
    
    if (*(char *)0xbc23 == '\0') {
        return;
    }
    if (*(uint16_t *)0xff50 < 2) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    *(char *)0xbc24 = *(char *)0xbc24 + '\x01';
    if (*(uint8_t *)0xbc24 < 0x1e) {
        return;
    }
    *(undefined *)0xbc24 = 0;
    *(char *)0xbc25 = *(char *)0xbc25 + '\x01';
    if (*(char *)0xbc26 == '\0') {
        uVar7 = 0x104f;
        iVar3 = 2;
        do {
            (**(code **)0x3016)(uVar7);
            uVar7 = CONCAT11((char)((uint16_t)uVar7 >> 8) + '\x01', (char)uVar7);
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
    } else {
        if (*(char *)0xbc26 == '\x7f') {
            *(undefined *)0xbc26 = 0xff;
            iVar3 = 2;
            goto code_r0x000009d3;
        }
        if (*(char *)0xbc26 == -0x80) {
            *(undefined *)0xbc26 = 0;
            iVar3 = 0;
            goto code_r0x000009d3;
        }
        cVar6 = '7';
        iVar3 = 2;
        do {
            (**(code **)0x3016)(cVar6);
            cVar6 = cVar6 + '\b';
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
    }
    uVar1 = (*_fcn.0000011a)();
    if ((uVar1 & 1) != 0) {
        return;
    }
    *(char *)0xbc27 = *(char *)0xbc27 + '\x01';
    if (*(uint8_t *)0xbc27 < 0x1e) {
        return;
    }
    *(undefined *)0xbc27 = 0;
    *(uint8_t *)0xbc26 = ~*(uint8_t *)0xbc26 ^ 0x80;
    iVar3 = 1;
code_r0x000009d3:
    pcVar2 = (char *)(iVar3 * 6 + -22000);
    uVar7 = 0x717;
    iVar3 = 2;
    do {
        if (*pcVar2 == '\0') {
            return;
        }
        iVar5 = CONCAT11((char)((uint16_t)iVar3 >> 8), *pcVar2);
        pcVar2 = pcVar2 + 3;
        do {
            iVar4 = 0xc;
            do {
                (**(code **)0x3016)(uVar7);
                cVar8 = (char)((uint16_t)uVar7 >> 8);
                cVar6 = (char)uVar7;
                uVar7 = CONCAT11(cVar8 + '\x01', cVar6);
                iVar4 = iVar4 + -1;
            } while (iVar4 != 0);
            uVar7 = CONCAT11(cVar8 + -0xb, cVar6 + '\b');
            iVar5 = iVar5 + -1;
        } while (iVar5 != 0);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x11a: ghost_func_8 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ghost_func_8(int16_t arg3)
{
    int16_t *piVar1;
    undefined in_AL;
    uint16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    piVar1 = (int16_t *)((int16_t)unaff_DI + arg3 + -0x5ed1);
    *piVar1 = (*piVar1 - (int16_t)&stack0x0000) - (uint16_t)(*unaff_SI < *unaff_DI);
    *(undefined *)0xa498 = in_AL;
    return;
}

/* ====================================================================== */
/* 0x906: ghost_check_state */
/* ====================================================================== */


void ghost_check_state(void)
{
    // WARNING: Could not recover jumptable at 0x0000090e. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2000)();
    return;
}

/* ====================================================================== */
/* 0x47f: fcn.0000047f */
/* ====================================================================== */


undefined2 fcn.0000047f(void)
{
    undefined2 in_AX;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    if ((char)in_AX != '\x03') {
        return in_AX;
    }
    if ((*(uint8_t *)0x24 & 2) != 0) {
        return in_AX;
    }
    if (*(char *)0xc006 != '\x05') {
        return in_AX;
    }
    *(undefined2 *)0xff4c = 0xb24c;
    return in_stack_00000000;
}

/* ====================================================================== */
/* 0x874: fcn.00000874 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000874(int16_t arg1)
{
    undefined2 unaff_DS;
    
    *(undefined *)0xff1a = 0;
    do {
        arg1 = ghost_func_7(arg1);
    } while (*(uint8_t *)0xff1a < 0x32);
    return;
}

/* ====================================================================== */
/* 0x8e4: fcn.000008e4 */
/* ====================================================================== */


undefined2 fcn.000008e4(void)
{
    undefined2 in_AX;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    if ((char)in_AX != '\x03') {
        return in_AX;
    }
    if ((*(uint8_t *)0x24 & 2) != 0) {
        return in_AX;
    }
    if (*(char *)0xc006 != '\x05') {
        return in_AX;
    }
    *(undefined2 *)0xff4c = 0xb240;
    return in_stack_00000000;
}

