AS=arm-none-eabi-as
GCC=arm-none-eabi-gcc

KERNAL_HEADERS=include/kernel

CFLAGS=-O2 -g -Wall -Wextra

all: myos.elf
	arm-none-eabi-objcopy $< -O binary kernel7.img

myos.elf: boot.o kernel.o uart.o
	$(GCC) -T arm/linker.ld -o $@ -ffreestanding -O2 -nostdlib $^ -lgcc

uart.o: kernel/uart.c include/kernel/uart.h
	$(GCC) -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -Iinclude -c $< -o $@ $(CFLAGS)

kernel.o: kernel/kernel.c
	$(GCC) -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -Iinclude -c $^ -o $@ $(CFLAGS)

boot.o: arm/raspi2-boot.s
	$(AS) -c $^ -o $@

clean:
	rm -f *.o
	rm -f *img
