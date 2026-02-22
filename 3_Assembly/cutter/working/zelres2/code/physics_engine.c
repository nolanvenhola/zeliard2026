/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x17 = "@d@L9_B"; // [ascii]
static const char *STR_0x1f = "DHE7F\\@"; // [ascii]
static const char *STR_0x59d = "Z_^]FGEBB"; // [ascii]
static const char *STR_0xf45 = "vvvvaF8"; // [ibm037]
static const char *STR_0xf6e = "îvvvv;aG8"; // [ibm037]
static const char *STR_0x1307 = "$!ßSKC½"; // [ibm037]
static const char *STR_0x139e = "aG!µSUC"; // [ibm037]
static const char *STR_0x166d = "U|!µßSOC"; // [ibm037]
static const char *STR_0x175e = "TY]c2/."; // [ascii]
static const char *STR_0x1794 = "4QV[_eg/-"; // [ascii]
static const char *STR_0x17f0 = "mno)&!\"*%!\""; // [ascii]
static const char *STR_0x182a = "muwyo+&)&"; // [ascii]
static const char *STR_0x1847 = "vxz{12/-367<"; // [ascii]

/* ====================================================================== */
/* 0x0: zr2_04 */
/* ====================================================================== */

// WARNING: Unable to track spacebase fully for stack
// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void zr2_04(short unsigned int arg3, short unsigned int arg1, int16_t arg2, int16_t arg4)
{
    char *pcVar1;
    undefined uVar2;
    undefined2 *puVar3;
    uint8_t *puVar4;
    uint8_t uVar5;
    char cVar6;
    undefined extraout_AH;
    undefined2 in_AX;
    int16_t iVar7;
    uint16_t in_CX;
    undefined extraout_DL;
    undefined in_DL;
    char *pcVar8;
    char *pcVar9;
    int16_t iVar10;
    char *pcVar11;
    int16_t in_BX;
    uint8_t *puVar12;
    char *pcVar13;
    char *pcVar14;
    int16_t unaff_SI;
    undefined2 *puVar15;
    char *pcVar16;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar17;
    int16_t iStack0002;
    int16_t in_stack_00000004;
    undefined2 uStack0006;
    char *in_stack_0000000c;
    char *in_stack_00000010;
    int16_t in_stack_00000012;
    char *in_stack_00000014;
    char *in_stack_00000016;
    undefined2 uStack_2;
    
    arg2 = CONCAT11(0x22, in_DL);
    uVar5 = (uint8_t)in_AX;
    *(char *)(in_BX + unaff_SI) = *(char *)(in_BX + unaff_SI) + uVar5;
    cVar6 = in(0x44);
    if ((POPCOUNT((uint16_t)
                  (uint8_t)(cVar6 + (char)(CONCAT11((char)((uint16_t)in_AX >> 8), uVar5 - 0x30) + -0x2cc1 +
                                           (uint16_t)(uVar5 < 0x30) >> 8) * '?')) & 1U) != 0) {
        pcVar1 = (char *)(in_BX + unaff_SI + 0x65);
        *pcVar1 = *pcVar1 + '\x01';
        *(char *)(unaff_SI + 0x49) = *(char *)(unaff_SI + 0x49) + '\x01';
        uVar2 = in(arg2 + -1);
        *(undefined *)(unaff_DI + 2) = uVar2;
        *(uint16_t *)(in_BX + 0xe) = *(uint16_t *)(in_BX + 0xe) ^ in_CX;
        puVar15 = (undefined2 *)0x5016;
        for (arg2 = 0x80; arg2 != 0; arg2 = arg2 + -1) {
            puVar3 = puVar15;
            puVar15 = puVar15 + 1;
            *puVar3 = 0;
        }
        *(char *)0x4ff7 = *(char *)0x4ff7 + '\x01';
        *(undefined2 *)0x4fe4 = 0x4fd;
        unaff_ES = uStack_2;
    }
    arg2 = *(int16_t *)0xff31;
    physics_func_1();
    iVar10 = 0;
    if ((*(uint8_t *)(arg2 + -0x21) & 0x80) != 0) {
        physics_multiply(0);
    }
    iVar7 = 6;
    puVar4 = (uint8_t *)(arg2 + -0x20);
    do {
        puVar12 = puVar4;
        iStack0002 = iVar7;
        if ((*puVar12 & 0x80) != 0) {
            physics_process_loop(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[1] & 0x80) != 0) {
            iStack0002 = 0x71;
            physics_process_loop(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[2] & 0x80) != 0) {
            iStack0002 = 0x7b;
            physics_process_loop(iVar10);
        }
        iVar10 = iVar10 + 1;
        if ((puVar12[3] & 0x80) != 0) {
            iStack0002 = 0x85;
            physics_process_loop(iVar10);
        }
        iVar10 = iVar10 + 1;
        iVar7 = in_stack_00000004 + -1;
        puVar4 = puVar12 + 4;
    } while (iVar7 != 0);
    if ((puVar12[4] & 0x80) != 0) {
        physics_process_loop(iVar10);
    }
    iVar10 = iVar10 + 1;
    if ((puVar12[5] & 0x80) != 0) {
        uStack0006 = 0x9c;
        physics_process_loop(iVar10);
    }
    iVar10 = iVar10 + 1;
    if ((puVar12[6] & 0x80) != 0) {
        uStack0006 = 0xa6;
        physics_process_loop(iVar10);
    }
    if ((puVar12[7] & 0x80) != 0) {
        uStack0006 = 0xaf;
        physics_scan_loop();
    }
    pcVar13 = *(char **)0xff31;
    pcVar16 = (char *)0xe900;
    *(undefined *)0x4fea = 0x12;
    do {
        uStack0006 = 0xbe;
        copy_buffer(iVar10);
        iVar10 = 0;
        pcVar8 = pcVar13 + 4;
        if (pcVar13[3] < '\0') {
            physics_func_21(0);
        }
        do {
            pcVar11 = pcVar16;
            pcVar14 = pcVar8;
            if (*pcVar14 != *pcVar11) {
                physics_multiply_5(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[1] != pcVar11[1]) {
                physics_multiply_5(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[2] != pcVar11[2]) {
                physics_multiply_5(iVar10);
            }
            iVar10 = iVar10 + 1;
            if (pcVar14[3] != pcVar11[3]) {
                physics_multiply_5(iVar10);
            }
            iVar10 = iVar10 + 1;
            pcVar8 = pcVar14 + 4;
            pcVar16 = pcVar11 + 4;
        } while (in_stack_0000000c != (char *)0x1);
        if (pcVar14[4] != pcVar11[4]) {
            in_stack_0000000c = (char *)0xf4;
            physics_multiply_5(iVar10);
        }
        iVar10 = iVar10 + 1;
        if (pcVar14[5] != pcVar11[5]) {
            physics_multiply_5(iVar10);
        }
        iVar10 = iVar10 + 1;
        if (pcVar14[6] != pcVar11[6]) {
            physics_multiply_5(iVar10);
        }
        iVar10 = iVar10 + 1;
        pcVar13 = pcVar14 + 8;
        pcVar16 = pcVar11 + 8;
        if (pcVar14[7] < '\0') {
            arg2 = 0x5009;
            LOCK();
            cVar6 = pcVar11[7];
            pcVar11[7] = -2;
            UNLOCK();
            *(char *)0x5009 = cVar6;
            LOCK();
            cVar6 = pcVar11[0x23];
            pcVar11[0x23] = -1;
            UNLOCK();
            *(char *)0x500a = cVar6;
            cVar6 = pcVar14[7];
            pcVar14 = pcVar14 + 0x2c;
            uStack0006 = 0x50b;
            physics_func_3();
            cVar6 = physics_func_5((int16_t)pcVar13, (int16_t)pcVar16, arg2, CONCAT11(extraout_AH, cVar6));
            pcVar9 = (char *)CONCAT11(extraout_DL, cVar6);
            pcVar8 = (char *)((int16_t)pcVar16 * 2 + *(int16_t *)0x4fe4);
            pcVar11 = pcVar9;
            in_stack_0000000c = pcVar16;
            if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                uVar17 = CONCAT22(pcVar8, CONCAT11(*pcVar14, cVar6));
                pcVar16 = pcVar9;
                if (cVar6 < '\0') {
                    uStack0006 = 0x53a;
                    uVar17 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar17, (int16_t)((uint32_t)uVar17 >> 0x10), (int16_t)pcVar16);
                pcVar8 = pcVar9;
                pcVar11 = in_stack_00000010;
                pcVar14 = pcVar13;
                in_stack_0000000c = pcVar9;
            }
            pcVar9 = pcVar8 + 0x40b4;
            if ((char *)0x5fff < pcVar9) {
                pcVar9 = pcVar8 + -0x1ef2;
            }
            iVar10 = in_stack_00000012;
            pcVar13 = in_stack_00000016;
            pcVar16 = in_stack_00000014;
            if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                uVar17 = CONCAT22(pcVar9, CONCAT11(pcVar14[2], (char)((uint16_t)pcVar11 >> 8)));
                if ((int16_t)pcVar11 < 0) {
                    uVar17 = physics_func_4();
                }
                in_stack_00000010 = (char *)0x574;
                physics_multiply_2((int16_t)uVar17, (int16_t)((uint32_t)uVar17 >> 0x10), (int16_t)pcVar11);
            }
        } else if (pcVar14[7] != pcVar11[7]) {
            physics_multiply_5(iVar10);
        }
        pcVar13 = pcVar13 + 4;
        physics_func_3();
        *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
        if (0x5fff < *(uint16_t *)0x4fe4) {
            *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
        }
        pcVar1 = (char *)0x4fea;
        *pcVar1 = *pcVar1 + -1;
    } while (*pcVar1 != '\0');
    return;
}

