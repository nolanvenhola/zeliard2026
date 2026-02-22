/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x62a = ":;<=>?"; // [ascii]
static const char *STR_0x6a4 = " !\"#$%&'()*+,-./0123456789:;<=>?_`abcdefghij(klmno.p01R3qrstuvwxyz{|@ABCDEFGHIJK(LMNOP.Q01RSTUV7WXYZ[\\]^"; // [ascii]
static const char *STR_0x76d = "'=\"Øabcdefghi«»ðýþ±°jklmnopqrª\"Øºæcd¸Æ¤hµ~stýuvwjklmnopqrª\"Øºæcd¸Æ¤hµ~stýuvwjklmnopqrª½×x·¾{ez[AÐ©]Bý§¯Cj¶¨Dn¼´ErªGFx"; // [ibm037]
static const char *STR_0x817 = "DRUG.GRP"; // [ascii]
static const char *STR_0x824 = "Witchcraft Implement shopGo outside"; // [ascii]
static const char *STR_0x848 = "Buy item"; // [ascii]
static const char *STR_0x851 = "Sell item"; // [ascii]
static const char *STR_0x85b = "Description of item"; // [ascii]
static const char *STR_0x877 = "hello, can I help you?/"; // [ascii]
static const char *STR_0x8f6 = "That will be "; // [ascii]
static const char *STR_0x905 = "&golds."; // [ascii]
static const char *STR_0x92c = "You have no money, sir."; // [ascii]
static const char *STR_0x944 = "You can\\t possibly carry any more./"; // [ascii]
static const char *STR_0x9c8 = "I\\ll give you "; // [ascii]
static const char *STR_0x9d8 = "&golds for that./Will that be all right?"; // [ascii]
static const char *STR_0xa4f = "Do you have anything else you\\d like to sell?"; // [ascii]
static const char *STR_0xb4e = "Well, it\\s a special blend of yunkel fruit and ripodi leaf./It\\s low in price and as a mild health tonic, it\\s perfect."; // [ascii]
static const char *STR_0xbc9 = "This is the fruit of the Juu-en tree which bears only once every ten years./The price is a bit high, but it provides excellent relief from wounds and exhaustion -- it\\s quite a bit better than the Ken\\ko potion."; // [ascii]
static const char *STR_0xca0 = "This potion is made from the broth of mistletoe simmered on the night of a full moon./It restores magical powers. It\\s very bitter, but the price is low."; // [ascii]
static const char *STR_0xd3d = "This is made from a mixture of the powdered dragon scales and crushed Wise Man\\s Stone steamed for one hundred days./It will fully restore your magical powers. The price, however..... is high."; // [ascii]
static const char *STR_0xe01 = "This stone protects the aura that living beings exude./It surrounds the aura to prevent interference from other auras and acts as a protection against enemy attacks."; // [ascii]
static const char *STR_0xeaa = "This is a liquified metal made from mercury and iron./If you paint it on a shield weakened by battle, the shield will regain its original strength."; // [ascii]
static const char *STR_0xf41 = "Hmm... I don\\t know much about this one, but I do know that it increases the offensive power of a sword./Don\\t worry, it hasn\\t killed anyone yet."; // [ascii]
static const char *STR_0xfd7 = "This feather remembers the voice of the last wise man who spoke to you./If you hold it in your right hand and swing it once, you\\ll return to him. It\\s never failed anyone I know."; // [ascii]
static const char *STR_0x109e = "Ken\\ko Potion"; // [ascii]
static const char *STR_0x10ac = "Juu-en Fruit"; // [ascii]
static const char *STR_0x10b9 = "Elixir of Kashi"; // [ascii]
static const char *STR_0x10c9 = "Chikara Powder"; // [ascii]
static const char *STR_0x10d8 = "Magia Stone"; // [ascii]
static const char *STR_0x10e4 = "Holy Water of Acero"; // [ascii]
static const char *STR_0x10f8 = "Sabre Oil"; // [ascii]
static const char *STR_0x1102 = "Kioku Feather"; // [ascii]

