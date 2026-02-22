/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0xaf = "äE¿cóõ}CD\\DGIôI"; // [ibm037]
static const char *STR_0xc1 = "öHED¿fCD\\I$Iö"; // [ibm037]
static const char *STR_0xff = "òöEDEDED¿kCä¿kCED¿kC\\D¿kCE\\¿kCä¿kC\\D¿kC\\D¿kC\\D¿kCED¿kC\\D¿kC\\D¿kCED¿kCDG¿kCED¿kCE\\¿kC\\D¿kCEG¿kCEG¿kCE"; // [ibm037]
static const char *STR_0x164 = "¿kCGI¿kCE"; // [ibm037]
static const char *STR_0x173 = "¿kCDH¿kCE\\¿kCED¿kC\\D¿kCED¿kCED¿kC\\D¿kCED¿kCE\\¿kC\\D¿kCä¿kCä¿kCED¿kCED¿kC\\D¿kCED¿kCE\\¿kCED¿kCED¿kCED¿có"; // [ibm037]
static const char *STR_0x1fe = "g.IHëED\\Ä¿cKLMöI"; // [ibm037]
static const char *STR_0x2c4 = "Cavern of Tesoro"; // [ascii]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(int16_t arg3, int16_t arg4)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    char in_AL;
    uint8_t uVar4;
    int16_t in_CX;
    int16_t in_BX;
    int16_t unaff_BP;
    int16_t unaff_SI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t uVar3;
    
    *(char *)(unaff_BP + unaff_SI) = *(char *)(unaff_BP + unaff_SI) + '\x01';
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + in_AL;
    puVar1 = (uint8_t *)(in_BX + -0x3e);
    uVar2 = *puVar1;
    uVar4 = (uint8_t)((uint16_t)(in_CX + -1) >> 8);
    uVar3 = *puVar1;
    *puVar1 = *puVar1 + uVar4;
    if (!SCARRY1(uVar3, uVar4)) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    if (CARRY1(uVar2, uVar4)) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

