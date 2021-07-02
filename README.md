# DockOS
### An academic exercise in building an OS for ARM.

Dock OS is my very own operating system being built for ARM processors. The real target is a raspberry pi 2, but right now everything is emulated.
Mostly following along the [bare bones](https://wiki.osdev.org/Bare_Bones) and [meaty skelleton](https://wiki.osdev.org/Meaty_Skeleton) articles on the OS Dev Wiki.
Eventually I would like to build some parts of this in Rust instead of C, but C seems like a good starting place due it it's simplicity.

## Building
Building this project requires building a [cross compiler described in the OS wiki.](https://wiki.osdev.org/GCC_Cross-Compiler)
The target for this project however is ARM so you will need to change the TARGET to arm-none-eabi.