/* ====================================================================== */
/* 0x1540: physics_func_1 */
/* ====================================================================== */


void physics_func_1(void)
{
    uint16_t unaff_SI;
    
    if (0xdfff < unaff_SI) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x327: physics_multiply */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void physics_multiply(int16_t arg3)
{
    undefined extraout_AH;
    undefined uVar1;
    undefined uVar2;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t in_stack_00000002;
    
    if (*(char *)0xe900 == -1) {
        return;
    }
    if (*(char *)0xe900 == -4) {
        return;
    }
    *(undefined *)0xe900 = 0xff;
    uVar2 = *unaff_SI;
    physics_func_3(arg3);
    uVar1 = extraout_AH;
    if ((char)unaff_SI[0x25] < '\0') {
        uVar1 = 0;
        physics_func_4();
    }
    physics_func_5(in_stack_00000002, in_stack_00000000, arg3, CONCAT11(uVar1, uVar2));
    physics_multiply_2(CONCAT11(unaff_SI[0x28], (char)in_stack_00000000), 0x4fd, arg3);
    return;
}

/* ====================================================================== */
/* 0x1534: physics_func_3 */
/* ====================================================================== */


void physics_func_3(void)
{
    uint16_t unaff_SI;
    
    if (unaff_SI < 0xe900) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x6d8: physics_func_4 */
/* ====================================================================== */


undefined physics_func_4(void)
{
    uint8_t in_AL;
    
    return *(undefined *)(uint32_t)((in_AL & 0x7f) + 0xed20);
}

/* ====================================================================== */
/* 0x6df: physics_func_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

undefined2 physics_func_5(int16_t arg_6h, int16_t arg_4h, int16_t arg3, int16_t arg1)
{
    undefined uVar1;
    uint8_t uVar2;
    char cVar3;
    int16_t iVar4;
    char *pcVar5;
    int16_t iVar6;
    undefined2 unaff_DS;
    
    uVar2 = (uint8_t)arg1 & 0x7f;
    uVar1 = *(undefined *)(uVar2 + 0xed20);
    iVar4 = (uint16_t)uVar2 * 0x10 + *(int16_t *)0xc010;
    iVar6 = -0x5f90;
    if ((*(uint8_t *)(iVar4 + 5) & 0x80) == 0) {
        iVar6 = -0x5fd0;
    }
    pcVar5 = (char *)((uint16_t)(*(uint8_t *)(iVar4 + 6) & 0xf) * 5 +
                     *(int16_t *)((uint16_t)(uint8_t)((*(uint8_t *)(iVar4 + 4) & 0x1f) * '\x02') + iVar6));
    cVar3 = *pcVar5;
    if ((*(char *)0xff34 == '\0') && ((*(uint8_t *)(iVar4 + 5) & 0x20) != 0)) {
        cVar3 = cVar3 + '\x03';
    }
    *(char *)0x4fed = cVar3;
    return CONCAT11((char)((uint16_t)pcVar5 >> 8), uVar1);
}

/* ====================================================================== */
/* 0x5a7: physics_multiply_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_multiply_2(int16_t arg1, int16_t arg2, int16_t arg3)
{
    char cVar1;
    uint8_t uVar2;
    undefined2 unaff_DS;
    
    uVar2 = *(uint8_t *)0x4fed;
    cVar1 = (char)arg1;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar2 = uVar2 | 0x80;
    }
    *(undefined2 *)0x4fe2 = *(undefined2 *)((uint16_t)(uVar2 & 0x7f) * 2 + 0x4f86);
    if (-1 < (char)uVar2) {
        physics_func_32(arg2);
        physics_multiply_4();
        return;
    }
    physics_func_35(CONCAT11((char)((uint16_t)*(undefined2 *)0x4fe2 >> 8), cVar1));
    physics_multiply_4();
    return;
}

/* ====================================================================== */
/* 0x364: physics_process_loop */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void physics_process_loop(int16_t arg3)
{
    undefined2 uVar1;
    undefined uVar2;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t in_stack_00000002;
    
    LOCK();
    uVar2 = *(undefined *)(arg3 + -0x1700);
    *(undefined *)(arg3 + -0x1700) = 0xff;
    UNLOCK();
    *(undefined *)0x5009 = uVar2;
    *(undefined *)0x500a = 0;
    *(undefined *)(arg3 + -0x16ff) = 0xff;
    uVar2 = *unaff_SI;
    physics_func_3(arg3);
    uVar1 = *(undefined2 *)(unaff_SI + 0x24);
    *(undefined2 *)0x500d = uVar1;
    physics_func_5(in_stack_00000002, in_stack_00000000, 0x500d, CONCAT11((char)((uint16_t)uVar1 >> 8), uVar2));
    extract_bits();
    return;
}

/* ====================================================================== */
/* 0x57a: extract_bits */
/* ====================================================================== */


void extract_bits(void)
{
    int16_t arg1;
    int16_t in_DX;
    int16_t in_BX;
    char *unaff_BP;
    undefined *unaff_SI;
    char *unaff_DI;
    undefined2 unaff_DS;
    undefined4 uVar1;
    
    if ((*unaff_BP != -1) && (*unaff_BP != -4)) {
        arg1 = CONCAT11(*unaff_SI, *unaff_DI);
        if (*unaff_DI < '\0') {
            uVar1 = physics_func_4(0x57d);
            in_DX = (int16_t)((uint32_t)uVar1 >> 0x10);
            arg1 = (int16_t)uVar1;
        }
        physics_multiply_2(arg1, in_DX, in_BX);
    }
    return;
}

/* ====================================================================== */
/* 0x3a8: physics_scan_loop */
/* ====================================================================== */

// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void physics_scan_loop(undefined2 param_1, int16_t param_2, int16_t param_3)
{
    char cVar1;
    undefined extraout_AH;
    undefined uVar2;
    undefined uVar3;
    uint8_t uVar4;
    int16_t in_BX;
    undefined *unaff_SI;
    undefined2 unaff_DS;
    
    if (*(char *)0xe91b == -1) {
        return;
    }
    if (*(char *)0xe91b == -4) {
        return;
    }
    *(undefined *)0xe91b = 0xff;
    uVar3 = *unaff_SI;
    physics_func_3();
    uVar2 = extraout_AH;
    if ((char)unaff_SI[0x24] < '\0') {
        uVar2 = 0;
        physics_func_4();
    }
    physics_func_5(param_3, param_2, in_BX, CONCAT11(uVar2, uVar3));
    cVar1 = (char)param_2;
    uVar4 = *(uint8_t *)0x4fed;
    if ((cVar1 != '\0') && (-1 < cVar1)) {
        uVar4 = uVar4 | 0x80;
    }
    *(undefined2 *)0x4fe2 = *(undefined2 *)((uint16_t)(uVar4 & 0x7f) * 2 + 0x4f86);
    if (-1 < (char)uVar4) {
        physics_func_32();
        physics_multiply_4();
        return;
    }
    physics_func_35(CONCAT11((char)((uint16_t)*(undefined2 *)0x4fe2 >> 8), cVar1));
    physics_multiply_4();
    return;
}

/* ====================================================================== */
/* 0xd9e: copy_buffer */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00000db7: Changing call to branch
// WARNING: Unknown calling convention -- yet parameter storage is locked

void copy_buffer(int16_t arg3)
{
    uint8_t *puVar1;
    uint16_t *puVar2;
    undefined2 uVar3;
    uint8_t uVar4;
    uint8_t uVar5;
    undefined2 in_AX;
    undefined2 in_CX;
    int16_t iVar6;
    int16_t iVar7;
    int16_t iVar8;
    uint8_t *puVar9;
    uint16_t *puVar10;
    uint16_t *puVar11;
    uint16_t *puVar12;
    uint16_t *puVar13;
    uint16_t uVar14;
    undefined2 unaff_DS;
    
    uVar4 = 0x12 - *(char *)0x4fea;
    if (*(char *)0xff43 == '\0') {
        if ((uint8_t)(*(char *)0x84 - 2U) != uVar4) {
            return;
        }
    } else {
        uVar5 = *(char *)0x84 - 5;
        if (uVar4 < uVar5) {
            return;
        }
        if (uVar4 != uVar5) {
            uVar5 = *(char *)0x84 + 5;
            if (uVar5 != uVar4) {
                return;
            }
            if (*(char *)0xff43 != '\0') {
                *(undefined *)0xff44 = 0xff;
                physics_multiply_3(CONCAT11((char)((uint16_t)in_AX >> 8), uVar5), 
                             CONCAT11((char)((uint16_t)in_CX >> 8), uVar4));
                physics_check_state();
                uVar3 = *(undefined2 *)0xff2c;
                iVar7 = 4;
                puVar9 = *(uint8_t **)0x4ff1;
                puVar11 = *(uint16_t **)0x4fef;
                do {
                    iVar8 = 4;
                    puVar12 = puVar11;
                    do {
                        puVar1 = puVar9;
                        puVar9 = puVar9 + 1;
                        if (*puVar1 == 0xff) {
                            puVar13 = puVar12 + 0x205a;
                            if ((uint16_t *)0x5fff < puVar13) {
                                puVar13 = puVar12 + -0xf79;
                            }
                        } else {
                            puVar10 = (uint16_t *)((uint16_t)*puVar1 * 0x10 + *(int16_t *)0xb000);
                            iVar6 = 8;
                            do {
                                puVar2 = puVar10;
                                puVar10 = puVar10 + 1;
                                uVar14 = *puVar2;
                                *puVar12 = *puVar12 | uVar14;
                                puVar13 = puVar12 + 0x1000;
                                if ((uint16_t *)0x5fff < puVar13) {
                                    *puVar13 = *puVar13 | uVar14;
                                    puVar13 = puVar12 + -0x1fd3;
                                }
                                iVar6 = iVar6 + -1;
                                puVar12 = puVar13;
                            } while (iVar6 != 0);
                        }
                        iVar8 = iVar8 + -1;
                        puVar12 = puVar13;
                    } while (iVar8 != 0);
                    puVar11 = puVar11 + 1;
                    iVar7 = iVar7 + -1;
                } while (iVar7 != 0);
                return;
            }
            return;
        }
        fill_buffer(arg3);
    }
    if (*(char *)0xff37 == '\0') {
        *(undefined *)0xff37 = 0xff;
        iVar7 = 3;
        uVar14 = *(uint16_t *)0x4fe6;
        do {
            iVar8 = 3;
            do {
                iVar6 = iVar8;
                physics_multiply_4(uVar14, iVar8, iVar7, arg3);
                uVar14 = iVar6 + 2;
                iVar8 = iVar7 + -1;
            } while (iVar8 != 0);
            uVar14 = iVar6 + 0x40b0;
            if (0x5fff < uVar14) {
                uVar14 = iVar6 + 0xe10a;
            }
            iVar7 = iVar7 + -1;
        } while (iVar7 != 0);
        return;
    }
    return;
}

/* ====================================================================== */
/* 0xf19: fill_buffer */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fill_buffer(int16_t arg3)
{
    undefined2 unaff_DS;
    
    if (*(char *)0xff44 == '\0') {
        return;
    }
    physics_get_value(arg3);
    *(undefined *)0xff44 = 0;
    return;
}

/* ====================================================================== */
/* 0xf5b: physics_get_value */
/* ====================================================================== */


void physics_get_value(void)
{
    int16_t iVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    
    puVar2 = (undefined2 *)0x5116;
    iVar1 = 0x20;
    puVar3 = *(undefined2 **)0x4fef;
    do {
        *puVar3 = *puVar2;
        puVar3[1] = puVar2[1];
        puVar3[2] = puVar2[2];
        puVar3[3] = puVar2[3];
        puVar4 = puVar3 + 0x1000;
        if ((undefined2 *)0x5fff < puVar4) {
            *puVar4 = *puVar2;
            puVar3[0x1001] = puVar2[1];
            puVar3[0x1002] = puVar2[2];
            puVar3[0x1003] = puVar2[3];
            puVar4 = puVar3 + -0x1fd3;
        }
        puVar2 = puVar2 + 4;
        iVar1 = iVar1 + -1;
        puVar3 = puVar4;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0xf8f: physics_multiply_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_multiply_3(int16_t arg1, int16_t arg4)
{
    int16_t iVar1;
    uint8_t *puVar2;
    uint8_t *puVar3;
    undefined2 unaff_DS;
    int16_t in_stack_00000002;
    
    puVar2 = (uint8_t *)
             ((uint16_t)(*(char *)0x84 + *(char *)0x4ff3 & 0x3f) * 0x24 +
              (uint16_t)(uint8_t)(*(char *)0x83 + *(char *)0x4ff4 + 4) + *(int16_t *)0xff31);
    physics_func_3();
    do {
        iVar1 = 4;
        do {
            puVar3 = puVar2;
            *(undefined2 *)((uint16_t)(*puVar3 & 0x7f) * 2 + 0x5016) = 0;
            iVar1 = iVar1 + -1;
            puVar2 = puVar3 + 1;
        } while (iVar1 != 0);
        puVar2 = puVar3 + 0x21;
        physics_func_3();
    } while (in_stack_00000002 != 1);
    return;
}

/* ====================================================================== */
/* 0xf32: physics_check_state */
/* ====================================================================== */


void physics_check_state(void)
{
    int16_t iVar1;
    undefined2 *puVar2;
    undefined2 *puVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    
    puVar4 = (undefined2 *)0x5116;
    iVar1 = 0x20;
    puVar2 = *(undefined2 **)0x4fef;
    do {
        *puVar4 = *puVar2;
        puVar4[1] = puVar2[1];
        puVar3 = puVar4 + 3;
        puVar4[2] = puVar2[2];
        puVar4 = puVar4 + 4;
        *puVar3 = puVar2[3];
        puVar3 = puVar2 + 0x1000;
        if ((undefined2 *)0x5fff < puVar3) {
            puVar3 = puVar2 + -0x1fd3;
        }
        iVar1 = iVar1 + -1;
        puVar2 = puVar3;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x6b1: physics_multiply_4 */
/* ====================================================================== */


void physics_multiply_4(void)
{
    int16_t iVar1;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 *puVar2;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar1 = 8;
    do {
        *unaff_DI = *unaff_SI;
        puVar2 = unaff_DI + 0x1000;
        if ((undefined2 *)0x5fff < puVar2) {
            *puVar2 = *unaff_SI;
            puVar2 = unaff_DI + -0x1fd3;
        }
        iVar1 = iVar1 + -1;
        unaff_SI = unaff_SI + 1;
        unaff_DI = puVar2;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x3e0: physics_func_21 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void physics_func_21(int16_t arg3)
{
    undefined extraout_AH;
    undefined uVar1;
    int16_t extraout_DX;
    int16_t iVar2;
    uint16_t uVar3;
    int16_t iVar4;
    undefined *unaff_SI;
    undefined *puVar5;
    undefined *unaff_DI;
    undefined2 unaff_DS;
    undefined4 uVar6;
    int16_t in_stack_00000000;
    int16_t iVar7;
    undefined *arg_6h;
    
    iVar4 = 0x5009;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = 0xff;
    UNLOCK();
    *(undefined *)0x5009 = uVar1;
    LOCK();
    uVar1 = unaff_DI[0x1c];
    unaff_DI[0x1c] = 0xff;
    UNLOCK();
    *(undefined *)0x500a = uVar1;
    uVar1 = unaff_SI[-1];
    arg_6h = unaff_SI;
    physics_func_3(arg3, arg3);
    physics_func_5((int16_t)arg_6h, (int16_t)unaff_DI, iVar4, CONCAT11(extraout_AH, uVar1));
    puVar5 = unaff_SI + 0x25;
    iVar2 = (int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4;
    iVar4 = extraout_DX;
    if ((*(char *)0x5009 != -1) && (iVar4 = extraout_DX, *(char *)0x5009 != -4)) {
        uVar6 = CONCAT22(iVar2, CONCAT11(*puVar5, (char)extraout_DX));
        iVar4 = extraout_DX;
        iVar7 = extraout_DX;
        if ((char)extraout_DX < '\0') {
            iVar7 = extraout_DX;
            uVar6 = physics_func_4(iVar2, puVar5);
        }
        puVar5 = arg_6h;
        iVar2 = iVar7;
        physics_multiply_2((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), iVar4);
        iVar4 = in_stack_00000000;
    }
    uVar3 = iVar2 + 0x40b4;
    if (0x5fff < uVar3) {
        uVar3 = iVar2 + 0xe10e;
    }
    if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
        uVar6 = CONCAT22(uVar3, CONCAT11(puVar5[2], (char)((uint16_t)iVar4 >> 8)));
        if (iVar4 < 0) {
            uVar6 = physics_func_4();
        }
        physics_multiply_2((int16_t)uVar6, (int16_t)((uint32_t)uVar6 >> 0x10), iVar4);
    }
    return;
}

/* ====================================================================== */
/* 0x136: physics_multiply_5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void physics_multiply_5(int16_t arg3)
{
    char *pcVar1;
    undefined2 uVar2;
    char cVar3;
    char cVar4;
    uint8_t uVar5;
    undefined uVar6;
    undefined2 in_AX;
    int16_t arg3_00;
    undefined *unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    undefined *arg_4h;
    
    cVar4 = unaff_SI[-1];
    if (cVar4 < '\0') {
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + -1);
        *(undefined2 *)(unaff_DI + -1) = 0xfffe;
        UNLOCK();
        *(undefined2 *)0x5009 = uVar2;
        LOCK();
        uVar2 = *(undefined2 *)(unaff_DI + 0x1b);
        *(undefined2 *)(unaff_DI + 0x1b) = 0xffff;
        UNLOCK();
        *(undefined2 *)0x500b = uVar2;
        uVar6 = unaff_SI[-1];
        arg3_00 = 0x500d;
        *(undefined *)0x500e = *unaff_SI;
        arg_4h = unaff_SI;
        physics_func_3(arg3);
        uVar2 = *(undefined2 *)(unaff_SI + 0x23);
        *(undefined2 *)(arg3_00 + 2) = uVar2;
        *(undefined *)0x4feb = (char)arg3;
        *(char *)0x4fec = '\x12' - *(char *)0x4fea;
        uVar6 = physics_func_5(in_stack_00000000, (int16_t)arg_4h, arg3_00, CONCAT11((char)((uint16_t)uVar2 >> 8), uVar6))
        ;
        *(undefined *)0x500d = uVar6;
        extract_bits();
        if (((*(char *)0x4fea != '\x01') && (extract_bits(), *(char *)0xff34 != '\0')) && (*(char *)0xff2f != '\0')) {
            physics_multiply_6();
        }
        return;
    }
    if (*(char *)(unaff_DI + -1) == -4) {
        *(undefined *)(unaff_DI + -1) = 0xff;
    } else {
        pcVar1 = (char *)(unaff_DI + -1);
        *pcVar1 = *pcVar1 + '\x01';
        cVar3 = *pcVar1;
        *(undefined *)(unaff_DI + -1) = 0xfe;
        if (cVar3 != '\0') {
            *(char *)(unaff_DI + -1) = cVar4;
            physics_func_23(arg3, arg3 * 2 + *(int16_t *)0x4fe4, CONCAT11((char)((uint16_t)in_AX >> 8), cVar4));
        }
    }
    uVar5 = *(uint8_t *)0xc012 - 5;
    if (*(uint8_t *)0xc012 < 5) {
        return;
    }
    if (3 < uVar5) {
        return;
    }
    (**(code **)((uint16_t)uVar5 * 2 + 0x317e))(arg3);
    return;
}

/* ====================================================================== */
/* 0x27e: physics_func_23 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_func_23(int16_t arg3, int16_t arg2, int16_t arg1)
{
    undefined2 uVar1;
    int16_t iVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 *puVar5;
    undefined2 *puVar6;
    undefined2 unaff_DS;
    
    if ((char)arg1 == '\0') {
        iVar2 = 8;
        do {
            *(undefined2 *)arg2 = 0;
            puVar4 = (undefined2 *)(arg2 + 0x2000);
            if ((undefined2 *)0x5fff < puVar4) {
                *puVar4 = 0;
                puVar4 = (undefined2 *)(arg2 + -0x3fa6);
            }
            iVar2 = iVar2 + -1;
            arg2 = (int16_t)puVar4;
        } while (iVar2 != 0);
        return;
    }
    iVar2 = (arg1 & 0xffU) * 2;
    if (*(int16_t *)(iVar2 + 0x5016) == 0) {
        *(int16_t *)(iVar2 + 0x5016) = arg2;
        uVar1 = *(undefined2 *)0xff2c;
        iVar2 = 8;
        puVar4 = (undefined2 *)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x10 + -0x7fd0);
        do {
            *(undefined2 *)arg2 = *puVar4;
            puVar6 = (undefined2 *)(arg2 + 0x2000);
            if ((undefined2 *)0x5fff < puVar6) {
                *puVar6 = *puVar4;
                puVar6 = (undefined2 *)(arg2 + -0x3fa6);
            }
            iVar2 = iVar2 + -1;
            puVar4 = puVar4 + 1;
            arg2 = (int16_t)puVar6;
        } while (iVar2 != 0);
        return;
    }
    iVar3 = 8;
    puVar4 = *(undefined2 **)(iVar2 + 0x5016);
    do {
        *(undefined2 *)arg2 = *puVar4;
        puVar6 = (undefined2 *)(arg2 + 0x2000);
        if ((undefined2 *)0x5fff < puVar6) {
            *puVar6 = *puVar4;
            puVar6 = (undefined2 *)(arg2 + -0x3fa6);
        }
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x5fff < puVar5) {
            puVar5 = puVar4 + -0x1fd3;
        }
        iVar3 = iVar3 + -1;
        puVar4 = puVar5;
        arg2 = (int16_t)puVar6;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x730: physics_multiply_6 */
/* ====================================================================== */


void physics_multiply_6(void)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    if (0xf < *(uint8_t *)0x4fec) {
        return;
    }
    uVar1 = (*_fcn.0000011a)();
    if ((uVar1 & 0xf) < 0xe) {
        return;
    }
    uVar1 = 0;
    for (puVar2 = (uint8_t *)0xeda0; *puVar2 != 0xff; puVar2 = puVar2 + 4) {
        uVar1 = uVar1 + 1;
    }
    if (0x1f < uVar1) {
        return;
    }
    do {
        uVar1 = (*_fcn.0000011a)();
    } while ((uVar1 & 3) == 3);
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x4feb;
    if (uVar1 == 0xff) {
        uVar1 = 4;
    }
    if (0x1a < uVar1) {
        uVar1 = 0x1a;
    }
    *puVar2 = uVar1;
    do {
        uVar1 = (*_fcn.0000011a)();
    } while ((uVar1 & 3) == 3);
    uVar1 = ((uVar1 & 3) - 1) + *(char *)0x4fec;
    if (uVar1 == 0xff) {
        uVar1 = 0;
    }
    puVar2[1] = uVar1;
    puVar2[2] = 3;
    uVar1 = (*_fcn.0000011a)();
    puVar2[3] = *(uint8_t *)(uint32_t)((uVar1 & 3) + 0x37a2);
    puVar2[4] = 0xff;
    return;
}

/* ====================================================================== */
/* 0x11a: physics_func_31 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    char *pcVar4;
    int16_t arg3_00;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        physics_func_3();
        *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
        if (0x5fff < *(uint16_t *)0x4fe4) {
            *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
        }
        pcVar1 = (char *)0x4fea;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        copy_buffer(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            physics_func_21(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x5009;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5009 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x500a = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            physics_func_3();
            cVar2 = physics_func_5((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            pcVar4 = pcVar3 + 0x40b4;
            if ((char *)0x5fff < pcVar4) {
                pcVar4 = pcVar3 + -0x1ef2;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                uVar7 = CONCAT22(pcVar4, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = physics_func_4();
                }
                in_stack_0000000a = (char *)0x574;
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            physics_multiply_5(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x649: physics_func_32 */
/* ====================================================================== */


void physics_func_32(void)
{
    int16_t *piVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    int16_t in_DX;
    int16_t *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar4;
    
    iVar3 = 8;
    do {
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar4 = physics_func_33(*piVar1, in_DX);
        in_DX = (int16_t)((uint32_t)uVar4 >> 0x10);
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar2 = (int16_t)uVar4;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x654: physics_func_33 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 physics_func_33(int16_t arg1, int16_t arg2)
{
    return CONCAT11(*(char *)(((uint16_t)arg1 >> 0xc) + *(int16_t *)0x4fe2) << 4 |
                    *(uint8_t *)(((arg1 & 0xf0fU) >> 8) + *(int16_t *)0x4fe2), 
                    *(char *)(((uint16_t)arg1 >> 4 & 0xf) + *(int16_t *)0x4fe2) << 4 |
                    *(uint8_t *)((uint16_t)((uint8_t)arg1 & 0xf) + *(int16_t *)0x4fe2));
}

/* ====================================================================== */
/* 0x61b: physics_func_35 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_func_35(int16_t arg1)
{
    int16_t *piVar1;
    int16_t iVar2;
    int16_t extraout_DX;
    int16_t arg2;
    int16_t *unaff_BP;
    uint16_t *unaff_SI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar3;
    uint16_t *in_stack_00000000;
    
    physics_extract_bits();
    iVar2 = 8;
    arg2 = extraout_DX;
    do {
        *unaff_SI = *unaff_SI & *in_stack_00000000;
        piVar1 = unaff_BP;
        unaff_BP = unaff_BP + 1;
        uVar3 = physics_func_33(*piVar1, arg2);
        arg2 = (int16_t)((uint32_t)uVar3 >> 0x10);
        *unaff_SI = *unaff_SI | (uint16_t)uVar3;
        in_stack_00000000 = in_stack_00000000 + 1;
        unaff_SI = unaff_SI + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x6ca: physics_extract_bits */
/* ====================================================================== */


void physics_extract_bits(void)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    for (iVar3 = 8; iVar3 != 0; iVar3 = iVar3 + -1) {
        puVar2 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        *puVar2 = *puVar1;
    }
    return;
}

/* ====================================================================== */
/* 0xd6f: physics_get_value_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_get_value_2(int16_t arg1, int16_t arg4)
{
    undefined2 *puVar1;
    undefined2 *puVar2;
    int16_t iVar3;
    undefined2 *puVar4;
    undefined2 unaff_CS;
    undefined2 unaff_DS;
    
    puVar2 = (undefined2 *)
             ((uint16_t)*(uint8_t *)0x84 * 0x24 + (uint16_t)(uint8_t)(*(char *)0x83 + 4) + *(int16_t *)0xff31);
    physics_func_3();
    puVar4 = (undefined2 *)0x500d;
    iVar3 = 3;
    do {
        puVar1 = puVar4 + 1;
        *puVar4 = *puVar2;
        puVar4 = (undefined2 *)((int16_t)puVar4 + 3);
        *(undefined *)puVar1 = *(undefined *)(puVar2 + 1);
        puVar2 = puVar2 + 0x12;
        physics_func_3();
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1e4a: physics_multiply_7 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

int16_t physics_multiply_7(int16_t arg3)
{
    uint16_t uVar1;
    uint8_t uVar3;
    int16_t iVar2;
    
    uVar1 = (arg3 & 0xffU) + 0x1c;
    uVar3 = (uint8_t)(uVar1 % 3);
    iVar2 = (uVar1 / 3) * 0x5a;
    return CONCAT11((char)((uint16_t)iVar2 >> 8) + ((uint8_t)((uint8_t)(uVar3 << 7) >> 1 | (uVar3 >> 1) << 7) >> 1), 
                    (char)iVar2) + (uint16_t)(uint8_t)((char)((uint16_t)arg3 >> 8) + 5);
}

/* ====================================================================== */
/* 0xcc9: physics_scan_loop_2 */
/* ====================================================================== */


uint8_t physics_scan_loop_2(void)
{
    uint8_t uVar1;
    undefined2 unaff_DS;
    
    uVar1 = *(uint8_t *)0x93;
    if (uVar1 == 0) {
        return uVar1;
    }
    if (uVar1 < 4) {
        return 1;
    }
    return 2;
}

/* ====================================================================== */
/* 0xc87: physics_func_41 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_func_41(int16_t arg4, int16_t arg1, int16_t arg2)
{
    int16_t extraout_DX;
    char *unaff_SI;
    char *unaff_ES;
    char *pcVar1;
    char *unaff_DS;
    int16_t in_stack_00000000;
    
    do {
        pcVar1 = unaff_ES;
        if (*unaff_SI != '\0') {
            physics_func_42(arg2);
            arg2 = extraout_DX;
            unaff_SI = unaff_DS;
            pcVar1 = (char *)arg4;
            unaff_DS = unaff_ES;
        }
        unaff_SI = unaff_SI + 1;
        *(char *)0x4feb = *(char *)0x4feb + '\x01';
        arg4 = in_stack_00000000 + -1;
        unaff_ES = pcVar1;
    } while ((char *)arg4 != (char *)0x0);
    return;
}

/* ====================================================================== */
/* 0x631: physics_func_42 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_func_42(int16_t arg2)
{
    int16_t *piVar1;
    int16_t iVar2;
    uint16_t *unaff_BP;
    int16_t *unaff_SI;
    uint16_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar3;
    
    iVar2 = 8;
    do {
        *unaff_DI = *unaff_DI & *unaff_BP;
        piVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar3 = physics_func_33(*piVar1, arg2);
        arg2 = (int16_t)((uint32_t)uVar3 >> 0x10);
        *unaff_DI = *unaff_DI | (uint16_t)uVar3;
        unaff_BP = unaff_BP + 1;
        unaff_DI = unaff_DI + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x6d0: physics_multiply_8 */
/* ====================================================================== */


void physics_multiply_8(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    
    for (iVar2 = 8; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0;
    }
    return;
}

/* ====================================================================== */
/* 0x1156: physics_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_process_loop_2(int16_t arg3, int16_t arg1)
{
    uint16_t uVar1;
    int16_t iVar2;
    undefined extraout_AH;
    undefined extraout_AH_00;
    char *unaff_DI;
    undefined2 unaff_DS;
    
    if (*unaff_DI == -1) {
        return;
    }
    if (*unaff_DI == -4) {
        return;
    }
    *(uint8_t *)0x4ff8 = -((uint8_t)(*(char *)0x4ff7 - 1U) >> 2 & 1) ^ 0xcc;
    if ((char)arg1 != '\0') {
        uVar1 = CONCAT11((char)((uint16_t)(uint8_t)((char)arg1 - 1) * 0x10 + -0x7fd0 >> 8), *(undefined *)0x4ff7) &
                0xff03;
        iVar2 = physics_process_loop_3(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
        math_calc(iVar2);
        iVar2 = physics_process_loop_3(CONCAT11(extraout_AH, *(undefined *)0x4ff7));
        math_calc(iVar2);
        return;
    }
    uVar1 = CONCAT11((char)((uint16_t)arg1 >> 8), *(undefined *)0x4ff7) & 0xff03;
    iVar2 = physics_process_loop_3(CONCAT11((char)(uVar1 >> 8), '\x03' - (char)uVar1));
    physics_process_loop_4(iVar2);
    iVar2 = physics_process_loop_3(CONCAT11(extraout_AH_00, *(undefined *)0x4ff7));
    physics_process_loop_4(iVar2);
    return;
}

/* ====================================================================== */
/* 0x1258: physics_process_loop_3 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

char physics_process_loop_3(int16_t arg1)
{
    return ((uint8_t)arg1 & 3) * '\x02';
}

/* ====================================================================== */
/* 0x11c4: math_calc */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void math_calc(int16_t arg1)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t *puVar3;
    int16_t iVar4;
    uint8_t uVar5;
    uint8_t *unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    iVar4 = 2;
    do {
        puVar3 = (uint8_t *)physics_multiply_7(unaff_DI);
        uVar2 = *unaff_SI & *(uint8_t *)0x4ff8;
        uVar5 = ~*(uint8_t *)0x4ff8;
        *puVar3 = *puVar3 & uVar5;
        *puVar3 = *puVar3 | uVar2;
        if ((uint8_t *)0x3fff < puVar3) {
            puVar1 = puVar3 + 0x2000;
            *puVar1 = *puVar1 & uVar5;
            puVar1 = puVar3 + 0x2000;
            *puVar1 = *puVar1 | uVar2;
        }
        unaff_DI = in_stack_00000000 + 4;
        unaff_SI = unaff_SI + 8;
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return;
}

/* ====================================================================== */
/* 0x121e: physics_process_loop_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void physics_process_loop_4(int16_t arg1)
{
    uint8_t uVar1;
    uint8_t *puVar2;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    uint8_t in_stack_00000002;
    
    puVar2 = (uint8_t *)physics_multiply_7(unaff_DI);
    uVar1 = ~*(uint8_t *)0x4ff8;
    *puVar2 = *puVar2 & uVar1;
    if ((uint8_t *)0x3fff < puVar2) {
        puVar2[0x2000] = puVar2[0x2000] & uVar1;
    }
    puVar2 = (uint8_t *)physics_multiply_7(in_stack_00000000 + 4);
    *puVar2 = *puVar2 & in_stack_00000002;
    if ((uint8_t *)0x3fff < puVar2) {
        puVar2[0x2000] = puVar2[0x2000] & in_stack_00000002;
    }
    return;
}

/* ====================================================================== */
/* 0x14ac: physics_scan_loop_3 */
/* ====================================================================== */


void physics_scan_loop_3(void)
{
    int16_t iVar1;
    int16_t iVar2;
    uint16_t *puVar3;
    uint16_t *puVar4;
    
    iVar1 = 0x90;
    puVar3 = (uint16_t *)0x4fd;
    do {
        iVar2 = 0x1c;
        puVar4 = puVar3;
        do {
            *puVar4 = *puVar4 ^ 0xffff;
            puVar4 = puVar4 + 1;
            iVar2 = iVar2 + -1;
        } while (iVar2 != 0);
        puVar4 = puVar3 + 0x1000;
        if ((uint16_t *)0x5fff < puVar4) {
            iVar2 = 0x1c;
            do {
                *puVar4 = *puVar4 ^ 0xffff;
                puVar4 = puVar4 + 1;
                iVar2 = iVar2 + -1;
            } while (iVar2 != 0);
            puVar4 = puVar3 + -0x1fd3;
        }
        iVar1 = iVar1 + -1;
        puVar3 = puVar4;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x1293: fcn.00001293 */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x000012a9: Changing call to branch
// WARNING: Removing unreachable block (ram,0x000012ac)

void fcn.00001293(void)
{
    int16_t iVar1;
    int16_t iVar2;
    char cVar3;
    uint8_t uVar4;
    int16_t arg3;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    int16_t iStack_2;
    
    arg3 = CONCAT11(*(char *)0x4fe3 + -1, *(char *)0x4fe2 + -1);
    iStack_2 = 0x12ac;
    iVar2 = 9;
    iVar1 = CONCAT11(*(char *)0x4fe3 + '\x18', *(char *)0x4fe2 + '\x18');
    do {
        iVar1 = fcn.0000130d(iVar1, arg3);
        uVar4 = (uint8_t)((uint16_t)iVar2 >> 8);
        cVar3 = (uint8_t)iVar2 + 0xc;
        if (0xf3 < (uint8_t)iVar2) {
            cVar3 = -1;
        }
        arg3 = CONCAT11(uVar4 + 0xc, cVar3);
        if (0xf3 < uVar4) {
            arg3 = CONCAT11(0xff, cVar3);
        }
        fcn.00001479(iVar1);
        iVar2 = in_stack_00000000 + -1;
        iVar1 = iStack_2;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x130d: fcn.0000130d */
/* ====================================================================== */

// WARNING: Possible PIC construction at 0x00001328: Changing call to branch
// WARNING: Removing unreachable block (ram,0x0000132b)
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000130d(int16_t arg2, int16_t arg3)
{
    uint8_t uVar1;
    undefined extraout_AH;
    int16_t iVar2;
    uint8_t uVar3;
    int16_t unaff_DI;
    uint8_t *puVar4;
    uint8_t *puVar5;
    undefined2 unaff_DS;
    uint16_t in_stack_00000000;
    undefined2 in_stack_00000002;
    
    fcn.000013a5(CONCAT11((char)((uint16_t)arg3 >> 8), (char)arg2));
    fcn.000013a5(in_stack_00000000);
    uVar3 = (uint8_t)((uint16_t)in_stack_00000002 >> 8);
    if (uVar3 < (uint8_t)(in_stack_00000000 >> 8)) {
        in_stack_00000000 = CONCAT11(uVar3, (char)in_stack_00000000);
    }
    uVar3 = (uint8_t)in_stack_00000000;
    if (uVar3 == 0) {
        return;
    }
    if (0xde < uVar3) {
        return;
    }
    if ((char)(in_stack_00000000 >> 8) == '\0') {
        in_stack_00000000 = CONCAT11(1, uVar3);
    }
    fcn.0000146c(in_stack_00000000, CONCAT11(extraout_AH, (char)(in_stack_00000000 >> 8)));
    iVar2 = 0x2b;
    uVar3 = (uint8_t)in_stack_00000000 & 3;
    if ((in_stack_00000000 & 3) == 0) {
        uVar3 = 0xc0;
    } else if (uVar3 < 2) {
        uVar3 = 0x30;
    } else if (uVar3 == 2) {
        uVar3 = 0xc;
    } else {
        uVar3 = 3;
    }
    uVar1 = *(uint8_t *)0x4ff7;
    puVar4 = (uint8_t *)(unaff_DI + (uint16_t)(uint8_t)((uint8_t)in_stack_00000000 >> 2));
    do {
        *puVar4 = *puVar4 & ~uVar3;
        *puVar4 = *puVar4 | uVar3 & uVar1;
        puVar5 = puVar4 + 0x2000;
        if ((uint8_t *)0x5fff < puVar5) {
            *puVar5 = *puVar5 & ~uVar3;
            *puVar5 = *puVar5 | uVar3 & uVar1;
            puVar5 = puVar4 + -0x3fa6;
        }
        iVar2 = iVar2 + -1;
        puVar4 = puVar5;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x1479: fcn.00001479 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001479(int16_t arg1)
{
    undefined2 unaff_DS;
    uint16_t uVar1;
    
    uVar1 = (uint16_t)(uint8_t)((*(uint8_t *)0xff33 >> 1) + 1);
    do {
        (*_fcn.00000110)(uVar1);
        uVar1 = 0x1490;
        (*_fcn.00000112)();
        (*_fcn.00000114)();
        (*_fcn.00000116)();
        (*_fcn.00000118)();
    } while (*(uint8_t *)0xff1a < (uint8_t)uVar1);
    *(undefined *)0xff1a = 0;
    return;
}

/* ====================================================================== */
/* 0x110: fcn.00000110 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000110(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    uint16_t uVar3;
    int16_t iVar4;
    char *in_BX;
    char *arg3;
    char *unaff_SI;
    char *pcVar5;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined in_ZF;
    undefined4 uVar7;
    int16_t in_stack_00000006;
    int16_t iStackY_c;
    char *pcStackY_a;
    char *pcVar8;
    char *pcStack_6;
    
    pcStack_6 = in_BX;
    do {
        if (!(bool)in_ZF) {
            physics_multiply_5((int16_t)pcStack_6);
        }
        while( true ) {
            physics_func_3();
            *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
            if (0x5fff < *(uint16_t *)0x4fe4) {
                *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
            }
            pcVar1 = (char *)0x4fea;
            *pcVar1 = *pcVar1 + -1;
            if (*pcVar1 == '\0') {
                return;
            }
            copy_buffer((int16_t)pcStack_6);
            iVar4 = 0;
            pcVar6 = unaff_SI + 8;
            if (unaff_SI[7] < '\0') {
                physics_func_21(0);
            }
            do {
                pcVar8 = unaff_DI;
                pcVar5 = pcVar6;
                if (*pcVar5 != *pcVar8) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar5[1] != pcVar8[1]) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar5[2] != pcVar8[2]) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar5[3] != pcVar8[3]) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                pcVar6 = pcVar5 + 4;
                unaff_DI = pcVar8 + 4;
            } while (in_stack_00000006 != 1);
            if (pcVar5[4] != pcVar8[4]) {
                in_stack_00000006 = 0xf4;
                physics_multiply_5(iVar4);
            }
            iVar4 = iVar4 + 1;
            if (pcVar5[5] != pcVar8[5]) {
                physics_multiply_5(iVar4);
            }
            iVar4 = iVar4 + 1;
            if (pcVar5[6] != pcVar8[6]) {
                physics_multiply_5(iVar4);
            }
            pcStack_6 = (char *)(iVar4 + 1);
            unaff_SI = pcVar5 + 8;
            unaff_DI = pcVar8 + 8;
            if (-1 < pcVar5[7]) break;
            iVar4 = 0x5009;
            LOCK();
            cVar2 = pcVar8[7];
            pcVar8[7] = -2;
            UNLOCK();
            *(char *)0x5009 = cVar2;
            LOCK();
            cVar2 = pcVar8[0x23];
            pcVar8[0x23] = -1;
            UNLOCK();
            *(char *)0x500a = cVar2;
            cVar2 = pcVar5[7];
            pcVar5 = pcVar5 + 0x2c;
            pcStackY_a = (char *)0x50b;
            physics_func_3(pcStack_6);
            pcVar8 = (char *)0x513;
            cVar2 = physics_func_5((int16_t)unaff_SI, (int16_t)unaff_DI, iVar4, CONCAT11(extraout_AH, cVar2));
            arg3 = (char *)CONCAT11(extraout_DL, cVar2);
            iVar4 = (int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4;
            pcVar6 = pcVar5;
            if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                uVar7 = CONCAT22(iVar4, CONCAT11(*pcVar5, cVar2));
                unaff_DI = arg3;
                if (cVar2 < '\0') {
                    pcStackY_a = (char *)0x53a;
                    uVar7 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3);
                arg3 = pcVar8;
                iVar4 = iStackY_c;
                pcVar6 = pcStackY_a;
                pcStack_6 = pcVar5;
            }
            uVar3 = iVar4 + 0x40b4;
            if (0x5fff < uVar3) {
                uVar3 = iVar4 + 0xe10e;
            }
            if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                uVar7 = CONCAT22(uVar3, CONCAT11(pcVar6[2], (char)((uint16_t)arg3 >> 8)));
                if ((int16_t)arg3 < 0) {
                    uVar7 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3);
            }
        }
        in_ZF = pcVar5[7] == pcVar8[7];
    } while( true );
}

/* ====================================================================== */
/* 0x112: fcn.00000112 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000112(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    uint16_t uVar3;
    int16_t iVar4;
    char *in_BX;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *pcVar8;
    int16_t in_stack_00000008;
    int16_t iStackY_a;
    char *pcVar9;
    char *pcVar10;
    
    do {
        physics_multiply_5((int16_t)in_BX);
        do {
            while( true ) {
                pcVar8 = (char *)0x11b;
                physics_func_3();
                *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
                if (0x5fff < *(uint16_t *)0x4fe4) {
                    *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
                }
                pcVar1 = (char *)0x4fea;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                copy_buffer((int16_t)in_BX);
                iVar4 = 0;
                pcVar9 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    physics_func_21(0);
                }
                do {
                    pcVar5 = unaff_DI;
                    pcVar6 = pcVar9;
                    if (*pcVar6 != *pcVar5) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[1] != pcVar5[1]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[2] != pcVar5[2]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[3] != pcVar5[3]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    pcVar9 = pcVar6 + 4;
                    unaff_DI = pcVar5 + 4;
                } while (in_stack_00000008 != 1);
                if (pcVar6[4] != pcVar5[4]) {
                    in_stack_00000008 = 0xf4;
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar6[5] != pcVar5[5]) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar6[6] != pcVar5[6]) {
                    physics_multiply_5(iVar4);
                }
                in_BX = (char *)(iVar4 + 1);
                unaff_SI = pcVar6 + 8;
                unaff_DI = pcVar5 + 8;
                if (-1 < pcVar6[7]) break;
                iVar4 = 0x5009;
                LOCK();
                cVar2 = pcVar5[7];
                pcVar5[7] = -2;
                UNLOCK();
                *(char *)0x5009 = cVar2;
                LOCK();
                cVar2 = pcVar5[0x23];
                pcVar5[0x23] = -1;
                UNLOCK();
                *(char *)0x500a = cVar2;
                cVar2 = pcVar6[7];
                pcVar6 = pcVar6 + 0x2c;
                iStackY_a = 0x50b;
                physics_func_3(in_BX, in_BX);
                pcVar9 = (char *)0x513;
                cVar2 = physics_func_5((int16_t)unaff_SI, (int16_t)unaff_DI, iVar4, CONCAT11(extraout_AH, cVar2));
                pcVar5 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar4 = (int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4;
                in_BX = unaff_DI;
                if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                    uVar7 = CONCAT22(iVar4, CONCAT11(*pcVar6, cVar2));
                    pcVar10 = pcVar6;
                    in_BX = pcVar5;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x53a;
                        uVar7 = physics_func_4();
                        pcVar10 = pcVar6;
                    }
                    pcVar6 = pcVar9;
                    physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                    pcVar5 = pcVar10;
                    iVar4 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                uVar3 = iVar4 + 0x40b4;
                if (0x5fff < uVar3) {
                    uVar3 = iVar4 + 0xe10e;
                }
                unaff_SI = pcVar8;
                if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                    uVar7 = CONCAT22(uVar3, CONCAT11(pcVar6[2], (char)((uint16_t)pcVar5 >> 8)));
                    if ((int16_t)pcVar5 < 0) {
                        uVar7 = physics_func_4();
                    }
                    physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                }
            }
        } while (pcVar6[7] == pcVar5[7]);
    } while( true );
}

/* ====================================================================== */
/* 0x114: fcn.00000114 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000112(int16_t arg1)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    uint16_t uVar3;
    int16_t iVar4;
    char *in_BX;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *pcVar8;
    int16_t in_stack_00000008;
    int16_t iStackY_a;
    char *pcVar9;
    char *pcVar10;
    
    do {
        physics_multiply_5((int16_t)in_BX);
        do {
            while( true ) {
                pcVar8 = (char *)0x11b;
                physics_func_3();
                *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
                if (0x5fff < *(uint16_t *)0x4fe4) {
                    *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
                }
                pcVar1 = (char *)0x4fea;
                *pcVar1 = *pcVar1 + -1;
                if (*pcVar1 == '\0') {
                    return;
                }
                copy_buffer((int16_t)in_BX);
                iVar4 = 0;
                pcVar9 = unaff_SI + 8;
                if (unaff_SI[7] < '\0') {
                    physics_func_21(0);
                }
                do {
                    pcVar5 = unaff_DI;
                    pcVar6 = pcVar9;
                    if (*pcVar6 != *pcVar5) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[1] != pcVar5[1]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[2] != pcVar5[2]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    if (pcVar6[3] != pcVar5[3]) {
                        physics_multiply_5(iVar4);
                    }
                    iVar4 = iVar4 + 1;
                    pcVar9 = pcVar6 + 4;
                    unaff_DI = pcVar5 + 4;
                } while (in_stack_00000008 != 1);
                if (pcVar6[4] != pcVar5[4]) {
                    in_stack_00000008 = 0xf4;
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar6[5] != pcVar5[5]) {
                    physics_multiply_5(iVar4);
                }
                iVar4 = iVar4 + 1;
                if (pcVar6[6] != pcVar5[6]) {
                    physics_multiply_5(iVar4);
                }
                in_BX = (char *)(iVar4 + 1);
                unaff_SI = pcVar6 + 8;
                unaff_DI = pcVar5 + 8;
                if (-1 < pcVar6[7]) break;
                iVar4 = 0x5009;
                LOCK();
                cVar2 = pcVar5[7];
                pcVar5[7] = -2;
                UNLOCK();
                *(char *)0x5009 = cVar2;
                LOCK();
                cVar2 = pcVar5[0x23];
                pcVar5[0x23] = -1;
                UNLOCK();
                *(char *)0x500a = cVar2;
                cVar2 = pcVar6[7];
                pcVar6 = pcVar6 + 0x2c;
                iStackY_a = 0x50b;
                physics_func_3(in_BX, in_BX);
                pcVar9 = (char *)0x513;
                cVar2 = physics_func_5((int16_t)unaff_SI, (int16_t)unaff_DI, iVar4, CONCAT11(extraout_AH, cVar2));
                pcVar5 = (char *)CONCAT11(extraout_DL, cVar2);
                iVar4 = (int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4;
                in_BX = unaff_DI;
                if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                    uVar7 = CONCAT22(iVar4, CONCAT11(*pcVar6, cVar2));
                    pcVar10 = pcVar6;
                    in_BX = pcVar5;
                    if (cVar2 < '\0') {
                        iStackY_a = 0x53a;
                        uVar7 = physics_func_4();
                        pcVar10 = pcVar6;
                    }
                    pcVar6 = pcVar9;
                    physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                    pcVar5 = pcVar10;
                    iVar4 = iStackY_a;
                }
                unaff_DI = unaff_SI;
                uVar3 = iVar4 + 0x40b4;
                if (0x5fff < uVar3) {
                    uVar3 = iVar4 + 0xe10e;
                }
                unaff_SI = pcVar8;
                if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                    uVar7 = CONCAT22(uVar3, CONCAT11(pcVar6[2], (char)((uint16_t)pcVar5 >> 8)));
                    if ((int16_t)pcVar5 < 0) {
                        uVar7 = physics_func_4();
                    }
                    physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar5);
                }
            }
        } while (pcVar6[7] == pcVar5[7]);
    } while( true );
}

/* ====================================================================== */
/* 0x116: fcn.00000116 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    char *pcVar4;
    int16_t arg3_00;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        physics_func_3();
        *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
        if (0x5fff < *(uint16_t *)0x4fe4) {
            *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
        }
        pcVar1 = (char *)0x4fea;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        copy_buffer(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            physics_func_21(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x5009;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5009 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x500a = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            physics_func_3();
            cVar2 = physics_func_5((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            pcVar4 = pcVar3 + 0x40b4;
            if ((char *)0x5fff < pcVar4) {
                pcVar4 = pcVar3 + -0x1ef2;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                uVar7 = CONCAT22(pcVar4, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = physics_func_4();
                }
                in_stack_0000000a = (char *)0x574;
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            physics_multiply_5(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x118: fcn.00000118 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked
// WARNING: [rz-ghidra] Detected overlap for variable arg_5h

void fcn.00000118(int16_t arg3)
{
    char *pcVar1;
    char cVar2;
    undefined extraout_AH;
    undefined extraout_DL;
    char *pcVar3;
    char *pcVar4;
    int16_t arg3_00;
    char *arg3_01;
    char *pcVar5;
    char *unaff_SI;
    char *pcVar6;
    char *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    undefined4 uVar7;
    char *in_stack_00000006;
    char *in_stack_0000000a;
    int16_t in_stack_0000000c;
    char *in_stack_0000000e;
    char *in_stack_00000010;
    
    while( true ) {
        physics_func_3();
        *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + 0x40b4;
        if (0x5fff < *(uint16_t *)0x4fe4) {
            *(int16_t *)0x4fe4 = *(int16_t *)0x4fe4 + -0x5fa6;
        }
        pcVar1 = (char *)0x4fea;
        *pcVar1 = *pcVar1 + -1;
        if (*pcVar1 == '\0') break;
        copy_buffer(arg3);
        arg3 = 0;
        pcVar5 = unaff_SI + 4;
        if (unaff_SI[3] < '\0') {
            physics_func_21(0);
        }
        do {
            pcVar3 = unaff_DI;
            pcVar6 = pcVar5;
            if (*pcVar6 != *pcVar3) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[1] != pcVar3[1]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[2] != pcVar3[2]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            if (pcVar6[3] != pcVar3[3]) {
                physics_multiply_5(arg3);
            }
            arg3 = arg3 + 1;
            pcVar5 = pcVar6 + 4;
            unaff_DI = pcVar3 + 4;
        } while (in_stack_00000006 != (char *)0x1);
        if (pcVar6[4] != pcVar3[4]) {
            in_stack_00000006 = (char *)0xf4;
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[5] != pcVar3[5]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        if (pcVar6[6] != pcVar3[6]) {
            physics_multiply_5(arg3);
        }
        arg3 = arg3 + 1;
        pcVar5 = pcVar6 + 8;
        unaff_DI = pcVar3 + 8;
        if (pcVar6[7] < '\0') {
            arg3_00 = 0x5009;
            LOCK();
            cVar2 = pcVar3[7];
            pcVar3[7] = -2;
            UNLOCK();
            *(char *)0x5009 = cVar2;
            LOCK();
            cVar2 = pcVar3[0x23];
            pcVar3[0x23] = -1;
            UNLOCK();
            *(char *)0x500a = cVar2;
            cVar2 = pcVar6[7];
            pcVar6 = pcVar6 + 0x2c;
            physics_func_3();
            cVar2 = physics_func_5((int16_t)pcVar5, (int16_t)unaff_DI, arg3_00, CONCAT11(extraout_AH, cVar2));
            pcVar4 = (char *)CONCAT11(extraout_DL, cVar2);
            pcVar3 = (char *)((int16_t)unaff_DI * 2 + *(int16_t *)0x4fe4);
            arg3_01 = pcVar4;
            in_stack_00000006 = unaff_DI;
            if ((*(char *)0x5009 != -1) && (*(char *)0x5009 != -4)) {
                uVar7 = CONCAT22(pcVar3, CONCAT11(*pcVar6, cVar2));
                pcVar6 = pcVar4;
                if (cVar2 < '\0') {
                    uVar7 = physics_func_4();
                }
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)pcVar6);
                pcVar3 = pcVar4;
                arg3_01 = in_stack_0000000a;
                pcVar6 = pcVar5;
                in_stack_00000006 = pcVar4;
            }
            pcVar4 = pcVar3 + 0x40b4;
            if ((char *)0x5fff < pcVar4) {
                pcVar4 = pcVar3 + -0x1ef2;
            }
            arg3 = in_stack_0000000c;
            pcVar5 = in_stack_00000010;
            unaff_DI = in_stack_0000000e;
            if (((*(char *)0x4fea != '\x01') && (*(char *)0x500a != -1)) && (*(char *)0x500a != -4)) {
                uVar7 = CONCAT22(pcVar4, CONCAT11(pcVar6[2], (char)((uint16_t)arg3_01 >> 8)));
                if ((int16_t)arg3_01 < 0) {
                    uVar7 = physics_func_4();
                }
                in_stack_0000000a = (char *)0x574;
                physics_multiply_2((int16_t)uVar7, (int16_t)((uint32_t)uVar7 >> 0x10), (int16_t)arg3_01);
            }
        } else if (pcVar6[7] != pcVar3[7]) {
            physics_multiply_5(arg3);
        }
        unaff_SI = pcVar5 + 4;
    }
    return;
}

/* ====================================================================== */
/* 0x13a5: fcn.000013a5 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000013a5(int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    undefined2 in_AX;
    int16_t iVar3;
    uint8_t extraout_DL;
    uint8_t uVar4;
    uint8_t uVar5;
    uint16_t in_BX;
    int16_t unaff_DI;
    uint8_t *puVar6;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    if ((uint8_t)arg2 < (uint8_t)in_BX) {
        in_BX = arg2;
    }
    uVar2 = (uint8_t)(in_BX >> 8);
    if (uVar2 == 0) {
        return;
    }
    if (0x8e < uVar2) {
        return;
    }
    if ((char)in_BX == '\0') {
        in_BX = CONCAT11(uVar2, 1);
    }
    fcn.0000146c(in_BX, CONCAT11((char)((uint16_t)in_AX >> 8), (char)(in_BX >> 8)));
    uVar2 = (uint8_t)in_BX >> 2;
    puVar6 = (uint8_t *)(unaff_DI + (uint16_t)uVar2);
    uVar2 = (extraout_DL >> 2) - uVar2;
    uVar5 = (uint8_t)in_BX & 3;
    if ((in_BX & 3) == 0) {
        uVar5 = 0xff;
    } else if (uVar5 < 2) {
        uVar5 = 0x3f;
    } else if (uVar5 == 2) {
        uVar5 = 0xf;
    } else {
        uVar5 = 3;
    }
    uVar4 = extraout_DL & 3;
    if (uVar4 == 0) {
        uVar4 = 0xc0;
    } else if (uVar4 < 2) {
        uVar4 = 0xf0;
    } else if (uVar4 == 2) {
        uVar4 = 0xfc;
    } else {
        uVar4 = 0xff;
    }
    if (uVar2 != 0) {
        iVar3 = uVar2 - 1;
        if (iVar3 != 0) {
            uVar2 = *(uint8_t *)0x4ff7;
            *puVar6 = *puVar6 & ~uVar5;
            *puVar6 = *puVar6 | uVar5 & uVar2;
            uVar2 = *(uint8_t *)0x4ff7;
            for (; puVar6 = puVar6 + 1, iVar3 != 0; iVar3 = iVar3 + -1) {
                *puVar6 = uVar2;
            }
            uVar2 = *(uint8_t *)0x4ff7;
            *puVar6 = *puVar6 & ~uVar4;
            *puVar6 = *puVar6 | uVar4 & uVar2;
            return;
        }
        uVar2 = *(uint8_t *)0x4ff7;
        *puVar6 = *puVar6 & ~uVar5;
        *puVar6 = *puVar6 | uVar5 & uVar2;
        uVar2 = *(uint8_t *)0x4ff7;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 & ~uVar4;
        puVar1 = puVar6 + 1;
        *puVar1 = *puVar1 | uVar4 & uVar2;
        return;
    }
    uVar2 = *(uint8_t *)0x4ff7;
    *puVar6 = *puVar6 & ~(uVar5 & uVar4);
    *puVar6 = *puVar6 | uVar5 & uVar4 & uVar2;
    return;
}

/* ====================================================================== */
/* 0x146c: fcn.0000146c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000146c(int16_t arg3, int16_t arg1)
{
    physics_multiply_7(CONCAT11(0xc, (char)arg1 + '\x0e'));
    return;
}

/* ====================================================================== */
/* 0x1675: fcn.00001675 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001675(int16_t arg1)
{
    int16_t *piVar1;
    undefined2 uVar2;
    int16_t *piVar3;
    int16_t in_DX;
    int16_t in_BX;
    undefined2 *puVar4;
    undefined2 *puVar5;
    int16_t unaff_DS;
    undefined4 uVar6;
    
    uVar2 = *(undefined2 *)0xff2c;
    piVar3 = (int16_t *)((arg1 & 0xffU) * 0x10 + -0x8000);
    puVar4 = *(undefined2 **)0x4fe4;
    do {
        piVar1 = piVar3;
        piVar3 = piVar3 + 1;
        uVar6 = fcn.000016ab(*piVar1, in_BX, in_DX);
        in_DX = (int16_t)((uint32_t)uVar6 >> 0x10);
        *puVar4 = (int16_t)uVar6;
        puVar5 = puVar4 + 0x1000;
        if ((undefined2 *)0x5fff < puVar5) {
            *puVar5 = (int16_t)uVar6;
            puVar5 = puVar4 + -0x1fd3;
        }
        puVar4 = puVar5;
    } while (unaff_DS != 1);
    return;
}

/* ====================================================================== */
/* 0x16ab: fcn.000016ab */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined2 fcn.000016ab(int16_t arg1, int16_t arg3, int16_t arg2)
{
    int16_t iVar1;
    uint8_t uVar2;
    int16_t iVar3;
    undefined4 uVar4;
    
    iVar3 = 8;
    do {
        uVar2 = ((char)iVar3 * '\x02' + CARRY2(arg1, arg1)) * '\x02' + CARRY2(arg1 * 2, arg1 * 2) & 3;
        uVar4 = (**(code **)((uint16_t)*(uint8_t *)0x4ff7 * 2 + 0x46d0))();
        arg1 = (int16_t)uVar4;
        iVar1 = (int16_t)((uint32_t)uVar4 >> 0x10) * 4;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return CONCAT11((char)((uint16_t)iVar1 >> 8), (uint8_t)iVar1 | uVar2);
}

/* ====================================================================== */
/* 0x1b23: fcn.00001b23 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001b23(int16_t arg3, int16_t arg1)
{
    uint16_t *puVar1;
    uint16_t uVar2;
    int16_t iVar3;
    uint16_t uVar4;
    uint16_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar3 = 2;
    do {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar4 = (*puVar1 << 8) >> (*(uint8_t *)0x4ff8 & 0x1f);
        uVar2 = (*puVar1 & 0xff00) >> (*(uint8_t *)0x4ff8 & 0x1f);
        *unaff_DI = *unaff_DI | (uint8_t)(uVar4 >> 8);
        unaff_DI[1] = unaff_DI[1] | (uint8_t)uVar4 | (uint8_t)(uVar2 >> 8);
        unaff_DI = unaff_DI + 2;
        *unaff_DI = *unaff_DI | (uint8_t)uVar2;
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1bf3: fcn.00001bf3 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x00001c3e) overlaps instruction at (ram,0x00001c3d)
// 
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001bf3(short unsigned int arg3, short unsigned int arg1)
{
    uint8_t *puVar1;
    char *pcVar2;
    uint8_t uVar3;
    uint8_t uVar4;
    char cVar5;
    int16_t iVar6;
    uint16_t uVar7;
    int16_t in_CX;
    uint8_t uVar8;
    undefined2 in_DX;
    char *pcVar9;
    int16_t unaff_BP;
    char *unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 in_stack_00000000;
    
    pcVar9 = (char *)(arg3 | *(uint16_t *)(unaff_SI + arg3));
    cVar5 = (char)(arg1 >> 8);
    *(char *)(unaff_BP + unaff_DI) = *(char *)(unaff_BP + unaff_DI) + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI];
    uVar4 = (char)arg1 + (pcVar9 + (int16_t)unaff_SI)[0x280];
    iVar6 = CONCAT11(cVar5, uVar4);
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *(int16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    puVar1 = (uint8_t *)(pcVar9 + (int16_t)unaff_SI);
    uVar3 = *puVar1;
    *puVar1 = *puVar1 + uVar4;
    uVar8 = (uint8_t)in_DX;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar8 + CARRY1(uVar3, uVar4);
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    *unaff_SI = *unaff_SI + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + uVar4;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + -0x80;
    iVar6 = iVar6 + *(int16_t *)(pcVar9 + (int16_t)unaff_SI);
    pcVar9[unaff_DI + 0xc] = pcVar9[unaff_DI + 0xc] + (char)((uint16_t)in_DX >> 8);
    cVar5 = (char)iVar6;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *pcVar9 = *pcVar9 + cVar5;
    LOCK();
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    UNLOCK();
    uVar7 = in(0);
    *pcVar9 = *pcVar9 + (char)in_CX;
    LOCK();
    cVar5 = (char)uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    UNLOCK();
    pcVar9[iVar6] = pcVar9[iVar6] + (char)((uint16_t)pcVar9 >> 8);
    pcVar2 = pcVar9 + (int16_t)unaff_SI;
    *pcVar2 = *pcVar2 + cVar5;
    if (in_CX + -1 != 0 && *pcVar2 == '\0') {
        *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    }
    pcVar9[iVar6] = pcVar9[iVar6];
    (pcVar9 + (int16_t)unaff_SI)[4] = (pcVar9 + (int16_t)unaff_SI)[4] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] | uVar8;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    unaff_SI[unaff_BP + -0x55b6] = unaff_SI[unaff_BP + -0x55b6] + uVar8;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[iVar6] = pcVar9[iVar6] + cVar5;
    *(uint16_t *)(pcVar9 + (int16_t)unaff_SI) = *(int16_t *)(pcVar9 + (int16_t)unaff_SI) + uVar7;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI] + cVar5;
    pcVar9[(int16_t)unaff_SI] = pcVar9[(int16_t)unaff_SI];
    *(char *)(unaff_BP + iVar6) = *(char *)(unaff_BP + iVar6) + (char)((uint16_t)(in_CX + -1) >> 8);
    *(char **)(iVar6 + 4) = *(char **)(iVar6 + 4) + (int16_t)pcVar9;
    out(in_DX, uVar7 & 0xffae);
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x1ed6: fcn.00001ed6 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001ed6(int16_t arg2)
{
    uint16_t uVar1;
    uint16_t uVar2;
    int16_t iVar3;
    
    iVar3 = 8;
    do {
        uVar1 = *(uint16_t *)0x4fe8 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4fe8 < 0);
        uVar2 = *(uint16_t *)0x4fe4 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4fe4 < 0);
        *(uint16_t *)0x4fe8 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        *(uint16_t *)0x4fe4 = uVar2 << 1 | (uint16_t)((int16_t)uVar2 < 0);
        iVar3 = iVar3 + -1;
    } while (iVar3 != 0);
    return;
}

/* ====================================================================== */
/* 0x1f13: fcn.00001f13 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001f13(int16_t arg2)
{
    uint16_t uVar1;
    int16_t iVar2;
    
    iVar2 = 8;
    do {
        uVar1 = *(uint16_t *)0x4ff5 << 1 | (uint16_t)((int16_t)*(uint16_t *)0x4ff5 < 0);
        *(uint16_t *)0x4ff5 = uVar1 << 1 | (uint16_t)((int16_t)uVar1 < 0);
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

