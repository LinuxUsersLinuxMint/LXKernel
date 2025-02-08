#ifndef _VGA_H_
#define _VGA_H_

#define DriverName "LXKernel VGA driver"
#define DriverVersion "v1.0"

extern unsigned char VGA_COLOR_BLACK;
extern unsigned char VGA_COLOR_BLUE;
extern unsigned char VGA_COLOR_GREEN;
extern unsigned char VGA_COLOR_CYAN;
extern unsigned char VGA_COLOR_RED;
extern unsigned char VGA_COLOR_MAGENTA;
extern unsigned char VGA_COLOR_YELLOW;
extern unsigned char VGA_COLOR_WHITE;
extern unsigned char VGA_COLOR_GRAY;
extern unsigned char VGA_COLOR_LIGHT_BLUE;
extern unsigned char VGA_COLOR_LIGHT_GREEN;
extern unsigned char VGA_COLOR_LIGHT_CYAN;
extern unsigned char VGA_COLOR_LIGHT_GREEN;
extern unsigned char VGA_COLOR_LIGHT_RED;
extern unsigned char VGA_COLOR_LIGHT_MAGENTA;
extern unsigned char VGA_COLOR_LIGHT_YELLOW;
extern unsigned char VGA_COLOR_LIGHT_WHITE;

extern void vga_set_color(unsigned char color);

#endif