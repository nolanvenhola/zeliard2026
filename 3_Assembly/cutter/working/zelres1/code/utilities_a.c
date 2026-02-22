/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x2a3 = "ÚÄxGW=@=?XGXÕ@==7CW"; // [ibm037]

/* ====================================================================== */
/* 0x0: fcn.00000000 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000000(short unsigned int arg3)
{
    char cVar1;
    undefined2 in_AX;
    int16_t in_CX;
    char *in_BX;
    int16_t unaff_BP;
    int16_t unaff_SI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    unkfloat10 in_ST0;
    int16_t in_stack_0000000e;
    
    *(double *)(in_BX + unaff_SI) = (double)in_ST0;
    cVar1 = (char)in_AX;
    in_BX[unaff_SI] = in_BX[unaff_SI] + cVar1;
    *in_BX = *in_BX + cVar1;
    *(double *)(unaff_BP + unaff_SI) = (double)in_ST0;
    in_BX[unaff_SI] = in_BX[unaff_SI] + '\x1f';
    in_BX[unaff_SI] = in_BX[unaff_SI] + '\x1f';
    in_BX[unaff_SI] = in_BX[unaff_SI] + '\x1f';
    cVar1 = fcn.0000011f(in_stack_0000000e, (int16_t)in_BX, in_CX, CONCAT11((char)((uint16_t)in_AX >> 8), cVar1 + -0x7f)
                        );
    *(int16_t *)(in_BX + unaff_SI + 0xf00) = *(int16_t *)(in_BX + unaff_SI + 0xf00) + 1;
    in_BX[unaff_SI] = in_BX[unaff_SI] + cVar1;
    *in_BX = *in_BX + (char)in_CX;
    in_BX[unaff_SI] = in_BX[unaff_SI] + cVar1 + '\x01';
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

/* ====================================================================== */
/* 0x11f: fcn.0000011f */
/* ====================================================================== */

