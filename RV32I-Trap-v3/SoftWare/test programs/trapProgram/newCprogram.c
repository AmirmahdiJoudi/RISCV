// // Enable machine timer interrupt (MTIE) in the mie register
// asm volatile("csrs mie, %0" :: "r"(0x00000888));

// // Enable global interrupts in the mstatus register
// asm volatile("csrs mstatus, %0" :: "r"(0x00000008));


#include <stdint.h>

int a = 5;
int b = 4;
int c = 3;

int d = 1;
int e = 1;
int f = 1;

int main()
{
    // Enable machine timer interrupt (MTIE) in the mie register
    asm volatile("csrs mie, %0" :: "r"(0x00000888));

    // Enable global interrupts in the mstatus register
    asm volatile("csrs mstatus, %0" :: "r"(0x00000008));

}

void instruction_address_misaligned_handler(void) __attribute__((interrupt("machine")));
void instruction_address_misaligned_handler()
{

}

void illegal_insn_handler(void) __attribute__((interrupt("machine")));
void illegal_insn_handler()
{

}

void load_address_misaligned_handler(void) __attribute__((interrupt("machine")));
void load_address_misaligned_handler()
{

}

void store_address_misaligned_handler(void) __attribute__((interrupt("machine")));
void store_address_misaligned_handler()
{

}

void default_exc_handler(void) __attribute__((interrupt("machine")));
void default_exc_handler()
{

}

void machine_software_interrupt_handler(void) __attribute__((interrupt("machine")));
void machine_software_interrupt_handler(void)
{
    d = a * b;
}

void machine_timer_interrupt_handler(void) __attribute__((interrupt("machine")));
void machine_timer_interrupt_handler()
{
    e = b * c;
}

void machine_external_interrupt_handler(void) __attribute__((interrupt("machine")));
void machine_external_interrupt_handler()
{
    f = a * c;
}

void external_interrupt_signal_handler(void) __attribute__((interrupt("machine")));
void external_interrupt_signal_handler()
{

}