/* ====================================================================== */
/* 0x0: zr2_15 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr2_15(int16_t arg3)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    char cVar3;
    char in_AL;
    int16_t iVar4;
    int16_t in_BX;
    undefined2 *puVar5;
    char *unaff_SI;
    undefined2 *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    char in_CF;
    undefined2 in_stack_00000002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack000e;
    
    *unaff_SI = *unaff_SI + in_AL + unaff_SI[in_BX] + in_CF;
    (**(code **)0x10c)();
    (**(code **)0x2044)();
    *(undefined *)0xff4e = 0;
    *(undefined *)0xff4f = 0;
    *(undefined *)0xb217 = 0;
    (**(code **)0x2002)();
    uStack0004 = 0x44;
    (**(code **)0x2012)();
    uStack0006 = 0x4c;
    iVar4 = (**(code **)0x2010)();
    uStack0008 = 0x4f;
    wizard_process_loop(iVar4);
    puVar5 = *(undefined2 **)((uint8_t)((*(char *)0xc006 + -1) * '\x02') + 0xb10c);
    puVar6 = (undefined2 *)0xb1f6;
    for (iVar4 = 0xc; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar2 = puVar6;
        puVar6 = puVar6 + 1;
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = *puVar1;
    }
    uStack000a = 0x6a;
    wizard_func_2();
    iVar4 = 0xd60;
    uStack000c = 0x77;
    (**(code **)0x2000)();
    *(undefined2 *)0xff4c = 0xa86b;
    while( true ) {
        uStack000e = 0x82;
        cVar3 = (**(code **)0x6004)();
        if (cVar3 == -1) break;
        uStack000c = 0x89;
        wizard_process_loop_2(iVar4);
    }
    // WARNING: Could not recover jumptable at 0x0000008b. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2040)();
    return;
}

/* ====================================================================== */
/* 0x90: wizard_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void wizard_process_loop(int16_t arg1)
{
    char *pcVar1;
    int16_t iVar2;
    uint8_t uVar3;
    char cVar4;
    char *pcVar5;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    bool bVar6;
    
    uVar3 = *(uint8_t *)((uint8_t)(*(char *)0xc006 - 1) + 0xc9);
    pcVar5 = (char *)0xb20f;
    cVar4 = '\0';
    iVar2 = 8;
    do {
        bVar6 = CARRY1(uVar3, uVar3);
        uVar3 = uVar3 * '\x02';
        if (bVar6) {
            pcVar1 = pcVar5;
            pcVar5 = pcVar5 + 1;
            *pcVar1 = '\b' - (char)iVar2;
            cVar4 = cVar4 + '\x01';
        }
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    *(char *)0xb20e = cVar4;
    return;
}

/* ====================================================================== */
/* 0x5c3: wizard_func_2 */
/* ====================================================================== */


void wizard_func_2(void)
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
/* 0xbc: wizard_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void wizard_process_loop_2(int16_t arg3)
{
    uint8_t in_AL;
    
    // WARNING: Could not recover jumptable at 0x000000c2. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)in_AL * 2 + -0x5f3d))();
    return;
}

/* ====================================================================== */
/* 0x648: wizard_func_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void wizard_func_4(int16_t arg1)
{
    uint8_t uVar1;
    int16_t iVar2;
    int16_t iVar3;
    char cVar4;
    undefined2 uVar5;
    char cVar6;
    undefined2 unaff_DS;
    
    if (*(uint16_t *)0xff50 < 2) {
        return;
    }
    *(undefined2 *)0xff50 = 0;
    *(char *)0xb219 = *(char *)0xb219 + '\x01';
    if (*(uint8_t *)0xb219 < 0x14) {
        return;
    }
    *(undefined *)0xb219 = 0;
    uVar1 = *(char *)0xb21a + 1;
    if (2 < uVar1) {
        uVar1 = 0;
    }
    *(uint8_t *)0xb21a = uVar1;
    uVar5 = 0xd17;
    iVar2 = 6;
    do {
        iVar3 = 6;
        do {
            (**(code **)0x3016)(uVar5);
            cVar6 = (char)((uint16_t)uVar5 >> 8);
            cVar4 = (char)uVar5;
            uVar5 = CONCAT11(cVar6 + '\x01', cVar4);
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        uVar5 = CONCAT11(cVar6 + -5, cVar4 + '\b');
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x70c: wizard_process_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void wizard_process_loop_3(short unsigned int arg1)
{
    int16_t *piVar1;
    int16_t arg1_00;
    int16_t iVar2;
    int16_t iVar3;
    char cVar4;
    undefined2 uVar5;
    char cVar6;
    int16_t *unaff_SI;
    undefined2 unaff_DS;
    
    while( true ) {
        *(undefined *)0xff1a = 0;
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        if (*piVar1 == -1) break;
        uVar5 = 0x91f;
        iVar2 = 7;
        do {
            iVar3 = 4;
            do {
                arg1_00 = (**(code **)0x3016)(uVar5);
                cVar6 = (char)((uint16_t)uVar5 >> 8);
                cVar4 = (char)uVar5;
                uVar5 = CONCAT11(cVar6 + '\x01', cVar4);
                iVar3 = iVar3 + -1;
            } while (iVar3 != 0);
            uVar5 = CONCAT11(cVar6 + -3, cVar4 + '\b');
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        do {
            arg1_00 = wizard_func_4(arg1_00);
        } while (*(uint8_t *)0xff1a < 0x28);
    }
    return;
}

/* ====================================================================== */
/* 0x5b6: wizard_multiply */
/* ====================================================================== */


void wizard_multiply(void)
{
    // WARNING: Could not recover jumptable at 0x000005be. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x2000)();
    return;
}

/* ====================================================================== */
/* 0x4a0: wizard_scan_loop */
/* ====================================================================== */


void wizard_scan_loop(void)
{
    char *pcVar1;
    char *pcVar2;
    int16_t iVar3;
    char cVar4;
    char *pcVar5;
    char *pcVar6;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    pcVar5 = (char *)0xa6;
    pcVar6 = (char *)0xff58;
    iVar3 = 5;
    cVar4 = '\0';
    do {
        pcVar1 = pcVar5;
        pcVar5 = pcVar5 + 1;
        if (*pcVar1 != '\0') {
            pcVar2 = pcVar6;
            pcVar6 = pcVar6 + 1;
            *pcVar2 = *pcVar1 + -1;
            cVar4 = cVar4 + '\x01';
        }
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    *(char *)0xff53 = cVar4;
    return;
}

