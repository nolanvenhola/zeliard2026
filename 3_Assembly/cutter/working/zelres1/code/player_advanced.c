/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x13 = "uDs9uitBp{t"; // [ascii]
static const char *STR_0x73f = "No Take"; // [ascii]
static const char *STR_0x98f = "&»0×È@vucF"; // [ibm037]
static const char *STR_0xd7d = "X:&F|t"; // [ascii]
static const char *STR_0xd8e = "MMAN.GRP"; // [ascii]
static const char *STR_0xd99 = "CMAN.GRP"; // [ascii]
static const char *STR_0xdd3 = "\"CPAT.GRP"; // [ascii]
static const char *STR_0xdde = "#MPAT.GRP"; // [ascii]
static const char *STR_0xde9 = "$DPAT.GRP"; // [ascii]
static const char *STR_0xe23 = " TMAN.GRP"; // [ascii]
static const char *STR_0xf29 = "KENJPRO.BIN"; // [ascii]
static const char *STR_0xf45 = "DRUGPRO.BIN"; // [ascii]
static const char *STR_0xf53 = "CHURPRO.BIN"; // [ascii]
static const char *STR_0xf61 = "BANKPRO.BIN"; // [ascii]
static const char *STR_0xf6f = "INNAPRO.BIN"; // [ascii]
static const char *STR_0xff2 = "2UGM2.MSD"; // [ascii]
static const char *STR_0x1233 = "t$< t </t"; // [ascii]
static const char *STR_0x1681 = "GAME.BIN"; // [ascii]
static const char *STR_0x168e = "STDPLY.BIN"; // [ascii]
static const char *STR_0x17b2 = "Input name:"; // [ascii]
static const char *STR_0x17be = "Re-Start"; // [ascii]
static const char *STR_0x1832 = "ìÚ{ÚD;ßSKCYh"; // [ibm037]
static const char *STR_0x1913 = "~-@JYJY«8«"; // [ibm037]
static const char *STR_0x1aab = "ßSH;¬Cî&~-@JYJY«8µ;@"; // [ibm037]
static const char *STR_0x1b1c = ";Cî~-@JYJY«8«"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr1_06 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000022) overlaps instruction at (ram,0x00000021)
// 
// WARNING: Control flow encountered bad instruction data
// WARNING: This function may have set the stack pointer
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_06(int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    undefined *puVar3;
    code *pcVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    undefined uVar8;
    int16_t iVar7;
    undefined extraout_AH;
    int16_t in_AX;
    undefined2 in_CX;
    undefined2 in_DX;
    short unsigned int arg3_00;
    uint16_t uVar9;
    int16_t in_BX;
    undefined *puVar10;
    int16_t unaff_BP;
    char *pcVar11;
    char *pcVar12;
    int16_t *piVar13;
    int16_t *unaff_SI;
    undefined *puVar14;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined2 uVar15;
    undefined2 unaff_DS;
    bool bVar16;
    char in_SF;
    char in_OF;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack_28;
    undefined uStack_22;
    undefined uStack_21;
    undefined uStack_20;
    undefined uStack_1f;
    undefined uStack_1e;
    undefined uStack_1d;
    undefined2 uStack_1c;
    int16_t iStack_1a;
    undefined2 uStack_18;
    undefined2 uStack_16;
    int16_t iStack_14;
    int16_t *in_stack_0000fff2;
    int16_t in_stack_0000fff4;
    
    puVar14 = (undefined *)CONCAT11(uStack_1c._1_1_, (undefined)uStack_1c);
    if (in_OF == in_SF) {
        bVar16 = *unaff_SI == *unaff_DI;
        unaff_SI = in_stack_0000fff2;
        unaff_BP = in_stack_0000fff4;
    } else {
        puVar1 = (uint8_t *)(in_BX + (int16_t)unaff_SI);
        uVar6 = *puVar1;
        uVar5 = (uint8_t)in_AX;
        uVar2 = *puVar1;
        *puVar1 = *puVar1 + uVar5;
        bVar16 = *puVar1 == 0;
        uStack_1c = &stack0xffee;
        puVar14 = &stack0xffee;
        puVar10 = &stack0xffee;
        uStack_1e = (undefined)unaff_BP;
        uStack_1d = (undefined)((uint16_t)unaff_BP >> 8);
        uStack_20 = SUB21(unaff_SI, 0);
        uStack_1f = (undefined)((uint16_t)unaff_SI >> 8);
        uStack_22 = SUB21(unaff_DI, 0);
        uStack_21 = (undefined)((uint16_t)unaff_DI >> 8);
        uVar8 = in(in_DX);
        *(undefined *)unaff_DI = uVar8;
        if (SCARRY1(uVar2, uVar5)) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        if (CARRY1(uVar6, uVar5)) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        iStack_1a = in_BX;
        uStack_18 = in_DX;
        uStack_16 = in_CX;
        iStack_14 = in_AX;
        if (bVar16) goto code_r0x00000081;
        if (!bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        if (!bVar16) goto code_r0x00000030;
        uVar15 = unaff_DS;
        uStack_1c = &stack0xffee;
        if (!bVar16) goto code_r0x00000059;
        uVar15 = uStack_28;
        uStack_1c = &stack0xffee;
        if (!CARRY1(uVar6, uVar5)) goto code_r0x00000051;
        if (!bVar16) {
            uStack_1c = &stack0xffee;
            in_AX = func_0x0000ff86();
            goto code_r0x00000081;
        }
        uStack_1c = &stack0xffee;
        if (bVar16) goto code_r0x00000060;
        if (SCARRY1(uVar2, uVar5)) {
            if (SCARRY2((int16_t)&uStack_22, 1) == (int16_t)&uStack_21 < 0) goto code_r0x0000009b;
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        puVar14 = &stack0xffee;
        if (bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
    }
    if (bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    uVar15 = unaff_DS;
    uStack_1c = puVar14;
    if (!bVar16) goto code_r0x00000051;
    *(undefined *)0x7c43 = 0xff;
code_r0x00000030:
    while( true ) {
        uStack_1c = puVar14;
        (**(code **)0x3026)();
        *(undefined2 *)0x1ffe = 0;
        uVar15 = uStack_28;
code_r0x00000051:
        player_func_1();
        *(undefined *)0xe7 = 0;
code_r0x00000059:
        unaff_DS = uVar15;
        if (*(char *)0x49 != '\0') {
code_r0x00000060:
            *(undefined *)0xe8 = 0;
        }
        unaff_CS = 0;
        uVar8 = 0;
        (**(code **)0x2002)();
        pcVar12 = (char *)(*(int16_t *)0xc000 + 1);
        do {
            pcVar11 = pcVar12;
            pcVar12 = pcVar11 + 1;
        } while (*pcVar11 != -1);
        *(char *)0x7c45 = pcVar11[1];
        in_AX = CONCAT11(uVar8, pcVar11[2]);
        *(char *)0x7c46 = pcVar11[2];
        *(undefined *)0x7c44 = 0;
code_r0x00000081:
        if (*(char *)0xe8 == '\0') {
            puVar10 = uStack_1c;
            if (((*(uint8_t *)0x7c45 & 1) != 0) && (*(char *)0x7c43 == '\0')) {
                *(undefined *)0x7c44 = 0xff;
            }
code_r0x0000009b:
            uStack_22 = 0;
            uStack_1c = puVar10;
            player_multiply(in_AX);
            uStack_21 = 0xa1;
            uStack_20 = 0;
            player_func_9();
            unaff_CS = 0;
            uStack_1f = 0xa6;
            uStack_1e = 0;
            in_AX = (**(code **)0x3002)();
            if (*(char *)0x49 == '\0') {
                uStack_1d = (undefined)unaff_DS;
                uStack_1c._0_1_ = (undefined)((uint16_t)unaff_DS >> 8);
                unaff_CS = 0;
                pcVar4 = (code *)swi(0x60);
                in_AX = (*pcVar4)();
            }
        }
        *(undefined2 *)0x1ffe = unaff_CS;
        uVar15 = *(undefined2 *)0x1ffe;
        *(undefined2 *)0x1ffe = 0xc5;
        player_scan_loop(in_AX);
        *(undefined *)0xff1d = 0;
        *(undefined *)0xff1e = 0;
        *(undefined *)0xe4 = 0;
        *(undefined *)0x9f = 0;
        pcVar4 = *(code **)0x2004;
        *(undefined2 *)0x2000 = 0xdf;
        (*pcVar4)();
        (**(code **)0x2004)();
        arg3_00 = 0x481c;
        (**(code **)0x2004)();
        (**(code **)0x2012)();
        player_func_12();
        (**(code **)0x2006)();
        (**(code **)0x2008)();
        uStack_28 = 0x10e;
        (**(code **)0x2014)();
        (**(code **)0x2016)();
        if (*(char *)0x9d != '\0') {
            arg3_00 = 0xaa1c;
            (**(code **)0x2004)();
            uStack_22 = 0x2b;
            uStack_21 = 1;
            (**(code **)0x2018)();
        }
        if (*(char *)0x93 != '\0') {
            arg3_00 = 0xc61c;
            (**(code **)0x2004)();
            uStack_22 = 0x43;
            uStack_21 = 1;
            (**(code **)0x201a)();
        }
        pcVar12 = *(char **)0xc000;
        do {
            pcVar11 = pcVar12;
            pcVar12 = pcVar11 + 1;
        } while (*pcVar12 != -1);
        *(char *)0x7c46 = pcVar11[3];
        (**(code **)0x2010)();
        *(int16_t *)0xff2a = (uint16_t)*(uint8_t *)0x80 * 8 + -0x3fe9;
        uStack_22 = 0x6f;
        uStack_21 = 1;
        iVar7 = player_multiply_2();
        if (*(char *)0xe8 != '\0') {
            *(undefined *)0xe8 = 0;
            uStack_20 = 0x7e;
            uStack_1f = 1;
            player_multiply(iVar7);
            uStack_1e = 0xfc;
            uStack_1d = 0x61;
            uStack_20 = 0xaf;
            uStack_1f = 0x6e;
            uStack_22 = 0x95;
            uStack_21 = 1;
            (*_fcn.0000010c)();
            uStack_20 = 0x9a;
            uStack_1f = 1;
            (**(code **)0x2040)();
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
            *(undefined *)0x7c42 = 0xff;
    // WARNING: Could not recover jumptable at 0x000001a4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)0xa004)();
            return;
        }
        puVar14 = (undefined *)0xe000;
        for (iVar7 = 0xe0; iVar7 != 0; iVar7 = iVar7 + -1) {
            puVar3 = puVar14;
            puVar14 = puVar14 + 1;
            *puVar3 = 0xfe;
        }
        uStack_20 = 0xb8;
        uStack_1f = 1;
        fill_buffer();
        if (*(char *)0x7c44 != '\0') {
            *(undefined2 *)0x7c47 = 0x6781;
            if ((*(uint8_t *)0xc2 & 1) == 0) {
                *(undefined2 *)0x7c47 = 0x67f4;
            }
            iVar7 = 4;
            do {
                uStack_1e = (undefined)iVar7;
                uStack_1d = (undefined)((uint16_t)iVar7 >> 8);
                uStack_20 = 0xdb;
                uStack_1f = 1;
                (**(code **)0x7c47)();
                uStack_22 = 0xde;
                uStack_21 = 1;
                fill_buffer();
                iVar7 = CONCAT11(uStack_1d, uStack_1e) + -1;
            } while (iVar7 != 0);
            uStack_1e = 0xe6;
            uStack_1d = 1;
            (**(code **)0x7c47)();
        }
        *(undefined *)0x7c4b = 0;
        if (*(char *)0x49 != '\0') {
            uStack_1e = (undefined)uVar15;
            uStack_1d = (undefined)((uint16_t)uVar15 >> 8);
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
            uVar15 = CONCAT11(uStack_1d, uStack_1e);
        }
        uStack_1e = 3;
        uStack_1d = 2;
        fill_buffer();
        uStack_1c._0_1_ = 6;
        uStack_1c._1_1_ = 2;
        player_process_loop();
        iStack_1a = 0x209;
        player_func_20();
        uStack_18 = 0x20c;
        iVar7 = player_func_22(arg3_00);
        if (*(char *)0x7c4b == '\0') {
            uStack_16 = 0x216;
            player_func_28(arg3_00, iVar7);
        }
        *(undefined *)0x7c4b = 0;
        iStack_14 = 0x61fc;
        pcVar4 = (code *)swi(0x61);
        uVar6 = (*pcVar4)();
        if (uVar6 != 1) break;
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
        uVar9 = (uint16_t)*(uint8_t *)0x83;
        iVar7 = *(int16_t *)0x80 + uVar9;
        piVar13 = *(int16_t **)0xc009;
        while( true ) {
            if (*piVar13 == -1) {
                return;
            }
            if (((*piVar13 == iVar7 + 4) || (*piVar13 == iVar7 + 5)) || (*piVar13 == iVar7 + 3)) break;
            piVar13 = (int16_t *)((int16_t)piVar13 + 3);
        }
        *(undefined *)0xe7 = 4;
        iStack_14 = 0xe68;
        fill_buffer_2();
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        uVar6 = *(uint8_t *)(unaff_SI + 1);
        if (uVar6 != 0xff) {
            if (uVar6 < 8) {
                *(undefined *)0xff24 = 4;
                (*_fcn.0000010c)();
                (**(code **)0x2040)();
                pcVar4 = (code *)swi(0x60);
                (*pcVar4)();
                *(undefined *)0x7c42 = 0xff;
                (**(code **)0xa000)();
                (**(code **)0x2002)();
                *(undefined *)0x7c42 = 0;
                (**(code **)0x2012)();
                player_func_12();
                uStack0002 = 0xece;
                (**(code **)0x2010)();
                uStack0004 = 0xed1;
                player_func_9();
                uStack0006 = 0xed6;
                (**(code **)0x3002)();
                puVar14 = (undefined *)0xe000;
                for (iVar7 = 0xe0; iVar7 != 0; iVar7 = iVar7 + -1) {
                    puVar3 = puVar14;
                    puVar14 = puVar14 + 1;
                    *puVar3 = 0xfe;
                }
                uStack0008 = 0xee5;
                player_scan_loop(CONCAT11(extraout_AH, 0xfe));
                *(undefined *)0xff1a = 0x28;
                uStack000a = 0xeed;
                player_scan_loop_2();
                *(undefined *)0xff1d = 0;
                *(undefined *)0xff1e = 0;
                *(undefined *)0xe7 = 1;
                pcVar4 = (code *)swi(0x60);
                uStack000c = uVar15;
                (*pcVar4)();
                return;
            }
            iVar7 = (uint16_t)(uint8_t)(uVar6 - 8) * 5 + *(int16_t *)0xc00b;
            *(uint8_t *)0x82 = *(char *)(iVar7 + 2) - 10U & 0x3f;
            *(char *)0xc3 = -(*(uint8_t *)(iVar7 + 3) & 1);
            *(undefined *)0xc4 = *(undefined *)(iVar7 + 4);
            (*_fcn.0000010c)();
            iVar7 = unaff_BP + -0x10;
            if (iVar7 < 0) {
                iVar7 = iVar7 + *(int16_t *)0xc002;
            }
            *(int16_t *)0x80 = iVar7;
            *(undefined *)0x6 = 0xff;
            (**(code **)0x2040)();
    // WARNING: Could not recover jumptable at 0x00001041. Too many branches
    // WARNING: Treating indirect jump as call
            (*_fcn.0000010c)();
            return;
        }
        *(undefined *)0xe7 = 4;
        unaff_SI = (int16_t *)0xf83;
        player_scan_loop_2();
        if ((*(uint8_t *)0x45 & 0x80) == 0) {
            *(undefined *)0x7c5c = 0xff;
            unaff_BP = 0xf97;
            player_copy_buf(0x918, uVar9 & 0xff00);
            *(undefined *)0x7c5c = 0;
            *(uint8_t *)0x45 = *(uint8_t *)0x45 | 0x80;
        }
        *(undefined *)0xff24 = 4;
        *(undefined *)0xc4 = 0x86;
        (*_fcn.0000010c)();
        (*_fcn.0000010c)();
        do {
        } while (*(char *)0xff26 == '\0');
        (*_fcn.0000010c)();
        *(undefined2 *)0x80 = 0x84;
        *(undefined *)0x83 = 0xd;
        (**(code **)0x2040)();
        puVar14 = (undefined *)CONCAT11(uStack_1c._1_1_, (undefined)uStack_1c);
        *(undefined *)0x7c43 = 0xff;
    }
    if ((uVar6 & 0xc) != 4) {
        if ((uVar6 & 0xc) != 8) {
            *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
            *(undefined *)0x7c4b = 0xff;
            return;
        }
        bVar16 = (uint16_t)(uint8_t)(*(char *)0x83 + 6) * 8 + *(int16_t *)0xff2a == 0;
        player_multiply_3();
        if (bVar16) {
            return;
        }
        iVar7 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + 1;
        bVar16 = iVar7 == 0;
        player_multiply_4(iVar7);
        if (!bVar16) {
            return;
        }
        *(char *)0xe7 = *(char *)0xe7 + '\x01';
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
        *(uint8_t *)0xc2 = *(uint8_t *)0xc2 & 0xfe;
        if (0xf < *(uint8_t *)0x83) {
            if (*(int16_t *)0xc002 + -0x23 == *(int16_t *)0x80 + 1) {
                *(char *)0x83 = *(char *)0x83 + '\x01';
                return;
            }
            *(int16_t *)0x80 = *(int16_t *)0x80 + 1;
            *(int16_t *)0xff2a = *(int16_t *)0xff2a + 8;
            (**(code **)0x300a)();
            if (*(char *)0x7c45 == '\x01') {
                (**(code **)0x300c)();
                return;
            }
            return;
        }
        *(char *)0x83 = *(char *)0x83 + '\x01';
        return;
    }
    bVar16 = (uint16_t)(uint8_t)(*(char *)0x83 + 3) * 8 + *(int16_t *)0xff2a == 0;
    player_multiply_3();
    if (bVar16) {
        return;
    }
    iVar7 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + -1;
    bVar16 = iVar7 == 0;
    player_multiply_4(iVar7);
    if (!bVar16) {
        return;
    }
    *(char *)0xe7 = *(char *)0xe7 + '\x01';
    *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
    *(uint8_t *)0xc2 = *(uint8_t *)0xc2 | 1;
    if (10 < *(uint8_t *)0x83) {
        *(char *)0x83 = *(char *)0x83 + -1;
        return;
    }
    if (*(int16_t *)0x80 != 0) {
        *(int16_t *)0x80 = *(int16_t *)0x80 + -1;
        *(int16_t *)0xff2a = *(int16_t *)0xff2a + -8;
        (**(code **)0x3006)();
        if (*(char *)0x7c45 == '\x01') {
            (**(code **)0x3008)();
            return;
        }
        return;
    }
    *(char *)0x83 = *(char *)0x83 + -1;
    return;
}

/* ====================================================================== */
/* 0xdf3: player_func_1 */
/* ====================================================================== */


void player_func_1(void)
{
    (*_fcn.0000010c)();
    (**(code **)0x3026)();
    return;
}

/* ====================================================================== */
/* 0x10c: player_func_2 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x00000022) overlaps instruction at (ram,0x00000021)
// 
// WARNING: Control flow encountered bad instruction data
// WARNING: This function may have set the stack pointer
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_06(int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    undefined *puVar3;
    code *pcVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    undefined uVar8;
    int16_t iVar7;
    undefined extraout_AH;
    int16_t in_AX;
    undefined2 in_CX;
    undefined2 in_DX;
    short unsigned int arg3_00;
    uint16_t uVar9;
    int16_t in_BX;
    undefined *puVar10;
    int16_t unaff_BP;
    char *pcVar11;
    char *pcVar12;
    int16_t *piVar13;
    int16_t *unaff_SI;
    undefined *puVar14;
    int16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined2 uVar15;
    undefined2 unaff_DS;
    bool bVar16;
    char in_SF;
    char in_OF;
    undefined2 uStack0002;
    undefined2 uStack0004;
    undefined2 uStack0006;
    undefined2 uStack0008;
    undefined2 uStack000a;
    undefined2 uStack000c;
    undefined2 uStack_28;
    undefined uStack_22;
    undefined uStack_21;
    undefined uStack_20;
    undefined uStack_1f;
    undefined uStack_1e;
    undefined uStack_1d;
    undefined2 uStack_1c;
    int16_t iStack_1a;
    undefined2 uStack_18;
    undefined2 uStack_16;
    int16_t iStack_14;
    int16_t *in_stack_0000fff2;
    int16_t in_stack_0000fff4;
    
    puVar14 = (undefined *)CONCAT11(uStack_1c._1_1_, (undefined)uStack_1c);
    if (in_OF == in_SF) {
        bVar16 = *unaff_SI == *unaff_DI;
        unaff_SI = in_stack_0000fff2;
        unaff_BP = in_stack_0000fff4;
    } else {
        puVar1 = (uint8_t *)(in_BX + (int16_t)unaff_SI);
        uVar6 = *puVar1;
        uVar5 = (uint8_t)in_AX;
        uVar2 = *puVar1;
        *puVar1 = *puVar1 + uVar5;
        bVar16 = *puVar1 == 0;
        uStack_1c = &stack0xffee;
        puVar14 = &stack0xffee;
        puVar10 = &stack0xffee;
        uStack_1e = (undefined)unaff_BP;
        uStack_1d = (undefined)((uint16_t)unaff_BP >> 8);
        uStack_20 = SUB21(unaff_SI, 0);
        uStack_1f = (undefined)((uint16_t)unaff_SI >> 8);
        uStack_22 = SUB21(unaff_DI, 0);
        uStack_21 = (undefined)((uint16_t)unaff_DI >> 8);
        uVar8 = in(in_DX);
        *(undefined *)unaff_DI = uVar8;
        if (SCARRY1(uVar2, uVar5)) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        if (CARRY1(uVar6, uVar5)) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        iStack_1a = in_BX;
        uStack_18 = in_DX;
        uStack_16 = in_CX;
        iStack_14 = in_AX;
        if (bVar16) goto code_r0x00000081;
        if (!bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        if (!bVar16) goto code_r0x00000030;
        uVar15 = unaff_DS;
        uStack_1c = &stack0xffee;
        if (!bVar16) goto code_r0x00000059;
        uVar15 = uStack_28;
        uStack_1c = &stack0xffee;
        if (!CARRY1(uVar6, uVar5)) goto code_r0x00000051;
        if (!bVar16) {
            uStack_1c = &stack0xffee;
            in_AX = func_0x0000ff86();
            goto code_r0x00000081;
        }
        uStack_1c = &stack0xffee;
        if (bVar16) goto code_r0x00000060;
        if (SCARRY1(uVar2, uVar5)) {
            if (SCARRY2((int16_t)&uStack_22, 1) == (int16_t)&uStack_21 < 0) goto code_r0x0000009b;
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
        puVar14 = &stack0xffee;
        if (bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
            halt_baddata();
        }
    }
    if (bVar16) {
    // WARNING: Bad instruction - Truncating control flow here
        halt_baddata();
    }
    uVar15 = unaff_DS;
    uStack_1c = puVar14;
    if (!bVar16) goto code_r0x00000051;
    *(undefined *)0x7c43 = 0xff;
code_r0x00000030:
    while( true ) {
        uStack_1c = puVar14;
        (**(code **)0x3026)();
        *(undefined2 *)0x1ffe = 0;
        uVar15 = uStack_28;
code_r0x00000051:
        player_func_1();
        *(undefined *)0xe7 = 0;
code_r0x00000059:
        unaff_DS = uVar15;
        if (*(char *)0x49 != '\0') {
code_r0x00000060:
            *(undefined *)0xe8 = 0;
        }
        unaff_CS = 0;
        uVar8 = 0;
        (**(code **)0x2002)();
        pcVar12 = (char *)(*(int16_t *)0xc000 + 1);
        do {
            pcVar11 = pcVar12;
            pcVar12 = pcVar11 + 1;
        } while (*pcVar11 != -1);
        *(char *)0x7c45 = pcVar11[1];
        in_AX = CONCAT11(uVar8, pcVar11[2]);
        *(char *)0x7c46 = pcVar11[2];
        *(undefined *)0x7c44 = 0;
code_r0x00000081:
        if (*(char *)0xe8 == '\0') {
            puVar10 = uStack_1c;
            if (((*(uint8_t *)0x7c45 & 1) != 0) && (*(char *)0x7c43 == '\0')) {
                *(undefined *)0x7c44 = 0xff;
            }
code_r0x0000009b:
            uStack_22 = 0;
            uStack_1c = puVar10;
            player_multiply(in_AX);
            uStack_21 = 0xa1;
            uStack_20 = 0;
            player_func_9();
            unaff_CS = 0;
            uStack_1f = 0xa6;
            uStack_1e = 0;
            in_AX = (**(code **)0x3002)();
            if (*(char *)0x49 == '\0') {
                uStack_1d = (undefined)unaff_DS;
                uStack_1c._0_1_ = (undefined)((uint16_t)unaff_DS >> 8);
                unaff_CS = 0;
                pcVar4 = (code *)swi(0x60);
                in_AX = (*pcVar4)();
            }
        }
        *(undefined2 *)0x1ffe = unaff_CS;
        uVar15 = *(undefined2 *)0x1ffe;
        *(undefined2 *)0x1ffe = 0xc5;
        player_scan_loop(in_AX);
        *(undefined *)0xff1d = 0;
        *(undefined *)0xff1e = 0;
        *(undefined *)0xe4 = 0;
        *(undefined *)0x9f = 0;
        pcVar4 = *(code **)0x2004;
        *(undefined2 *)0x2000 = 0xdf;
        (*pcVar4)();
        (**(code **)0x2004)();
        arg3_00 = 0x481c;
        (**(code **)0x2004)();
        (**(code **)0x2012)();
        player_func_12();
        (**(code **)0x2006)();
        (**(code **)0x2008)();
        uStack_28 = 0x10e;
        (**(code **)0x2014)();
        (**(code **)0x2016)();
        if (*(char *)0x9d != '\0') {
            arg3_00 = 0xaa1c;
            (**(code **)0x2004)();
            uStack_22 = 0x2b;
            uStack_21 = 1;
            (**(code **)0x2018)();
        }
        if (*(char *)0x93 != '\0') {
            arg3_00 = 0xc61c;
            (**(code **)0x2004)();
            uStack_22 = 0x43;
            uStack_21 = 1;
            (**(code **)0x201a)();
        }
        pcVar12 = *(char **)0xc000;
        do {
            pcVar11 = pcVar12;
            pcVar12 = pcVar11 + 1;
        } while (*pcVar12 != -1);
        *(char *)0x7c46 = pcVar11[3];
        (**(code **)0x2010)();
        *(int16_t *)0xff2a = (uint16_t)*(uint8_t *)0x80 * 8 + -0x3fe9;
        uStack_22 = 0x6f;
        uStack_21 = 1;
        iVar7 = player_multiply_2();
        if (*(char *)0xe8 != '\0') {
            *(undefined *)0xe8 = 0;
            uStack_20 = 0x7e;
            uStack_1f = 1;
            player_multiply(iVar7);
            uStack_1e = 0xfc;
            uStack_1d = 0x61;
            uStack_20 = 0xaf;
            uStack_1f = 0x6e;
            uStack_22 = 0x95;
            uStack_21 = 1;
            (*_fcn.0000010c)();
            uStack_20 = 0x9a;
            uStack_1f = 1;
            (**(code **)0x2040)();
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
            *(undefined *)0x7c42 = 0xff;
    // WARNING: Could not recover jumptable at 0x000001a4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)0xa004)();
            return;
        }
        puVar14 = (undefined *)0xe000;
        for (iVar7 = 0xe0; iVar7 != 0; iVar7 = iVar7 + -1) {
            puVar3 = puVar14;
            puVar14 = puVar14 + 1;
            *puVar3 = 0xfe;
        }
        uStack_20 = 0xb8;
        uStack_1f = 1;
        fill_buffer();
        if (*(char *)0x7c44 != '\0') {
            *(undefined2 *)0x7c47 = 0x6781;
            if ((*(uint8_t *)0xc2 & 1) == 0) {
                *(undefined2 *)0x7c47 = 0x67f4;
            }
            iVar7 = 4;
            do {
                uStack_1e = (undefined)iVar7;
                uStack_1d = (undefined)((uint16_t)iVar7 >> 8);
                uStack_20 = 0xdb;
                uStack_1f = 1;
                (**(code **)0x7c47)();
                uStack_22 = 0xde;
                uStack_21 = 1;
                fill_buffer();
                iVar7 = CONCAT11(uStack_1d, uStack_1e) + -1;
            } while (iVar7 != 0);
            uStack_1e = 0xe6;
            uStack_1d = 1;
            (**(code **)0x7c47)();
        }
        *(undefined *)0x7c4b = 0;
        if (*(char *)0x49 != '\0') {
            uStack_1e = (undefined)uVar15;
            uStack_1d = (undefined)((uint16_t)uVar15 >> 8);
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
            uVar15 = CONCAT11(uStack_1d, uStack_1e);
        }
        uStack_1e = 3;
        uStack_1d = 2;
        fill_buffer();
        uStack_1c._0_1_ = 6;
        uStack_1c._1_1_ = 2;
        player_process_loop();
        iStack_1a = 0x209;
        player_func_20();
        uStack_18 = 0x20c;
        iVar7 = player_func_22(arg3_00);
        if (*(char *)0x7c4b == '\0') {
            uStack_16 = 0x216;
            player_func_28(arg3_00, iVar7);
        }
        *(undefined *)0x7c4b = 0;
        iStack_14 = 0x61fc;
        pcVar4 = (code *)swi(0x61);
        uVar6 = (*pcVar4)();
        if (uVar6 != 1) break;
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
        uVar9 = (uint16_t)*(uint8_t *)0x83;
        iVar7 = *(int16_t *)0x80 + uVar9;
        piVar13 = *(int16_t **)0xc009;
        while( true ) {
            if (*piVar13 == -1) {
                return;
            }
            if (((*piVar13 == iVar7 + 4) || (*piVar13 == iVar7 + 5)) || (*piVar13 == iVar7 + 3)) break;
            piVar13 = (int16_t *)((int16_t)piVar13 + 3);
        }
        *(undefined *)0xe7 = 4;
        iStack_14 = 0xe68;
        fill_buffer_2();
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        uVar6 = *(uint8_t *)(unaff_SI + 1);
        if (uVar6 != 0xff) {
            if (uVar6 < 8) {
                *(undefined *)0xff24 = 4;
                (*_fcn.0000010c)();
                (**(code **)0x2040)();
                pcVar4 = (code *)swi(0x60);
                (*pcVar4)();
                *(undefined *)0x7c42 = 0xff;
                (**(code **)0xa000)();
                (**(code **)0x2002)();
                *(undefined *)0x7c42 = 0;
                (**(code **)0x2012)();
                player_func_12();
                uStack0002 = 0xece;
                (**(code **)0x2010)();
                uStack0004 = 0xed1;
                player_func_9();
                uStack0006 = 0xed6;
                (**(code **)0x3002)();
                puVar14 = (undefined *)0xe000;
                for (iVar7 = 0xe0; iVar7 != 0; iVar7 = iVar7 + -1) {
                    puVar3 = puVar14;
                    puVar14 = puVar14 + 1;
                    *puVar3 = 0xfe;
                }
                uStack0008 = 0xee5;
                player_scan_loop(CONCAT11(extraout_AH, 0xfe));
                *(undefined *)0xff1a = 0x28;
                uStack000a = 0xeed;
                player_scan_loop_2();
                *(undefined *)0xff1d = 0;
                *(undefined *)0xff1e = 0;
                *(undefined *)0xe7 = 1;
                pcVar4 = (code *)swi(0x60);
                uStack000c = uVar15;
                (*pcVar4)();
                return;
            }
            iVar7 = (uint16_t)(uint8_t)(uVar6 - 8) * 5 + *(int16_t *)0xc00b;
            *(uint8_t *)0x82 = *(char *)(iVar7 + 2) - 10U & 0x3f;
            *(char *)0xc3 = -(*(uint8_t *)(iVar7 + 3) & 1);
            *(undefined *)0xc4 = *(undefined *)(iVar7 + 4);
            (*_fcn.0000010c)();
            iVar7 = unaff_BP + -0x10;
            if (iVar7 < 0) {
                iVar7 = iVar7 + *(int16_t *)0xc002;
            }
            *(int16_t *)0x80 = iVar7;
            *(undefined *)0x6 = 0xff;
            (**(code **)0x2040)();
    // WARNING: Could not recover jumptable at 0x00001041. Too many branches
    // WARNING: Treating indirect jump as call
            (*_fcn.0000010c)();
            return;
        }
        *(undefined *)0xe7 = 4;
        unaff_SI = (int16_t *)0xf83;
        player_scan_loop_2();
        if ((*(uint8_t *)0x45 & 0x80) == 0) {
            *(undefined *)0x7c5c = 0xff;
            unaff_BP = 0xf97;
            player_copy_buf(0x918, uVar9 & 0xff00);
            *(undefined *)0x7c5c = 0;
            *(uint8_t *)0x45 = *(uint8_t *)0x45 | 0x80;
        }
        *(undefined *)0xff24 = 4;
        *(undefined *)0xc4 = 0x86;
        (*_fcn.0000010c)();
        (*_fcn.0000010c)();
        do {
        } while (*(char *)0xff26 == '\0');
        (*_fcn.0000010c)();
        *(undefined2 *)0x80 = 0x84;
        *(undefined *)0x83 = 0xd;
        (**(code **)0x2040)();
        puVar14 = (undefined *)CONCAT11(uStack_1c._1_1_, (undefined)uStack_1c);
        *(undefined *)0x7c43 = 0xff;
    }
    if ((uVar6 & 0xc) != 4) {
        if ((uVar6 & 0xc) != 8) {
            *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
            *(undefined *)0x7c4b = 0xff;
            return;
        }
        bVar16 = (uint16_t)(uint8_t)(*(char *)0x83 + 6) * 8 + *(int16_t *)0xff2a == 0;
        player_multiply_3();
        if (bVar16) {
            return;
        }
        iVar7 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + 1;
        bVar16 = iVar7 == 0;
        player_multiply_4(iVar7);
        if (!bVar16) {
            return;
        }
        *(char *)0xe7 = *(char *)0xe7 + '\x01';
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
        *(uint8_t *)0xc2 = *(uint8_t *)0xc2 & 0xfe;
        if (0xf < *(uint8_t *)0x83) {
            if (*(int16_t *)0xc002 + -0x23 == *(int16_t *)0x80 + 1) {
                *(char *)0x83 = *(char *)0x83 + '\x01';
                return;
            }
            *(int16_t *)0x80 = *(int16_t *)0x80 + 1;
            *(int16_t *)0xff2a = *(int16_t *)0xff2a + 8;
            (**(code **)0x300a)();
            if (*(char *)0x7c45 == '\x01') {
                (**(code **)0x300c)();
                return;
            }
            return;
        }
        *(char *)0x83 = *(char *)0x83 + '\x01';
        return;
    }
    bVar16 = (uint16_t)(uint8_t)(*(char *)0x83 + 3) * 8 + *(int16_t *)0xff2a == 0;
    player_multiply_3();
    if (bVar16) {
        return;
    }
    iVar7 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + -1;
    bVar16 = iVar7 == 0;
    player_multiply_4(iVar7);
    if (!bVar16) {
        return;
    }
    *(char *)0xe7 = *(char *)0xe7 + '\x01';
    *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
    *(uint8_t *)0xc2 = *(uint8_t *)0xc2 | 1;
    if (10 < *(uint8_t *)0x83) {
        *(char *)0x83 = *(char *)0x83 + -1;
        return;
    }
    if (*(int16_t *)0x80 != 0) {
        *(int16_t *)0x80 = *(int16_t *)0x80 + -1;
        *(int16_t *)0xff2a = *(int16_t *)0xff2a + -8;
        (**(code **)0x3006)();
        if (*(char *)0x7c45 == '\x01') {
            (**(code **)0x3008)();
            return;
        }
        return;
    }
    *(char *)0x83 = *(char *)0x83 + -1;
    return;
}

/* ====================================================================== */
/* 0xab3: player_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_multiply(int16_t arg1)
{
    int16_t unaff_CS;
    undefined2 unaff_DS;
    
    *(int16_t *)0x6aeb = unaff_CS + 0x2000;
    (*_fcn.0000010c)();
    return;
}

/* ====================================================================== */
/* 0xaa6: player_func_9 */
/* ====================================================================== */


void player_func_9(void)
{
    int16_t in_AX;
    undefined2 unaff_DS;
    
    math_calc(in_AX);
    (**(code **)0x6ae9)();
    return;
}

/* ====================================================================== */
/* 0xda2: math_calc */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void math_calc(int16_t arg1)
{
    undefined2 uVar1;
    
    uVar1 = *(undefined2 *)0xff2c;
    (*_fcn.0000010c)();
    *(int16_t *)0x8000 = *(int16_t *)0x8000 + -0x8000;
    *(int16_t *)0x8002 = *(int16_t *)0x8002 + -0x8000;
    *(int16_t *)0x8004 = *(int16_t *)0x8004 + -0x8000;
    // WARNING: Could not recover jumptable at 0x00000dcd. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x3024)();
    return;
}

/* ====================================================================== */
/* 0xaf1: player_scan_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_scan_loop(int16_t arg1)
{
    uint8_t *puVar1;
    undefined *puVar2;
    uint8_t **ppuVar3;
    undefined2 *puVar4;
    undefined2 unaff_DS;
    
    ppuVar3 = (uint8_t **)*(undefined2 *)0xc015;
    while( true ) {
        puVar1 = *ppuVar3;
        if ((uint8_t)((uint8_t)puVar1 & (uint8_t)((uint16_t)puVar1 >> 8)) == 0xff) break;
        puVar4 = (undefined2 *)((int16_t)ppuVar3 + 3);
        if ((*(uint8_t *)(ppuVar3 + 1) & *puVar1) == 0) {
            while (ppuVar3 = (uint8_t **)(puVar4 + 1),
                  (uint8_t)((uint8_t)*puVar4 & (uint8_t)((uint16_t)*puVar4 >> 8)) != 0xff) {
                puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
            }
        } else {
            while( true ) {
                ppuVar3 = (uint8_t **)(puVar4 + 1);
                puVar2 = (undefined *)*puVar4;
                if ((uint8_t)((uint8_t)puVar2 & (uint8_t)((uint16_t)puVar2 >> 8)) == 0xff) break;
                *puVar2 = *(undefined *)ppuVar3;
                puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
            }
        }
    }
    return;
}

/* ====================================================================== */
/* 0xc76: player_func_12 */
/* ====================================================================== */


void player_func_12(void)
{
    (**(code **)0x200e)();
    (**(code **)0x200e)();
    (**(code **)0x200e)();
    (**(code **)0x200e)();
    return;
}

/* ====================================================================== */
/* 0xc2f: player_multiply_2 */
/* ====================================================================== */


void player_multiply_2(void)
{
    undefined uVar1;
    int16_t iVar2;
    int16_t *piVar3;
    undefined2 unaff_DS;
    
    for (piVar3 = *(int16_t **)0xc00f; *piVar3 != -1; piVar3 = piVar3 + 4) {
        iVar2 = *piVar3 * 8;
        uVar1 = *(undefined *)(iVar2 + -0x3fe4);
        *(undefined *)(iVar2 + -0x3fe4) = 0xfd;
        *(undefined *)((int16_t)piVar3 + 3) = uVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x8b0: fill_buffer */
/* ====================================================================== */


void fill_buffer(void)
{
    int16_t arg1;
    undefined2 unaff_DS;
    undefined uVar1;
    
    player_multiply_5();
    arg1 = player_func_47();
    player_multiply_6(arg1);
    (**(code **)0x3004)();
    uVar1 = (char)((uint16_t)*(uint8_t *)0xff33 * 4 >> 8) != '\0';
    do {
        (**(code **)0x110)();
        (**(code **)0x112)();
        (**(code **)0x114)();
        (**(code **)0x116)();
        (**(code **)0x118)();
        (**(code **)0x11e)();
        if ((bool)uVar1) {
            clear_buffer();
        }
        uVar1 = *(uint8_t *)0xff1a < 0xd1;
    } while ((bool)uVar1);
    *(undefined *)0xff1a = 0;
    return;
}

/* ====================================================================== */
/* 0x8f7: player_process_loop */
/* ====================================================================== */


void player_process_loop(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *puVar3;
    undefined2 unaff_DS;
    
    if ((*(uint16_t *)0xff18 & 1) == 0) {
        return;
    }
    *(undefined *)0xff75 = 0xb;
    (**(code **)0x2002)();
    player_func_17();
    (**(code **)0xa002)();
    player_func_17();
    (**(code **)0x2002)();
    player_func_18();
    (**(code **)0x3002)();
    puVar3 = (undefined *)0xe000;
    for (iVar2 = 0xe0; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0xfe;
    }
    player_scan_loop_2();
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    return;
}

/* ====================================================================== */
/* 0x93c: player_func_17 */
/* ====================================================================== */


void player_func_17(void)
{
    undefined2 *puVar1;
    undefined2 uVar2;
    undefined2 uVar3;
    int16_t iVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    undefined2 unaff_DS;
    
    uVar3 = *(undefined2 *)0xff2c;
    puVar6 = (undefined2 *)0xc000;
    iVar4 = 0x800;
    puVar5 = (undefined2 *)0xa000;
    do {
        uVar2 = *puVar6;
        puVar1 = puVar6;
        puVar6 = puVar6 + 1;
        *puVar1 = *puVar5;
        *puVar5 = uVar2;
        iVar4 = iVar4 + -1;
        puVar5 = puVar5 + 1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0xaa9: player_func_18 */
/* ====================================================================== */


void player_func_18(void)
{
    undefined2 unaff_DS;
    
    (**(code **)0x6ae9)();
    return;
}

/* ====================================================================== */
/* 0x8b3: player_scan_loop_2 */
/* ====================================================================== */


void player_scan_loop_2(void)
{
    int16_t arg1;
    undefined2 unaff_DS;
    undefined uVar1;
    
    arg1 = player_func_47();
    player_multiply_6(arg1);
    (**(code **)0x3004)();
    uVar1 = (char)((uint16_t)*(uint8_t *)0xff33 * 4 >> 8) != '\0';
    do {
        (**(code **)0x110)();
        (**(code **)0x112)();
        (**(code **)0x114)();
        (**(code **)0x116)();
        (**(code **)0x118)();
        (**(code **)0x11e)();
        if ((bool)uVar1) {
            clear_buffer();
        }
        uVar1 = *(uint8_t *)0xff1a < 0xd1;
    } while ((bool)uVar1);
    *(undefined *)0xff1a = 0;
    return;
}

/* ====================================================================== */
/* 0xcb9: player_func_20 */
/* ====================================================================== */

// WARNING (jumptable): Unable to track spacebase fully for stack
// WARNING: Unable to track spacebase fully for stack
// WARNING: This function may have set the stack pointer

void player_func_20(undefined2 param_1, int16_t param_2)
{
    undefined *puVar1;
    code *pcVar2;
    uint8_t uVar3;
    undefined uVar6;
    uint16_t uVar4;
    undefined extraout_AH;
    int16_t iVar5;
    short unsigned int arg3;
    undefined2 *puVar7;
    undefined2 *puVar8;
    char *pcVar9;
    char *pcVar10;
    uint8_t *puVar11;
    int16_t *piVar12;
    undefined *puVar13;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    bool bVar14;
    undefined2 uVar15;
    
    if (*(char *)0x83 == -1) {
        fill_buffer_2();
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        for (puVar11 = *(uint8_t **)0xc007; (*puVar11 & 1) == 0; puVar11 = puVar11 + 4) {
        }
        uVar4 = CONCAT11(*puVar11, puVar11[1]) & 0xfeff;
        if ((*puVar11 & 0xfe) != 0) goto code_r0x00000ffc;
        param_1 = 0xce8;
        player_process_loop_2(uVar4);
        *(undefined *)0x83 = 0x1a;
        iVar5 = *(int16_t *)0xc002 + -0x24;
        *(int16_t *)0x80 = iVar5;
    } else {
        if (*(char *)0x83 != '\x1b') {
            return;
        }
        fill_buffer_2();
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        for (puVar11 = *(uint8_t **)0xc007; (*puVar11 & 1) != 0; puVar11 = puVar11 + 4) {
        }
        uVar4 = CONCAT11(*puVar11, puVar11[1]) & 0xfeff;
        if ((*puVar11 & 0xfe) != 0) goto code_r0x00000ffc;
        param_1 = 0xd26;
        iVar5 = player_process_loop_2(uVar4);
        *(undefined *)0x83 = 0;
        *(undefined2 *)0x80 = 0;
    }
    while( true ) {
        *(undefined2 *)0x1ffe = unaff_CS;
        unaff_DS = *(undefined2 *)0x1ffe;
        *(undefined2 *)0x1ffe = 0xc5;
        player_scan_loop(iVar5);
        *(undefined *)0xff1d = 0;
        *(undefined *)0xff1e = 0;
        *(undefined *)0xe4 = 0;
        *(undefined *)0x9f = 0;
        pcVar2 = *(code **)0x2004;
        *(undefined2 *)0x2000 = 0xdf;
        (*pcVar2)();
        (**(code **)0x2004)();
        arg3 = 0x481c;
        (**(code **)0x2004)();
        (**(code **)0x2012)();
        player_func_12();
        (**(code **)0x2006)();
        (**(code **)0x2008)();
        (**(code **)0x2014)();
        (**(code **)0x2016)();
        if (*(char *)0x9d != '\0') {
            arg3 = 0xaa1c;
            (**(code **)0x2004)();
            (**(code **)0x2018)();
        }
        if (*(char *)0x93 != '\0') {
            arg3 = 0xc61c;
            (**(code **)0x2004)();
            (**(code **)0x201a)();
        }
        pcVar10 = *(char **)0xc000;
        do {
            pcVar9 = pcVar10;
            pcVar10 = pcVar9 + 1;
        } while (*pcVar10 != -1);
        *(char *)0x7c46 = pcVar9[3];
        (**(code **)0x2010)();
        *(int16_t *)0xff2a = (uint16_t)*(uint8_t *)0x80 * 8 + -0x3fe9;
        iVar5 = player_multiply_2();
        if (*(char *)0xe8 != '\0') {
            *(undefined *)0xe8 = 0;
            player_multiply(iVar5);
            (*_fcn.0000010c)(0x6eaf, 0x61fc);
            (**(code **)0x2040)();
            pcVar2 = (code *)swi(0x60);
            (*pcVar2)();
            *(undefined *)0x7c42 = 0xff;
    // WARNING: Could not recover jumptable at 0x000001a4. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)0xa004)();
            return;
        }
        puVar13 = (undefined *)0xe000;
        for (iVar5 = 0xe0; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar1 = puVar13;
            puVar13 = puVar13 + 1;
            *puVar1 = 0xfe;
        }
        fill_buffer();
        if (*(char *)0x7c44 != '\0') {
            *(undefined2 *)0x7c47 = 0x6781;
            if ((*(uint8_t *)0xc2 & 1) == 0) {
                *(undefined2 *)0x7c47 = 0x67f4;
            }
            iVar5 = 4;
            do {
                uVar15 = 0x1db;
                (**(code **)0x7c47)();
                fill_buffer(uVar15);
                iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            (**(code **)0x7c47)();
        }
        *(undefined *)0x7c4b = 0;
        if (*(char *)0x49 != '\0') {
            pcVar2 = (code *)swi(0x60);
            (*pcVar2)();
        }
        fill_buffer();
        player_process_loop();
        player_func_20();
        iVar5 = player_func_22(arg3);
        if (*(char *)0x7c4b == '\0') {
            player_func_28(arg3, iVar5);
        }
        *(undefined *)0x7c4b = 0;
        pcVar2 = (code *)swi(0x61);
        uVar3 = (*pcVar2)();
        if (uVar3 != 1) {
            if ((uVar3 & 0xc) != 4) {
                if ((uVar3 & 0xc) != 8) {
                    *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
                    *(undefined *)0x7c4b = 0xff;
                    return;
                }
                bVar14 = (uint16_t)(uint8_t)(*(char *)0x83 + 6) * 8 + *(int16_t *)0xff2a == 0;
                player_multiply_3();
                if (bVar14) {
                    return;
                }
                iVar5 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + 1;
                bVar14 = iVar5 == 0;
                player_multiply_4(iVar5);
                if (!bVar14) {
                    return;
                }
                *(char *)0xe7 = *(char *)0xe7 + '\x01';
                *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
                *(uint8_t *)0xc2 = *(uint8_t *)0xc2 & 0xfe;
                if (0xf < *(uint8_t *)0x83) {
                    if (*(int16_t *)0xc002 + -0x23 == *(int16_t *)0x80 + 1) {
                        *(char *)0x83 = *(char *)0x83 + '\x01';
                        return;
                    }
                    *(int16_t *)0x80 = *(int16_t *)0x80 + 1;
                    *(int16_t *)0xff2a = *(int16_t *)0xff2a + 8;
                    (**(code **)0x300a)();
                    if (*(char *)0x7c45 == '\x01') {
                        (**(code **)0x300c)();
                        return;
                    }
                    return;
                }
                *(char *)0x83 = *(char *)0x83 + '\x01';
                return;
            }
            bVar14 = (uint16_t)(uint8_t)(*(char *)0x83 + 3) * 8 + *(int16_t *)0xff2a == 0;
            player_multiply_3();
            if (bVar14) {
                return;
            }
            iVar5 = (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80 + -1;
            bVar14 = iVar5 == 0;
            player_multiply_4(iVar5);
            if (!bVar14) {
                return;
            }
            *(char *)0xe7 = *(char *)0xe7 + '\x01';
            *(uint8_t *)0xe7 = *(uint8_t *)0xe7 & 3;
            *(uint8_t *)0xc2 = *(uint8_t *)0xc2 | 1;
            if (10 < *(uint8_t *)0x83) {
                *(char *)0x83 = *(char *)0x83 + -1;
                return;
            }
            if (*(int16_t *)0x80 != 0) {
                *(int16_t *)0x80 = *(int16_t *)0x80 + -1;
                *(int16_t *)0xff2a = *(int16_t *)0xff2a + -8;
                (**(code **)0x3006)();
                if (*(char *)0x7c45 == '\x01') {
                    (**(code **)0x3008)();
                    return;
                }
                return;
            }
            *(char *)0x83 = *(char *)0x83 + -1;
            return;
        }
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
        uVar4 = (uint16_t)*(uint8_t *)0x83;
        iVar5 = *(int16_t *)0x80 + uVar4;
        piVar12 = *(int16_t **)0xc009;
        while( true ) {
            if (*piVar12 == -1) {
                return;
            }
            if (((*piVar12 == iVar5 + 4) || (*piVar12 == iVar5 + 5)) || (*piVar12 == iVar5 + 3)) break;
            piVar12 = (int16_t *)((int16_t)piVar12 + 3);
        }
        *(undefined *)0xe7 = 4;
        fill_buffer_2(piVar12);
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        uVar3 = *(uint8_t *)(param_1 + 2);
        if (uVar3 != 0xff) break;
        *(undefined *)0xe7 = 4;
        param_1 = 0xf83;
        player_scan_loop_2();
        if ((*(uint8_t *)0x45 & 0x80) == 0) {
            *(undefined *)0x7c5c = 0xff;
            param_2 = 0xf97;
            player_copy_buf(0x918, uVar4 & 0xff00);
            *(undefined *)0x7c5c = 0;
            *(uint8_t *)0x45 = *(uint8_t *)0x45 | 0x80;
        }
        *(undefined *)0xff24 = 4;
        *(undefined *)0xc4 = 0x86;
        (*_fcn.0000010c)();
        (*_fcn.0000010c)();
        do {
        } while (*(char *)0xff26 == '\0');
        (*_fcn.0000010c)();
        *(undefined2 *)0x80 = 0x84;
        *(undefined *)0x83 = 0xd;
        (**(code **)0x2040)();
        *(undefined *)0x7c43 = 0xff;
        (**(code **)0x3026)();
        *(undefined2 *)0x1ffe = 0;
        uVar15 = *(undefined2 *)0x1ffe;
        *(undefined2 *)0x1ffe = 0x54;
        player_func_1();
        puVar7 = (undefined2 *)0x2000;
        *(undefined *)0xe7 = 0;
        if (*(char *)0x49 != '\0') {
            *(undefined *)0xe8 = 0;
        }
        unaff_CS = 0;
        pcVar2 = *(code **)0x2002;
        *(undefined2 *)0x2000 = 0x6a;
        uVar6 = 0;
        (*pcVar2)();
        pcVar10 = (char *)(*(int16_t *)0xc000 + 1);
        do {
            pcVar9 = pcVar10;
            pcVar10 = pcVar9 + 1;
        } while (*pcVar9 != -1);
        *(char *)0x7c45 = pcVar9[1];
        iVar5 = CONCAT11(uVar6, pcVar9[2]);
        *(char *)0x7c46 = pcVar9[2];
        *(undefined *)0x7c44 = 0;
        if (*(char *)0xe8 == '\0') {
            if (((*(uint8_t *)0x7c45 & 1) != 0) && (*(char *)0x7c43 == '\0')) {
                *(undefined *)0x7c44 = 0xff;
            }
            puVar7[-1] = 0x9e;
            player_multiply(iVar5);
            *puVar7 = 0xa1;
            player_func_9();
            unaff_CS = 0;
            pcVar2 = *(code **)0x3002;
            puVar8 = puVar7 + 1;
            puVar7[1] = 0xa6;
            iVar5 = (*pcVar2)();
            if (*(char *)0x49 == '\0') {
                *(undefined2 *)((int16_t)puVar8 + -2) = uVar15;
                unaff_CS = 0;
                pcVar2 = (code *)swi(0x60);
                iVar5 = (*pcVar2)();
            }
        }
    }
    uVar4 = (uint16_t)(uint8_t)(uVar3 - 8);
    if (uVar3 < 8) {
        *(undefined *)0xff24 = 4;
        (*_fcn.0000010c)();
        (**(code **)0x2040)();
        pcVar2 = (code *)swi(0x60);
        (*pcVar2)();
        *(undefined *)0x7c42 = 0xff;
        (**(code **)0xa000)();
        (**(code **)0x2002)();
        *(undefined *)0x7c42 = 0;
        (**(code **)0x2012)();
        player_func_12();
        (**(code **)0x2010)();
        player_func_9();
        (**(code **)0x3002)();
        puVar13 = (undefined *)0xe000;
        for (iVar5 = 0xe0; iVar5 != 0; iVar5 = iVar5 + -1) {
            puVar1 = puVar13;
            puVar13 = puVar13 + 1;
            *puVar1 = 0xfe;
        }
        player_scan_loop(CONCAT11(extraout_AH, 0xfe));
        *(undefined *)0xff1a = 0x28;
        player_scan_loop_2();
        *(undefined *)0xff1d = 0;
        *(undefined *)0xff1e = 0;
        *(undefined *)0xe7 = 1;
        pcVar2 = (code *)swi(0x60);
        (*pcVar2)();
        return;
    }
code_r0x00000ffc:
    iVar5 = (uVar4 & 0xff) * 5 + *(int16_t *)0xc00b;
    *(uint8_t *)0x82 = *(char *)(iVar5 + 2) - 10U & 0x3f;
    *(char *)0xc3 = -(*(uint8_t *)(iVar5 + 3) & 1);
    *(undefined *)0xc4 = *(undefined *)(iVar5 + 4);
    (*_fcn.0000010c)();
    param_2 = param_2 + -0x10;
    if (param_2 < 0) {
        param_2 = param_2 + *(int16_t *)0xc002;
    }
    *(int16_t *)0x80 = param_2;
    *(undefined *)0x6 = 0xff;
    (**(code **)0x2040)();
    // WARNING: Could not recover jumptable at 0x00001041. Too many branches
    // WARNING: Treating indirect jump as call
    (*_fcn.0000010c)();
    return;
}

/* ====================================================================== */
/* 0x243: player_func_22 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_22(short unsigned int arg3)
{
    undefined uVar1;
    undefined uVar2;
    undefined uVar3;
    int16_t iVar4;
    int16_t iVar5;
    int16_t iVar6;
    int16_t unaff_SI;
    undefined2 unaff_DS;
    undefined2 in_stack_00000002;
    
    if (*(char *)0xff1d == '\0') {
        return;
    }
    *(undefined *)0xff1d = 0;
    iVar4 = (uint16_t)(uint8_t)(*(char *)0x83 + 4U) + *(int16_t *)0x80;
    iVar6 = (uint16_t)(uint8_t)((*(char *)0x83 + 4U) * '\b' + 5) + *(int16_t *)0xff2a;
    uVar3 = (undefined)((uint16_t)in_stack_00000002 >> 8);
    if ((*(uint8_t *)0xc2 & 1) == 0) {
        iVar5 = iVar4 + 1;
        if (((*(char *)(iVar6 + 8) != -3) && (iVar5 = iVar4 + 2, *(char *)(iVar6 + 0x10) != -3)) &&
           (iVar5 = iVar4 + 3, *(char *)(iVar6 + 0x18) != -3)) {
            return;
        }
        player_load_chunk(iVar5);
        if ((*(uint8_t *)(unaff_SI + 6) & 0xc0) != 0) {
            return;
        }
        uVar1 = *(undefined *)(unaff_SI + 2);
        uVar2 = *(undefined *)(unaff_SI + 5);
        *(undefined *)(unaff_SI + 5) = 7;
        *(uint8_t *)(unaff_SI + 2) = *(uint8_t *)(unaff_SI + 2) | 0x80;
        *(uint8_t *)(unaff_SI + 4) = *(uint8_t *)(unaff_SI + 4) | 1;
        player_func_25(CONCAT11(uVar2, uVar1));
        *(undefined *)(unaff_SI + 5) = uVar3;
        *(undefined *)(unaff_SI + 2) = (char)in_stack_00000002;
        return;
    }
    iVar5 = iVar4 + -1;
    if (((*(char *)(iVar6 + -8) != -3) && (iVar5 = iVar4 + -2, *(char *)(iVar6 + -0x10) != -3)) &&
       (iVar5 = iVar4 + -3, *(char *)(iVar6 + -0x18) != -3)) {
        return;
    }
    player_load_chunk(iVar5);
    if ((*(uint8_t *)(unaff_SI + 6) & 0xc0) != 0) {
        return;
    }
    uVar1 = *(undefined *)(unaff_SI + 2);
    uVar2 = *(undefined *)(unaff_SI + 5);
    *(undefined *)(unaff_SI + 5) = 7;
    *(uint8_t *)(unaff_SI + 2) = *(uint8_t *)(unaff_SI + 2) & 0x7f;
    *(uint8_t *)(unaff_SI + 4) = *(uint8_t *)(unaff_SI + 4) | 1;
    player_func_25(CONCAT11(uVar2, uVar1));
    *(undefined *)(unaff_SI + 5) = uVar3;
    *(undefined *)(unaff_SI + 2) = (char)in_stack_00000002;
    return;
}

/* ====================================================================== */
/* 0xa98: player_load_chunk */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_load_chunk(int16_t arg2)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; arg2 != *piVar1; piVar1 = piVar1 + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0x35e: player_func_25 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_25(int16_t arg1)
{
    undefined *puVar1;
    undefined uVar2;
    undefined2 uVar3;
    int16_t iVar4;
    int16_t unaff_SI;
    undefined *puVar5;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    undefined2 uStack0002;
    
    *(uint8_t *)(unaff_SI + 6) = *(uint8_t *)(unaff_SI + 6) & 0x7f;
    uVar2 = *(undefined *)(unaff_SI + 7);
    *(undefined *)0xff1a = 0x28;
    player_scan_loop_2(uVar2);
    *(undefined *)0xff75 = 0x1e;
    uVar3 = 0x718;
    if ((*(uint8_t *)0xc2 & 1) == 0) {
        uVar3 = 0xb18;
    }
    *(undefined2 *)0x7c4c = uVar3;
    (**(code **)0x2026)();
    *(undefined *)0xff1d = 0;
    player_func_26(*(int16_t *)0x7c4c, in_stack_00000000);
    uStack0002 = 0x3a7;
    (**(code **)0x2028)();
    *(undefined *)0xff1d = 0;
    puVar5 = (undefined *)0xe000;
    for (iVar4 = 0xe0; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar1 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar1 = 0xfe;
    }
    *(undefined *)0x7c5c = 0;
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    return;
}

/* ====================================================================== */
/* 0x3c9: player_func_26 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000006a6: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000006a9)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_26(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    uint8_t uVar4;
    char cVar5;
    int16_t iVar6;
    int16_t in_CX;
    undefined uVar8;
    undefined2 uVar7;
    undefined2 *puVar9;
    char *pcVar10;
    uint8_t **ppuVar11;
    undefined2 unaff_DS;
    bool bVar12;
    undefined2 in_stack_00000002;
    uint16_t uVar13;
    
code_r0x000003c9:
    do {
        uVar4 = (uint8_t)in_CX;
        *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
        *(int16_t *)0x7c50 = arg1;
        *(int16_t *)0x7c4e = arg1;
        puVar9 = (undefined2 *)((arg3 & 0xffU) * 2 + *(int16_t *)0xc00d);
        uVar7 = *puVar9;
        *(undefined *)0x7c53 = 0;
        *(undefined *)0x7c54 = 0;
        *(undefined *)0x7c55 = 0;
        *(undefined *)0x7c57 = 0;
        *(undefined2 *)0x7c58 = uVar7;
        player_func_29((int16_t)puVar9);
        *(uint8_t *)0x7c56 = uVar4;
        if (7 < uVar4) {
            uVar4 = 8;
        }
        cVar5 = uVar4 * '\n' + '\x06';
        in_CX = CONCAT11(0x2c, cVar5);
        *(int16_t *)0x7c5a = in_CX;
        *(undefined2 *)0x7c4e =
             CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4e >> 8), 
                      ((char)*(undefined2 *)0x7c4e + ('V' - cVar5)) - ((uint8_t)((uVar4 & 0xfe) * -8 + 0x40) >> 1));
        iVar6 = (**(code **)0x2000)();
code_r0x0000043b:
        cVar5 = **(char **)0x7c58;
        iVar6 = CONCAT11((char)((uint16_t)iVar6 >> 8), cVar5);
        *(char **)0x7c58 = *(char **)0x7c58 + 1;
        if (cVar5 == '/') goto code_r0x000004ea;
        if (cVar5 == -0x7f) {
            in_CX = 0xc19;
            uVar13 = 0x66e;
            iVar6 = (**(code **)0x2000)(CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4c >> 8) * '\x02', 
                                                 (char)*(undefined2 *)0x7c4c) + 0x193f);
            bVar12 = 0xfefc < uVar13;
            *(int16_t *)0xff54 = uVar13 + 0x103;
            player_scan_loop_3(iVar6);
            arg1 = *(int16_t *)0x7c4c;
            arg3 = 0xd;
            if (!bVar12) {
                arg3 = 0xc;
            }
            goto code_r0x000003c9;
        }
        if (cVar5 == -0x7d) {
            *(uint8_t *)0x34 = *(uint8_t *)0x34 | 0x80;
            *(undefined *)0x9a = 0xff;
            player_scan_loop(iVar6);
            goto code_r0x000005a5;
        }
        if (cVar5 == -0x7b) {
            *(undefined *)0x7c5c = 0xff;
            arg3 = 4;
            arg1 = *(int16_t *)0x7c50;
            goto code_r0x000003c9;
        }
        if (cVar5 == -0x79) {
code_r0x000005a5:
            *(undefined *)0xff1d = 0;
            *(undefined *)0xff1e = 0;
            while( true ) {
                player_func_34();
                fill_buffer();
                if (*(char *)0xff1d != '\0') {
                    return;
                }
                if (*(char *)0xff1e != '\0') break;
                if (*(char *)0xff17 == '\0') {
                    while( true ) {
                        player_func_34();
                        fill_buffer();
                        if (*(char *)0xff1d != '\0') {
                            return;
                        }
                        if (*(char *)0xff1e != '\0') break;
                        if (*(char *)0xff17 != '\0') {
                            return;
                        }
                    }
                    return;
                }
            }
            return;
        }
        if (cVar5 != -0x77) {
            if (cVar5 == -0x75) {
                *(uint8_t *)0x4 = *(uint8_t *)0x4 | 0x80;
                ppuVar11 = (uint8_t **)*(undefined2 *)0xc015;
                while( true ) {
                    puVar1 = *ppuVar11;
                    if ((uint8_t)((uint8_t)puVar1 & (uint8_t)((uint16_t)puVar1 >> 8)) == 0xff) break;
                    puVar9 = (undefined2 *)((int16_t)ppuVar11 + 3);
                    if ((*(uint8_t *)(ppuVar11 + 1) & *puVar1) == 0) {
                        while (ppuVar11 = (uint8_t **)(puVar9 + 1),
                              (uint8_t)((uint8_t)*puVar9 & (uint8_t)((uint16_t)*puVar9 >> 8)) != 0xff) {
                            puVar9 = (undefined2 *)((int16_t)puVar9 + 3);
                        }
                    } else {
                        while( true ) {
                            ppuVar11 = (uint8_t **)(puVar9 + 1);
                            puVar2 = (undefined *)*puVar9;
                            if ((uint8_t)((uint8_t)puVar2 & (uint8_t)((uint16_t)puVar2 >> 8)) == 0xff) break;
                            *puVar2 = *(undefined *)ppuVar11;
                            puVar9 = (undefined2 *)((int16_t)puVar9 + 3);
                        }
                    }
                }
                return;
            }
            if (cVar5 == -1) goto code_r0x000005a5;
            uVar8 = (undefined)((uint16_t)*(undefined2 *)0x7c4e >> 8);
            iVar3 = 0x4bb;
            (**(code **)0x2022)(iVar6);
            iVar6 = iVar3;
            uVar13 = (uint16_t)(uint8_t)((char)iVar6 - 0x20);
            cVar5 = *(char *)(uVar13 + 0x7be2);
            in_CX = CONCAT11(uVar8, cVar5);
            *(char *)0x7c53 = *(char *)0x7c53 + cVar5;
            if (((char)iVar6 == ' ') && (iVar6 = player_func_30(uVar13), 0xa7 < (uint16_t)*(uint8_t *)0x7c53 + in_CX)) {
code_r0x000004ea:
                *(undefined *)0x7c53 = 0;
                *(char *)0x7c54 = *(char *)0x7c54 + '\x01';
                if (*(char *)0x7c54 == '\b') {
                    *(char *)0x7c54 = *(char *)0x7c54 + -1;
                    in_CX = 10;
                    do {
                        iVar6 = (**(code **)0x2024)();
                        in_CX = in_CX + -1;
                    } while (in_CX != 0);
                }
                *(char *)0x7c57 = *(char *)0x7c57 + '\x01';
                if ((6 < *(uint8_t *)0x7c57) && (*(char *)0x7c56 != '\b')) {
                    *(char *)0x7c56 = *(char *)0x7c56 + -7;
                    uVar4 = (uint8_t)((uint16_t)*(undefined2 *)0x7c4e >> 8);
                    uVar7 = CONCAT11(uVar4, (char)*(undefined2 *)0x7c4e + 'J');
                    (**(code **)0x2022)((uint16_t)uVar4 * 8 + 0x54, uVar7);
                    *(undefined *)0xff1d = 0;
                    *(undefined *)0xff1e = 0;
                    do {
                        player_func_34(uVar7);
                        fill_buffer();
                        if ((*(char *)0x7c5c == '\0') && (*(char *)0xff1e != '\0')) {
                            return;
                        }
                        uVar7 = in_stack_00000002;
                    } while (*(char *)0xff1d == '\0');
                    in_CX = 0x208;
                    iVar6 = (**(code **)0x2000)();
                    *(undefined *)0xff1d = 0;
                    *(undefined *)0x7c57 = 0;
                    *(undefined *)0xff75 = 0x1d;
                }
            }
            goto code_r0x0000043b;
        }
        in_CX = 0x1219;
        uVar13 = 0x6c6;
        (**(code **)0x2000)(CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4c >> 8) * '\x02', (char)*(undefined2 *)0x7c4c)
                            + 0x1832);
        bVar12 = 0xfdfc < uVar13;
        *(int16_t *)0xff54 = uVar13 + 0x203;
        player_func_37();
        arg1 = *(int16_t *)0x7c4c;
        arg3 = 6;
        if (!bVar12) {
            arg3 = 7;
            if (0x9c3 < *(uint16_t *)0x8b) {
                *(int16_t *)0x8b = *(uint16_t *)0x8b - 0x9c4;
                iVar6 = (**(code **)0x2014)();
                *(uint8_t *)0x34 = *(uint8_t *)0x34 | 0x40;
                for (pcVar10 = (char *)0xa1; *pcVar10 != '\0'; pcVar10 = pcVar10 + 1) {
                }
                *pcVar10 = '\x05';
                player_scan_loop(iVar6);
                arg1 = *(int16_t *)0x7c4c;
                arg3 = 8;
            }
        }
    } while( true );
}

/* ====================================================================== */
/* 0x2f1: player_func_28 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_28(short unsigned int arg3, int16_t arg1)
{
    undefined *puVar1;
    undefined uVar2;
    undefined extraout_AH;
    undefined extraout_AH_00;
    undefined uVar4;
    undefined2 uVar3;
    int16_t iVar5;
    int16_t iVar6;
    int16_t unaff_SI;
    undefined *puVar7;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    undefined2 uStack0004;
    
    iVar5 = (uint16_t)(uint8_t)(*(char *)0x83 + 4U) + *(int16_t *)0x80;
    iVar6 = (uint16_t)(uint8_t)((*(char *)0x83 + 4U) * '\b' + 5) + *(int16_t *)0xff2a;
    if ((*(uint8_t *)0xc2 & 1) == 0) {
        if (*(char *)(iVar6 + 0x10) != -3) {
            return;
        }
        player_load_chunk(iVar5 + 2);
        if ((*(uint8_t *)(unaff_SI + 2) & 0x80) == 0) {
            return;
        }
        if ((*(uint8_t *)(unaff_SI + 6) & 0x80) == 0) {
            return;
        }
        *(uint8_t *)(unaff_SI + 4) = *(uint8_t *)(unaff_SI + 4) | 1;
        *(undefined *)0x7c5c = 0xff;
        uVar4 = extraout_AH;
    } else {
        if (*(char *)(iVar6 + -0x10) != -3) {
            return;
        }
        player_load_chunk(iVar5 + -2);
        if ((*(uint8_t *)(unaff_SI + 2) & 0x80) != 0) {
            return;
        }
        if ((*(uint8_t *)(unaff_SI + 6) & 0x80) == 0) {
            return;
        }
        *(uint8_t *)(unaff_SI + 4) = *(uint8_t *)(unaff_SI + 4) | 1;
        *(undefined *)0x7c5c = 0xff;
        uVar4 = extraout_AH_00;
    }
    *(uint8_t *)(unaff_SI + 6) = *(uint8_t *)(unaff_SI + 6) & 0x7f;
    uVar2 = *(undefined *)(unaff_SI + 7);
    *(undefined *)0xff1a = 0x28;
    player_scan_loop_2(CONCAT11(uVar4, uVar2));
    *(undefined *)0xff75 = 0x1e;
    uVar3 = 0x718;
    if ((*(uint8_t *)0xc2 & 1) == 0) {
        uVar3 = 0xb18;
    }
    *(undefined2 *)0x7c4c = uVar3;
    (**(code **)0x2026)();
    *(undefined *)0xff1d = 0;
    player_func_26(*(int16_t *)0x7c4c, in_stack_00000002);
    uStack0004 = 0x3a7;
    (**(code **)0x2028)();
    *(undefined *)0xff1d = 0;
    puVar7 = (undefined *)0xe000;
    for (iVar5 = 0xe0; iVar5 != 0; iVar5 = iVar5 + -1) {
        puVar1 = puVar7;
        puVar7 = puVar7 + 1;
        *puVar1 = 0xfe;
    }
    *(undefined *)0x7c5c = 0;
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    return;
}

/* ====================================================================== */
/* 0x60d: player_func_29 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_29(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    char *pcVar3;
    char *pcVar4;
    char *pcVar5;
    int16_t extraout_DX;
    char *pcVar6;
    char *unaff_SI;
    undefined2 unaff_DS;
    char *in_stack_00000000;
    
    pcVar3 = (char *)0x0;
    pcVar6 = (char *)0x0;
    while( true ) {
        pcVar4 = pcVar3;
        pcVar1 = unaff_SI + 1;
        cVar2 = *unaff_SI;
        if (cVar2 < '\0') break;
        unaff_SI = pcVar1;
        if (cVar2 == '/') {
            pcVar3 = pcVar4 + 1;
            pcVar6 = (char *)0x0;
        } else {
            pcVar3 = pcVar4;
            pcVar6 = pcVar6 + *(uint8_t *)((uint8_t)(cVar2 - 0x20) + 0x7be2);
            if (cVar2 == ' ') {
                pcVar5 = pcVar4;
                player_func_30((uint16_t)(uint8_t)(cVar2 - 0x20));
                pcVar3 = in_stack_00000000;
                pcVar6 = pcVar1;
                unaff_SI = pcVar4;
                if ((char *)0xa7 < pcVar5 + extraout_DX) {
                    pcVar6 = (char *)0x0;
                    pcVar3 = in_stack_00000000 + 1;
                }
            }
        }
    }
    if (pcVar6 == (char *)0x0) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x5ea: player_func_30 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_30(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    char *unaff_SI;
    undefined2 unaff_DS;
    
    while( true ) {
        pcVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        cVar2 = *pcVar1;
        if (cVar2 < '\0') {
            return;
        }
        if (cVar2 == ' ') break;
        if (cVar2 == '/') {
            return;
        }
    }
    return;
}

/* ====================================================================== */
/* 0x747: player_func_34 */
/* ====================================================================== */


void player_func_34(void)
{
    uint8_t uVar1;
    int16_t iVar2;
    uint16_t uVar3;
    undefined *puVar4;
    undefined *puVar5;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    uVar1 = (char)*(undefined2 *)0x7c4e + (char)*(undefined2 *)0x7c5a;
    if (uVar1 < 0x56) {
        return;
    }
    uVar3 = (uint16_t)((uint8_t)(uVar1 + 0xb2) / 8);
    puVar4 = (undefined *)((uint16_t)(uint8_t)((char)((uint16_t)*(undefined2 *)0x7c4e >> 8) - 6) * 8 + -0x2000);
    do {
        iVar2 = 0x16;
        puVar5 = puVar4;
        do {
            *puVar5 = 0xff;
            puVar5 = puVar5 + 8;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar4 = puVar4 + 1;
        uVar3 = uVar3 - 1;
    } while (uVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x14d7: player_scan_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_scan_loop_3(int16_t arg1)
{
    undefined uVar1;
    undefined uVar2;
    int16_t in_DX;
    char cVar3;
    uint16_t in_BX;
    undefined2 unaff_DS;
    bool bVar4;
    undefined in_stack_00000000;
    undefined2 in_stack_00000002;
    
    uVar2 = *(undefined *)0xff53;
    uVar1 = *(undefined *)0xff56;
    *(undefined *)0xff52 = 2;
    *(undefined *)0xff53 = 2;
    player_func_38(2, in_DX, CONCAT11(uVar2, uVar1));
    *(undefined *)0xff56 = 0;
    bVar4 = false;
    in_BX = in_BX & 0xff00;
    player_check_state(in_BX);
    cVar3 = (char)in_BX;
    if (bVar4) {
        cVar3 = '\x01';
    }
    *(undefined *)0xff56 = in_stack_00000000;
    *(undefined *)0xff52 = (char)in_stack_00000002;
    *(undefined *)0xff53 = (char)((uint16_t)in_stack_00000002 >> 8);
    if (cVar3 == '\0') {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x712: player_func_37 */
/* ====================================================================== */


void player_func_37(void)
{
    int16_t in_AX;
    int16_t in_DX;
    char cVar1;
    uint16_t in_BX;
    undefined2 unaff_DS;
    bool bVar2;
    
    *(undefined *)0xff52 = 2;
    *(undefined *)0xff53 = 2;
    player_func_38(2, in_DX, in_AX);
    *(undefined *)0xff56 = 0;
    bVar2 = false;
    in_BX = in_BX & 0xff00;
    player_check_state(in_BX);
    cVar1 = (char)in_BX;
    if (bVar2) {
        cVar1 = '\x01';
    }
    if (cVar1 == '\0') {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x151e: player_func_38 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_38(int16_t arg4, int16_t arg2, int16_t arg1)
{
    char cVar1;
    
    cVar1 = '\0';
    do {
        (**(code **)0x2038)(cVar1);
        cVar1 = cVar1 + '\x01';
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x1348: player_check_state */
/* ====================================================================== */

// WARNING: Removing unreachable block (ram,0x000013e9)
// WARNING: Removing unreachable block (ram,0x00001469)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_check_state(int16_t arg3)
{
    code *pcVar1;
    int16_t in_AX;
    uint16_t uVar2;
    undefined2 unaff_DS;
    uint8_t in_stack_00000002;
    
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    player_check_state_2(in_AX);
    player_func_41();
    *(undefined *)0xff1a = 0;
    if (*(char *)0xff1e != '\0') {
        return;
    }
    if (*(char *)0xff1d != '\0') {
        *(undefined *)0xff75 = 0x1f;
        return;
    }
    pcVar1 = (code *)swi(0x61);
    uVar2 = (*pcVar1)();
    uVar2 = uVar2 & 0xff03;
    if ((char)uVar2 != '\x01') {
        if ((char)uVar2 != '\x02') {
            return;
        }
        if ((uint8_t)(*(char *)0xff52 - 1U) <= in_stack_00000002) {
            if ((uint8_t)(in_stack_00000002 + *(char *)0xff56 + 1) <= (uint8_t)(*(char *)0xff53 - 1U)) {
                *(char *)0xff56 = *(char *)0xff56 + '\x01';
                (**(code **)0x301a)();
                do {
                    (**(code **)0x3020)();
                    do {
                        player_func_41();
                    } while (*(uint8_t *)0xff1a < 4);
                    *(undefined *)0xff1a = 0;
                } while( true );
            }
            return;
        }
        player_func_43(CONCAT11((char)(uVar2 >> 8), *(char *)0xff52 - 1U));
        return;
    }
    if (in_stack_00000002 != 0) {
        player_func_42(uVar2);
        return;
    }
    if (*(char *)0xff56 != '\0') {
        *(char *)0xff56 = *(char *)0xff56 + -1;
        (**(code **)0x301a)();
        do {
            (**(code **)0x301e)();
            do {
                player_func_41();
            } while (*(uint8_t *)0xff1a < 4);
            *(undefined *)0xff1a = 0;
        } while( true );
    }
    return;
}

/* ====================================================================== */
/* 0x146d: player_check_state_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_check_state_2(int16_t arg1)
{
    // WARNING: Could not recover jumptable at 0x0000147a. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)0x3018)();
    return;
}

/* ====================================================================== */
/* 0x1046: player_func_41 */
/* ====================================================================== */


void player_func_41(void)
{
    undefined2 unaff_DS;
    undefined in_CF;
    
    (**(code **)0x110)();
    (**(code **)0x112)();
    (**(code **)0x11e)();
    if ((bool)in_CF) {
        clear_buffer();
    }
    if (*(char *)0x7c42 == '\0') {
        return;
    }
    (**(code **)0xa002)();
    return;
}

/* ====================================================================== */
/* 0x147f: player_func_42 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_42(int16_t arg1)
{
    int16_t iVar1;
    uint16_t in_BX;
    int16_t iVar2;
    undefined2 unaff_DS;
    int16_t iStackY_6;
    
    iStackY_6 = (in_BX & 0xff) * 10 + *(int16_t *)0xff54 + 0x100;
    iVar1 = 10;
    do {
        *(undefined *)0xff1a = 0;
        iVar2 = iStackY_6 + -1;
        iStackY_6 = 0x149c;
        (**(code **)0x3018)(iVar2);
        do {
            player_func_41();
        } while (*(uint8_t *)0xff1a < 4);
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x14ab: player_func_43 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_func_43(int16_t arg1)
{
    int16_t iVar1;
    uint16_t in_BX;
    int16_t iVar2;
    undefined2 unaff_DS;
    int16_t iStackY_6;
    
    iStackY_6 = (in_BX & 0xff) * 10 + *(int16_t *)0xff54 + 0x100;
    iVar1 = 10;
    do {
        *(undefined *)0xff1a = 0;
        iVar2 = iStackY_6 + 1;
        iStackY_6 = 0x14c8;
        (**(code **)0x3018)(iVar2);
        do {
            player_func_41();
        } while (*(uint8_t *)0xff1a < 4);
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x872: player_multiply_3 */
/* ====================================================================== */


void player_multiply_3(void)
{
    uint8_t in_AL;
    uint16_t uVar1;
    uint8_t *puVar2;
    
    puVar2 = *(uint8_t **)0x8002;
    if (*puVar2 != 0) {
        uVar1 = (uint16_t)*puVar2;
        do {
            puVar2 = puVar2 + 1;
            if (in_AL == *puVar2) {
                return;
            }
            uVar1 = uVar1 - 1;
        } while (uVar1 != 0);
    }
    return;
}

/* ====================================================================== */
/* 0x894: player_multiply_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_multiply_4(int16_t arg3)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    piVar1 = *(int16_t **)0xc00f;
    while( true ) {
        if (*piVar1 == -1) {
            return;
        }
        if ((*piVar1 == arg3) && ((*(uint8_t *)(piVar1 + 3) & 0x40) != 0)) break;
        piVar1 = piVar1 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0xb20: player_multiply_5 */
/* ====================================================================== */


void player_multiply_5(void)
{
    undefined uVar1;
    int16_t iVar2;
    int16_t extraout_DX;
    int16_t *piVar3;
    undefined2 unaff_DS;
    
    fill_buffer_2();
    for (piVar3 = *(int16_t **)0xc00f; *piVar3 != -1; piVar3 = piVar3 + 4) {
        (**(code **)((uint16_t)*(uint8_t *)((int16_t)piVar3 + 5) * 2 + 0x6b41))();
        *piVar3 = extraout_DX;
    }
    for (piVar3 = *(int16_t **)0xc00f; *piVar3 != -1; piVar3 = piVar3 + 4) {
        iVar2 = *piVar3 * 8;
        uVar1 = *(undefined *)(iVar2 + -0x3fe4);
        *(undefined *)(iVar2 + -0x3fe4) = 0xfd;
        *(undefined *)((int16_t)piVar3 + 3) = uVar1;
    }
    return;
}

/* ====================================================================== */
/* 0x979: player_func_47 */
/* ====================================================================== */


void player_func_47(undefined *param_1)
{
    char cVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    char *pcVar4;
    char *extraout_DX;
    char *extraout_DX_00;
    char *arg2;
    char *pcVar5;
    int16_t *piVar6;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    puVar2 = (undefined2 *)((uint16_t)(uint8_t)(*(char *)0x83 + 4) * 8 + 5 + *(int16_t *)0xff2a);
    *(undefined2 *)0x7c74 = *puVar2;
    *(undefined *)0x7c76 = *(undefined *)(puVar2 + 1);
    *(undefined2 *)0x7c77 = puVar2[4];
    *(undefined *)0x7c79 = *(undefined *)(puVar2 + 5);
    pcVar4 = (char *)((uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0x80);
    pcVar5 = (char *)0x7c74;
    iVar3 = 2;
    arg2 = pcVar4;
    do {
        cVar1 = *pcVar5;
        if (cVar1 == -3) {
            player_load_chunk((int16_t)arg2);
            arg2 = extraout_DX;
            for (; cVar1 = pcVar5[3], cVar1 == -3; pcVar5 = pcVar5 + 8) {
                copy_buffer((short unsigned int)arg2);
                arg2 = extraout_DX_00;
            }
        }
        *pcVar4 = cVar1;
        pcVar5 = pcVar4 + 3;
        arg2 = arg2 + 1;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    (**(code **)0x300e)(puVar2);
    *(int16_t *)0x7c49 = in_stack_00000000 + -1;
    *(undefined *)0x7c7a = param_1[-8];
    *(undefined *)0x7c7b = *param_1;
    *(undefined *)0x7c7c = param_1[8];
    piVar6 = *(int16_t **)0xc00f;
    do {
        cVar1 = player_func_51();
        if (cVar1 != '\0') {
            (**(code **)0x3014)();
            (**(code **)0x3010)();
            piVar6 = (int16_t *)0xa05;
        }
        piVar6 = piVar6 + 4;
    } while (*piVar6 != -1);
    (**(code **)0x3012)();
    return;
}

/* ====================================================================== */
/* 0x954: player_multiply_6 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_multiply_6(int16_t arg1)
{
    uint16_t uVar1;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0x1a < *(uint8_t *)0x83) {
        return;
    }
    uVar1 = (uint16_t)(uint8_t)(*(uint8_t *)0x83 * '\b' + 5);
    *(undefined *)(uVar1 + 0xe000) = 0xff;
    *(undefined *)(uVar1 + 0xe001) = 0xff;
    *(undefined *)(uVar1 + 0xe002) = 0xff;
    *(undefined *)(uVar1 + 0xe008) = 0xff;
    *(undefined *)(uVar1 + 0xe009) = 0xff;
    *(undefined *)(uVar1 + 0xe00a) = 0xff;
    return;
}

/* ====================================================================== */
/* 0x1596: clear_buffer */
/* ====================================================================== */


void clear_buffer(void)
{
    char *pcVar1;
    undefined *puVar2;
    char *pcVar3;
    code *pcVar4;
    int16_t iVar5;
    char *pcVar6;
    undefined *puVar7;
    char *pcVar8;
    undefined2 unaff_DS;
    bool bVar9;
    undefined2 uStack000a;
    
    uStack000a = unaff_DS;
    do {
        pcVar4 = (code *)swi(0x60);
        (*pcVar4)();
        (*_fcn.0000010c)();
        *(undefined *)0xff57 = 0;
        fcn.00001699();
        if (*(char *)0x7c64 == '\0') {
            pcVar6 = (char *)0xff6c;
            pcVar8 = (char *)0x7c67;
            iVar5 = 8;
            do {
                pcVar1 = pcVar6;
                pcVar6 = pcVar6 + 1;
                if (*pcVar1 == '\0') break;
                pcVar3 = pcVar8;
                pcVar8 = pcVar8 + 1;
                *pcVar3 = *pcVar1;
                iVar5 = iVar5 + -1;
            } while (iVar5 != 0);
            *pcVar8 = '.';
            pcVar8[1] = 'U';
            pcVar8[2] = 'S';
            pcVar8[3] = 'R';
            pcVar8[4] = '\0';
            *(undefined *)0xff78 = 0xff;
        } else {
            puVar7 = (undefined *)0xff6c;
            for (iVar5 = 8; iVar5 != 0; iVar5 = iVar5 + -1) {
                puVar2 = puVar7;
                puVar7 = puVar7 + 1;
                *puVar2 = 0;
            }
        }
        bVar9 = false;
        (*_fcn.0000010c)();
        *(undefined *)0xff78 = 0;
        if (!bVar9) {
            (*_fcn.0000010c)();
            (**(code **)0x2042)();
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
            pcVar4 = (code *)swi(0x60);
            (*pcVar4)();
    // WARNING: Could not recover jumptable at 0x0000162f. Too many branches
    // WARNING: Treating indirect jump as call
            (**(code **)0x7686)();
            return;
        }
        (**(code **)0x2000)();
        uStack000a = 0;
        (**(code **)0x202a)();
        *(char *)0xff1d = '\0';
        do {
            (**(code **)0x110)();
        } while (*(char *)0xff1d == '\0');
        *(undefined *)0xff1d = 0;
    } while( true );
}

/* ====================================================================== */
/* 0xa9c: copy_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer(short unsigned int arg2)
{
    short unsigned int *unaff_SI;
    undefined2 unaff_DS;
    
    for (; arg2 != *unaff_SI; unaff_SI = unaff_SI + 4) {
    }
    return;
}

/* ====================================================================== */
/* 0xa7b: player_func_51 */
/* ====================================================================== */


undefined player_func_51(void)
{
    int16_t iVar1;
    int16_t iVar2;
    int16_t *unaff_SI;
    char *pcVar3;
    undefined2 unaff_DS;
    
    iVar1 = 3;
    iVar2 = *(int16_t *)0x7c49;
    pcVar3 = (char *)0x7c7a;
    do {
        if (*pcVar3 == -3) {
            if (iVar2 == *unaff_SI) {
                return (char)iVar1;
            }
        }
        pcVar3 = pcVar3 + 1;
        iVar2 = iVar2 + 1;
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return 0;
}

/* ====================================================================== */
/* 0xc52: fill_buffer_2 */
/* ====================================================================== */


void fill_buffer_2(void)
{
    int16_t *piVar1;
    undefined2 unaff_DS;
    
    for (piVar1 = *(int16_t **)0xc00f; *piVar1 != -1; piVar1 = piVar1 + 4) {
        if (*(char *)((int16_t)piVar1 + 3) != -3) {
            *(char *)(*piVar1 * 8 + -0x3fe4) = *(char *)((int16_t)piVar1 + 3);
        }
    }
    return;
}

/* ====================================================================== */
/* 0xd34: player_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_process_loop_2(int16_t arg1)
{
    char cVar1;
    undefined2 *unaff_SI;
    undefined2 unaff_DS;
    undefined2 in_stack_00000002;
    int16_t in_stack_00000004;
    
    *(uint8_t *)0xc4 = (uint8_t)arg1 | 0x80;
    (*_fcn.0000010c)(*unaff_SI);
    (*_fcn.0000010c)();
    (**(code **)0x3026)();
    cVar1 = (char)((uint16_t)in_stack_00000004 >> 8);
    if (cVar1 != *(char *)0x7c46) {
        *(char *)0x7c46 = cVar1;
        math_calc(in_stack_00000004);
    }
    return;
}

/* ====================================================================== */
/* 0x3ce: player_copy_buf */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000006a6: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000006a9)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void player_copy_buf(int16_t arg1, int16_t arg3)
{
    uint8_t *puVar1;
    undefined *puVar2;
    int16_t iVar3;
    uint8_t uVar4;
    char cVar5;
    int16_t iVar6;
    int16_t in_CX;
    undefined uVar8;
    undefined2 uVar7;
    undefined2 *puVar9;
    char *pcVar10;
    uint8_t **ppuVar11;
    undefined2 unaff_DS;
    bool bVar12;
    undefined2 in_stack_00000002;
    uint16_t uVar13;
    
code_r0x000003ce:
    uVar4 = (uint8_t)in_CX;
    *(int16_t *)0x7c50 = arg1;
    *(int16_t *)0x7c4e = arg1;
    puVar9 = (undefined2 *)((arg3 & 0xffU) * 2 + *(int16_t *)0xc00d);
    uVar7 = *puVar9;
    *(undefined *)0x7c53 = 0;
    *(undefined *)0x7c54 = 0;
    *(undefined *)0x7c55 = 0;
    *(undefined *)0x7c57 = 0;
    *(undefined2 *)0x7c58 = uVar7;
    player_func_29((int16_t)puVar9);
    *(uint8_t *)0x7c56 = uVar4;
    if (7 < uVar4) {
        uVar4 = 8;
    }
    cVar5 = uVar4 * '\n' + '\x06';
    in_CX = CONCAT11(0x2c, cVar5);
    *(int16_t *)0x7c5a = in_CX;
    *(undefined2 *)0x7c4e =
         CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4e >> 8), 
                  ((char)*(undefined2 *)0x7c4e + ('V' - cVar5)) - ((uint8_t)((uVar4 & 0xfe) * -8 + 0x40) >> 1));
    iVar6 = (**(code **)0x2000)();
    do {
        cVar5 = **(char **)0x7c58;
        iVar6 = CONCAT11((char)((uint16_t)iVar6 >> 8), cVar5);
        *(char **)0x7c58 = *(char **)0x7c58 + 1;
        if (cVar5 == '/') goto code_r0x000004ea;
        if (cVar5 == -0x7f) {
            in_CX = 0xc19;
            uVar13 = 0x66e;
            iVar6 = (**(code **)0x2000)(CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4c >> 8) * '\x02', 
                                                 (char)*(undefined2 *)0x7c4c) + 0x193f);
            bVar12 = 0xfefc < uVar13;
            *(int16_t *)0xff54 = uVar13 + 0x103;
            player_scan_loop_3(iVar6);
            arg1 = *(int16_t *)0x7c4c;
            arg3 = 0xd;
            if (!bVar12) {
                arg3 = 0xc;
            }
            goto code_r0x000003c9;
        }
        if (cVar5 == -0x7d) {
            *(uint8_t *)0x34 = *(uint8_t *)0x34 | 0x80;
            *(undefined *)0x9a = 0xff;
            player_scan_loop(iVar6);
            goto code_r0x000005a5;
        }
        if (cVar5 == -0x7b) {
            *(undefined *)0x7c5c = 0xff;
            arg3 = 4;
            arg1 = *(int16_t *)0x7c50;
            goto code_r0x000003c9;
        }
        if (cVar5 == -0x79) {
code_r0x000005a5:
            *(undefined *)0xff1d = 0;
            *(undefined *)0xff1e = 0;
            while( true ) {
                player_func_34();
                fill_buffer();
                if (*(char *)0xff1d != '\0') {
                    return;
                }
                if (*(char *)0xff1e != '\0') break;
                if (*(char *)0xff17 == '\0') {
                    while( true ) {
                        player_func_34();
                        fill_buffer();
                        if (*(char *)0xff1d != '\0') {
                            return;
                        }
                        if (*(char *)0xff1e != '\0') break;
                        if (*(char *)0xff17 != '\0') {
                            return;
                        }
                    }
                    return;
                }
            }
            return;
        }
        if (cVar5 == -0x77) break;
        if (cVar5 == -0x75) {
            *(uint8_t *)0x4 = *(uint8_t *)0x4 | 0x80;
            ppuVar11 = (uint8_t **)*(undefined2 *)0xc015;
            while( true ) {
                puVar1 = *ppuVar11;
                if ((uint8_t)((uint8_t)puVar1 & (uint8_t)((uint16_t)puVar1 >> 8)) == 0xff) break;
                puVar9 = (undefined2 *)((int16_t)ppuVar11 + 3);
                if ((*(uint8_t *)(ppuVar11 + 1) & *puVar1) == 0) {
                    while (ppuVar11 = (uint8_t **)(puVar9 + 1),
                          (uint8_t)((uint8_t)*puVar9 & (uint8_t)((uint16_t)*puVar9 >> 8)) != 0xff) {
                        puVar9 = (undefined2 *)((int16_t)puVar9 + 3);
                    }
                } else {
                    while( true ) {
                        ppuVar11 = (uint8_t **)(puVar9 + 1);
                        puVar2 = (undefined *)*puVar9;
                        if ((uint8_t)((uint8_t)puVar2 & (uint8_t)((uint16_t)puVar2 >> 8)) == 0xff) break;
                        *puVar2 = *(undefined *)ppuVar11;
                        puVar9 = (undefined2 *)((int16_t)puVar9 + 3);
                    }
                }
            }
            return;
        }
        if (cVar5 == -1) goto code_r0x000005a5;
        uVar8 = (undefined)((uint16_t)*(undefined2 *)0x7c4e >> 8);
        iVar3 = 0x4bb;
        (**(code **)0x2022)(iVar6);
        iVar6 = iVar3;
        uVar13 = (uint16_t)(uint8_t)((char)iVar6 - 0x20);
        cVar5 = *(char *)(uVar13 + 0x7be2);
        in_CX = CONCAT11(uVar8, cVar5);
        *(char *)0x7c53 = *(char *)0x7c53 + cVar5;
        if (((char)iVar6 == ' ') && (iVar6 = player_func_30(uVar13), 0xa7 < (uint16_t)*(uint8_t *)0x7c53 + in_CX)) {
code_r0x000004ea:
            *(undefined *)0x7c53 = 0;
            *(char *)0x7c54 = *(char *)0x7c54 + '\x01';
            if (*(char *)0x7c54 == '\b') {
                *(char *)0x7c54 = *(char *)0x7c54 + -1;
                in_CX = 10;
                do {
                    iVar6 = (**(code **)0x2024)();
                    in_CX = in_CX + -1;
                } while (in_CX != 0);
            }
            *(char *)0x7c57 = *(char *)0x7c57 + '\x01';
            if ((6 < *(uint8_t *)0x7c57) && (*(char *)0x7c56 != '\b')) {
                *(char *)0x7c56 = *(char *)0x7c56 + -7;
                uVar4 = (uint8_t)((uint16_t)*(undefined2 *)0x7c4e >> 8);
                uVar7 = CONCAT11(uVar4, (char)*(undefined2 *)0x7c4e + 'J');
                (**(code **)0x2022)((uint16_t)uVar4 * 8 + 0x54, uVar7);
                *(undefined *)0xff1d = 0;
                *(undefined *)0xff1e = 0;
                do {
                    player_func_34(uVar7);
                    fill_buffer();
                    if ((*(char *)0x7c5c == '\0') && (*(char *)0xff1e != '\0')) {
                        return;
                    }
                    uVar7 = in_stack_00000002;
                } while (*(char *)0xff1d == '\0');
                in_CX = 0x208;
                iVar6 = (**(code **)0x2000)();
                *(undefined *)0xff1d = 0;
                *(undefined *)0x7c57 = 0;
                *(undefined *)0xff75 = 0x1d;
            }
        }
    } while( true );
    in_CX = 0x1219;
    uVar13 = 0x6c6;
    (**(code **)0x2000)(CONCAT11((char)((uint16_t)*(undefined2 *)0x7c4c >> 8) * '\x02', (char)*(undefined2 *)0x7c4c) +
                        0x1832);
    bVar12 = 0xfdfc < uVar13;
    *(int16_t *)0xff54 = uVar13 + 0x203;
    player_func_37();
    arg1 = *(int16_t *)0x7c4c;
    arg3 = 6;
    if (!bVar12) {
        arg3 = 7;
        if (0x9c3 < *(uint16_t *)0x8b) {
            *(int16_t *)0x8b = *(uint16_t *)0x8b - 0x9c4;
            iVar6 = (**(code **)0x2014)();
            *(uint8_t *)0x34 = *(uint8_t *)0x34 | 0x40;
            for (pcVar10 = (char *)0xa1; *pcVar10 != '\0'; pcVar10 = pcVar10 + 1) {
            }
            *pcVar10 = '\x05';
            player_scan_loop(iVar6);
            arg1 = *(int16_t *)0x7c4c;
            arg3 = 8;
        }
    }
code_r0x000003c9:
    *(uint8_t *)0xe7 = *(uint8_t *)0xe7 | 1;
    goto code_r0x000003ce;
}

/* ====================================================================== */
/* 0x1228: fcn.00001228 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001228(int16_t arg3)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t in_AH;
    int16_t iVar3;
    uint8_t *unaff_SI;
    undefined2 unaff_DS;
    
    iVar3 = 0;
    while( true ) {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar2 = *puVar1;
        if (((((uVar2 == 0) || (uVar2 == 0xff)) || (uVar2 == 0x20)) || ((uVar2 == 0x2f || (uVar2 == 0xd)))) ||
           (uVar2 == 0xc)) break;
        in_AH = uVar2;
        if (0x1f < uVar2) {
            iVar3 = iVar3 + 1;
        }
    }
    if (iVar3 != 1) {
        return;
    }
    if ((in_AH != 0x2e) && (in_AH != 0x2c)) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x116d: fcn.0000116d */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001185: Changing call to branch
// WARNING: Removing unreachable block (ram,0x00001188)
// WARNING: Removing unreachable block (ram,0x0000118e)
// WARNING: Removing unreachable block (ram,0x00001191)

void fcn.0000116d(void)
{
    int16_t in_AX;
    int16_t iVar1;
    int16_t in_BX;
    undefined2 unaff_DS;
    
    *(undefined *)0xff4e = 0;
    *(char *)0x7c52 = *(char *)0x7c52 + '\x01';
    *(char *)0xff4f = *(char *)0xff4f + '\x01';
    if (3 < *(uint8_t *)0x7c52) {
        fcn.0000126d(in_BX, in_AX);
    }
    if (*(uint8_t *)0xff4f < 5) {
        return;
    }
    *(char *)0xff4f = *(char *)0xff4f + -1;
    iVar1 = 10;
    do {
        player_func_41(iVar1);
        iVar1 = 0x11b0;
        (**(code **)0x2024)();
        iVar1 = iVar1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x126d: fcn.0000126d */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000126d(int16_t arg3, int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    char *pcVar3;
    char *pcVar4;
    char *pcVar5;
    char *pcVar6;
    char *pcVar7;
    uint16_t arg3_00;
    char *pcVar8;
    undefined2 unaff_DS;
    char *in_stack_00000000;
    
    pcVar3 = (char *)0x0;
    pcVar7 = (char *)0x0;
    pcVar8 = *(char **)0xff4c;
    do {
        while( true ) {
            pcVar4 = pcVar3;
            pcVar1 = pcVar8 + 1;
            cVar2 = *pcVar8;
            if (cVar2 == '\0') goto code_r0x000012c4;
            pcVar3 = pcVar4;
            if (cVar2 == -1) break;
            if (cVar2 == '\f') goto code_r0x000012c4;
            pcVar8 = pcVar1;
            if (cVar2 == '/') {
                pcVar3 = pcVar4 + 1;
                pcVar7 = (char *)0x0;
            } else if (cVar2 == '\r') {
                pcVar3 = pcVar4 + 1;
                pcVar7 = (char *)0x0;
            } else {
                arg3_00 = (uint16_t)*(uint8_t *)((uint8_t)(cVar2 - 0x20) + 0x7be2);
                pcVar6 = pcVar7 + arg3_00;
                pcVar7 = pcVar6;
                if ((cVar2 == ' ') &&
                   (pcVar5 = pcVar4, fcn.00001228(arg3_00), pcVar3 = in_stack_00000000, pcVar7 = pcVar1, pcVar8 = pcVar4
                   , (char *)0xcf < pcVar6 + (int16_t)pcVar5)) {
                    pcVar7 = (char *)0x0;
                    pcVar3 = in_stack_00000000 + 1;
                }
            }
        }
        pcVar8 = pcVar8 + 2;
    } while (*pcVar1 != -1);
code_r0x000012c4:
    if (pcVar7 != (char *)0x0) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x11c0: fcn.000011c0 */
/* ====================================================================== */


void fcn.000011c0(void)
{
    undefined2 unaff_DS;
    
    (**(code **)0x2022)();
    fcn.000011e3();
    (**(code **)0x2000)();
    *(undefined *)0x7c52 = 0;
    return;
}

/* ====================================================================== */
/* 0x11e3: fcn.000011e3 */
/* ====================================================================== */


void fcn.000011e3(void)
{
    undefined2 unaff_DS;
    
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    do {
        player_func_41();
    } while ((*(uint8_t *)0xff1d | *(uint8_t *)0xff1e) == 0);
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    *(undefined *)0xff75 = 0x1d;
    return;
}

/* ====================================================================== */
/* 0x131b: fcn.0000131b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

unkbyte3 fcn.0000131b(int16_t arg1, int16_t arg4)
{
    uint8_t in_DL;
    char cVar1;
    uint8_t in_BL;
    char *unaff_DI;
    undefined2 unaff_ES;
    bool bVar2;
    
    cVar1 = '\0';
    do {
        bVar2 = in_DL < in_BL;
        in_DL = in_DL - in_BL;
        if (bVar2) {
code_r0x00001331:
            *unaff_DI = cVar1;
            return CONCAT12(in_DL + in_BL, arg1);
        }
        bVar2 = (uint16_t)arg1 < (uint16_t)arg4;
        arg1 = arg1 - arg4;
        if (bVar2) {
            if (in_DL == 0) {
                arg1 = arg1 + arg4;
                goto code_r0x00001331;
            }
            in_DL = in_DL - 1;
        }
        cVar1 = cVar1 + '\x01';
    } while( true );
}

/* ====================================================================== */
/* 0x1339: fcn.00001339 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.00001339(int16_t arg1)
{
    uint32_t uVar1;
    uint16_t in_CX;
    undefined2 in_DX;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    
    uVar1 = CONCAT22(in_DX, arg1) & 0xffffff;
    *unaff_DI = (char)(uVar1 / in_CX);
    return (int16_t)(uVar1 % (uint32_t)in_CX);
}

/* ====================================================================== */
/* 0x1699: fcn.00001699 */
/* ====================================================================== */


void fcn.00001699(void)
{
    char *pcVar1;
    char cVar2;
    undefined2 *puVar3;
    undefined *puVar4;
    undefined *puVar5;
    undefined2 *puVar6;
    uint8_t uVar7;
    int16_t iVar8;
    undefined2 *puVar9;
    char *pcVar10;
    undefined2 *puVar11;
    undefined *puVar12;
    char *pcVar13;
    undefined *puVar14;
    undefined2 unaff_CS;
    
    (**(code **)0x11c)();
    pcVar1 = (char *)0xe000;
    *pcVar1 = *pcVar1 + '\x01';
    if (*pcVar1 == '\0') {
        *(char *)0xe000 = *(char *)0xe000 + -1;
    }
    puVar9 = (undefined2 *)0xe1fd;
    puVar11 = (undefined2 *)0xe1ff;
    for (iVar8 = 0xff; iVar8 != 0; iVar8 = iVar8 + -1) {
        puVar6 = puVar11;
        puVar11 = puVar11 + -1;
        puVar3 = puVar9;
        puVar9 = puVar9 + -1;
        *puVar6 = *puVar3;
    }
    *(undefined2 *)0xe001 = 0x77ba;
    (**(code **)0x2000)();
    (**(code **)0x2000)();
    puVar12 = (undefined *)0x7c67;
    for (iVar8 = 8; iVar8 != 0; iVar8 = iVar8 + -1) {
        puVar4 = puVar12;
        puVar12 = puVar12 + 1;
        *puVar4 = 0x60;
    }
    *puVar12 = 0xff;
    *(undefined *)0x7c5e = 0;
    pcVar10 = (char *)0xff6c;
    pcVar13 = (char *)0x7c67;
    iVar8 = 8;
    do {
        pcVar1 = pcVar10;
        pcVar10 = pcVar10 + 1;
        cVar2 = *pcVar1;
        if (cVar2 == '\0') break;
        *(char *)0x7c5e = *(char *)0x7c5e + '\x01';
        pcVar1 = pcVar13;
        pcVar13 = pcVar13 + 1;
        *pcVar1 = cVar2;
        iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    *(undefined *)0x7c5f = *(undefined *)0x7c5e;
    pcVar10 = (char *)0x7c67;
    iVar8 = 8;
    do {
        pcVar1 = pcVar10;
        pcVar10 = pcVar10 + 1;
        if (*pcVar1 != '`') goto code_r0x00001729;
        iVar8 = iVar8 + -1;
    } while (iVar8 != 0);
    puVar12 = (undefined *)0x77ba;
    puVar14 = (undefined *)0x7c67;
    for (iVar8 = 8; iVar8 != 0; iVar8 = iVar8 + -1) {
        puVar5 = puVar14;
        puVar14 = puVar14 + 1;
        puVar4 = puVar12;
        puVar12 = puVar12 + 1;
        *puVar5 = *puVar4;
    }
code_r0x00001729:
    (**(code **)0x202a)();
    *(undefined2 *)0x7c60 = 0x60;
    *(undefined *)0x7c62 = 0x56;
    *(undefined2 *)0xff54 = 0x343b;
    *(undefined2 *)0xff6a = 10;
    uVar7 = *(uint8_t *)0xe000;
    if (uVar7 == 0) {
    // WARNING: Could not recover jumptable at 0x000017a7. Too many branches
    // WARNING: Treating indirect jump as call
        (*(code *)(uint32_t)*(uint16_t *)0xff00)();
        return;
    }
    if (4 < uVar7) {
        uVar7 = 5;
    }
    if (uVar7 != 0) {
        fcn.0000180b((uint16_t)uVar7, 0);
    }
    *(undefined *)0xff53 = *(undefined *)0xe000;
    *(undefined *)0xff52 = 5;
    fcn.0000183c();
    puVar12 = (undefined *)0xff6c;
    for (iVar8 = 8; iVar8 != 0; iVar8 = iVar8 + -1) {
        puVar4 = puVar12;
        puVar12 = puVar12 + 1;
        *puVar4 = 0;
    }
    if (*(char *)0x7c5f == '\0') {
        return;
    }
    pcVar10 = (char *)0x7c67;
    pcVar13 = (char *)0xff6c;
    while( true ) {
        pcVar1 = pcVar10;
        pcVar10 = pcVar10 + 1;
        cVar2 = *pcVar1;
        if (cVar2 == -1) {
            return;
        }
        if (cVar2 == '`') break;
        pcVar1 = pcVar13;
        pcVar13 = pcVar13 + 1;
        *pcVar1 = cVar2;
    }
    return;
}

/* ====================================================================== */
/* 0x180b: fcn.0000180b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000180b(int16_t arg4, int16_t arg1)
{
    uint16_t uVar1;
    undefined2 unaff_SI;
    undefined2 uVar2;
    
    uVar1 = arg1 & 0xff;
    do {
        (**(code **)0x301a)(uVar1, unaff_SI);
        uVar2 = 0x1832;
        (**(code **)0x301c)();
        uVar1 = CONCAT11((char)((uint16_t)uVar2 >> 8) + '\x01', (char)uVar2 + '\x01');
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

/* ====================================================================== */
/* 0x183c: fcn.0000183c */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001870: Changing call to branch
// WARNING: Possible PIC construction at 0x0000192f: Changing call to branch
// WARNING: Possible PIC construction at 0x00001b7e: Changing call to branch
// WARNING: Possible PIC construction at 0x0000198d: Changing call to branch
// WARNING: Possible PIC construction at 0x000019a7: Changing call to branch
// WARNING: Removing unreachable block (ram,0x00001990)
// WARNING: Removing unreachable block (ram,0x00001996)
// WARNING: Removing unreachable block (ram,0x000019aa)
// WARNING: Removing unreachable block (ram,0x000019b0)
// WARNING: Removing unreachable block (ram,0x00001932)
// WARNING: Removing unreachable block (ram,0x00001873)
// WARNING: Removing unreachable block (ram,0x000018c3)
// WARNING: Removing unreachable block (ram,0x00001935)
// WARNING: Removing unreachable block (ram,0x00001980)
// WARNING: Removing unreachable block (ram,0x0000199c)
// WARNING: Removing unreachable block (ram,0x000019b6)
// WARNING: Removing unreachable block (ram,0x000019be)
// WARNING: Removing unreachable block (ram,0x00001a2f)
// WARNING: Removing unreachable block (ram,0x00001a34)
// WARNING: Removing unreachable block (ram,0x00001a48)
// WARNING: Removing unreachable block (ram,0x00001a61)
// WARNING: Removing unreachable block (ram,0x00001a76)
// WARNING: Removing unreachable block (ram,0x00001a9f)
// WARNING: Removing unreachable block (ram,0x00001aa6)
// WARNING: Removing unreachable block (ram,0x00001aae)
// WARNING: Removing unreachable block (ram,0x00001a53)
// WARNING: Removing unreachable block (ram,0x00001a47)
// WARNING: Removing unreachable block (ram,0x00001a33)
// WARNING: Removing unreachable block (ram,0x000019c4)
// WARNING: Removing unreachable block (ram,0x000019d9)
// WARNING: Removing unreachable block (ram,0x000019e1)
// WARNING: Removing unreachable block (ram,0x000019f6)
// WARNING: Removing unreachable block (ram,0x00001a1d)
// WARNING: Removing unreachable block (ram,0x00001a24)
// WARNING: Removing unreachable block (ram,0x00001a2c)
// WARNING: Removing unreachable block (ram,0x000019e0)
// WARNING: Removing unreachable block (ram,0x000019cb)
// WARNING: Removing unreachable block (ram,0x000019bd)
// WARNING: Removing unreachable block (ram,0x000019a0)
// WARNING: Removing unreachable block (ram,0x00001986)
// WARNING: Removing unreachable block (ram,0x00001940)
// WARNING: Removing unreachable block (ram,0x00001952)
// WARNING: Removing unreachable block (ram,0x00001959)
// WARNING: Removing unreachable block (ram,0x0000196b)
// WARNING: Removing unreachable block (ram,0x0000196f)
// WARNING: Removing unreachable block (ram,0x00001956)
// WARNING: Removing unreachable block (ram,0x00001b48)
// WARNING: Removing unreachable block (ram,0x00001b54)
// WARNING: Removing unreachable block (ram,0x00001b56)
// WARNING: Removing unreachable block (ram,0x00001b6a)
// WARNING: Removing unreachable block (ram,0x00001b6c)
// WARNING: Removing unreachable block (ram,0x00001b73)
// WARNING: Removing unreachable block (ram,0x00001b77)
// WARNING: Removing unreachable block (ram,0x00001951)
// WARNING: Removing unreachable block (ram,0x000018ca)
// WARNING: Removing unreachable block (ram,0x000018e8)
// WARNING: Removing unreachable block (ram,0x000018ea)
// WARNING: Removing unreachable block (ram,0x000018f8)
// WARNING: Removing unreachable block (ram,0x000018fd)
// WARNING: Removing unreachable block (ram,0x00001904)
// WARNING: Removing unreachable block (ram,0x00001881)
// WARNING: Removing unreachable block (ram,0x0000188b)
// WARNING: Removing unreachable block (ram,0x000018b3)
// WARNING: Removing unreachable block (ram,0x0000188e)
// WARNING: Removing unreachable block (ram,0x00001890)
// WARNING: Removing unreachable block (ram,0x0000189a)
// WARNING: Removing unreachable block (ram,0x0000189c)
// WARNING: Removing unreachable block (ram,0x000018a8)
// WARNING: Removing unreachable block (ram,0x000018b1)
// WARNING: Removing unreachable block (ram,0x00001b81)

void fcn.0000183c(void)
{
    uint16_t uVar1;
    char unaff_SI;
    undefined2 unaff_DS;
    
    fcn.000017c7();
    *(undefined *)0xff74 = 0xff;
    *(undefined *)0xff29 = 0;
    *(undefined *)0xff1d = 0;
    *(undefined *)0xff1e = 0;
    *(undefined *)0xff56 = 0;
    *(undefined *)0x7c63 = 0;
    if (*(char *)0xff53 != '\0') {
        (**(code **)0x6014)();
    }
    uVar1 = fcn.00001b1e();
    (**(code **)0x2000)(uVar1 & 0xff00);
    *(char *)0x7c5e = *(char *)0x7c5e + unaff_SI;
    if ((*(uint8_t *)0x7c5e & 0x80) != 0) {
        *(undefined *)0x7c5e = 0;
    }
    if (7 < *(uint8_t *)0x7c5e) {
        *(char *)0x7c5e = *(char *)0x7c5e + -1;
    }
    if (*(uint8_t *)0x7c5f <= *(uint8_t *)0x7c5e) {
        *(uint8_t *)0x7c5e = *(uint8_t *)0x7c5f;
    }
    (**(code **)0x2022)();
    return;
}

/* ====================================================================== */
/* 0x17c7: fcn.000017c7 */
/* ====================================================================== */


void fcn.000017c7(void)
{
    char *pcVar1;
    int16_t iVar2;
    char *pcVar3;
    undefined in_ZF;
    
    *(undefined *)0x7c64 = 0;
    pcVar3 = (char *)0x7c67;
    iVar2 = 8;
    do {
        if (iVar2 == 0) break;
        iVar2 = iVar2 + -1;
        pcVar1 = pcVar3;
        pcVar3 = pcVar3 + 1;
        in_ZF = *pcVar1 == '-';
    } while (!(bool)in_ZF);
    if (!(bool)in_ZF) {
        return;
    }
    *(undefined *)0x7c64 = 0xff;
    *(undefined *)0x7c5e = 0;
    return;
}

/* ====================================================================== */
/* 0x1b1e: fcn.00001b1e */
/* ====================================================================== */


void fcn.00001b1e(void)
{
    (**(code **)0x2000)();
    (**(code **)0x202a)();
    return;
}

/* ====================================================================== */
/* 0x17e9: fcn.000017e9 */
/* ====================================================================== */


void fcn.000017e9(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *puVar3;
    
    if (*(char *)0x7c64 == '\0') {
        return;
    }
    *(undefined *)0x7c64 = 0;
    puVar3 = (undefined *)0x7c67;
    for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = puVar3;
        puVar3 = puVar3 + 1;
        *puVar1 = 0x60;
    }
    *(undefined *)0x7c5f = 0;
    return;
}

