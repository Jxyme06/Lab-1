#include <stdio.h>

extern unsigned char ram[]; // RAM declared in assembly
extern void fill_ram(void); // Assembly function

int main()
{
        fill_ram(); // Run assembly code

        printf("RAM contents from 50H:");

        printf("%u ", ram[0x50]);

        return 0;
}