AS=arm-none-eabi-as
GCC=arm-none-eabi-gcc

CFLAGS=-O2 -g -Wall -Wextra

all: myos.elf
	arm-none-eabi-objcopy $< -O binary kernel7.img

myos.elf: boot.o kernel.o
	$(GCC) -T arm/linker.ld -o $@ -ffreestanding -O2 -nostdlib $^ -lgcc

kernel.o: kernel/kernel.c
	$(GCC) -mcpu=arm1176jzf-s -fpic -ffreestanding -std=gnu99 -c $^ -o $@ $(CFLAGS)

boot.o: arm/boot.s
	$(AS) -c $^ -o $@

clean:
	rm -f *.o
