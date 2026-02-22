/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x956 = "2A AN b"; // [ibm037]

/* ====================================================================== */
/* 0x2: zr1_30 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x0000021a) overlaps instruction at (ram,0x00000219)
// 
// WARNING: Unable to track spacebase fully for stack
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr1_30(int16_t arg3, int16_t arg1)
{
    char **ppcVar1;
    char *pcVar2;
    int16_t *piVar3;
    uint8_t *puVar4;
    undefined2 *puVar5;
    char **ppcVar6;
    uint8_t uVar7;
    char cVar8;
    uint8_t uVar9;
    uint8_t uVar10;
    int16_t iVar11;
    undefined uVar15;
    uint8_t *puVar12;
    int16_t iVar13;
    uint16_t uVar14;
    char **ppcVar16;
    int16_t iVar17;
    char *pcVar18;
    undefined2 uVar19;
    char cVar20;
    char **ppcVar21;
    uint8_t uVar22;
    undefined *puVar23;
    undefined *puVar24;
    undefined *puVar25;
    uint8_t **ppuVar26;
    uint8_t **ppuVar27;
    uint8_t **ppuVar28;
    undefined *puVar29;
    uint8_t **ppuVar30;
    uint8_t **ppuVar31;
    char *pcVar32;
    char *unaff_SI;
    char *pcVar33;
    undefined2 *puVar34;
    undefined2 *puVar35;
    uint8_t *unaff_DI;
    int16_t unaff_ES;
    undefined2 uVar36;
    undefined2 unaff_SS;
    int16_t unaff_DS;
    undefined2 uVar37;
    bool bVar38;
    uint8_t in_AF;
    undefined4 uVar39;
    int16_t in_stack_00000000;
    char *in_stack_00000002;
    undefined2 *in_stack_00000004;
    char **ppcStack0006;
    char **in_stack_00000008;
    char **in_stack_0000000a;
    char **in_stack_0000000c;
    int16_t in_stack_0000000e;
    int16_t in_stack_000000fe;
    int16_t in_stack_000002fe;
    int16_t in_stack_000004fe;
    short unsigned int in_stack_00000afe;
    uint8_t *apuStack_e [4];
    undefined auStack_6 [2];
    int16_t aiStack_4 [2];
    
    unaff_SI[arg3] = unaff_SI[arg3] + (char)arg1;
code_r0x00000004:
    *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI) + (char)arg1;
    *(char *)0x8015 = *(char *)0x8015 + (char)unaff_DI;
    *(uint8_t *)(arg3 + arg1) = *(uint8_t *)(arg3 + arg1) + (char)unaff_DI;
    uVar14 = CONCAT11((char)((uint16_t)unaff_DI >> 8), *(undefined *)0x8714);
    unaff_DI = (uint8_t *)arg1;
    do {
        *unaff_SI = *unaff_SI + (char)uVar14;
        uVar7 = (char)uVar14 + 0x57;
        ppcVar1 = (char **)(arg3 + 0x600);
        pcVar18 = *ppcVar1;
        *ppcVar1 = (char *)((int16_t)*ppcVar1 << 1 | (uint16_t)(0xa8 < uVar14));
        in_AF = 9 < (uVar7 & 0xf) | in_AF;
        uVar7 = uVar7 + in_AF * -6;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) =
             *(uint8_t *)(arg3 + (int16_t)unaff_DI) +
             uVar7 + (0x9f < uVar7 | (int16_t)pcVar18 < 0 | in_AF * (uVar7 < 6)) * -0x60;
        uVar14 = (uint16_t)*(uint8_t *)0x86a8;
        ppcVar21 = (char **)arg3;
        while( true ) {
            ppcVar16 = in_stack_0000000c;
            ppcVar6 = in_stack_0000000a;
            arg3 = (int16_t)in_stack_00000008;
            pcVar32 = (char *)in_stack_00000004;
            unaff_SI = in_stack_00000002;
            *unaff_DI = *unaff_DI + (char)uVar14;
            pcVar2 = (char *)(CONCAT11((uint8_t)((uint16_t)ppcVar21 >> 8) | *(uint8_t *)(ppcVar21 + 0x70), 
                                       (char)ppcVar21) + 0x600);
            *pcVar2 = *pcVar2 + '\x01';
            cVar8 = in(0);
            iVar17 = CONCAT11((char)((uint16_t)in_stack_0000000e >> 8), cVar8);
            piVar3 = (int16_t *)((int16_t)in_stack_00000008 + in_stack_00000000 + -0x79a8);
            *piVar3 = *piVar3 + iVar17;
            *(char *)((int16_t)in_stack_00000008 + in_stack_00000000) =
                 *(char *)((int16_t)in_stack_00000008 + in_stack_00000000) + cVar8;
            *in_stack_00000008 = *in_stack_00000008 + iVar17;
            *(char *)((int16_t)in_stack_00000008 + (int16_t)in_stack_00000002) = cVar8;
            ppcVar1 = in_stack_00000008;
            *(uint8_t *)ppcVar1 = *(uint8_t *)ppcVar1 >> 1 | *(char *)ppcVar1 << 7;
            ppcVar21 = (char **)*(undefined2 *)((int16_t)in_stack_00000008 + (int16_t)in_stack_00000002);
            in_stack_0000000a = in_stack_0000000c;
            in_stack_00000008 = ppcVar6;
            ppcStack0006 = (char **)arg3;
            in_stack_00000002 = (char *)in_stack_00000004;
            *(int16_t *)((int16_t)in_stack_00000004 + 0x83) =
                 *(int16_t *)((int16_t)in_stack_00000004 + 0x83) + (int16_t)ppcVar21;
            *(char **)arg3 = *(char **)arg3 + arg3;
            *(char *)(arg3 + (int16_t)unaff_SI) = -0x7d;
            pcVar18 = (char *)((int16_t)in_stack_00000004 + 0x83);
            aiStack_4[1] = 0x53;
            in_stack_00000004 = (undefined2 *)&stack0x000e;
            in_stack_0000000c = ppcVar21;
            in_stack_0000000e = unaff_ES;
            uVar39 = fcn.000000d6(in_stack_000002fe, in_stack_000000fe, in_stack_00000afe, in_stack_000004fe, 0x83, arg3
                                  , (int16_t)ppcVar16, 
                                  CONCAT11((char)((uint16_t)ppcVar6 >> 8), (char)ppcVar6 + *pcVar18));
            cVar8 = *(char *)0xfe7f;
            unaff_DI = (uint8_t *)(*(int16_t *)(arg3 + -1) + 0x83);
            (pcVar32 + (int16_t)unaff_SI)[0x600] = (pcVar32 + (int16_t)unaff_SI)[0x600] + 'p';
            pcVar32[(int16_t)unaff_SI] = pcVar32[(int16_t)unaff_SI] + -0x7d;
            iVar11 = CONCAT11((char)((uint16_t)((int16_t)uVar39 + -0xe1) >> 8), cVar8 + *(char *)arg3);
            pcVar32[0x100] = pcVar32[0x100] + '=';
            arg1 = iVar11 + -0x200;
            uVar7 = (uint8_t)arg1;
            pcVar32[(int16_t)unaff_SI] = pcVar32[(int16_t)unaff_SI] + uVar7;
            piVar3 = (int16_t *)(arg3 + (int16_t)unaff_SI);
            iVar17 = *piVar3;
            *piVar3 = *piVar3 + 1;
            in_stack_00000000 = unaff_DS;
            if (*piVar3 == 0 || SCARRY2(iVar17, 1) != *piVar3 < 0) goto code_r0x00000004;
            puVar4 = (uint8_t *)(arg3 + (int16_t)unaff_DI);
            uVar10 = *puVar4;
            uVar22 = *puVar4;
            *puVar4 = *puVar4 + uVar7;
            if (*puVar4 == 0 || SCARRY1(uVar22, uVar7) != (char)*puVar4 < '\0') break;
            pcVar32[(int16_t)unaff_DI] = pcVar32[(int16_t)unaff_DI] + uVar7;
            (pcVar32 + (int16_t)unaff_SI)[0x103] = (pcVar32 + (int16_t)unaff_SI)[0x103] + uVar7;
            *(uint8_t *)0x83 = uVar7;
            uVar15 = (undefined)((uint16_t)arg1 >> 8);
            cVar8 = uVar7 + *(uint8_t *)(arg3 + (int16_t)unaff_DI);
            uVar14 = CONCAT11(uVar15, cVar8);
            iVar17 = (int16_t)ppcVar16 + -1;
            if (iVar17 == 0 || cVar8 == '\0') {
                pcVar32[(int16_t)unaff_DI] = pcVar32[(int16_t)unaff_DI] + cVar8;
                *(uint16_t *)(arg3 + (int16_t)unaff_SI) = *(uint16_t *)(arg3 + (int16_t)unaff_SI) | uVar14;
                *(uint16_t *)(pcVar32 + (int16_t)unaff_DI + 0x100) =
                     *(int16_t *)(pcVar32 + (int16_t)unaff_DI + 0x100) + uVar14;
                *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI) + '\a';
                *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI) + '\x06';
                *(int16_t *)(arg3 + (int16_t)unaff_SI) = *(int16_t *)(arg3 + (int16_t)unaff_SI) + 0xd;
                *(char *)0x8003 = *(char *)0x8003 + (char)arg3;
                *(uint8_t *)(arg3 + (int16_t)unaff_DI) =
                     *(uint8_t *)(arg3 + (int16_t)unaff_DI) +
                     (char)(&stack0x0000 +
                           CONCAT11(uVar15, (cVar8 + 'y') - CARRY2((uint16_t)&stack0x0000, uVar14)) + uVar14);
                *(undefined2 *)((int16_t)aiStack_4 + uVar14 + 2) = 0xb6;
                uVar39 = fcn.00000136((int16_t)(&stack0x0000 +
                                               CONCAT11(uVar15, (cVar8 + 'y') - CARRY2((uint16_t)&stack0x0000, uVar14))
                                               + uVar14), arg3, iVar17, (int16_t)((uint32_t)uVar39 >> 0x10));
                iVar11 = (int16_t)((uint32_t)uVar39 >> 0x10);
                *(char *)(arg3 + (int16_t)unaff_SI) = (char)(unaff_DI + (int16_t)uVar39);
                puVar12 = unaff_DI + (int16_t)uVar39 + *(int16_t *)0x4c0;
                *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI) + '\x03';
                pcVar18 = (char *)CONCAT11((uint8_t)((uint16_t)iVar17 >> 8) | (pcVar32 + (int16_t)unaff_SI)[-0x7de8], 
                                           (char)iVar17);
                *(char *)0xe38 = *(char *)0xe38 + (char)puVar12;
                *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI);
                *(char *)(arg3 + (int16_t)unaff_SI) = *(char *)(arg3 + (int16_t)unaff_SI) + '\r';
                pcVar33 = unaff_SI + (int16_t)puVar12;
                *(char *)(arg3 + (int16_t)pcVar33) =
                     (*(char *)(arg3 + (int16_t)pcVar33) - (char)puVar12) -
                     CARRY2((uint16_t)unaff_SI, (uint16_t)puVar12);
                uVar36 = *(undefined2 *)((int16_t)&stack0x0002 + uVar14);
                uVar22 = *(uint8_t *)(arg3 + (int16_t)pcVar33);
                uVar9 = uVar22 + 7;
                puVar4 = (uint8_t *)(pcVar32 + (int16_t)pcVar33 + 0x300);
                uVar7 = *puVar4;
                uVar10 = *puVar4;
                *puVar4 = (uVar10 - uVar9) - (0xf8 < uVar22);
                *pcVar33 = *pcVar33 + (char)iVar17 + (uVar7 < uVar9 || (uint8_t)(uVar10 - uVar9) < (0xf8 < uVar22));
                *(undefined2 *)((int16_t)&stack0x0002 + uVar14) = uVar36;
                *(char *)(arg3 + (int16_t)pcVar33) = *(char *)(arg3 + (int16_t)pcVar33) + '\a';
                puVar12 = (uint8_t *)
                          CONCAT11((char)((uint16_t)
                                          (unaff_DI +
                                          CONCAT11((char)((uint16_t)(puVar12 + 8 + (int16_t)unaff_DI) >> 8), uVar9)) >>
                                         8), 
                                   (char)(unaff_DI +
                                         CONCAT11((char)((uint16_t)(puVar12 + 8 + (int16_t)unaff_DI) >> 8), uVar9)) *
                                   '\x02');
                uVar37 = *(undefined2 *)((int16_t)&stack0x0002 + uVar14);
                *(uint8_t **)((int16_t)&stack0x0002 + uVar14) = puVar12;
                *(char **)(&stack0x0000 + uVar14) = pcVar18;
                *(int16_t *)((int16_t)aiStack_4 + uVar14 + 2) = iVar11;
                *(undefined2 *)((int16_t)apuStack_e + uVar14 + 10) = arg3;
                *(uint16_t *)((int16_t)apuStack_e + uVar14 + 8) = (int16_t)&stack0x0004 + uVar14;
                *(char **)((int16_t)apuStack_e + uVar14 + 6) = pcVar32;
                *(char **)((int16_t)apuStack_e + uVar14 + 4) = pcVar33;
                *(uint8_t **)((int16_t)apuStack_e + uVar14 + 2) = unaff_DI;
                *(char *)(arg3 + (int16_t)pcVar33) = *(char *)(arg3 + (int16_t)pcVar33) + '\x05';
                *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 0x80;
                *(undefined2 *)((int16_t)apuStack_e + uVar14) = 0;
                puVar34 = (undefined2 *)((uint16_t)pcVar33 ^ (uint16_t)puVar12);
                puVar23 = (undefined *)((int16_t)apuStack_e + uVar14);
                goto code_r0x00000102;
            }
            *(undefined **)((char *)(arg3 + (int16_t)unaff_SI) + -0x7958) =
                 &stack0x0000 + *(int16_t *)((char *)(arg3 + (int16_t)unaff_SI) + -0x7958);
            ppcVar21 = (char **)arg3;
        }
        uVar14 = iVar11 + -0x180 + (uint16_t)CARRY1(uVar10, uVar7);
        *(undefined **)((char *)(arg3 + (int16_t)unaff_SI) + -0x78ec) =
             &stack0x0000 + *(int16_t *)((char *)(arg3 + (int16_t)unaff_SI) + -0x78ec);
        in_stack_00000000 = unaff_ES;
    } while( true );
    while( true ) {
        *(char *)0xf419 = *(char *)0xf419 + cVar20;
        *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34);
        uVar36 = *(undefined2 *)(puVar23 + iVar13 + -0x17);
        LOCK();
        *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 1;
        UNLOCK();
        ppcVar1 = (char **)arg3;
        *ppcVar1 = *ppcVar1 + (int16_t)pcVar18;
        puVar12 = (uint8_t *)(arg3 + (int16_t)puVar34);
        pcVar18 = pcVar18 + -1;
        puVar23 = puVar23 + iVar13 + -0x15;
        puVar25 = puVar24;
        if (pcVar18 == (char *)0x0 || *ppcVar1 == (char *)0x0) break;
code_r0x00000102:
        iVar13 = CONCAT11((char)((uint16_t)puVar12 >> 8), (char)puVar12 + *(char *)arg3);
        *(int16_t *)(puVar23 + -2) = iVar13;
        *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 9;
        iVar13 = iVar13 * 2;
        cVar8 = (char)iVar13;
        *(uint8_t *)puVar34 = *(uint8_t *)puVar34 + cVar8;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + cVar8;
        *(char *)0x8303 = *(char *)0x8303 + cVar8;
        pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + cVar8;
        uVar37 = *(undefined2 *)(puVar23 + -2);
        *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + 10;
        *(undefined2 *)(puVar23 + -2) = uVar37;
        ((uint8_t *)(arg3 + (int16_t)puVar34))[0x3b] =
             ((uint8_t *)(arg3 + (int16_t)puVar34))[0x3b] + (char)((uint16_t)iVar13 >> 8);
        *(undefined2 *)(puVar23 + -4) = 0;
        cVar20 = (char)((uint16_t)arg3 >> 8);
        pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + cVar20;
        cVar8 = (char)(iVar13 + 1);
        pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + cVar8;
        *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + 2;
        pcVar32[(int16_t)unaff_DI] = pcVar32[(int16_t)unaff_DI] + cVar8;
        *(uint8_t *)(puVar34 + 0x380) = *(uint8_t *)(puVar34 + 0x380) + 3;
        uVar10 = cVar8 + *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 1;
        (pcVar32 + (int16_t)unaff_DI)[0x100] = (pcVar32 + (int16_t)unaff_DI)[0x100] + '`';
        *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + 0xe;
        puVar34 = (undefined2 *)((int16_t)puVar34 + (int16_t)unaff_DI);
        pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + cVar20;
        puVar4 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar4 = uVar10;
        puVar4 = (uint8_t *)(arg3 + (int16_t)puVar34);
        uVar7 = (uint8_t)pcVar18 & 7;
        *puVar4 = *puVar4 << uVar7 | *puVar4 >> 8 - uVar7;
        pcVar18 = pcVar18 + (int16_t)pcVar32;
        *(uint8_t *)puVar34 = *(uint8_t *)puVar34;
        *(undefined2 *)(puVar23 + iVar13 + -5) = uVar37;
        LOCK();
        iVar17 = *(int16_t *)(arg3 + (int16_t)puVar34);
        *(int16_t *)(arg3 + (int16_t)puVar34) = CONCAT11((char)((uint16_t)(iVar13 + 1) >> 8), uVar10);
        UNLOCK();
        *(uint8_t **)((uint8_t *)(arg3 + (int16_t)puVar34) + -0x7e) =
             *(uint8_t **)((uint8_t *)(arg3 + (int16_t)puVar34) + -0x7e) + (int16_t)puVar34;
        pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + (char)pcVar18;
        *(undefined2 *)(puVar23 + iVar13 + -7) = uVar36;
        iVar17 = iVar17 * 2 + *(int16_t *)(arg3 + (int16_t)puVar34);
        *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + -0x7de8) =
             *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + -0x7de8) + iVar17;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (uint8_t)iVar17;
        *(int16_t *)(puVar23 + iVar13 + -9) = iVar17;
        *(char **)(puVar23 + iVar13 + -0xb) = pcVar18;
        *(int16_t *)(puVar23 + iVar13 + -0xd) = iVar11;
        *(int16_t *)(puVar23 + iVar13 + -0xf) = arg3;
        *(undefined **)(puVar23 + iVar13 + -0x11) = puVar23 + iVar13 + -7;
        *(char **)(puVar23 + iVar13 + -0x13) = pcVar32;
        puVar24 = puVar23 + iVar13 + -0x15;
        *(undefined2 **)(puVar23 + iVar13 + -0x15) = puVar34;
        puVar25 = puVar23 + iVar13 + -0x17;
        *(uint8_t **)(puVar23 + iVar13 + -0x17) = unaff_DI;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar34);
        *(uint8_t *)(arg3 + (int16_t)puVar34) = (uint8_t)iVar17;
        UNLOCK();
        uVar10 = uVar7 | 0x3f;
        puVar12 = (uint8_t *)(CONCAT11((char)((uint16_t)iVar17 >> 8), uVar7) | 0x3f);
        if (-1 < (char)uVar10) {
            *unaff_DI = *unaff_DI + uVar10;
            break;
        }
    }
    uVar10 = (uint8_t)puVar12;
    *(uint8_t *)(char **)arg3 = *(char *)(char **)arg3 + uVar10;
    *(char *)0xf001 = *(char *)0xf001 + '\x01';
    *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + uVar10;
    *(uint8_t **)(puVar25 + -2) = puVar12;
    *(char **)(puVar25 + -4) = pcVar18;
    *(int16_t *)(puVar25 + -6) = iVar11;
    *(int16_t *)(puVar25 + -8) = arg3;
    *(undefined **)(puVar25 + -10) = puVar25;
    *(char **)(puVar25 + -0xc) = pcVar32;
    ppuVar26 = (uint8_t **)(puVar25 + -0xe);
    *(undefined2 **)(puVar25 + -0xe) = puVar34;
    *(uint8_t **)(puVar25 + -0x10) = unaff_DI;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar34);
    *(uint8_t *)(arg3 + (int16_t)puVar34) = uVar10;
    iVar13 = CONCAT11((char)((uint16_t)puVar12 >> 8), uVar7);
    UNLOCK();
    puVar4 = (uint8_t *)(arg3 + (int16_t)puVar34);
    *puVar4 = *puVar4 << 7 | *puVar4 >> 1;
    uVar36 = *(undefined2 *)(puVar25 + -0x10);
    iVar17 = iVar13 + 1;
    puVar4 = (uint8_t *)(arg3 + (int16_t)puVar34);
    *puVar4 = *puVar4 << 1 | *puVar4 >> 7;
    *(char *)(char **)(arg3 + -2) = *(char *)(char **)(arg3 + -2) + cVar20;
    *(char **)arg3 = *(char **)arg3 + iVar17;
    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 3;
    *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + iVar17;
    iVar13 = iVar13 + 2;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar34);
    *(uint8_t *)(arg3 + (int16_t)puVar34) = (uint8_t)iVar13;
    UNLOCK();
    *(uint8_t **)(pcVar32 + (int16_t)unaff_DI) = *(uint8_t **)(pcVar32 + (int16_t)unaff_DI) + (int16_t)unaff_DI;
    *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + 5;
    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) & uVar7;
    iVar17 = (CONCAT11((char)((uint16_t)iVar13 >> 8), uVar7) ^ 0x3000) + 0x8f02;
    uVar7 = (uint8_t)iVar17;
    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) & uVar7;
    iVar17 = CONCAT11((char)((uint16_t)iVar17 >> 8), uVar7 + *(char *)(char **)(arg3 + 0x100)) +
             *(int16_t *)(pcVar32 + (int16_t)puVar34 + 0x300);
    uVar14 = CONCAT11((char)((uint16_t)iVar17 >> 8), (char)iVar17 + *(uint8_t *)(arg3 + (int16_t)puVar34));
    do {
        pcVar32[0x100] = pcVar32[0x100] + ':';
        iVar17 = *(int16_t *)((uint8_t *)(arg3 + (int16_t)unaff_DI) + 0x3000);
        LOCK();
        uVar19 = *(undefined2 *)(arg3 + (int16_t)puVar34);
        *(undefined2 *)(arg3 + (int16_t)puVar34) = CONCAT11((char)(uVar14 + 0x9b06 >> 8), *(undefined *)0x400);
        UNLOCK();
        uVar10 = *(uint8_t *)(arg3 + (int16_t)unaff_DI);
        (pcVar32 + (int16_t)unaff_DI)[0x100] = (pcVar32 + (int16_t)unaff_DI)[0x100] + '>';
        *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 1;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar34);
        *(uint8_t *)(arg3 + (int16_t)puVar34) = (char)uVar19 + uVar10 + 1;
        UNLOCK();
        *(uint8_t **)(pcVar32 + (int16_t)unaff_DI) = *(uint8_t **)(pcVar32 + (int16_t)unaff_DI) + (int16_t)unaff_DI;
        cVar8 = (char)((uint16_t)iVar11 >> 8);
        *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + cVar8;
        (pcVar32 + (int16_t)unaff_DI)[0xb00] = (pcVar32 + (int16_t)unaff_DI)[0xb00] + '\x06';
        *(char *)0x8280 = *(char *)0x8280 + (char)pcVar18;
        *(char *)0xd406 = *(char *)0xd406 + (char)pcVar18;
        ((uint8_t *)(arg3 + (int16_t)puVar34))[1] = ((uint8_t *)(arg3 + (int16_t)puVar34))[1] + cVar8;
        puVar35 = puVar34 + 1;
        out(*puVar34, iVar11);
        *(char *)(char **)arg3 = *(char *)(char **)arg3 + (char)((uint16_t)pcVar18 >> 8);
        uVar10 = in(iVar11);
        unaff_DI[-1] = uVar10;
        ppuVar27 = (uint8_t **)((undefined *)((int16_t)ppuVar26 + iVar17) + arg3);
        uVar39 = CONCAT22(iVar11, CONCAT11(0xe0, uVar7 - 0x3b) + 0x3069);
        puVar12 = unaff_DI;
        while( true ) {
            iVar11 = (int16_t)((uint32_t)uVar39 >> 0x10);
            cVar8 = (char)((uint16_t)pcVar18 >> 8) + ((uint8_t *)(arg3 + (int16_t)puVar12))[-0x72];
            iVar17 = CONCAT11(cVar8, (char)pcVar18);
            *(uint8_t *)(arg3 + (int16_t)puVar35) = *(uint8_t *)(arg3 + (int16_t)puVar35) + 6;
            *(uint8_t *)(arg3 + (int16_t)puVar35) = 0;
            *(char *)(char **)arg3 = *(char *)(char **)arg3 + (char)uVar39;
            *(uint8_t *)(arg3 + (int16_t)puVar35) = *(uint8_t *)(arg3 + (int16_t)puVar35) + 0xe;
            uVar36 = *ppuVar27;
            *ppuVar27 = (uint8_t *)puVar35;
            ((uint8_t *)(arg3 + (int16_t)puVar35))[1] = ((uint8_t *)(arg3 + (int16_t)puVar35))[1] + cVar8;
            uVar14 = (int16_t)uVar39 + 1U ^ 0xe0;
            uVar7 = in(iVar11);
            *puVar12 = uVar7;
            unaff_DI = puVar12 + 2;
            puVar12[1] = (uint8_t)uVar14;
            puVar34 = puVar35 + 1;
            out(*puVar35, iVar11);
            ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7c] + cVar8;
            puVar5 = puVar34;
            *(uint8_t *)puVar5 = *(uint8_t *)puVar5 + (uint8_t)uVar14;
            uVar7 = *(uint8_t *)puVar5;
            ppuVar26 = ppuVar27 + -1;
            ppuVar27[-1] = (uint8_t *)0x8120;
            pcVar18 = (char *)(iVar17 + -1);
            if (pcVar18 != (char *)0x0 && uVar7 == 0) break;
            pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] + (char)arg3;
            uVar14 = *(int16_t *)0x80 * -0x80;
            ppuVar27[-2] = (uint8_t *)0xe0;
            cVar8 = (char)(iVar11 + uVar14);
            *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + cVar8;
            pcVar32 = pcVar32 + *(int16_t *)(pcVar32 + (int16_t)unaff_DI);
            ppuVar28 = ppuVar27 + -3;
            ppuVar27[-3] = (uint8_t *)0x6903;
            pcVar18 = (char *)(iVar17 + -2);
            if (pcVar18 != (char *)0x0 && pcVar32 != (char *)0x0) {
                uVar19 = CONCAT11((char)(iVar11 + uVar14 >> 8), cVar8 + (char)uVar14);
                pcVar32[(int16_t)unaff_DI] = pcVar32[(int16_t)unaff_DI] + (char)pcVar18;
                ppuVar27[-4] = (uint8_t *)(uVar14 ^ 0x82);
                ppuVar27[-5] = (uint8_t *)pcVar18;
                ppuVar27[-6] = (uint8_t *)uVar19;
                ppuVar27[-7] = (uint8_t *)arg3;
                ppuVar27[-8] = (uint8_t *)(ppuVar27 + -3);
                ppuVar27[-9] = (uint8_t *)pcVar32;
                ppuVar27[-10] = (uint8_t *)puVar34;
                ppuVar27[-0xb] = unaff_DI;
                *(uint8_t **)(puVar12 + 0x6ac2) = *(uint8_t **)(puVar12 + 0x6ac2) + (int16_t)puVar34;
                cVar8 = *(char *)(char **)(arg3 + 0x6b80);
                *(int16_t *)(arg3 + (int16_t)puVar34) = *(int16_t *)(arg3 + (int16_t)puVar34) + 0x14;
                puVar4 = unaff_DI;
                unaff_DI = puVar12 + 3;
                uVar7 = in(uVar19);
                *puVar4 = uVar7;
                *(uint8_t *)(arg3 + (int16_t)puVar34) =
                     *(uint8_t *)(arg3 + (int16_t)puVar34) + (char)((uint16_t)pcVar18 >> 8);
                uVar14 = (uint8_t)((char)(uVar14 ^ 0x82) + cVar8) + 1;
                ppuVar30 = ppuVar27 + -0xc;
                ppuVar27[-0xc] = (uint8_t *)0xc1c4;
                *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 3;
                if (pcVar18 == (char *)0x0) {
                    uVar7 = (char)uVar14 * '\x02';
                    uVar14 = (uint16_t)uVar7;
                    bVar38 = uVar7 < (uint8_t)(pcVar32 + (int16_t)puVar34)[0xb00];
                } else {
                    puVar34 = (undefined2 *)((int16_t)puVar35 + 1);
                    *(uint8_t *)puVar34 = *(uint8_t *)puVar34 + 0x18;
                    ppuVar30 = ppuVar27 + -0xc;
code_r0x000002f2:
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 2;
                    pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] >> 2;
                    puVar4 = (uint8_t *)(pcVar32 + (int16_t)unaff_DI);
                    bVar38 = CARRY1(*puVar4, (uint8_t)pcVar18);
                    *puVar4 = *puVar4 + (uint8_t)pcVar18;
                }
                do {
                    *(uint8_t **)(unaff_DI + 0x6cc0) = *(uint8_t **)(unaff_DI + 0x6cc0) + (int16_t)puVar34;
                    uVar37 = *ppuVar30;
                    cVar8 = (char)((uint16_t)pcVar18 >> 8);
                    (pcVar32 + (int16_t)unaff_DI)[-0x7d] = (pcVar32 + (int16_t)unaff_DI)[-0x7d] + cVar8;
                    *(uint8_t *)puVar34 = *(uint8_t *)puVar34 + (char)uVar19;
                    puVar4 = unaff_DI;
                    unaff_DI = unaff_DI + 1;
                    uVar7 = in(uVar19);
                    *puVar4 = uVar7;
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[8] = ((uint8_t *)(arg3 + (int16_t)puVar34))[8] + cVar8;
                    uVar22 = (uint8_t)pcVar18;
                    *(uint8_t *)puVar34 = *(uint8_t *)puVar34 + uVar22;
                    ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] =
                         ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] + 0x80;
                    cVar20 = (char)((uint16_t)uVar19 >> 8);
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + cVar20;
                    uVar10 = ((char)uVar14 - bVar38) + 0x71U & (uint8_t)*(char **)(arg3 + 0x6c00);
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7e] =
                         ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7e] + cVar20;
                    puVar4 = (uint8_t *)(pcVar32 + (int16_t)puVar34);
                    uVar7 = *puVar4;
                    *puVar4 = *puVar4 + uVar10;
                    *unaff_DI = *unaff_DI >> 1 | CARRY1(uVar7, uVar10) << 7;
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 0xb;
                    *ppuVar30 = (uint8_t *)0x0;
                    puVar34[0x3760] = (uint8_t *)puVar34[0x3760] + (int16_t)puVar34;
                    (pcVar32 + (int16_t)unaff_DI)[-0x7d] = (pcVar32 + (int16_t)unaff_DI)[-0x7d] + cVar8;
                    puVar4 = (uint8_t *)(arg3 + (int16_t)unaff_DI);
                    uVar7 = *puVar4;
                    *puVar4 = *puVar4 + uVar22;
                    ppuVar30[-1] = (uint8_t *)0x6800;
                    pcVar32[(int16_t)unaff_DI] = pcVar32[(int16_t)unaff_DI] + uVar10 + CARRY1(uVar7, uVar22);
                    LOCK();
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[0x69] = uVar10;
                    UNLOCK();
                    puVar12 = (uint8_t *)((int16_t)(puVar34 + 0xb80) + (int16_t)pcVar18);
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[0x68] =
                         (((uint8_t *)(arg3 + (int16_t)puVar34))[0x68] - (char)puVar12) -
                         CARRY2((uint16_t)(puVar34 + 0xb80), (uint16_t)pcVar18);
                    *(uint8_t *)puVar34 = *(uint8_t *)puVar34 + (char)arg3;
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + (char)uVar19;
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[0x77] =
                         ((uint8_t *)(arg3 + (int16_t)puVar34))[0x77] + (char)((uint16_t)puVar12 >> 8);
                    *(char **)0x7440 = *(char **)0x7440 + (int16_t)pcVar18;
                    (pcVar32 + (int16_t)puVar34)[0x10] = (pcVar32 + (int16_t)puVar34)[0x10] ^ 99;
                    LOCK();
                    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar34);
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = (uint8_t)((uint16_t)puVar12 & 0xff70);
                    UNLOCK();
                    uVar37 = ppuVar30[-1];
                    ppuVar30[-1] = (uint8_t *)ppuVar30;
                    uVar22 = (char)((uint16_t)arg3 >> 8) + *(char *)(char **)(arg3 + -0x30);
                    arg3 = CONCAT11(uVar22, (char)arg3);
                    iVar17 = CONCAT11((char)(((uint16_t)puVar12 & 0xff70) >> 8), uVar7) + 1;
                    uVar10 = (uint8_t)iVar17;
                    ((uint8_t *)(arg3 + (int16_t)puVar34))[1] = ((uint8_t *)(arg3 + (int16_t)puVar34))[1] + uVar10;
                    puVar4 = (uint8_t *)(arg3 + (int16_t)puVar34);
                    *puVar4 = *puVar4 << 2 | *puVar4 >> 6;
                    ppcVar1 = (char **)arg3;
                    uVar7 = *(uint8_t *)ppcVar1;
                    *(uint8_t *)ppcVar1 = *(char *)ppcVar1 + uVar22;
                    *(uint8_t *)(arg3 + (int16_t)puVar34) =
                         *(uint8_t *)(arg3 + (int16_t)puVar34) + uVar10 + CARRY1(uVar7, uVar22);
                    in_AF = 9 < (uVar10 & 0xf) | in_AF;
                    uVar10 = uVar10 + in_AF * -6;
                    uVar7 = uVar10 & 0xf;
                    cVar8 = (char)((uint16_t)iVar17 >> 8) - in_AF;
                    uVar14 = CONCAT11(cVar8, uVar10) & 0xff0f;
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) & 8;
                    pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] - uVar22;
                    out(0x40, uVar14);
                    ppuVar30[-2] = (uint8_t *)uVar14;
                    ppuVar30[-3] = (uint8_t *)pcVar18;
                    ppuVar30[-4] = (uint8_t *)uVar19;
                    ppuVar30[-5] = (uint8_t *)arg3;
                    ppuVar30[-6] = (uint8_t *)(ppuVar30 + -1);
                    ppuVar30[-7] = (uint8_t *)pcVar32;
                    ppuVar30[-8] = (uint8_t *)puVar34;
                    ppuVar31 = ppuVar30 + -9;
                    ppuVar30 = ppuVar30 + -9;
                    *ppuVar31 = unaff_DI;
                    bVar38 = CARRY1(uVar7, *(uint8_t *)(char **)(arg3 + 0x3cb0));
                    uVar7 = uVar7 + *(char *)(char **)(arg3 + 0x3cb0);
                    uVar14 = CONCAT11(cVar8, uVar7);
                    pcVar18 = pcVar18 + -1;
                } while (pcVar18 != (char *)0x0 && uVar7 != 0);
                pcVar32[(int16_t)puVar34] = pcVar32[(int16_t)puVar34] ^ uVar7;
                *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + 0x85) =
                     *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + 0x85) ^ uVar14;
                return;
            }
            while( true ) {
                *(undefined2 *)((int16_t)ppuVar28 + -2) = 0xffa0;
                *pcVar32 = *pcVar32 + (char)((uint16_t)pcVar18 >> 8);
                *(undefined2 *)((int16_t)ppuVar28 + -4) = 0x84;
                *(char *)(char **)arg3 = *(char *)(char **)arg3 + (char)uVar14 + 'h';
                ((uint8_t *)(arg3 + (int16_t)puVar34))[0x6850] =
                     ((uint8_t *)(arg3 + (int16_t)puVar34))[0x6850] + (char)*(char **)arg3 * ' ';
                *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 0x19;
                puVar29 = (undefined *)((int16_t)ppuVar28 + -6);
                *(undefined2 *)((int16_t)ppuVar28 + -6) = 0x280;
                uVar39 = func_0x00006280();
                uVar19 = (undefined2)((uint32_t)uVar39 >> 0x10);
                uVar14 = (uint16_t)uVar39;
                puVar34 = (undefined2 *)((int16_t)puVar34 + (int16_t)*(char **)arg3);
                puVar5 = puVar34;
                *(uint8_t *)puVar5 = *(uint8_t *)puVar5 ^ 0xd1;
                pcVar18 = pcVar18 + -1;
                cVar8 = (char)((uint16_t)pcVar18 >> 8);
                uVar7 = (uint8_t)uVar39;
                if (pcVar18 != (char *)0x0 && *(uint8_t *)puVar5 != 0) {
                    uVar14 = (uint16_t)(uint8_t)(uVar7 + cVar8);
                    ppuVar30 = (uint8_t **)puVar29;
                    goto code_r0x000002f2;
                }
                if ((POPCOUNT(*(uint8_t *)puVar5) & 1U) != 0) {
                    *pcVar32 = *pcVar32 + cVar8;
                    *(undefined2 *)(puVar29 + -2) = 0x300;
                    *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) + 0x68;
                    return;
                }
                puVar35 = puVar34 + 1;
                out(*puVar34, uVar19);
                *(uint8_t *)(puVar34 + -0x3d) = *(uint8_t *)(puVar34 + -0x3d) + cVar8;
                *unaff_DI = *unaff_DI + uVar7;
                ppuVar27 = (uint8_t **)(puVar29 + -2);
                ppuVar28 = (uint8_t **)(puVar29 + -2);
                *(undefined2 *)(puVar29 + -2) = 0x330;
                puVar12 = unaff_DI;
                if (pcVar18 != (char *)0x0) break;
                puVar34 = (undefined2 *)((int16_t)puVar34 + 3);
                out(*(uint8_t *)puVar35, uVar19);
                ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar34))[-0x7c] + cVar8;
                *unaff_DI = *unaff_DI + uVar7;
                *(undefined2 *)(puVar29 + -4) = 0x3b61;
                *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + 0x85) =
                     *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar34) + 0x85) + 0x6b07;
                uVar36 = *(undefined2 *)(puVar29 + -4);
                *(uint8_t *)(arg3 + (int16_t)puVar34) = *(uint8_t *)(arg3 + (int16_t)puVar34) & uVar7;
                ((uint8_t *)(arg3 + (int16_t)puVar34))[0x68] = ((uint8_t *)(arg3 + (int16_t)puVar34))[0x68] + 0x82;
                *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (char)arg3;
                pcVar18 = (char *)0x0;
            }
        }
    } while( true );
}

/* ====================================================================== */
/* 0xd6: fcn.000000d6 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x0000021a) overlaps instruction at (ram,0x00000219)
// 
// WARNING: Unable to track spacebase fully for stack
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000000d6(int16_t arg_300h, int16_t arg_100h, short unsigned int arg_b00h, int16_t arg_500h, int16_t arg1,
                 int16_t arg3, int16_t arg4, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t **ppuVar2;
    int16_t *piVar3;
    undefined2 *puVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    uint8_t uVar7;
    uint8_t *puVar8;
    int16_t iVar9;
    int16_t iVar10;
    uint16_t uVar11;
    char cVar12;
    undefined2 uVar13;
    char cVar14;
    uint8_t uVar15;
    undefined2 *unaff_BP;
    char *unaff_SI;
    undefined2 *puVar16;
    undefined2 *puVar17;
    undefined2 *unaff_DI;
    undefined2 *puVar18;
    undefined2 *unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 *puVar19;
    bool bVar20;
    uint8_t in_AF;
    undefined4 uVar21;
    undefined2 *in_stack_0000ffca;
    undefined2 *puVar22;
    undefined2 *puVar23;
    
    unaff_SI[arg3] = unaff_SI[arg3];
    uVar15 = unaff_SI[arg3];
    uVar5 = uVar15 + 7;
    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_SI) + 0x300;
    uVar7 = *puVar1;
    uVar6 = *puVar1;
    *puVar1 = (uVar6 - uVar5) - (0xf8 < uVar15);
    *unaff_SI = *unaff_SI + (char)arg4 + (uVar7 < uVar5 || (uint8_t)(uVar6 - uVar5) < (0xf8 < uVar15));
    unaff_SI[arg3] = unaff_SI[arg3] + '\a';
    puVar8 = (uint8_t *)(CONCAT11((char)((uint16_t)(arg1 + (int16_t)unaff_DI) >> 8), uVar5) + (int16_t)unaff_DI);
    puVar8 = (uint8_t *)CONCAT11((char)((uint16_t)puVar8 >> 8), (char)puVar8 * '\x02');
    unaff_SI[arg3] = unaff_SI[arg3] + '\x05';
    *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 0x80;
    puVar16 = (undefined2 *)((uint16_t)unaff_SI ^ (uint16_t)puVar8);
    puVar23 = unaff_ES;
    do {
        puVar19 = (undefined2 *)CONCAT11((char)((uint16_t)puVar8 >> 8), (char)puVar8 + *(char *)arg3);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 9;
        iVar10 = (int16_t)puVar19 * 2;
        cVar12 = (char)iVar10;
        *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + cVar12;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + cVar12;
        *(char *)0x8303 = *(char *)0x8303 + cVar12;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar12
        ;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 10;
        puVar1 = (uint8_t *)((int16_t)puVar16 + arg3 + 0x3b);
        *puVar1 = *puVar1 + (char)((uint16_t)iVar10 >> 8);
        cVar14 = (char)((uint16_t)arg3 >> 8);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar14
        ;
        cVar12 = (char)(iVar10 + 1);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar12
        ;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 2;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
             *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + cVar12;
        *(uint8_t *)(puVar16 + 0x380) = *(uint8_t *)(puVar16 + 0x380) + 3;
        uVar6 = cVar12 + *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 1;
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] + 0x60;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 0xe;
        puVar16 = (undefined2 *)((int16_t)puVar16 + (int16_t)unaff_DI);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar14
        ;
        puVar4 = unaff_DI;
        unaff_DI = (undefined2 *)((int16_t)unaff_DI + 1);
        *(uint8_t *)puVar4 = uVar6;
        puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
        uVar7 = (uint8_t)arg4 & 7;
        *puVar1 = *puVar1 << uVar7 | *puVar1 >> 8 - uVar7;
        arg4 = arg4 + (int16_t)unaff_BP;
        *(uint8_t *)puVar16 = *(uint8_t *)puVar16;
        LOCK();
        iVar9 = *(int16_t *)(arg3 + (int16_t)puVar16);
        *(int16_t *)(arg3 + (int16_t)puVar16) = CONCAT11((char)((uint16_t)(iVar10 + 1) >> 8), uVar6);
        UNLOCK();
        ppuVar2 = (uint8_t **)((int16_t)puVar16 + arg3 + -0x7e);
        *ppuVar2 = *ppuVar2 + (int16_t)puVar16;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
             *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + (char)arg4;
        iVar9 = iVar9 * 2 + *(int16_t *)(arg3 + (int16_t)puVar16);
        piVar3 = (int16_t *)((int16_t)puVar16 + arg3 + -0x7de8);
        *piVar3 = *piVar3 + iVar9;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (uint8_t)iVar9;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)iVar9;
        UNLOCK();
        uVar6 = uVar7 | 0x3f;
        puVar8 = (uint8_t *)(CONCAT11((char)((uint16_t)iVar9 >> 8), uVar7) | 0x3f);
        if (-1 < (char)uVar6) {
            *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar6;
            break;
        }
        *(char *)0xf419 = *(char *)0xf419 + cVar14;
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16);
        LOCK();
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 1;
        UNLOCK();
        ppuVar2 = (uint8_t **)arg3;
        *ppuVar2 = *ppuVar2 + arg4;
        puVar8 = (uint8_t *)(arg3 + (int16_t)puVar16);
        arg4 = arg4 + -1;
        unaff_ES = unaff_DI;
        puVar23 = puVar19;
    } while ((uint8_t *)arg4 != (uint8_t *)0x0 && *ppuVar2 != (uint8_t *)0x0);
    uVar6 = (uint8_t)puVar8;
    *(char *)arg3 = *(char *)arg3 + uVar6;
    *(char *)0xf001 = *(char *)0xf001 + '\x01';
    *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + uVar6;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
    *(uint8_t *)(arg3 + (int16_t)puVar16) = uVar6;
    iVar10 = CONCAT11((char)((uint16_t)puVar8 >> 8), uVar7);
    UNLOCK();
    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
    *puVar1 = *puVar1 << 7 | *puVar1 >> 1;
    iVar9 = iVar10 + 1;
    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
    *puVar1 = *puVar1 << 1 | *puVar1 >> 7;
    *(char *)(arg3 + -2) = *(char *)(arg3 + -2) + cVar14;
    *(int16_t *)arg3 = *(int16_t *)arg3 + iVar9;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 3;
    *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + iVar9;
    iVar10 = iVar10 + 2;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
    *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)iVar10;
    UNLOCK();
    *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) =
         *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) + (int16_t)unaff_DI;
    *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 5;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
    iVar9 = (CONCAT11((char)((uint16_t)iVar10 >> 8), uVar7) ^ 0x3000) + 0x8f02;
    uVar7 = (uint8_t)iVar9;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
    iVar9 = CONCAT11((char)((uint16_t)iVar9 >> 8), uVar7 + *(char *)(arg3 + 0x100)) +
            *(int16_t *)((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + 0x300);
    uVar11 = CONCAT11((char)((uint16_t)iVar9 >> 8), (char)iVar9 + *(uint8_t *)(arg3 + (int16_t)puVar16));
    puVar23 = unaff_DI;
    puVar22 = unaff_BP;
    do {
        *(uint8_t *)(unaff_BP + 0x80) = *(uint8_t *)(unaff_BP + 0x80) + 0x3a;
        LOCK();
        uVar13 = *(undefined2 *)(arg3 + (int16_t)puVar16);
        *(undefined2 *)(arg3 + (int16_t)puVar16) = CONCAT11((char)(uVar11 + 0x9b06 >> 8), *(undefined *)0x400);
        UNLOCK();
        uVar6 = *(uint8_t *)(arg3 + (int16_t)unaff_DI);
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] + 0x3e;
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 1;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = (char)uVar13 + uVar6 + 1;
        UNLOCK();
        *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) =
             *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) + (int16_t)unaff_DI;
        cVar12 = (char)((uint16_t)arg2 >> 8);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar12;
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0xb00] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0xb00] + 6;
        *(char *)0x8280 = *(char *)0x8280 + (char)arg4;
        *(char *)0xd406 = *(char *)0xd406 + (char)arg4;
        ((uint8_t *)(arg3 + (int16_t)puVar16))[1] = ((uint8_t *)(arg3 + (int16_t)puVar16))[1] + cVar12;
        puVar17 = puVar16 + 1;
        out(*puVar16, arg2);
        *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)((uint16_t)arg4 >> 8);
        uVar6 = in(arg2);
        *(uint8_t *)((int16_t)unaff_DI + -1) = uVar6;
        uVar21 = CONCAT22(arg2, CONCAT11(0xe0, uVar7 - 0x3b) + 0x3069);
        puVar18 = unaff_DI;
        puVar23 = puVar22;
        while( true ) {
            arg2 = (int16_t)((uint32_t)uVar21 >> 0x10);
            cVar12 = (char)((uint16_t)arg4 >> 8) + ((uint8_t *)(arg3 + (int16_t)puVar18))[-0x72];
            iVar9 = CONCAT11(cVar12, (char)arg4);
            *(uint8_t *)(arg3 + (int16_t)puVar17) = *(uint8_t *)(arg3 + (int16_t)puVar17) + 6;
            *(uint8_t *)(arg3 + (int16_t)puVar17) = 0;
            *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)uVar21;
            *(uint8_t *)(arg3 + (int16_t)puVar17) = *(uint8_t *)(arg3 + (int16_t)puVar17) + 0xe;
            ((uint8_t *)(arg3 + (int16_t)puVar17))[1] = ((uint8_t *)(arg3 + (int16_t)puVar17))[1] + cVar12;
            uVar11 = (int16_t)uVar21 + 1U ^ 0xe0;
            uVar7 = in(arg2);
            *(uint8_t *)puVar18 = uVar7;
            unaff_DI = puVar18 + 1;
            *(uint8_t *)((int16_t)puVar18 + 1) = (uint8_t)uVar11;
            puVar16 = puVar17 + 1;
            out(*puVar17, arg2);
            ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] + cVar12;
            puVar4 = puVar16;
            *(uint8_t *)puVar4 = *(uint8_t *)puVar4 + (uint8_t)uVar11;
            arg4 = iVar9 + -1;
            puVar22 = puVar17;
            if ((uint8_t *)arg4 != (uint8_t *)0x0 && *(uint8_t *)puVar4 == 0) break;
            *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                 *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + (char)arg3;
            iVar10 = *(int16_t *)0x80 * -0x80;
            cVar12 = (char)(arg2 + iVar10);
            *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar12;
            unaff_BP = (undefined2 *)((int16_t)unaff_BP + *(int16_t *)((int16_t)unaff_BP + (int16_t)unaff_DI));
            arg4 = iVar9 + -2;
            if ((uint8_t *)arg4 != (uint8_t *)0x0 && unaff_BP != (undefined2 *)0x0) {
                uVar13 = CONCAT11((char)((uint16_t)(arg2 + iVar10) >> 8), cVar12 + (uint8_t)iVar10);
                *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
                     *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + (char)arg4;
                puVar18[0x3561] = (uint8_t *)puVar18[0x3561] + (int16_t)puVar16;
                uVar6 = *(uint8_t *)(int16_t *)(arg3 + 0x6b80);
                *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 0x14;
                puVar4 = unaff_DI;
                unaff_DI = (undefined2 *)((int16_t)puVar18 + 3);
                uVar7 = in(uVar13);
                *(uint8_t *)puVar4 = uVar7;
                *(uint8_t *)(arg3 + (int16_t)puVar16) =
                     *(uint8_t *)(arg3 + (int16_t)puVar16) + (char)((uint16_t)arg4 >> 8);
                uVar11 = (uint8_t)(((uint8_t)iVar10 ^ 0x82) + uVar6) + 1;
                in_stack_0000ffca = (undefined2 *)0xc1c4;
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 3;
                if ((uint8_t *)arg4 == (uint8_t *)0x0) {
                    uVar7 = (char)uVar11 * '\x02';
                    uVar11 = (uint16_t)uVar7;
                    bVar20 = uVar7 < ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0xb00];
                } else {
                    puVar16 = (undefined2 *)((int16_t)puVar17 + 1);
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + 0x18;
code_r0x000002f2:
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 2;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                         (char)*(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) >> 2;
                    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI);
                    bVar20 = CARRY1(*puVar1, (uint8_t)arg4);
                    *puVar1 = *puVar1 + (uint8_t)arg4;
                }
                do {
                    unaff_DI[0x3660] = (uint8_t *)unaff_DI[0x3660] + (int16_t)puVar16;
                    cVar12 = (char)((uint16_t)arg4 >> 8);
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] + cVar12;
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + (char)uVar13;
                    puVar4 = unaff_DI;
                    unaff_DI = (undefined2 *)((int16_t)unaff_DI + 1);
                    uVar7 = in(uVar13);
                    *(uint8_t *)puVar4 = uVar7;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[8] = ((uint8_t *)(arg3 + (int16_t)puVar16))[8] + cVar12;
                    uVar15 = (uint8_t)arg4;
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + uVar15;
                    ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] =
                         ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] + 0x80;
                    cVar14 = (char)((uint16_t)uVar13 >> 8);
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar14;
                    uVar6 = ((char)uVar11 - bVar20) + 0x71U & (uint8_t)*(int16_t *)(arg3 + 0x6c00);
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7e] =
                         ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7e] + cVar14;
                    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16);
                    uVar7 = *puVar1;
                    *puVar1 = *puVar1 + uVar6;
                    *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI >> 1 | CARRY1(uVar7, uVar6) << 7;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0xb;
                    puVar16[0x3760] = (uint8_t *)puVar16[0x3760] + (int16_t)puVar16;
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] + cVar12;
                    puVar1 = (uint8_t *)(arg3 + (int16_t)unaff_DI);
                    uVar7 = *puVar1;
                    *puVar1 = *puVar1 + uVar15;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
                         *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + uVar6 + CARRY1(uVar7, uVar15);
                    LOCK();
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x69] = uVar6;
                    UNLOCK();
                    puVar8 = (uint8_t *)((int16_t)(puVar16 + 0xb80) + arg4);
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] =
                         (((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] - (char)puVar8) -
                         CARRY2((uint16_t)(puVar16 + 0xb80), arg4);
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + (char)arg3;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + (char)uVar13;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x77] =
                         ((uint8_t *)(arg3 + (int16_t)puVar16))[0x77] + (char)((uint16_t)puVar8 >> 8);
                    *(uint8_t **)0x7440 = *(uint8_t **)0x7440 + arg4;
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0x10] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0x10] ^ 99;
                    LOCK();
                    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)((uint16_t)puVar8 & 0xff70);
                    UNLOCK();
                    puVar19 = (undefined2 *)0x6800;
                    uVar15 = (char)((uint16_t)arg3 >> 8) + *(uint8_t *)(int16_t *)(arg3 + -0x30);
                    arg3 = CONCAT11(uVar15, (char)arg3);
                    iVar9 = CONCAT11((char)(((uint16_t)puVar8 & 0xff70) >> 8), uVar7) + 1;
                    uVar6 = (uint8_t)iVar9;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[1] = ((uint8_t *)(arg3 + (int16_t)puVar16))[1] + uVar6;
                    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
                    *puVar1 = *puVar1 << 2 | *puVar1 >> 6;
                    piVar3 = (int16_t *)arg3;
                    uVar7 = *(uint8_t *)piVar3;
                    *(uint8_t *)piVar3 = *(uint8_t *)piVar3 + uVar15;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) =
                         *(uint8_t *)(arg3 + (int16_t)puVar16) + uVar6 + CARRY1(uVar7, uVar15);
                    in_AF = 9 < (uVar6 & 0xf) | in_AF;
                    uVar6 = uVar6 + in_AF * -6;
                    uVar7 = uVar6 & 0xf;
                    cVar12 = (char)((uint16_t)iVar9 >> 8) - in_AF;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & 8;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                         *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) - uVar15;
                    out(0x40, CONCAT11(cVar12, uVar6) & 0xff0f);
                    bVar20 = CARRY1(uVar7, *(uint8_t *)(int16_t *)(arg3 + 0x3cb0));
                    uVar7 = uVar7 + *(uint8_t *)(int16_t *)(arg3 + 0x3cb0);
                    uVar11 = CONCAT11(cVar12, uVar7);
                    arg4 = arg4 + -1;
                    in_stack_0000ffca = unaff_DI;
                } while ((uint8_t *)arg4 != (uint8_t *)0x0 && uVar7 != 0);
                *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                     *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) ^ uVar7;
                *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) =
                     *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) ^ uVar11;
                return;
            }
            while( true ) {
                *(uint8_t *)unaff_BP = *(uint8_t *)unaff_BP + (char)((uint16_t)arg4 >> 8);
                *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)iVar10 + 'h';
                ((uint8_t *)(arg3 + (int16_t)puVar16))[0x6850] =
                     ((uint8_t *)(arg3 + (int16_t)puVar16))[0x6850] + (char)*(int16_t *)arg3 * ' ';
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0x19;
                uVar21 = func_0x00006280();
                uVar13 = (undefined2)((uint32_t)uVar21 >> 0x10);
                iVar10 = (int16_t)uVar21;
                puVar16 = (undefined2 *)((int16_t)puVar16 + *(int16_t *)arg3);
                puVar4 = puVar16;
                *(uint8_t *)puVar4 = *(uint8_t *)puVar4 ^ 0xd1;
                arg4 = arg4 + -1;
                cVar12 = (char)((uint16_t)arg4 >> 8);
                uVar7 = (uint8_t)uVar21;
                if ((uint8_t *)arg4 != (uint8_t *)0x0 && *(uint8_t *)puVar4 != 0) {
                    uVar11 = (uint16_t)(uint8_t)(uVar7 + cVar12);
                    goto code_r0x000002f2;
                }
                if ((POPCOUNT(*(uint8_t *)puVar4) & 1U) != 0) {
                    *(uint8_t *)unaff_BP = *(uint8_t *)unaff_BP + cVar12;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0x68;
                    return;
                }
                puVar17 = puVar16 + 1;
                out(*puVar16, uVar13);
                *(uint8_t *)(puVar16 + -0x3d) = *(uint8_t *)(puVar16 + -0x3d) + cVar12;
                *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar7;
                puVar23 = (undefined2 *)0x330;
                puVar18 = unaff_DI;
                if ((uint8_t *)arg4 != (uint8_t *)0x0) break;
                puVar16 = (undefined2 *)((int16_t)puVar16 + 3);
                out(*(uint8_t *)puVar17, uVar13);
                ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] + cVar12;
                *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar7;
                *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) =
                     *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) + 0x6b07;
                puVar23 = (undefined2 *)0x3b61;
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
                ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] = ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] + 0x82;
                *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (char)arg3;
                arg4 = 0;
            }
        }
    } while( true );
}

/* ====================================================================== */
/* 0x136: fcn.00000136 */
/* ====================================================================== */

