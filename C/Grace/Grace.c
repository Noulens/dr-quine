#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define B(x) int main(){int fd = open("Grace_kid.c", 0100 | 01);if (fd == -1) return (-1);dprintf(fd, "#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n#define B(x) "x"\n#define STR(s) STR_HELPER(s)\n#define STR_HELPER(s) #s\n/*\n\tIt is not in the stars to hold our destiny but in ourselves.\n*/\nB(STR(B(x)))");if (close(fd) == (-1)) return (-1);return(0);}
#define STR(s) STR_HELPER(s)
#define STR_HELPER(s) #s
/*
	It is not in the stars to hold our destiny but in ourselves.
*/
B(STR(B(x)))