#include "Drivers/vga.h"
#include "Lib/systemcall.h"
#include "Lib/kern_ver.h"

int main()
{
    clear_screen();
    vga_set_color(VGA_COLOR_BLUE);
    print_string("Hello World!");
    timer(1);
    vga_set_color(VGA_COLOR_WHITE);
    space();
    print_string("Hello LXOS!");
    space();
    print_string(KernelName);
    space();
    print_string(KernelVersion);
    timer(10);
    exit_program();
}