// WARNING: Instruction at (ram,0x0000021a) overlaps instruction at (ram,0x00000219)
// 
// WARNING: Unable to track spacebase fully for stack
// WARNING: Type propagation algorithm not settling
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000000d6(int16_t arg_300h, int16_t arg_100h, short unsigned int arg_b00h, int16_t arg_500h, int16_t arg1,
                 int16_t arg3, int16_t arg4, int16_t arg2)
{
    uint8_t *puVar1;
    uint8_t **ppuVar2;
    int16_t *piVar3;
    undefined2 *puVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    uint8_t uVar7;
    uint8_t *puVar8;
    int16_t iVar9;
    int16_t iVar10;
    uint16_t uVar11;
    char cVar12;
    undefined2 uVar13;
    char cVar14;
    uint8_t uVar15;
    undefined2 *unaff_BP;
    char *unaff_SI;
    undefined2 *puVar16;
    undefined2 *puVar17;
    undefined2 *unaff_DI;
    undefined2 *puVar18;
    undefined2 *unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    undefined2 *puVar19;
    bool bVar20;
    uint8_t in_AF;
    undefined4 uVar21;
    undefined2 *in_stack_0000ffca;
    undefined2 *puVar22;
    undefined2 *puVar23;
    
    unaff_SI[arg3] = unaff_SI[arg3];
    uVar15 = unaff_SI[arg3];
    uVar5 = uVar15 + 7;
    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_SI) + 0x300;
    uVar7 = *puVar1;
    uVar6 = *puVar1;
    *puVar1 = (uVar6 - uVar5) - (0xf8 < uVar15);
    *unaff_SI = *unaff_SI + (char)arg4 + (uVar7 < uVar5 || (uint8_t)(uVar6 - uVar5) < (0xf8 < uVar15));
    unaff_SI[arg3] = unaff_SI[arg3] + '\a';
    puVar8 = (uint8_t *)(CONCAT11((char)((uint16_t)(arg1 + (int16_t)unaff_DI) >> 8), uVar5) + (int16_t)unaff_DI);
    puVar8 = (uint8_t *)CONCAT11((char)((uint16_t)puVar8 >> 8), (char)puVar8 * '\x02');
    unaff_SI[arg3] = unaff_SI[arg3] + '\x05';
    *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 0x80;
    puVar16 = (undefined2 *)((uint16_t)unaff_SI ^ (uint16_t)puVar8);
    puVar23 = unaff_ES;
    do {
        puVar19 = (undefined2 *)CONCAT11((char)((uint16_t)puVar8 >> 8), (char)puVar8 + *(char *)arg3);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 9;
        iVar10 = (int16_t)puVar19 * 2;
        cVar12 = (char)iVar10;
        *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + cVar12;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + cVar12;
        *(char *)0x8303 = *(char *)0x8303 + cVar12;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar12
        ;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 10;
        puVar1 = (uint8_t *)((int16_t)puVar16 + arg3 + 0x3b);
        *puVar1 = *puVar1 + (char)((uint16_t)iVar10 >> 8);
        cVar14 = (char)((uint16_t)arg3 >> 8);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar14
        ;
        cVar12 = (char)(iVar10 + 1);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar12
        ;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 2;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
             *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + cVar12;
        *(uint8_t *)(puVar16 + 0x380) = *(uint8_t *)(puVar16 + 0x380) + 3;
        uVar6 = cVar12 + *(uint8_t *)(arg3 + (int16_t)unaff_DI) + 1;
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] + 0x60;
        *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 0xe;
        puVar16 = (undefined2 *)((int16_t)puVar16 + (int16_t)unaff_DI);
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) = *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + cVar14
        ;
        puVar4 = unaff_DI;
        unaff_DI = (undefined2 *)((int16_t)unaff_DI + 1);
        *(uint8_t *)puVar4 = uVar6;
        puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
        uVar7 = (uint8_t)arg4 & 7;
        *puVar1 = *puVar1 << uVar7 | *puVar1 >> 8 - uVar7;
        arg4 = arg4 + (int16_t)unaff_BP;
        *(uint8_t *)puVar16 = *(uint8_t *)puVar16;
        LOCK();
        iVar9 = *(int16_t *)(arg3 + (int16_t)puVar16);
        *(int16_t *)(arg3 + (int16_t)puVar16) = CONCAT11((char)((uint16_t)(iVar10 + 1) >> 8), uVar6);
        UNLOCK();
        ppuVar2 = (uint8_t **)((int16_t)puVar16 + arg3 + -0x7e);
        *ppuVar2 = *ppuVar2 + (int16_t)puVar16;
        *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
             *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + (char)arg4;
        iVar9 = iVar9 * 2 + *(int16_t *)(arg3 + (int16_t)puVar16);
        piVar3 = (int16_t *)((int16_t)puVar16 + arg3 + -0x7de8);
        *piVar3 = *piVar3 + iVar9;
        *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (uint8_t)iVar9;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)iVar9;
        UNLOCK();
        uVar6 = uVar7 | 0x3f;
        puVar8 = (uint8_t *)(CONCAT11((char)((uint16_t)iVar9 >> 8), uVar7) | 0x3f);
        if (-1 < (char)uVar6) {
            *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar6;
            break;
        }
        *(char *)0xf419 = *(char *)0xf419 + cVar14;
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16);
        LOCK();
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 1;
        UNLOCK();
        ppuVar2 = (uint8_t **)arg3;
        *ppuVar2 = *ppuVar2 + arg4;
        puVar8 = (uint8_t *)(arg3 + (int16_t)puVar16);
        arg4 = arg4 + -1;
        unaff_ES = unaff_DI;
        puVar23 = puVar19;
    } while ((uint8_t *)arg4 != (uint8_t *)0x0 && *ppuVar2 != (uint8_t *)0x0);
    uVar6 = (uint8_t)puVar8;
    *(char *)arg3 = *(char *)arg3 + uVar6;
    *(char *)0xf001 = *(char *)0xf001 + '\x01';
    *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + uVar6;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
    *(uint8_t *)(arg3 + (int16_t)puVar16) = uVar6;
    iVar10 = CONCAT11((char)((uint16_t)puVar8 >> 8), uVar7);
    UNLOCK();
    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
    *puVar1 = *puVar1 << 7 | *puVar1 >> 1;
    iVar9 = iVar10 + 1;
    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
    *puVar1 = *puVar1 << 1 | *puVar1 >> 7;
    *(char *)(arg3 + -2) = *(char *)(arg3 + -2) + cVar14;
    *(int16_t *)arg3 = *(int16_t *)arg3 + iVar9;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 3;
    *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + iVar9;
    iVar10 = iVar10 + 2;
    LOCK();
    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
    *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)iVar10;
    UNLOCK();
    *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) =
         *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) + (int16_t)unaff_DI;
    *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 5;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
    iVar9 = (CONCAT11((char)((uint16_t)iVar10 >> 8), uVar7) ^ 0x3000) + 0x8f02;
    uVar7 = (uint8_t)iVar9;
    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
    iVar9 = CONCAT11((char)((uint16_t)iVar9 >> 8), uVar7 + *(char *)(arg3 + 0x100)) +
            *(int16_t *)((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + 0x300);
    uVar11 = CONCAT11((char)((uint16_t)iVar9 >> 8), (char)iVar9 + *(uint8_t *)(arg3 + (int16_t)puVar16));
    puVar23 = unaff_DI;
    puVar22 = unaff_BP;
    do {
        *(uint8_t *)(unaff_BP + 0x80) = *(uint8_t *)(unaff_BP + 0x80) + 0x3a;
        LOCK();
        uVar13 = *(undefined2 *)(arg3 + (int16_t)puVar16);
        *(undefined2 *)(arg3 + (int16_t)puVar16) = CONCAT11((char)(uVar11 + 0x9b06 >> 8), *(undefined *)0x400);
        UNLOCK();
        uVar6 = *(uint8_t *)(arg3 + (int16_t)unaff_DI);
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0x100] + 0x3e;
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 1;
        LOCK();
        uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = (char)uVar13 + uVar6 + 1;
        UNLOCK();
        *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) =
             *(uint8_t **)((int16_t)unaff_BP + (int16_t)unaff_DI) + (int16_t)unaff_DI;
        cVar12 = (char)((uint16_t)arg2 >> 8);
        *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar12;
        ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0xb00] =
             ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[0xb00] + 6;
        *(char *)0x8280 = *(char *)0x8280 + (char)arg4;
        *(char *)0xd406 = *(char *)0xd406 + (char)arg4;
        ((uint8_t *)(arg3 + (int16_t)puVar16))[1] = ((uint8_t *)(arg3 + (int16_t)puVar16))[1] + cVar12;
        puVar17 = puVar16 + 1;
        out(*puVar16, arg2);
        *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)((uint16_t)arg4 >> 8);
        uVar6 = in(arg2);
        *(uint8_t *)((int16_t)unaff_DI + -1) = uVar6;
        uVar21 = CONCAT22(arg2, CONCAT11(0xe0, uVar7 - 0x3b) + 0x3069);
        puVar18 = unaff_DI;
        puVar23 = puVar22;
        while( true ) {
            arg2 = (int16_t)((uint32_t)uVar21 >> 0x10);
            cVar12 = (char)((uint16_t)arg4 >> 8) + ((uint8_t *)(arg3 + (int16_t)puVar18))[-0x72];
            iVar9 = CONCAT11(cVar12, (char)arg4);
            *(uint8_t *)(arg3 + (int16_t)puVar17) = *(uint8_t *)(arg3 + (int16_t)puVar17) + 6;
            *(uint8_t *)(arg3 + (int16_t)puVar17) = 0;
            *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)uVar21;
            *(uint8_t *)(arg3 + (int16_t)puVar17) = *(uint8_t *)(arg3 + (int16_t)puVar17) + 0xe;
            ((uint8_t *)(arg3 + (int16_t)puVar17))[1] = ((uint8_t *)(arg3 + (int16_t)puVar17))[1] + cVar12;
            uVar11 = (int16_t)uVar21 + 1U ^ 0xe0;
            uVar7 = in(arg2);
            *(uint8_t *)puVar18 = uVar7;
            unaff_DI = puVar18 + 1;
            *(uint8_t *)((int16_t)puVar18 + 1) = (uint8_t)uVar11;
            puVar16 = puVar17 + 1;
            out(*puVar17, arg2);
            ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] + cVar12;
            puVar4 = puVar16;
            *(uint8_t *)puVar4 = *(uint8_t *)puVar4 + (uint8_t)uVar11;
            arg4 = iVar9 + -1;
            puVar22 = puVar17;
            if ((uint8_t *)arg4 != (uint8_t *)0x0 && *(uint8_t *)puVar4 == 0) break;
            *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                 *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) + (char)arg3;
            iVar10 = *(int16_t *)0x80 * -0x80;
            cVar12 = (char)(arg2 + iVar10);
            *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar12;
            unaff_BP = (undefined2 *)((int16_t)unaff_BP + *(int16_t *)((int16_t)unaff_BP + (int16_t)unaff_DI));
            arg4 = iVar9 + -2;
            if ((uint8_t *)arg4 != (uint8_t *)0x0 && unaff_BP != (undefined2 *)0x0) {
                uVar13 = CONCAT11((char)((uint16_t)(arg2 + iVar10) >> 8), cVar12 + (uint8_t)iVar10);
                *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
                     *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + (char)arg4;
                puVar18[0x3561] = (uint8_t *)puVar18[0x3561] + (int16_t)puVar16;
                uVar6 = *(uint8_t *)(int16_t *)(arg3 + 0x6b80);
                *(int16_t *)(arg3 + (int16_t)puVar16) = *(int16_t *)(arg3 + (int16_t)puVar16) + 0x14;
                puVar4 = unaff_DI;
                unaff_DI = (undefined2 *)((int16_t)puVar18 + 3);
                uVar7 = in(uVar13);
                *(uint8_t *)puVar4 = uVar7;
                *(uint8_t *)(arg3 + (int16_t)puVar16) =
                     *(uint8_t *)(arg3 + (int16_t)puVar16) + (char)((uint16_t)arg4 >> 8);
                uVar11 = (uint8_t)(((uint8_t)iVar10 ^ 0x82) + uVar6) + 1;
                in_stack_0000ffca = (undefined2 *)0xc1c4;
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 3;
                if ((uint8_t *)arg4 == (uint8_t *)0x0) {
                    uVar7 = (char)uVar11 * '\x02';
                    uVar11 = (uint16_t)uVar7;
                    bVar20 = uVar7 < ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0xb00];
                } else {
                    puVar16 = (undefined2 *)((int16_t)puVar17 + 1);
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + 0x18;
code_r0x000002f2:
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 2;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                         (char)*(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) >> 2;
                    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI);
                    bVar20 = CARRY1(*puVar1, (uint8_t)arg4);
                    *puVar1 = *puVar1 + (uint8_t)arg4;
                }
                do {
                    unaff_DI[0x3660] = (uint8_t *)unaff_DI[0x3660] + (int16_t)puVar16;
                    cVar12 = (char)((uint16_t)arg4 >> 8);
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] + cVar12;
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + (char)uVar13;
                    puVar4 = unaff_DI;
                    unaff_DI = (undefined2 *)((int16_t)unaff_DI + 1);
                    uVar7 = in(uVar13);
                    *(uint8_t *)puVar4 = uVar7;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[8] = ((uint8_t *)(arg3 + (int16_t)puVar16))[8] + cVar12;
                    uVar15 = (uint8_t)arg4;
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + uVar15;
                    ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] =
                         ((uint8_t *)(arg3 + (int16_t)unaff_DI))[-0x74] + 0x80;
                    cVar14 = (char)((uint16_t)uVar13 >> 8);
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + cVar14;
                    uVar6 = ((char)uVar11 - bVar20) + 0x71U & (uint8_t)*(int16_t *)(arg3 + 0x6c00);
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7e] =
                         ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7e] + cVar14;
                    puVar1 = (uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16);
                    uVar7 = *puVar1;
                    *puVar1 = *puVar1 + uVar6;
                    *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI >> 1 | CARRY1(uVar7, uVar6) << 7;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0xb;
                    puVar16[0x3760] = (uint8_t *)puVar16[0x3760] + (int16_t)puVar16;
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI))[-0x7d] + cVar12;
                    puVar1 = (uint8_t *)(arg3 + (int16_t)unaff_DI);
                    uVar7 = *puVar1;
                    *puVar1 = *puVar1 + uVar15;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) =
                         *(uint8_t *)((int16_t)unaff_BP + (int16_t)unaff_DI) + uVar6 + CARRY1(uVar7, uVar15);
                    LOCK();
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x69] = uVar6;
                    UNLOCK();
                    puVar8 = (uint8_t *)((int16_t)(puVar16 + 0xb80) + arg4);
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] =
                         (((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] - (char)puVar8) -
                         CARRY2((uint16_t)(puVar16 + 0xb80), arg4);
                    *(uint8_t *)puVar16 = *(uint8_t *)puVar16 + (char)arg3;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + (char)uVar13;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[0x77] =
                         ((uint8_t *)(arg3 + (int16_t)puVar16))[0x77] + (char)((uint16_t)puVar8 >> 8);
                    *(uint8_t **)0x7440 = *(uint8_t **)0x7440 + arg4;
                    ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0x10] =
                         ((uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16))[0x10] ^ 99;
                    LOCK();
                    uVar7 = *(uint8_t *)(arg3 + (int16_t)puVar16);
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = (uint8_t)((uint16_t)puVar8 & 0xff70);
                    UNLOCK();
                    puVar19 = (undefined2 *)0x6800;
                    uVar15 = (char)((uint16_t)arg3 >> 8) + *(uint8_t *)(int16_t *)(arg3 + -0x30);
                    arg3 = CONCAT11(uVar15, (char)arg3);
                    iVar9 = CONCAT11((char)(((uint16_t)puVar8 & 0xff70) >> 8), uVar7) + 1;
                    uVar6 = (uint8_t)iVar9;
                    ((uint8_t *)(arg3 + (int16_t)puVar16))[1] = ((uint8_t *)(arg3 + (int16_t)puVar16))[1] + uVar6;
                    puVar1 = (uint8_t *)(arg3 + (int16_t)puVar16);
                    *puVar1 = *puVar1 << 2 | *puVar1 >> 6;
                    piVar3 = (int16_t *)arg3;
                    uVar7 = *(uint8_t *)piVar3;
                    *(uint8_t *)piVar3 = *(uint8_t *)piVar3 + uVar15;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) =
                         *(uint8_t *)(arg3 + (int16_t)puVar16) + uVar6 + CARRY1(uVar7, uVar15);
                    in_AF = 9 < (uVar6 & 0xf) | in_AF;
                    uVar6 = uVar6 + in_AF * -6;
                    uVar7 = uVar6 & 0xf;
                    cVar12 = (char)((uint16_t)iVar9 >> 8) - in_AF;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & 8;
                    *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                         *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) - uVar15;
                    out(0x40, CONCAT11(cVar12, uVar6) & 0xff0f);
                    bVar20 = CARRY1(uVar7, *(uint8_t *)(int16_t *)(arg3 + 0x3cb0));
                    uVar7 = uVar7 + *(uint8_t *)(int16_t *)(arg3 + 0x3cb0);
                    uVar11 = CONCAT11(cVar12, uVar7);
                    arg4 = arg4 + -1;
                    in_stack_0000ffca = unaff_DI;
                } while ((uint8_t *)arg4 != (uint8_t *)0x0 && uVar7 != 0);
                *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) =
                     *(uint8_t *)((int16_t)unaff_BP + (int16_t)puVar16) ^ uVar7;
                *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) =
                     *(uint16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) ^ uVar11;
                return;
            }
            while( true ) {
                *(uint8_t *)unaff_BP = *(uint8_t *)unaff_BP + (char)((uint16_t)arg4 >> 8);
                *(uint8_t *)(int16_t *)arg3 = *(uint8_t *)(int16_t *)arg3 + (char)iVar10 + 'h';
                ((uint8_t *)(arg3 + (int16_t)puVar16))[0x6850] =
                     ((uint8_t *)(arg3 + (int16_t)puVar16))[0x6850] + (char)*(int16_t *)arg3 * ' ';
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0x19;
                uVar21 = func_0x00006280();
                uVar13 = (undefined2)((uint32_t)uVar21 >> 0x10);
                iVar10 = (int16_t)uVar21;
                puVar16 = (undefined2 *)((int16_t)puVar16 + *(int16_t *)arg3);
                puVar4 = puVar16;
                *(uint8_t *)puVar4 = *(uint8_t *)puVar4 ^ 0xd1;
                arg4 = arg4 + -1;
                cVar12 = (char)((uint16_t)arg4 >> 8);
                uVar7 = (uint8_t)uVar21;
                if ((uint8_t *)arg4 != (uint8_t *)0x0 && *(uint8_t *)puVar4 != 0) {
                    uVar11 = (uint16_t)(uint8_t)(uVar7 + cVar12);
                    goto code_r0x000002f2;
                }
                if ((POPCOUNT(*(uint8_t *)puVar4) & 1U) != 0) {
                    *(uint8_t *)unaff_BP = *(uint8_t *)unaff_BP + cVar12;
                    *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) + 0x68;
                    return;
                }
                puVar17 = puVar16 + 1;
                out(*puVar16, uVar13);
                *(uint8_t *)(puVar16 + -0x3d) = *(uint8_t *)(puVar16 + -0x3d) + cVar12;
                *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar7;
                puVar23 = (undefined2 *)0x330;
                puVar18 = unaff_DI;
                if ((uint8_t *)arg4 != (uint8_t *)0x0) break;
                puVar16 = (undefined2 *)((int16_t)puVar16 + 3);
                out(*(uint8_t *)puVar17, uVar13);
                ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] = ((uint8_t *)(arg3 + (int16_t)puVar16))[-0x7c] + cVar12;
                *(uint8_t *)unaff_DI = *(uint8_t *)unaff_DI + uVar7;
                *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) =
                     *(int16_t *)((uint8_t *)(arg3 + (int16_t)puVar16) + 0x85) + 0x6b07;
                puVar23 = (undefined2 *)0x3b61;
                *(uint8_t *)(arg3 + (int16_t)puVar16) = *(uint8_t *)(arg3 + (int16_t)puVar16) & uVar7;
                ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] = ((uint8_t *)(arg3 + (int16_t)puVar16))[0x68] + 0x82;
                *(uint8_t *)(arg3 + (int16_t)unaff_DI) = *(uint8_t *)(arg3 + (int16_t)unaff_DI) + (char)arg3;
                arg4 = 0;
            }
        }
    } while( true );
}

