#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#define PUT(x) int main(){int fd = open("Grace_kid.c", 0100 | 01 | 01000, 0644);if (fd == -1) return (1);dprintf(fd, "#include <stdio.h>\n#include <fcntl.h>\n#include <unistd.h>\n#define PUT(x) "x"\n#define STR(s) STR_HELPER(s)\n#define STR_HELPER(s) #s\n/*\n\tIt is not in the stars to hold our destiny but in ourselves.\n*/\nPUT(STR(PUT(x)))");if (close(fd) == (-1)) return (1);return(0);}
#define STR(s) STR_HELPER(s)
#define STR_HELPER(s) #s
/*
	It is not in the stars to hold our destiny but in ourselves.
*/
PUT(STR(PUT(x)))