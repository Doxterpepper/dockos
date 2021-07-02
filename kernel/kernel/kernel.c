#include <stddef.h>
#include <stdint.h>

#include "kernel/uart.h"

#if defined(__cplusplus)
extern "C"
#endif

#ifdef AARCH64
void kernel_main(uint64_t dtb_ptr32, uint64_t x1, uint64_t x2, uint64_t x3)
#else
void kernel_main(uint32_t r0, uint32_t r1, uint32_t atags)
#endif
{
    uart_init(2);
    //uart_puts("Hello, kernel world\r\n");
    uart_puts("This is my output.\0");
}