/* ====================================================================== */
/* 0x59b: fcn.0000059b */
/* ====================================================================== */

// WARNING: Unable to track spacebase fully for stack
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000059b(int16_t arg1, int16_t arg3, int16_t arg2)
{
    uint8_t *puVar1;
    char *pcVar2;
    uint16_t *puVar3;
    uint16_t uVar4;
    uint8_t uVar5;
    uint8_t uVar6;
    uint8_t uVar7;
    uint8_t uVar8;
    int16_t iVar10;
    char cVar12;
    int16_t iVar11;
    int16_t unaff_BP;
    int16_t unaff_SI;
    int16_t unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t in_AF;
    int16_t iVar9;
    
    uVar6 = (uint8_t)(arg1 + -0x5e1);
    uVar5 = 9 < (uVar6 & 0xf) | in_AF;
    uVar6 = uVar6 + uVar5 * -6;
    iVar9 = CONCAT11((char)((uint16_t)(arg1 + -0x5e1) >> 8), uVar6 + (0x9f < uVar6 | uVar5 * (uVar6 < 6)) * -0x60);
    puVar1 = (uint8_t *)(unaff_BP + unaff_SI);
    uVar6 = *puVar1;
    uVar7 = (uint8_t)unaff_DI;
    *puVar1 = *puVar1 + uVar7;
    pcVar2 = (char *)(arg3 + unaff_SI + -0x7e);
    cVar12 = (char)((uint16_t)arg3 >> 8);
    *pcVar2 = *pcVar2 + cVar12 + CARRY1(uVar6, uVar7);
    *(char *)(unaff_BP + unaff_SI) = *(char *)(unaff_BP + unaff_SI) + uVar7;
    iVar10 = unaff_DI + *(int16_t *)(arg3 + iVar9) + 1;
    *(char *)(arg3 + unaff_SI) = *(char *)(arg3 + unaff_SI) + '\x01';
    puVar3 = (uint16_t *)(arg3 + 0x200);
    uVar4 = *puVar3;
    *puVar3 = *puVar3 + arg2;
    *(char *)0x82 = *(char *)0x82 + (char)arg3 + CARRY2(uVar4, arg2);
    iVar11 = CONCAT11(cVar12, (char)arg3 + *(char *)arg3);
    iVar10 = CONCAT11((char)((uint16_t)iVar10 >> 8) + *(char *)(arg3 + unaff_SI + -0x44), (char)iVar10) + 1;
    *(undefined2 *)(iVar11 + unaff_SI) = unaff_ES;
    puVar1 = (uint8_t *)(iVar11 + iVar9);
    uVar6 = *puVar1;
    uVar7 = (uint8_t)iVar10;
    uVar8 = uVar7 + *puVar1;
    uVar5 = 9 < (uVar8 & 0xf) | uVar5;
    uVar8 = uVar8 + uVar5 * -6;
    *(char *)(unaff_SI + 0x300) = *(char *)(unaff_SI + 0x300) + '\x7f';
    // WARNING: Could not recover jumptable at 0x000005d1. Too many branches
    // WARNING: Treating indirect jump as call
    (*(code *)CONCAT11((char)((uint16_t)iVar10 >> 8), 
                       uVar8 + (0x9f < uVar8 | CARRY1(uVar7, uVar6) | uVar5 * (uVar8 < 6)) * -0x60))();
    return;
}

