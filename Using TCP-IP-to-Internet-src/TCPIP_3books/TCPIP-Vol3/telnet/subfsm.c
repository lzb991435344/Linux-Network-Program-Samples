/* subfsm.c */

#include <sys/types.h>

#include <stdio.h>

#include "telnet.h"
#include "tnfsm.h"

extern int	no_op(), subtermtype();
extern int	abort();

struct fsm_trans substab[] = {
        /* State        Input           Next State      Action  */
        /* ------       ------          -----------     ------- */
	{ SS_START,	TOTERMTYPE,	SS_TERMTYPE,	no_op		},
	{ SS_START,	TCANY,		SS_END,		no_op		},

	{ SS_TERMTYPE,	TT_SEND,	SS_END,		subtermtype	},
	{ SS_TERMTYPE,	TCANY,		SS_END,		no_op		},

	{ SS_END,	TCANY,		SS_END,		no_op		},
	{ FSINVALID,	TCANY,		FSINVALID,	abort		},
};

int	substate;
u_char	subfsm[NSSTATES][NCHRS];
