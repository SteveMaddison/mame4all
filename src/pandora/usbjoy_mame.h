#ifndef __USBJOYMAME__
#define __USBJOYMAME__

#include "usbjoy.h"

extern struct usbjoy * joys [4];
extern int num_of_joys;
extern int usbjoy_player1;
extern int usbjoy_tate;

extern void pnd_usbjoy_init(void);
extern void pnd_usbjoy_close (void);
extern int pnd_usbjoy_check (struct usbjoy * joy);

#endif /* __USBJOYMAME__ */
