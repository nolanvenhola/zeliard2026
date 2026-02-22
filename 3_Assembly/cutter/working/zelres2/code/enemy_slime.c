/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x387 = "uucG+S9CC½"; // [ibm037]
static const char *STR_0xb50 = "[c«ysss¿"; // [ibm037]
static const char *STR_0x1074 = "y[by»sy"; // [ibm037]
static const char *STR_0x1177 = "A A   C"; // [ascii]
static const char *STR_0x1846 = "þytybhhØ s"; // [ibm037]
static const char *STR_0x1be8 = " hb hhh«"; // [ibm037]
static const char *STR_0x2121 = "A*B( A\n"; // [ascii]
static const char *STR_0x23c9 = "B\"  *C A"; // [ascii]
static const char *STR_0x25d1 = " A\"C *"; // [ascii]
static const char *STR_0x25db = "B D*A(A\""; // [ascii]
static const char *STR_0x27a1 = "__________T"; // [ascii]
static const char *STR_0x290a = "______________________________\\"; // [ascii]

/* ====================================================================== */
/* 0x0: zr2_07 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void zr2_07(int16_t arg_4aeh, int16_t arg1, int16_t arg3)
{
    char *pcVar1;
    undefined2 *puVar2;
    char cVar3;
    int16_t in_AX;
    int16_t iVar4;
    undefined2 in_CX;
    int16_t in_BX;
    undefined2 *unaff_BP;
    int16_t unaff_SI;
    undefined2 *puVar5;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    
    *(int16_t *)(in_BX + unaff_SI) = *(int16_t *)(in_BX + unaff_SI) - in_AX;
    *(char *)0x99a2 = *(char *)0x99a2 + (char)((uint16_t)in_CX >> 8);
    puVar5 = (undefined2 *)&stack0xfffe;
    cVar3 = '\r';
    do {
        unaff_BP = unaff_BP + -1;
        puVar5 = puVar5 + -1;
        *puVar5 = *unaff_BP;
        cVar3 = cVar3 + -1;
    } while ('\0' < cVar3);
    pcVar1 = (char *)(CONCAT11((char)(in_AX >> 0xf), (char)in_AX + -0x74) + 0x4ae);
    *pcVar1 = *pcVar1 + (char)((uint16_t)in_BX >> 8);
    slime_func_1();
    slime_func_1();
    slime_func_2();
    *(undefined *)0x497 = 0x10;
    slime_func_1();
    slime_func_1();
    slime_func_2();
    slime_func_1();
    slime_func_1();
    slime_func_2();
    *(undefined *)0x498 = 0xff;
    *(undefined *)0x497 = 0x50;
    slime_func_1();
    puVar5 = (undefined2 *)0x3286;
    for (iVar4 = 0x4b0; iVar4 != 0; iVar4 = iVar4 + -1) {
        puVar2 = puVar5;
        puVar5 = puVar5 + 1;
        *puVar2 = 0;
    }
    slime_func_2();
    slime_process_loop();
    return;
}

/* ====================================================================== */
/* 0x458: slime_func_1 */
/* ====================================================================== */


void slime_func_1(void)
{
    uint8_t *puVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    uint8_t *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    while( true ) {
        puVar1 = unaff_SI;
        unaff_SI = unaff_SI + 1;
        uVar2 = *puVar1;
        if (uVar2 == 0) break;
        uVar3 = uVar2 & 0xf0;
        if (uVar3 == *(uint8_t *)0x497) {
            uVar3 = uVar2 & 0xf;
            uVar2 = 0xaa;
        } else if (uVar3 == 0x40) {
            uVar3 = uVar2 & 0xf;
            uVar2 = 0;
        } else if ((*(char *)0x498 == '\0') || (uVar3 != 0xd0)) {
            uVar3 = 1;
        } else {
            uVar3 = uVar2 & 0xf;
            uVar2 = 0xff;
        }
        do {
            puVar1 = unaff_DI;
            unaff_DI = unaff_DI + 1;
            *puVar1 = uVar2;
            uVar3 = uVar3 - 1;
        } while (uVar3 != 0);
    }
    return;
}

