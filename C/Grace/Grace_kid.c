#include <stdio.h>
#define B(x) int main(){FILE *fp = fopen("Grace_kid.c", "w+");if (!fp) return (-1);fprintf(fp, "#include <stdio.h>\n#define B(x) "x"\n#define STR(s) STR_HELPER(s)\n#define STR_HELPER(s) #s\n/*\n\tIt is not in the stars to hold our destiny but in ourselves.\n*/\nB(STR(B(x)))");if (fclose(fp) == (-1)) return (-1);return(0);}
#define STR(s) STR_HELPER(s)
#define STR_HELPER(s) #s
/*
	It is not in the stars to hold our destiny but in ourselves.
*/
B(STR(B(x)))