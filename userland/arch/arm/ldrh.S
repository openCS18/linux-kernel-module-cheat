/* https://cirosantilli.com/linux-kernel-module-cheat#arm-ldrh-and-ldrb-instructions */

#include <lkmc.h>

LKMC_PROLOGUE
    ldr r0, =myvar
    mov r1, 0x0
    ldrh r1, [r0]
    LKMC_ASSERT_EQ(r1, =0x00005678)
LKMC_EPILOGUE
myvar:
    .word 0x12345678