/* ====================================================================== */
/* 0xd4: slime_func_2 */
/* ====================================================================== */


void slime_func_2(void)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x000000e0. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x499 * 2 + 0xde))();
    return;
}

/* ====================================================================== */
/* 0x352: slime_process_loop */
/* ====================================================================== */


void slime_process_loop(void)
{
    undefined2 unaff_DS;
    
    // WARNING: Could not recover jumptable at 0x0000035e. Too many branches
    // WARNING: Treating indirect jump as call
    (**(code **)((uint16_t)*(uint8_t *)0x499 * 2 + 0x35c))();
    return;
}

/* ====================================================================== */
/* 0x298: slime_func_4 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

undefined slime_func_4(int16_t arg3)
{
    uint8_t in_DL;
    uint8_t in_DH;
    undefined2 unaff_DS;
    
    return *(undefined *)
            ((((((char)arg3 * '\x02' + CARRY1(in_DH, in_DH)) * '\x02' + CARRY1(in_DL, in_DL)) * '\x02' +
              CARRY1(in_DH * '\x02', in_DH * '\x02')) * '\x02' + CARRY1(in_DL * '\x02', in_DL * '\x02') & 0xf) + 0x2ae);
}

/* ====================================================================== */
/* 0x319: slime_process_loop_2 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t slime_process_loop_2(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    uint8_t uVar3;
    int16_t iVar4;
    uint8_t in_DL;
    uint8_t in_DH;
    undefined2 unaff_DS;
    bool bVar5;
    bool bVar6;
    
    uVar3 = 0;
    iVar4 = 2;
    do {
        bVar5 = CARRY1(in_DH, in_DH);
        uVar1 = in_DH * '\x02';
        bVar6 = CARRY1(in_DL, in_DL);
        uVar2 = in_DL * '\x02';
        in_DH = in_DH * '\x04';
        in_DL = in_DL * '\x04';
        arg3 = (int16_t)(((((char)arg3 * '\x02' + bVar5) * '\x02' + bVar6) * '\x02' + CARRY1(uVar1, uVar1)) * '\x02' +
                         CARRY1(uVar2, uVar2) & 0xf);
        uVar3 = uVar3 * '\x10' | *(uint8_t *)(arg3 + 0x33e);
        iVar4 = iVar4 + -1;
    } while (iVar4 != 0);
    return uVar3;
}

/* ====================================================================== */
/* 0x384: slime_process_loop_3 */
/* ====================================================================== */


