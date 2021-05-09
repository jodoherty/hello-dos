#include <dpmi.h>

static void myputc(char ch)
{
  __dpmi_regs r;
  r.h.ah = 0x02;
  r.h.dl = ch;
  __dpmi_int(0x21, &r);
}

void myputs(const char *s)
{
  while (*s) {
    myputc(*s);
    s++;
  }
}
