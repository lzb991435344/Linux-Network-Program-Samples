/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _RDICT_H_RPCGEN
#define	_RDICT_H_RPCGEN

#include <rpc/rpc.h>
#define	MAXWORD 50
#define	DICTSIZ 100

struct example {
	int exfield1;
	char exfield2;
};
typedef struct example example;

#define	RDICTPROG ((u_long)0x30090949)
#define	RDICTVERS ((u_long)1)
#define	INITW ((u_long)1)
extern  int * initw_1();
#define	INSERTW ((u_long)2)
extern  int * insertw_1();
#define	DELETEW ((u_long)3)
extern  int * deletew_1();
#define	LOOKUPW ((u_long)4)
extern  int * lookupw_1();

/* the xdr functions */
bool_t xdr_example();

#endif /* !_RDICT_H_RPCGEN */
