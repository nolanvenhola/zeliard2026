/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0xb2 = "3enddemo.bin"; // [ascii]
static const char *STR_0xcd = "gdega.bin"; // [ascii]
static const char *STR_0xd9 = "gdcga.bin"; // [ascii]
static const char *STR_0xe5 = "gdhgc.bin"; // [ascii]
static const char *STR_0xf1 = "gdmcga.bin"; // [ascii]
static const char *STR_0xfe = "gdtga.bin"; // [ascii]
static const char *STR_0x1b5 = "$%&'()*+,-"; // [ascii]
static const char *STR_0x1c6 = "./012345678"; // [ascii]
static const char *STR_0x1d7 = "9:;<=>?@ABC"; // [ascii]
static const char *STR_0x1fe = "RSTUVWX"; // [ascii]
static const char *STR_0x20a = "YZ[\\]^_`abcdef"; // [ascii]
static const char *STR_0x21b = "ghijklmnopqrstu"; // [ascii]
static const char *STR_0x22c = "vwxyz{|}~"; // [ascii]
static const char *STR_0x23f = "OMOYA.GRP"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined fcn.00000000(int16_t arg3)
{
    char in_AL;
    int16_t in_BX;
    int16_t unaff_SI;
    char *unaff_DI;
    undefined2 unaff_DS;
    
    *unaff_DI = *unaff_DI + in_AL + *(char *)(in_BX + unaff_SI);
    return *(undefined *)0xa004;
}

/* ====================================================================== */
/* 0x108: fcn.00000108 */
/* ====================================================================== */


void fcn.00000108(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    undefined2 uVar4;
    char cVar5;
    
    uVar4 = 0xc1e;
    iVar1 = 0x10;
    do {
        iVar2 = 0x11;
        do {
            (**(code **)0x3016)(uVar4);
            cVar5 = (char)((uint16_t)uVar4 >> 8);
            cVar3 = (char)uVar4;
            uVar4 = CONCAT11(cVar5 + '\x01', cVar3);
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        uVar4 = CONCAT11(cVar5 + -0x10, cVar3 + '\b');
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

