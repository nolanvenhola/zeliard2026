/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x473 = "mscmt.drv"; // [ascii]
static const char *STR_0x7ef = "MTINIT.COM"; // [ascii]
static const char *STR_0x808 = "stick.bin"; // [ascii]
static const char *STR_0x813 = " gmega.bin"; // [ascii]
static const char *STR_0x81f = " gmcga.bin"; // [ascii]
static const char *STR_0x82b = " gmhgc.bin"; // [ascii]
static const char *STR_0x837 = " gmmcga.bin"; // [ascii]
static const char *STR_0x844 = " gmtga.bin"; // [ascii]
static const char *STR_0x851 = "game.bin"; // [ascii]
static const char *STR_0x85c = "stdply.bin"; // [ascii]

/* ====================================================================== */
/* 0x520: zeliad */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zeliad(int16_t arg1)
{
    code *pcVar1;
    char *pcVar2;
    int16_t unaff_ES;
    int16_t unaff_DS;
    undefined2 in_stack_00000002;
    
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    for (pcVar2 = (char *)(unaff_DS + 2); *pcVar2 != '\0'; pcVar2 = pcVar2 + 1) {
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
    }
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    if ((unaff_ES != 2) && (unaff_ES != 5)) {
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
        return;
    }
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    return;
}

/* ====================================================================== */
/* 0x4ef: flush_keyboard */
/* ====================================================================== */


void flush_keyboard(void)
{
    code *pcVar1;
    int16_t arg1;
    uint16_t unaff_DI;
    bool bVar2;
    undefined uVar3;
    
    bVar2 = 0xfffd < unaff_DI;
    pcVar1 = (code *)swi(0x21);
    arg1 = (*pcVar1)();
    if (!bVar2) {
        pcVar1 = (code *)swi(0x21);
        arg1 = (*pcVar1)();
        if (!bVar2) {
            pcVar1 = (code *)swi(0x21);
            arg1 = (*pcVar1)();
            if (!bVar2) {
                return;
            }
        }
    }
    zeliad(arg1);
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    out(0x43, 0x36);
    bVar2 = false;
    uVar3 = 1;
    out(0x40, 0);
    out(0x40, 0);
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    if (bVar2) {
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
    }
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
    do {
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
    } while (!(bool)uVar3);
    return;
}

/* ====================================================================== */
/* 0x0: read_config_line */
/* ====================================================================== */

// WARNING (jumptable): Unable to track spacebase fully for stack
// WARNING: Unable to track spacebase fully for stack
// WARNING: Restarted to delay deadcode elimination for space: ram

