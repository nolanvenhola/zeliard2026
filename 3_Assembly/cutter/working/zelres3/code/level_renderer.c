/* ====================================================================== */
/* STRINGS                                                             */
/* ====================================================================== */

static const char *STR_0x3b1 = "uPs[xZp"; // [ibm037]
static const char *STR_0x650 = "{ttx»Q&"; // [ibm037]
static const char *STR_0x6f6 = " \"$%)*'&("; // [ascii]
static const char *STR_0x701 = " \"$%20-1+."; // [ascii]
static const char *STR_0x70d = " ,/=:<;3"; // [ascii]
static const char *STR_0x716 = "456789BC@D>"; // [ascii]
static const char *STR_0x722 = "?AEFXYZOPRTVQSUW"; // [ascii]

/* ====================================================================== */
/* 0x648: fcn.00000648 */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.00000648(int16_t arg3)
{
    int16_t iVar1;
    undefined2 unaff_DS;
    int16_t in_stack_00000000;
    
    iVar1 = *(uint16_t *)0xa7a3 - arg3;
    if (*(uint16_t *)0xa7a3 < (uint16_t)arg3) {
        iVar1 = 0;
    }
    *(int16_t *)0xa7a3 = iVar1;
    (**(code **)0x200c)(iVar1);
    if (in_stack_00000000 != 0) {
        return;
    }
    *(undefined *)0xa7b8 = 0;
    *(undefined *)0xa7c2 = 0;
    *(undefined *)0xff2e = 0xff;
    return;
}

/* ====================================================================== */
/* 0x42d: fcn.0000042d */
/* ====================================================================== */


void fcn.0000042d(void)
{
    int16_t iVar1;
    undefined2 unaff_DS;
    
    iVar1 = *(int16_t *)0xa7a0;
    *(uint16_t *)0xa7a0 = iVar1 - 1U;
    if (iVar1 - 1U < 0xf) {
        return;
    }
    return;
}

/* ====================================================================== */
/* 0x43f: fcn.0000043f */
/* ====================================================================== */


void fcn.0000043f(void)
{
    undefined2 unaff_DS;
    
    if (0x32 < *(int16_t *)0xa7a0 + 1U) {
        return;
    }
    *(uint16_t *)0xa7a0 = *(int16_t *)0xa7a0 + 1U;
    return;
}

/* ====================================================================== */
/* 0x5fe: fcn.000005fe */
/* ====================================================================== */

// WARNING: Unknown calling convention -- yet parameter storage is locked

void fcn.000005fe(int16_t arg3)
{
    uint8_t uVar1;
    uint8_t uVar2;
    undefined uVar3;
    undefined2 *unaff_SI;
    uint8_t *unaff_DI;
    undefined2 unaff_DS;
    bool bVar4;
    undefined2 in_stack_00000000;
    
    uVar3 = (undefined)arg3;
    bVar4 = false;
    if (*(char *)0xa7c2 == '\0') {
        return;
    }
    (**(code **)0x6036)(*(undefined2 *)0xa7c3);
    if (bVar4) {
        return;
    }
    *unaff_SI = in_stack_00000000;
    *(undefined *)(unaff_SI + 1) = *(undefined *)0xa7c5;
    *(undefined *)((int16_t)unaff_SI + 3) = uVar3;
    *(undefined *)(unaff_SI + 2) = 0x26;
    *(undefined *)((int16_t)unaff_SI + 5) = 0;
    *(undefined *)(unaff_SI + 3) = *(undefined *)0xa7c6;
    (**(code **)0x6028)();
    uVar2 = *(uint8_t *)0xa7b6;
    LOCK();
    uVar1 = *unaff_DI;
    *unaff_DI = uVar2 | 0x80;
    UNLOCK();
    *(uint8_t *)(uVar2 + 0xed20) = uVar1;
    return;
}

