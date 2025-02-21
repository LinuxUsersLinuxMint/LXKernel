#ifndef _VGA_H_
#define _VGA_H_

#define DriverName "LXKernel VGA driver"
#define DriverVersion "v1.1"

#define VGA_COLOR_BLACK 0x0
#define VGA_COLOR_BLUE 0x01
#define VGA_COLOR_GREEN 0x02
#define VGA_COLOR_CYAN 0x03
#define VGA_COLOR_RED 0x04
#define VGA_COLOR_MAGENTA 0x05
#define VGA_COLOR_YELLOW 0x06
#define VGA_COLOR_WHITE 0x07
#define VGA_COLOR_GRAY 0x08
#define VGA_COLOR_LIGHT_BLUE 0x09
#define VGA_COLOR_LIGHT_GREEN 0x0A
#define VGA_COLOR_LIGHT_CYAN 0x0B
#define VGA_COLOR_LIGHT_RED 0x0C
#define VGA_COLOR_LIGHT_MAGENTA 0x0D
#define VGA_COLOR_LIGHT_YELLOW 0x0E
#define VGA_COLOR_LIGHT_WHITE 0x0F

extern void vga_set_color(unsigned char color);

#endif