void read_config_line(void)
{
    uint8_t *puVar1;
    char *pcVar2;
    undefined *puVar3;
    code *pcVar4;
    uint8_t uVar5;
    int16_t iVar6;
    int16_t iVar7;
    int16_t iVar8;
    uint16_t uVar9;
    undefined2 uVar10;
    uint8_t *puVar11;
    char *pcVar12;
    undefined *puVar13;
    uint8_t *puVar14;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined uVar15;
    bool bVar16;
    undefined4 uVar17;
    undefined2 in_stack_00000036;
    undefined2 in_stack_00000038;
    undefined2 in_stack_0000003a;
    undefined2 in_stack_0000003c;
    undefined2 in_stack_0000003e;
    undefined2 in_stack_00000040;
    undefined2 in_stack_00000042;
    undefined2 in_stack_0000005a;
    
    // [00] -rwx section size 2538 named seg_000
    pcVar4 = (code *)swi(0x21);
    uVar5 = (*pcVar4)();
    uVar15 = uVar5 < 2;
    if ((bool)uVar15) {
        pcVar4 = (code *)swi(0x20);
        (*pcVar4)();
    }
    load_driver_file();
    pcVar4 = (code *)swi(0x21);
    iVar6 = (*pcVar4)();
    if ((bool)uVar15) {
        zeliad(iVar6);
        pcVar4 = (code *)swi(0x21);
        iVar6 = (*pcVar4)();
    }
    ctrl_c_handler(iVar6);
    if (!(bool)uVar15) {
        iVar6 = set_video_mode();
        ctrl_c_handler(iVar6);
        if (!(bool)uVar15) {
            iVar6 = fcn.00000443();
            ctrl_c_handler(iVar6);
            if (!(bool)uVar15) {
                iVar6 = parse_graphics_mode();
                ctrl_c_handler(iVar6);
                if (!(bool)uVar15) {
                    display_file_error();
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    uVar10 = 0x4000;
                    pcVar4 = (code *)swi(0x21);
                    uVar17 = (*pcVar4)();
                    if ((bool)uVar15) {
                        if ((int16_t)uVar17 == 8) {
                            pcVar4 = (code *)swi(0x21);
                            (*pcVar4)();
                            pcVar4 = (code *)swi(0x21);
                            (*pcVar4)();
                        }
                        pcVar4 = (code *)swi(0x21);
                        (*pcVar4)();
                        pcVar4 = (code *)swi(0x21);
                        uVar17 = (*pcVar4)();
                    }
                    *(int16_t *)0x8af = (int16_t)uVar17;
                    fcn.00000385((int16_t)((uint32_t)uVar17 >> 0x10));
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    bVar16 = false;
                    if (*(char *)0x8e8 != '\0') {
                        uVar10 = 0x8c6;
                        pcVar4 = (code *)swi(0x21);
                        *(undefined **)0x8c2 = &stack0x0028;
                        *(undefined2 *)0x8c4 = unaff_SS;
                        iVar6 = (*pcVar4)();
                        if (bVar16) {
                            *(undefined2 *)(*(undefined **)0x8c2 + -2) = 0xbb;
                            zeliad(iVar6);
                            pcVar4 = (code *)swi(0x21);
                            (*pcVar4)();
                        }
                    }
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    *(undefined2 *)0x8b1 = uVar10;
                    *(undefined2 *)0x8b3 = unaff_ES;
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    *(undefined2 *)0x8b5 = uVar10;
                    *(undefined2 *)0x8b7 = unaff_ES;
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    *(undefined2 *)0x8b9 = uVar10;
                    *(undefined2 *)0x8bb = unaff_ES;
                    (*pcVar4)();
                    iVar6 = *(int16_t *)0x8af;
                    *(undefined2 *)0x8bd = uVar10;
                    *(undefined2 *)0x8bf = unaff_ES;
                    *(undefined2 *)0xff00 = 0x2d9;
                    *(undefined2 *)0xff02 = 0;
                    uVar10 = *(undefined2 *)0x8b3;
                    *(undefined2 *)0xff04 = *(undefined2 *)0x8b1;
                    *(undefined2 *)0xff06 = uVar10;
                    uVar10 = *(undefined2 *)0x8b7;
                    *(undefined2 *)0xff79 = *(undefined2 *)0x8b5;
                    *(undefined2 *)0xff7b = uVar10;
                    *(undefined *)0xff16 = 0;
                    *(undefined *)0xff17 = 0;
                    *(undefined2 *)0xff18 = 0;
                    *(undefined *)0xff1d = 0;
                    *(undefined *)0xff1e = 0;
                    *(undefined2 *)0xff1f = 0;
                    *(undefined *)0xff26 = 0xff;
                    *(undefined *)0xff09 = 0xff;
                    *(undefined *)0xff27 = 0;
                    *(undefined *)0xff28 = 0;
                    *(undefined *)0xff0b = 0;
                    *(undefined *)0xff08 = 0;
                    *(undefined *)0xff75 = 0;
                    *(undefined *)0xff33 = 5;
                    *(undefined *)0xff34 = 0;
                    *(undefined *)0xff38 = 0;
                    *(undefined *)0xff39 = 0;
                    *(undefined *)0xff3a = 0;
                    *(undefined *)0xff43 = 0;
                    *(undefined *)0xff3c = 0;
                    *(undefined *)0xff3b = 0;
                    *(undefined *)0xff74 = 0;
                    *(undefined *)0xff40 = 0;
                    *(undefined *)0xff42 = 0;
                    *(undefined *)0xff78 = 0;
                    *(undefined *)0xff0a = *(undefined *)0x8e9;
                    *(char *)0xff15 = *(char *)0x8e8;
                    puVar13 = (undefined *)0xff6c;
                    for (iVar8 = 8; iVar8 != 0; iVar8 = iVar8 + -1) {
                        puVar3 = puVar13;
                        puVar13 = puVar13 + 1;
                        *puVar3 = 0;
                    }
                    puVar11 = (uint8_t *)0x869;
                    puVar14 = (uint8_t *)0xff6c;
                    iVar8 = 8;
                    do {
                        puVar1 = puVar11;
                        puVar11 = puVar11 + 1;
                        uVar5 = *puVar1;
                        if (uVar5 == 0x2e) break;
                        if ((0x60 < uVar5) && (uVar5 < 0x7b)) {
                            uVar5 = uVar5 & 0x5f;
                        }
                        puVar1 = puVar14;
                        puVar14 = puVar14 + 1;
                        *puVar1 = uVar5;
                        iVar8 = iVar8 + -1;
                    } while (iVar8 != 0);
                    *(uint8_t *)0xff14 = *(uint8_t *)0x8e7;
                    *(int16_t *)0xff2c = *(int16_t *)0x8af + 0x1000;
                    in_stack_00000036 = 0x21c;
                    flush_keyboard();
                    in_stack_00000038 = 0x227;
                    flush_keyboard();
                    in_stack_0000003a = 0x232;
                    flush_keyboard();
                    iVar6 = (uint16_t)*(uint8_t *)0x8e7 * 2;
                    in_stack_0000003c = 0x246;
                    flush_keyboard();
                    in_stack_0000003e = 0x255;
                    flush_keyboard();
                    in_stack_00000040 = 0x264;
                    flush_keyboard();
                    in_stack_00000042 = 0;
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    iVar8 = *(int16_t *)0x8af;
                    iVar7 = *(int16_t *)0x8af + 0xff0;
                    *(undefined2 *)0xff0c = 0x100;
                    *(int16_t *)0xff0e = iVar7;
                    *(undefined2 *)0xff10 = 0x1100;
                    *(int16_t *)0xff12 = iVar7;
                    pcVar4 = (code *)swi(0x21);
                    (*pcVar4)();
                    out(0x43, 0x36);
                    out(0x40, 0xb1);
                    out(0x40, 0x13);
                    in_stack_0000005a = 0x2cf;
                    parse_command_line(iVar6);
    // WARNING: Could not recover jumptable at 0x000002d4. Too many branches
    // WARNING: Treating indirect jump as call
                    (*(code *)(uint32_t)*(uint16_t *)0x8ad)();
                    return;
                }
            }
        }
    }
    do {
        pcVar4 = (code *)swi(0x21);
        (*pcVar4)();
        pcVar4 = (code *)swi(0x21);
        (*pcVar4)();
        pcVar4 = (code *)swi(0x21);
        (*pcVar4)();
        pcVar12 = (char *)0x8eb;
        uVar9 = (uint16_t)*(uint8_t *)0x8ea;
        do {
            pcVar2 = pcVar12;
            pcVar12 = pcVar12 + 1;
            if (*pcVar2 == ':') {
                return;
            }
            uVar9 = uVar9 - 1;
        } while (uVar9 != 0);
    } while( true );
}

