#ifndef _SYSTEMCALL_H_
#define _SYSTEMCALL_H_

extern void print_string(char *str);
extern void exit_program();
extern void error_msg(char *errmsg);
extern void clear_screen();
extern void timer(unsigned int time);

#endif