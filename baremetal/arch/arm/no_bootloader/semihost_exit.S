.global lkmc_start
lkmc_start:
    mov r0, #0x18
    ldr r1, =#0x20026
    svc 0x00123456