/* ====================================================================== */
/* 0x47c: parse_graphics_mode */
/* ====================================================================== */


void parse_graphics_mode(void)
{
    undefined *puVar1;
    undefined *puVar2;
    int16_t in_CX;
    uint16_t uVar3;
    undefined *unaff_SI;
    undefined *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    find_colon_in_line();
    uVar3 = in_CX - 1;
    if (0xe < uVar3) {
        uVar3 = 0xf;
    }
    puVar4 = (undefined *)0x89d;
    for (; uVar3 != 0; uVar3 = uVar3 - 1) {
        puVar2 = puVar4;
        puVar4 = puVar4 + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    *puVar4 = 0;
    return;
}

/* ====================================================================== */
/* 0x4da: find_colon_in_line */
/* ====================================================================== */


void find_colon_in_line(void)
{
    char *pcVar1;
    code *pcVar2;
    uint16_t uVar3;
    char *pcVar4;
    undefined2 unaff_CS;
    
    do {
        pcVar4 = (char *)0x8eb;
        uVar3 = (uint16_t)*(uint8_t *)0x8ea;
        do {
            pcVar1 = pcVar4;
            pcVar4 = pcVar4 + 1;
            if (*pcVar1 == ':') {
                return;
            }
            uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
        pcVar2 = (code *)swi(0x21);
        (*pcVar2)();
        pcVar2 = (code *)swi(0x21);
        (*pcVar2)();
        pcVar2 = (code *)swi(0x21);
        (*pcVar2)();
    } while( true );
}

/* ====================================================================== */
/* 0x5f9: load_driver_file */
/* ====================================================================== */


void load_driver_file(void)
{
    char cVar1;
    char cVar2;
    uint16_t uVar3;
    char *pcVar4;
    char *pcVar5;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    if (*(char *)0x80 == '\0') {
        return;
    }
    pcVar5 = (char *)0x869;
    uVar3 = (uint16_t)*(uint8_t *)0x80;
    pcVar4 = (char *)0x81;
    while (*pcVar4 == ' ') {
        pcVar4 = pcVar4 + 1;
        uVar3 = uVar3 - 1;
        if (uVar3 == 0) {
            return;
        }
    }
    cVar2 = '\0';
    do {
        cVar1 = *pcVar4;
        if ((cVar1 != ' ') && (cVar1 != '\r')) {
            cVar2 = -1;
            *pcVar5 = cVar1;
            pcVar5 = pcVar5 + 1;
        }
        pcVar4 = pcVar4 + 1;
        uVar3 = uVar3 - 1;
    } while (uVar3 != 0);
    if (cVar2 == '\0') {
        return;
    }
    *(undefined *)0x8c1 = 0xff;
    *pcVar5 = '.';
    pcVar5[1] = 'U';
    pcVar5[2] = 'S';
    pcVar5[3] = 'R';
    pcVar5[4] = '\0';
    return;
}

/* ====================================================================== */
/* 0x493: display_file_error */
/* ====================================================================== */


void display_file_error(void)
{
    char *pcVar1;
    char *pcVar2;
    code *pcVar3;
    int16_t in_CX;
    int16_t iVar4;
    uint16_t uVar5;
    char *unaff_SI;
    char *pcVar6;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    bool bVar7;
    
    find_colon_in_line();
    bVar7 = in_CX == 3;
    if (bVar7) {
        pcVar6 = (char *)0x4c8;
        iVar4 = 2;
        do {
            if (iVar4 == 0) break;
            iVar4 = iVar4 + -1;
            pcVar2 = pcVar6;
            pcVar6 = pcVar6 + 1;
            pcVar1 = unaff_SI;
            unaff_SI = unaff_SI + 1;
            bVar7 = *pcVar1 == *pcVar2;
        } while (bVar7);
        if (bVar7) {
            *(undefined *)0x8e9 = 0;
            return;
        }
    } else {
        bVar7 = in_CX == 4;
        if (bVar7) {
            pcVar6 = (char *)0x4c5;
            iVar4 = 3;
            do {
                if (iVar4 == 0) break;
                iVar4 = iVar4 + -1;
                pcVar2 = pcVar6;
                pcVar6 = pcVar6 + 1;
                pcVar1 = unaff_SI;
                unaff_SI = unaff_SI + 1;
                bVar7 = *pcVar1 == *pcVar2;
            } while (bVar7);
            if (bVar7) {
                *(undefined *)0x8e9 = 0xff;
                return;
            }
        }
    }
    do {
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar6 = (char *)0x8eb;
        uVar5 = (uint16_t)*(uint8_t *)0x8ea;
        do {
            pcVar1 = pcVar6;
            pcVar6 = pcVar6 + 1;
            if (*pcVar1 == ':') {
                return;
            }
            uVar5 = uVar5 - 1;
        } while (uVar5 != 0);
    } while( true );
}

/* ====================================================================== */
/* 0x3cc: set_video_mode */
/* ====================================================================== */


void set_video_mode(void)
{
    char *pcVar1;
    char *pcVar2;
    code *pcVar3;
    int16_t in_CX;
    int16_t iVar4;
    int16_t iVar5;
    uint16_t uVar6;
    char *unaff_SI;
    char *pcVar7;
    char *pcVar8;
    char *pcVar9;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    bool bVar10;
    
    find_colon_in_line();
    bVar10 = in_CX == 4;
    if (bVar10) {
        pcVar8 = (char *)0x433;
        iVar4 = 4;
        do {
            iVar5 = 3;
            pcVar7 = unaff_SI;
            pcVar9 = pcVar8;
            do {
                if (iVar5 == 0) break;
                iVar5 = iVar5 + -1;
                pcVar2 = pcVar9;
                pcVar9 = pcVar9 + 1;
                pcVar1 = pcVar7;
                pcVar7 = pcVar7 + 1;
                bVar10 = *pcVar1 == *pcVar2;
            } while (bVar10);
            if (bVar10) {
                *(char *)0x8e7 = pcVar8[3];
                return;
            }
            pcVar8 = pcVar8 + 4;
            bVar10 = pcVar8 == (char *)0x0;
            iVar4 = iVar4 + -1;
        } while (iVar4 != 0);
    } else {
        bVar10 = in_CX == 5;
        if (bVar10) {
            pcVar8 = (char *)0x429;
            iVar4 = 2;
            do {
                iVar5 = 4;
                pcVar7 = unaff_SI;
                pcVar9 = pcVar8;
                do {
                    if (iVar5 == 0) break;
                    iVar5 = iVar5 + -1;
                    pcVar2 = pcVar9;
                    pcVar9 = pcVar9 + 1;
                    pcVar1 = pcVar7;
                    pcVar7 = pcVar7 + 1;
                    bVar10 = *pcVar1 == *pcVar2;
                } while (bVar10);
                if (bVar10) {
                    *(char *)0x8e7 = pcVar8[4];
                    return;
                }
                pcVar8 = pcVar8 + 5;
                bVar10 = pcVar8 == (char *)0x0;
                iVar4 = iVar4 + -1;
            } while (iVar4 != 0);
        }
    }
    do {
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar3 = (code *)swi(0x21);
        (*pcVar3)();
        pcVar8 = (char *)0x8eb;
        uVar6 = (uint16_t)*(uint8_t *)0x8ea;
        do {
            pcVar1 = pcVar8;
            pcVar8 = pcVar8 + 1;
            if (*pcVar1 == ':') {
                return;
            }
            uVar6 = uVar6 - 1;
        } while (uVar6 != 0);
    } while( true );
}

/* ====================================================================== */
/* 0x390: ctrl_c_handler */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void ctrl_c_handler(int16_t arg1)
{
    code *pcVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined4 uVar3;
    
    *(undefined *)0x8ea = 0;
    do {
        pcVar1 = (code *)swi(0x21);
        uVar3 = (*pcVar1)();
        puVar2 = (uint8_t *)((uint32_t)uVar3 >> 0x10);
        if ((int16_t)uVar3 == 0) {
            return;
        }
    } while (*puVar2 < 0x20);
    do {
        *(char *)0x8ea = *(char *)0x8ea + '\x01';
        *puVar2 = *puVar2 | 0x20;
        do {
            pcVar1 = (code *)swi(0x21);
            uVar3 = (*pcVar1)();
            puVar2 = (uint8_t *)((uint32_t)uVar3 >> 0x10);
            if ((int16_t)uVar3 == 0) {
                return;
            }
        } while (*puVar2 == 0x20);
    } while (0x1f < *puVar2);
    return;
}

/* ====================================================================== */
/* 0x57a: parse_command_line */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void parse_command_line(int16_t arg3)
{
    // WARNING: Could not recover jumptable at 0x00000583. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x8e7 * 2 + 0x588))();
    return;
}

/* ====================================================================== */
/* 0x385: fcn.00000385 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000385(int16_t arg2)
{
    code *pcVar1;
    undefined in_ZF;
    
    do {
        pcVar1 = (code *)swi(0x21);
        (*pcVar1)();
    } while (!(bool)in_ZF);
    return;
}

/* ====================================================================== */
/* 0x443: fcn.00000443 */
/* ====================================================================== */


void fcn.00000443(void)
{
    undefined *puVar1;
    char *pcVar2;
    undefined *puVar3;
    char *pcVar4;
    int16_t in_CX;
    uint16_t uVar5;
    int16_t iVar6;
    undefined *unaff_SI;
    char *pcVar7;
    undefined *puVar8;
    char *pcVar9;
    undefined2 unaff_DS;
    bool bVar10;
    
    *(undefined *)0x8e8 = 0;
    find_colon_in_line();
    uVar5 = in_CX - 1;
    if (0xe < uVar5) {
        uVar5 = 0xf;
    }
    puVar8 = (undefined *)0x88b;
    for (; uVar5 != 0; uVar5 = uVar5 - 1) {
        puVar3 = puVar8;
        puVar8 = puVar8 + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar3 = *puVar1;
    }
    bVar10 = true;
    *puVar8 = 0;
    pcVar9 = (char *)0x88b;
    pcVar7 = (char *)0x473;
    iVar6 = 9;
    do {
        if (iVar6 == 0) break;
        iVar6 = iVar6 + -1;
        pcVar4 = pcVar9;
        pcVar9 = pcVar9 + 1;
        pcVar2 = pcVar7;
        pcVar7 = pcVar7 + 1;
        bVar10 = *pcVar2 == *pcVar4;
    } while (bVar10);
    if (!bVar10) {
        return;
    }
    *(undefined *)0x8e8 = 0xff;
    return;
}

