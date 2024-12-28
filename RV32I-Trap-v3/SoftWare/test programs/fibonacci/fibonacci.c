
#include <stdint.h>

int main()
{
    int a = 5;
    int b = 1;
    while (a>0) {
        b = b * a;
        a = a - 1;
    }
}

void instruction_address_misaligned_handler()
{

}

void illegal_insn_handler()
{

}

void load_address_misaligned_handler()
{

}

void store_address_misaligned_handler()
{

}

void default_exc_handler()
{

}

void machine_software_interrupt_handler()
{

}

void machine_timer_interrupt_handler()
{

}

void machine_external_interrupt_handler()
{

}

void external_interrupt_signal_handler()
{

}