// WARNING: This function may have set the stack pointer
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.0000011f(int16_t arg_10h, int16_t arg3, int16_t arg4, short unsigned int arg1)
{
    uint8_t *puVar1;
    uint16_t *puVar2;
    char *pcVar3;
    uint16_t uVar4;
    int16_t iVar5;
    uint8_t uVar6;
    char cVar10;
    uint16_t uVar8;
    code *pcVar9;
    uint8_t uVar11;
    char in_DL;
    char *pcVar12;
    int16_t unaff_BP;
    uint8_t *unaff_SI;
    uint8_t *puVar13;
    int16_t unaff_DI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    uint8_t in_AF;
    char cVar7;
    
    unaff_SI[arg3] = unaff_SI[arg3];
    uVar6 = (uint8_t)arg1;
    unaff_SI[-0x3ff1] = unaff_SI[-0x3ff1] + uVar6;
    puVar1 = (uint8_t *)(arg3 + unaff_DI + 0x78);
    *puVar1 = *puVar1 | uVar6;
    unaff_SI[-0x7ff9] = unaff_SI[-0x7ff9] + uVar6;
    unaff_SI[arg3 + 0x78] = unaff_SI[arg3 + 0x78] | uVar6;
    unaff_SI[6] = unaff_SI[6] + uVar6;
    *unaff_SI = *unaff_SI + uVar6;
    puVar1 = unaff_SI + arg3;
    *puVar1 = *puVar1 << 2 | *puVar1 >> 6;
    puVar1 = unaff_SI;
    uVar11 = *puVar1;
    *puVar1 = *puVar1 + uVar6;
    unaff_SI[arg3] = unaff_SI[arg3] + uVar6 + CARRY1(uVar11, uVar6);
    puVar13 = (uint8_t *)((uint16_t)unaff_SI & arg4);
    puVar13[unaff_BP] = puVar13[unaff_BP] + 0x7e;
    puVar13[arg3] = puVar13[arg3] ^ uVar6;
    uVar11 = 9 < (uVar6 & 0xf) | in_AF;
    cVar10 = (char)(arg1 >> 8);
    uVar6 = uVar6 + uVar11 * '\x06';
    cVar7 = uVar6 + (0x90 < (uVar6 & 0xf0) | uVar11 * (0xf9 < uVar6)) * '`';
    *(uint16_t *)(puVar13 + arg3) = *(uint16_t *)(puVar13 + arg3) ^ CONCAT11(cVar10, cVar7);
    pcVar12 = (char *)CONCAT11((char)((uint16_t)arg3 >> 8) + *(char *)(unaff_BP + unaff_DI + 0x10), (char)arg3);
    *pcVar12 = *pcVar12 + cVar10;
    *(char *)(unaff_BP + unaff_DI) = *(char *)(unaff_BP + unaff_DI) + 'y';
    *(char *)0x1d = *(char *)0x1d + in_DL;
    *(undefined **)(pcVar12 + unaff_DI + -0x28) = &stack0x0000 + *(int16_t *)(pcVar12 + unaff_DI + -0x28);
    *(char *)0x801d = *(char *)0x801d + in_DL;
    *(undefined **)(pcVar12 + (int16_t)puVar13 + -0x28) =
         &stack0x0000 + *(int16_t *)(pcVar12 + (int16_t)puVar13 + -0x28);
    uVar8 = (int16_t)(char)arg4 + 1U | 0x8c;
    *(uint16_t *)(pcVar12 + unaff_DI) = *(int16_t *)(pcVar12 + unaff_DI) + uVar8;
    pcVar12 = pcVar12 + (uint16_t)(uVar8 < 0x80) + *(int16_t *)(pcVar12 + (int16_t)puVar13 + 0x100);
    *(uint16_t *)(pcVar12 + (int16_t)puVar13 + 0x1a00) = *(uint16_t *)(pcVar12 + (int16_t)puVar13 + 0x1a00) & uVar8;
    pcVar12[(int16_t)puVar13] = pcVar12[(int16_t)puVar13] - (char)uVar8;
    puVar2 = (uint16_t *)(pcVar12 + (int16_t)puVar13 + 0x80);
    uVar4 = *puVar2;
    *puVar2 = (uint16_t)(&stack0xfffe + *puVar2);
    cVar10 = pcVar12[(int16_t)puVar13];
    pcVar12[unaff_DI] = pcVar12[unaff_DI] + (char)uVar8;
    uVar11 = (cVar7 - cVar10) - CARRY2(uVar4, (uint16_t)&stack0xfffe) | *puVar13;
    pcVar12[(int16_t)puVar13] = pcVar12[(int16_t)puVar13] + (char)*(undefined2 *)0x80;
    iVar5 = *(int16_t *)0xc0;
    cVar10 = (char)((uint16_t)pcVar12 >> 8);
    uVar6 = (uint8_t)pcVar12 | *puVar13;
    pcVar12 = (char *)CONCAT11(cVar10, uVar6);
    pcVar3 = pcVar12 + (int16_t)puVar13;
    *pcVar3 = *pcVar3 + (char)iVar5;
    pcVar3 = pcVar12;
    *pcVar3 = *pcVar3 + uVar11;
    pcVar12 = (char *)CONCAT11(cVar10, uVar6 + cVar10);
    puVar1 = (uint8_t *)(pcVar12 + (int16_t)puVar13);
    *puVar1 = *puVar1 << 7 | *puVar1 >> 1;
    pcVar9 = (code *)((iVar5 << 1 | (uint16_t)(iVar5 < 0)) + 1);
    *pcVar12 = *pcVar12 + uVar11;
    pcVar12[(int16_t)puVar13] = pcVar12[(int16_t)puVar13] + (char)pcVar9;
    // WARNING: Could not recover jumptable at 0x000001a0. Too many branches
    // WARNING: Treating indirect jump as call
    (*pcVar9)();
    return;
}

