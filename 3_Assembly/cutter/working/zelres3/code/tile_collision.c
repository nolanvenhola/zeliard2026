/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x7eb = "#$%&'()!"; // [ascii]
static const char *STR_0x7f6 = "#$%&'()!"; // [ascii]
static const char *STR_0x801 = "*$%&'()!"; // [ascii]
static const char *STR_0x80c = "*$%&'()!&"; // [ascii]
static const char *STR_0x88d = "PQRTSUVWXZY[\\]_^`"; // [ascii]
static const char *STR_0x8c3 = "ubcdsetfugcisjthaklpsqtr"; // [ascii]
static const char *STR_0x8e6 = "657<08=19>2:;34@AFBGJCHKIDE"; // [ascii]
static const char *STR_0x922 = "zØcba«ifgehdýþð±»a"; // [ibm037]
static const char *STR_0x96f = "ØÈzÎz`z\"z°jklmnopqorªººæº¸ýzªzxzxz"; // [ibm037]

/* ====================================================================== */
/* 0x0: zr3_16 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x000000f4) overlaps instruction at (ram,0x000000f2)
// 
// WARNING: Stack frame is not setup normally: Input value of stackpointer is not used
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr3_16(int16_t arg_6710h, int16_t arg_6fh, int16_t arg_10h, int16_t arg_c01h, int16_t arg1, int16_t arg3,
                 int16_t arg2)
{
    uint8_t *puVar1;
    char *pcVar2;
    uint8_t uVar3;
    char cVar4;
    int16_t iVar5;
    undefined2 *puVar6;
    undefined2 *puVar7;
    uint16_t *puVar8;
    uint16_t uVar9;
    undefined2 uVar10;
    char in_AL;
    char cVar14;
    char *pcVar11;
    undefined *puVar12;
    undefined2 uVar13;
    uint8_t uVar15;
    uint8_t uVar16;
    undefined2 in_CX;
    int16_t in_DX;
    char cVar17;
    char *in_BX;
    int16_t iVar18;
    undefined2 *puVar19;
    undefined2 *puVar20;
    undefined *puVar21;
    undefined2 *puVar22;
    undefined4 in_ESP;
    char *unaff_BP;
    undefined2 *puVar23;
    undefined *unaff_SI;
    uint16_t *puVar24;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_CS;
    undefined2 unaff_SS;
    undefined2 uVar25;
    undefined2 unaff_DS;
    uint8_t in_AF;
    uint8_t in_TF;
    uint8_t in_IF;
    bool bVar26;
    uint8_t in_NT;
    undefined *puVar27;
    int16_t var_7861h;
    
    uVar16 = (uint8_t)in_BX;
    uVar15 = (char)((uint16_t)in_CX >> 8) + uVar16;
    *(char *)0xaa3c = in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    *(char *)0x1e1e = *(char *)0x1e1e - uVar16;
    iVar18 = (int16_t)in_ESP;
    *(undefined2 *)(iVar18 + -2) = unaff_DS;
    *(undefined2 *)(iVar18 + -4) = unaff_DS;
    *(undefined2 *)(iVar18 + -6) = unaff_DS;
    *(undefined2 *)(iVar18 + -8) = unaff_DS;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] - uVar15;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    in_BX[(int16_t)unaff_SI] = in_BX[(int16_t)unaff_SI] + in_AL;
    uVar10 = (undefined2)((uint32_t)in_ESP >> 0x10);
    puVar6 = (undefined2 *)*(int16_t *)0xa152;
    uVar25 = *(undefined2 *)0x7a0;
    puVar22 = (undefined2 *)CONCAT22(uVar10, (undefined2 *)0x7a2);
    *(undefined *)0xa247 = (char)puVar6;
    cVar17 = (char)unaff_DI;
    *(char *)0x6600 = cVar17;
    cVar14 = (char)((uint16_t)unaff_DI >> 8);
    in_BX[0x6c] = in_BX[0x6c] + cVar14;
    (in_BX + (int16_t)unaff_SI)[0x69] = (in_BX + (int16_t)unaff_SI)[0x69] + uVar15;
    puVar24 = puVar6 + 1;
    uVar13 = in(in_DX);
    *puVar6 = uVar13;
    puVar23 = (undefined2 *)(unaff_SI + 1);
    out(*unaff_SI, in_DX);
    puVar1 = unaff_SI + 0x6e;
    uVar3 = *puVar1;
    *puVar1 = *puVar1 + uVar15;
    if (CARRY1(uVar3, uVar15)) {
        unaff_BP[0x6710] = unaff_BP[0x6710] + (char)in_CX;
        puVar22 = (undefined2 *)CONCAT22(uVar10, (undefined2 *)0x7a0);
        *(undefined2 *)0x7a0 = unaff_CS;
        pcVar11 = unaff_BP;
        goto code_r0x000000a7;
    }
    (unaff_BP + (int16_t)puVar24)[0x84] = (unaff_BP + (int16_t)puVar24)[0x84] + cVar17;
    LOCK();
    cVar4 = in_BX[(int16_t)puVar23];
    in_BX[(int16_t)puVar23] = cVar17;
    pcVar11 = (char *)CONCAT11(cVar14, cVar4);
    UNLOCK();
    unaff_DI = (undefined *)CONCAT11(uVar15, 0x98);
    in_DX = (int16_t)unaff_BP >> 0xf;
    (pcVar11 + (int16_t)puVar23)[-0x6265] = (pcVar11 + (int16_t)puVar23)[-0x6265] + uVar16;
    in_AF = ((uint16_t)unaff_BP & 0x1000) != 0;
    (in_BX + (int16_t)puVar23)[-0x70] = (in_BX + (int16_t)puVar23)[-0x70] + uVar15;
    puVar8 = puVar24;
    puVar24 = puVar6 + 2;
    uVar9 = in(in_DX);
    *puVar8 = uVar9;
    puVar1 = (uint8_t *)(pcVar11 + (int16_t)puVar23 + -0x6265);
    uVar3 = *puVar1;
    *puVar1 = *puVar1 + uVar16;
    in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + '\x01';
    if (CARRY1(uVar3, uVar16)) {
        in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + -0x68;
        puVar1 = (uint8_t *)(pcVar11 + (int16_t)puVar23 + 0x6b);
        cVar17 = (char)((uint16_t)unaff_BP >> 8);
        bVar26 = SCARRY1(*puVar1, cVar17);
        *puVar1 = *puVar1 + cVar17;
        uVar3 = *puVar1;
        puVar7 = puVar23;
        puVar23 = (undefined2 *)(unaff_SI + 3);
        out(*puVar7, in_DX);
        do {
            puVar27 = (undefined *)CONCAT22(in_DX, unaff_DI);
            if (bVar26) {
                puVar6 = (undefined2 *)((int16_t)puVar23 + 1);
                puVar23 = (undefined2 *)((int16_t)puVar23 + 3);
                puVar12 = (undefined *)*puVar6;
                puVar22 = puVar22 + -2;
                *puVar22 = unaff_CS;
                goto code_r0x000000f2;
            }
            if (uVar3 != 0) goto code_r0x000000f5;
            pcVar2 = in_BX + 0x78;
            cVar17 = (char)((uint16_t)in_DX >> 8);
            *pcVar2 = *pcVar2 + cVar17;
            if ((POPCOUNT(*pcVar2) & 1U) == 0) {
                in_DX = (int16_t)*(undefined4 *)(puVar23 + -0x1680);
                goto code_r0x00000103;
            }
            puVar1 = (uint8_t *)(in_BX + (int16_t)puVar23 + 0x79);
            uVar3 = *puVar1;
            uVar16 = (uint8_t)((uint16_t)in_BX >> 8);
            uVar15 = *puVar1;
            *puVar1 = *puVar1 + uVar16;
            bVar26 = (POPCOUNT(*puVar1) & 1U) == 0;
            if (!bVar26) {
                puVar20 = (undefined2 *)puVar22 + -1;
                ((undefined2 *)puVar22)[-1] =
                     (uint16_t)(in_NT & 1) * 0x4000 | (uint16_t)SCARRY1(uVar15, uVar16) * 0x800 |
                     (uint16_t)(in_IF & 1) * 0x200 | (uint16_t)(in_TF & 1) * 0x100 |
                     (uint16_t)((char)*puVar1 < '\0') * 0x80 | (uint16_t)(*puVar1 == 0) * 0x40 |
                     (uint16_t)(in_AF & 1) * 0x10 | (uint16_t)bVar26 * 4 | (uint16_t)CARRY1(uVar3, uVar16);
                *(char *)(puVar24 + 0x3a) = *(char *)(puVar24 + 0x3a) + (char)unaff_DI;
                goto code_r0x0000010a;
            }
            puVar8 = puVar24 + 0x3f;
            uVar3 = *(uint8_t *)puVar8;
            *(uint8_t *)puVar8 = *(uint8_t *)puVar8 + uVar16;
            if (CARRY1(uVar3, uVar16) || *(uint8_t *)puVar8 == 0) {
                in_BX[1] = in_BX[1] + uVar16;
                unaff_DI = (undefined *)((uint16_t)unaff_DI & 0xff00);
                in_BX[0x10] = in_BX[0x10] + cVar17;
                *(char *)0x9700 = *(char *)0x9700 + (char)unaff_BP;
                (in_BX + (int16_t)puVar23)[0x71] = (in_BX + (int16_t)puVar23)[0x71] + cVar17;
                pcVar2 = pcVar11 + (int16_t)puVar24 + 0x75;
                *pcVar2 = *pcVar2 + cVar17;
                cVar17 = *pcVar2;
            } else {
                in_BX = (char *)CONCAT11(uVar16, 0x75);
                pcVar2 = in_BX;
                *pcVar2 = *pcVar2 + cVar17;
                cVar17 = *pcVar2;
            }
            if (cVar17 < '\0') {
                cVar17 = in(0xe5);
                in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + cVar17;
                in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + cVar17;
                out(0xec, CONCAT11((char)((uint16_t)unaff_DI >> 8), cVar17));
                uVar13 = in(in_DX);
                in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + (char)uVar13;
                out(in_DX, (char)uVar13);
    // WARNING: Bad instruction - Truncating control flow here
                halt_baddata();
            }
code_r0x000000a7:
            pcVar11[-0x7861] = pcVar11[-0x7861] + (char)((uint16_t)unaff_DI >> 8);
            LOCK();
            iVar5 = *(int16_t *)(pcVar11 + (int16_t)puVar24 + 0x88);
            *(undefined2 **)(pcVar11 + (int16_t)puVar24 + 0x88) = puVar23;
            UNLOCK();
            *(undefined2 *)(in_BX + iVar5) = *(undefined2 *)0x8ca3;
            puVar23 = (undefined2 *)(iVar5 + 4);
            uVar9 = *(uint16_t *)(iVar5 + 2);
            unaff_BP = in_BX + 0x7e10;
            pcVar11[0xc01] = pcVar11[0xc01] + (char)(uVar9 >> 8);
            unaff_DI = (undefined *)(uVar9 | 0x8e00);
            in_BX[0xe] = in_BX[0xe] + (char)((uint16_t)unaff_DI >> 8);
            puVar1 = (uint8_t *)(pcVar11 + 0x6f);
            uVar15 = *puVar1;
            uVar16 = (uint8_t)((uint16_t)unaff_BP >> 8);
            bVar26 = SCARRY1(*puVar1, uVar16);
            *puVar1 = *puVar1 + uVar16;
            uVar3 = *puVar1;
        } while (!CARRY1(uVar15, uVar16));
    } else {
        puVar8 = puVar24;
        puVar24 = puVar6 + 3;
        *puVar8 = (uint16_t)unaff_DI;
    }
    cVar17 = (char)((uint16_t)unaff_BP >> 8);
    (pcVar11 + (int16_t)puVar23)[0x6b] = (pcVar11 + (int16_t)puVar23)[0x6b] + cVar17;
    out(*puVar23, in_DX);
    uVar13 = *(undefined2 *)0xa9a8;
    in_BX[-0x5e61] = in_BX[-0x5e61] + (char)in_BX;
    *(undefined *)0xa200 = (char)uVar13;
    *(undefined2 *)0xabaa = uVar13;
    *(char *)((int16_t)puVar23 + -0x5359) = *(char *)((int16_t)puVar23 + -0x5359) + (char)((uint16_t)uVar13 >> 8);
    puVar12 = (undefined *)puVar23[1];
    *(char *)((int16_t)puVar23 + 0x67b1) = *(char *)((int16_t)puVar23 + 0x67b1) + cVar17;
    puVar19 = (undefined2 *)puVar22;
    puVar22 = (undefined2 *)ZEXT24(puVar19 + -1);
    puVar19[-1] = unaff_CS;
    puVar23 = puVar23 + 2;
code_r0x000000f2:
    puVar27 = (undefined *)CONCAT22(in_DX, puVar12);
    pcVar11[0x6f] = pcVar11[0x6f] + (char)((uint16_t)unaff_BP >> 8);
code_r0x000000f5:
    while( true ) {
        in_DX = (int16_t)((uint32_t)puVar27 >> 0x10);
        (in_BX + (int16_t)puVar24)[0xae] = (in_BX + (int16_t)puVar24)[0xae] + -0x4c;
        uVar3 = (uint8_t)unaff_BP & 0xf;
        unaff_DI = (undefined *)
                   ((int16_t)(undefined2 *)puVar22 << uVar3 | (uint16_t)(undefined2 *)puVar22 >> 0x10 - uVar3);
        puVar22 = (undefined2 *)((uint32_t)puVar27 & 0xffff);
        in_BX = (char *)CONCAT11((char)((uint16_t)in_BX >> 8), (char)in_BX + (char)((uint32_t)puVar27 >> 0x10));
code_r0x00000103:
        puVar20 = (undefined2 *)puVar22;
        *(char *)(puVar23 + 0x4e) = *(char *)(puVar23 + 0x4e) + (char)in_DX;
code_r0x0000010a:
        in_BX[(int16_t)puVar23] = in_BX[(int16_t)puVar23] + (char)unaff_DI;
        cVar17 = (char)((uint16_t)in_BX >> 8) + (char)in_BX;
        in_BX = (char *)CONCAT11(cVar17, (char)in_BX);
        cVar17 = cVar17 == '\0';
        puVar21 = (undefined *)((int16_t)puVar20 + -2);
        *(undefined2 *)((int16_t)puVar20 + -2) = 0x111;
        puVar27 = (undefined *)
                  tilecol_func_1(*(int16_t *)((int16_t)puVar20 + 0xb3), *(int16_t *)((int16_t)puVar20 + 0xb5), in_DX, 
                               (int16_t)in_BX);
        puVar22 = (undefined2 *)ZEXT24(puVar21 + 4);
        unaff_BP = unaff_BP + -1;
        if (unaff_BP == (char *)0x0 || cVar17 != '\0') break;
        puVar7 = puVar23;
        puVar23 = puVar23 + 1;
        out(*puVar7, (int16_t)((uint32_t)puVar27 >> 0x10));
    }
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x1fa: tilecol_func_1 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Instruction at (ram,0x0000024d) overlaps instruction at (ram,0x0000024c)
// 
// WARNING: Unable to track spacebase fully for stack
// WARNING: Unknown calling convention -- yet parameter storage is locked

void tilecol_func_1(int16_t arg_b5h, int16_t arg_b7h, int16_t arg2, int16_t arg3)
{
    char *pcVar1;
    uint8_t *puVar2;
    int16_t *piVar3;
    uint8_t uVar4;
    char in_AL;
    int16_t iVar5;
    char cVar6;
    uint8_t uVar7;
    char cVar8;
    int16_t unaff_BP;
    int16_t unaff_SI;
    uint16_t uVar9;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 in_GS;
    int16_t in_stack_00000001;
    int16_t in_stack_00000003;
    uint8_t *in_stack_00000005;
    int16_t in_stack_00000007;
    int16_t in_stack_0000000b;
    int16_t in_stack_0000000d;
    char in_stack_0000000f;
    uint16_t in_stack_00000011;
    undefined2 in_stack_00000015;
    char cStack_1;
    
    cVar6 = (char)arg2 + -1;
    *(char *)(unaff_DI + 0x46) = *(char *)(unaff_DI + 0x46) + in_AL;
    *(char *)(arg3 + 0x15) = *(char *)(arg3 + 0x15) + in_AL;
    uVar9 = unaff_SI - 1;
    pcVar1 = (char *)(arg3 + -1 + unaff_DI);
    *pcVar1 = *pcVar1 + cVar6;
    *(char *)(unaff_SI + 0x15) = *(char *)(unaff_SI + 0x15) + cVar6;
    pcVar1 = (char *)(uVar9 + unaff_SI + -2 + 0x51);
    *pcVar1 = *pcVar1 + cVar6;
    pcVar1 = (char *)(unaff_BP + -1 + unaff_SI + -2 + 0x53);
    *pcVar1 = *pcVar1 + cVar6;
    pcVar1 = (char *)(uVar9 + unaff_DI + -1);
    *pcVar1 = *pcVar1 + cStack_1;
    *(char *)(uVar9 + in_stack_00000001) = *(char *)(uVar9 + in_stack_00000001) + (char)(unaff_BP + -1);
    *(uint16_t *)(unaff_DI + 0x3e) = *(uint16_t *)(unaff_DI + 0x3e) | uVar9;
    *(char *)(unaff_SI + 0x5f) = *(char *)(unaff_SI + 0x5f) + (char)uVar9;
    in_stack_00000005[in_stack_0000000b] = in_stack_00000005[in_stack_0000000b] ^ (uint8_t)in_stack_00000011;
    *(undefined2 *)0x4e3a = *(undefined2 *)0x4e3a;
    in_stack_00000005[in_stack_00000007] = in_stack_00000005[in_stack_00000007] + in_stack_0000000f;
    uVar9 = in_stack_00000011 | *(uint16_t *)(in_stack_00000005 + in_stack_0000000b + 0x41);
    in_stack_00000005[in_stack_0000000b] = in_stack_00000005[in_stack_0000000b] + (char)uVar9;
    puVar2 = in_stack_00000005;
    uVar4 = *puVar2;
    uVar7 = (uint8_t)in_stack_0000000d;
    *puVar2 = *puVar2 + uVar7;
    iVar5 = uVar9 + 0x600 + (uint16_t)CARRY1(uVar4, uVar7);
    *(int16_t *)(in_stack_0000000b + in_stack_00000003) =
         *(int16_t *)(in_stack_0000000b + in_stack_00000003) + in_stack_0000000d +
         (uint16_t)(63999 < uVar9 || CARRY2(uVar9 + 0x600, (uint16_t)CARRY1(uVar4, uVar7)));
    puVar2 = (uint8_t *)(in_stack_00000007 + in_stack_00000003);
    uVar4 = *puVar2;
    *puVar2 = *puVar2 + uVar7;
    cVar8 = (char)((uint16_t)in_stack_0000000d >> 8);
    cVar6 = (char)iVar5;
    if (*puVar2 == 0) {
        if (!CARRY1(uVar4, uVar7) && *puVar2 != 0) goto code_r0x00000264;
        if ((POPCOUNT(*puVar2) & 1U) == 0) {
            *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
            *(char *)(in_stack_00000003 + 0xb6) = *(char *)(in_stack_00000003 + 0xb6) + -0x49;
            *(int16_t *)(in_stack_00000005 + in_stack_0000000b) =
                 *(int16_t *)(in_stack_00000005 + in_stack_0000000b) + iVar5;
            *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
            *(char *)(in_stack_0000000b + 0xb8) = *(char *)(in_stack_0000000b + 0xb8) + -0x49;
            *(int16_t *)(in_stack_00000005 + in_stack_0000000b) =
                 *(int16_t *)(in_stack_00000005 + in_stack_0000000b) + iVar5;
            *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
            goto code_r0x00000264;
        }
        *(char *)(in_stack_00000007 + 0xb7) = *(char *)(in_stack_00000007 + 0xb7) + cVar8;
        *(int16_t *)(in_stack_00000005 + in_stack_0000000b) =
             *(int16_t *)(in_stack_00000005 + in_stack_0000000b) + iVar5;
        *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
        *(char *)(in_stack_00000007 + 0xb7) = *(char *)(in_stack_00000007 + 0xb7) + cVar8;
        *(int16_t *)(in_stack_00000005 + in_stack_0000000b) =
             *(int16_t *)(in_stack_00000005 + in_stack_0000000b) + iVar5;
        unaff_SS = in_stack_00000015;
    }
    in_stack_0000000b = CONCAT11(0xb8, (char)in_stack_0000000b);
    *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
    *(char *)(in_stack_00000007 + 0xb5) = *(char *)(in_stack_00000007 + 0xb5) + cVar8;
code_r0x00000264:
    piVar3 = (int16_t *)(in_stack_0000000b + in_stack_00000003 + -0x474a);
    *piVar3 = *piVar3 + in_stack_00000003;
    *(char *)(in_stack_0000000b + in_stack_00000003) = *(char *)(in_stack_0000000b + in_stack_00000003) + cVar6;
    *(undefined *)(in_stack_0000000b + in_stack_00000003) = *(undefined *)(in_stack_0000000b + in_stack_00000003);
    *(int16_t *)(in_stack_0000000b + -0x4748) = *(int16_t *)(in_stack_0000000b + -0x4748) + iVar5;
    *(undefined2 *)(in_stack_0000000b + in_stack_00000003) = 0xbebd;
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x9b8: tilecol_func_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void tilecol_func_2(int16_t arg3)
{
    int16_t iVar1;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    iVar1 = *(uint16_t *)0xaa3f - arg3;
    if (*(uint16_t *)0xaa3f < (uint16_t)arg3) {
        iVar1 = 0;
    }
    *(int16_t *)0xaa3f = iVar1;
    (**(code **)0x200c)(iVar1);
    if (in_stack_00000000 != 0) {
        return;
    }
    *(undefined *)0xaa58 = 0;
    *(undefined *)0xff2e = 0xff;
    *(undefined *)0xaa58 = 0;
    *(undefined *)0xaa65 = 0;
    *(undefined *)0xaa67 = 0;
    *(undefined *)0xaa56 = 0;
    *(undefined *)0xaa61 = 0;
    return;
}

/* ====================================================================== */
/* 0x525: tilecol_multiply */
/* ====================================================================== */