void slime_process_loop_3(void)
{
    undefined *puVar1;
    int16_t iVar2;
    undefined *unaff_SI;
    undefined *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_DS;
    
    iVar2 = 5;
    do {
        puVar1 = unaff_SI + 1;
        *unaff_DI = *unaff_SI;
        unaff_SI = unaff_SI + 2;
        unaff_DI[1] = *puVar1;
        unaff_DI = unaff_DI + 0x50;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x3a1: slime_scan_loop */
/* ====================================================================== */


void slime_scan_loop(int16_t param_1)
{
    int16_t iVar1;
    int16_t unaff_DI;
    int16_t in_stack_00000000;
    
    iVar1 = 5;
    do {
        extract_bits(unaff_DI, iVar1);
        extract_bits();
        unaff_DI = in_stack_00000000 + 0x140;
        iVar1 = param_1 + -1;
    } while (iVar1 != 0);
    return;
}

/* ====================================================================== */
/* 0x3b7: extract_bits */
/* ====================================================================== */


void extract_bits(void)
{
    uint8_t uVar1;
    uint8_t in_AL;
    int16_t iVar2;
    uint8_t *unaff_DI;
    undefined2 unaff_ES;
    bool bVar3;
    
    iVar2 = 4;
    do {
        bVar3 = CARRY1(in_AL, in_AL);
        uVar1 = in_AL * '\x02';
        in_AL = in_AL * '\x04';
        *unaff_DI = *unaff_DI | (bVar3 * '\b' + CARRY1(uVar1, uVar1)) * '\x04';
        unaff_DI = unaff_DI + 1;
        iVar2 = iVar2 + -1;
    } while (iVar2 != 0);
    return;
}

/* ====================================================================== */
/* 0x3e5: slime_func_9 */
/* ====================================================================== */


void slime_func_9(void)
{
    undefined *puVar1;
    undefined uVar2;
    int16_t iVar3;
    int16_t in_BX;
    undefined *unaff_DI;
    undefined *puVar4;
    undefined2 unaff_ES;
    int16_t in_stack_00000000;
    
    do {
        iVar3 = 4;
        puVar4 = unaff_DI;
        do {
            uVar2 = fcn.0000040b(in_BX);
            puVar1 = puVar4;
            puVar4 = puVar4 + 1;
            *puVar1 = uVar2;
            iVar3 = iVar3 + -1;
        } while (iVar3 != 0);
        puVar4 = unaff_DI + 0x2000;
        if ((undefined *)0x7fff < puVar4) {
            puVar4 = unaff_DI + -0x5f60;
        }
        unaff_DI = puVar4;
    } while (in_stack_00000000 != 1);
    return;
}

/* ====================================================================== */
/* 0x40b: fcn.0000040b */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

uint8_t fcn.0000040b(int16_t arg3)
{
    uint8_t in_AL;
    uint8_t uVar1;
    char in_DL;
    char in_DH;
    
    if (in_DL != '\0') {
        return in_AL;
    }
    uVar1 = *(char *)((in_AL >> 4) + 0x444) * '\x10' | *(uint8_t *)((in_AL & 0xf) + 0x444);
    if (in_AL >> 4 != 0) {
        return uVar1;
    }
    if (in_DH == '\0') {
        return uVar1;
    }
    return in_AL;
}

/* ====================================================================== */
/* 0x8e: fcn.0000008e */
/* ====================================================================== */


void fcn.0000008e(void)
{
    undefined2 *puVar1;
    int16_t iVar2;
    undefined in_DH;
    int16_t unaff_BP;
    int16_t unaff_SI;
    undefined2 *unaff_DI;
    undefined2 unaff_ES;
    undefined2 unaff_SS;
    
    LOCK();
    *(undefined *)(unaff_BP + unaff_SI) = in_DH;
    UNLOCK();
    for (iVar2 = 0x4b0; iVar2 != 0; iVar2 = iVar2 + -1) {
        puVar1 = unaff_DI;
        unaff_DI = unaff_DI + 1;
        *puVar1 = 0;
    }
    slime_func_2();
    slime_process_loop();
    return;
}

/* ====================================================================== */
/* 0x1b40: fcn.00001b40 */
/* ====================================================================== */

// WARNING: Control flow encountered bad instruction data
// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00001b40(int16_t arg_20a8h, int16_t arg3, int16_t arg4)
{
    int16_t *piVar1;
    uint8_t *puVar2;
    uint16_t *puVar3;
    uint16_t uVar4;
    undefined in_AL;
    uint16_t uVar5;
    undefined2 in_DX;
    int16_t unaff_BP;
    int16_t unaff_SI;
    undefined2 unaff_SS;
    undefined2 unaff_DS;
    int16_t var_7f76h;
    
    out(in_DX, in_AL);
    puVar2 = (uint8_t *)(arg3 + unaff_SI + 0x3aa8);
    *puVar2 = *puVar2 & 0xa8;
    uVar5 = CONCAT11((char)((uint16_t)arg4 >> 8) - *(char *)0xa11, (char)arg4);
    puVar3 = (uint16_t *)(arg3 + unaff_SI + 1 + -0x4560);
    uVar4 = *puVar3;
    *puVar3 = *puVar3 + uVar5;
    piVar1 = (int16_t *)(unaff_BP + unaff_SI + 1 + 0x41a2);
    *piVar1 = *piVar1 + uVar5 + (uint16_t)CARRY2(uVar4, uVar5);
    // WARNING: Bad instruction - Truncating control flow here
    halt_baddata();
}

