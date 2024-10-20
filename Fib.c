#include<stdio.h>

long fib(long n) {
	long val = 1;
	long nval = 1;
	long nmi, t;

	if (n <= 1) goto done;
	
	nmi = n - 1;
	loop:
		t = val + nval;
		val = nval;
		nval = t;
		nmi--;
		if (nmi) goto loop;
	
	done:
		return val;
}