void tilecol_multiply(void)
{
    undefined2 unaff_DS;
    
    if (*(int16_t *)0xaa3c - 1U < 0xf) {
        return;
    }
    *(uint16_t *)0xaa3c = *(int16_t *)0xaa3c - 1U;
    return;
}

/* ====================================================================== */
/* 0x536: tilecol_func_4 */
/* ====================================================================== */


void tilecol_func_4(void)
{
    undefined2 unaff_DS;
    
    if (0x1e < *(int16_t *)0xaa3c + 1U) {
        return;
    }
    *(uint16_t *)0xaa3c = *(int16_t *)0xaa3c + 1U;
    return;
}

/* ====================================================================== */
/* 0x75c: fcn.0000075c */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000075c(int16_t arg1, int16_t arg3, int16_t arg4)
{
    uint8_t *puVar1;
    undefined *puVar2;
    uint8_t uVar3;
    undefined *puVar4;
    int16_t iVar5;
    uint8_t *unaff_BP;
    undefined *unaff_SI;
    undefined *puVar6;
    undefined2 unaff_DS;
    
    puVar4 = (undefined *)((uint16_t)*(uint8_t *)0xaa53 * 10 + (uint16_t)*(uint8_t *)0xaa54 + -0x5597);
    do {
        iVar5 = 8;
        do {
            puVar6 = puVar4;
            puVar1 = unaff_BP;
            uVar3 = *puVar1;
            *puVar1 = *puVar1 << 1 | (char)uVar3 < '\0';
            if ((char)uVar3 < '\0') {
                puVar2 = unaff_SI;
                unaff_SI = unaff_SI + 1;
                *puVar6 = *puVar2;
            }
            iVar5 = iVar5 + -1;
            puVar4 = puVar6 + 1;
        } while (iVar5 != 0);
        puVar4 = puVar6 + 3;
        unaff_BP = unaff_BP + 1;
        arg4 = arg4 + -1;
    } while (arg4 != 0);
    return;
}

