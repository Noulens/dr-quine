#include <stdio.h>
#define B(x)int main(){puts("#define B(x)"x"\n#define X(s)S(s)\n#define S(s)#s\nB(X(B(x)))");return(0);}
#define X(s)S(s)
#define S(s)#s
B(X(B(x)))