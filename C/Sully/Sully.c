#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
int main()
{
int i = 5;
i--;
if (i >= -1) {
int fd = -1;
char buff[11];
memset(buff, 0, 11);
sprintf(buff, "Sully_%d.c", i+1);
if ((fd = open(buff, O_CREAT | O_WRONLY | O_TRUNC, 0644)) == -1) return (1);
char *source = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <string.h>%1$c#include <unistd.h>%1$cint main()%1$c{%1$cint i = %2$d;%1$ci--;%1$cif (i >= -1) {%1$cint fd = -1;%1$cchar buff[11];%1$cmemset(buff, 0, 11);%1$csprintf(buff, %3$cSully_%5$cd.c%3$c, i+1);%1$cif ((fd = open(buff, O_CREAT | O_WRONLY | O_TRUNC, 0644)) == -1) return (1);%1$cchar *source = %3$c%4$s%3$c;%1$cdprintf(fd, source, 10, i, 34, source, 37);%1$cif (close(fd) == -1) return (1);%1$cchar make[70];%1$csprintf(make, %3$cgcc -Wall -Wextra -Werror -o Sully_%5$c1$d Sully_%5$c1$d.c && ./Sully_%5$c1$d%3$c, i+1);%1$csystem(make);}%1$creturn (0);%1$c}";
dprintf(fd, source, 10, i, 34, source, 37);
if (close(fd) == -1) return (1);
char make[70];
sprintf(make, "gcc -Wall -Wextra -Werror -o Sully_%1$d Sully_%1$d.c && ./Sully_%1$d", i+1);
system(make);}
return (0);
}