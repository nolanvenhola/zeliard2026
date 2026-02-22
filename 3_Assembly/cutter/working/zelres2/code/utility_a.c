/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x35 = "<=====UX\\ldeimVZ]aeflnWZ^bfgkoTX\\`ddimUY]alejmVZ^bfglnW[_cghioVXX^\\`imVY\\_]aooVZ_`ddim"; // [ascii]
static const char *STR_0x8c = "WYbceln"; // [ascii]
static const char *STR_0x94 = "VZdgimo"; // [ascii]
static const char *STR_0x9c = "U`ceglm"; // [ascii]
static const char *STR_0xa4 = "?B`ddhm"; // [ascii]
static const char *STR_0x2cb = ">ADHLLPRTX\\``eimUY]aaflmVZ^bbgkmW[_ccfimTX^`dfi"; // [ascii]
static const char *STR_0x328 = "»krèÍ'cefgªíÎ=d"; // [ibm037]
static const char *STR_0x35b = "W[]`chl"; // [ascii]
static const char *STR_0x363 = "T\\\\`diimUY]adgimVZ^behkmW[_cfclnTX\\``cim"; // [ascii]
static const char *STR_0x3b8 = "Felishika\\s Castle"; // [ascii]
static const char *STR_0x40e = "If you are the brave warrior we have awaited, we have something to tell you: throughout the ages, many young men have entered the caverns, but few have returned."; // [ascii]
static const char *STR_0x4b0 = "According to legend, there may still be underground places that have not been destroyed by Jashiin. People may still be living there, and will surely lend you a hand."; // [ascii]
static const char *STR_0x557 = "I have been in the underground town. After I fled, they put a lock on the door. If the town is still there.... "; // [ascii]
static const char *STR_0x5c7 = "This is the chamber of poor Princess Felicia, who has been turned to stone. You may enter, Duke Garland."; // [ascii]
static const char *STR_0x630 = "Brave knight, you have awakened. When you fell at the hand of Jashiin, the Spirits brought you here. Now make haste to the aid of the Princess Felicia."; // [ascii]
static const char *STR_0x6c8 = "Quickly, go to the Princess!"; // [ascii]
static const char *STR_0x6e5 = "Ah, the Nine Tears of Esmesanti. Jashiin exists no more and the light of peace shines once again on our land... "; // [ascii]
static const char *STR_0x756 = "This will benefit the people living underground, as well. Hurry to the Princess Felicia."; // [ascii]
static const char *STR_0x7af = "The peace we dared not hope for has come. I\\ll get my things together and be on my way. I\\ve a family to attend to."; // [ascii]
static const char *STR_0x823 = "Quickly, enter this chamber. The holy crystals will break the evil spell which has turned Princess Felicia to stone."; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3)
{
    char *pcVar1;
    char in_CH;
    char in_DH;
    int16_t in_BX;
    int16_t unaff_BP;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    
    pcVar1 = (char *)(unaff_BP + unaff_DI + 0x72c3);
    *pcVar1 = *pcVar1 + in_CH;
    *(char *)(in_BX + 0x1cb) = *(char *)(in_BX + 0x1cb) + in_DH;
    return;
}

