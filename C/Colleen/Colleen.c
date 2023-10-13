#include <stdio.h>
/*
	What's past is prologue.
*/
void func()
{
	char *source = "#include <stdio.h>%1$c/*%1$c%4$cWhat's past is prologue.%1$c*/%1$cvoid func()%1$c{%1$c%4$cchar *source = %2$c%3$s%2$c;%1$c%4$cprintf(source, 10, 34, source, 9);%1$c}%1$c";
	printf(source, 10, 34, source, 9);
}
int main()
{
	func();
	char *source = "int main()%1$c{%1$c%4$cfunc();%1$c%4$cchar *source = %2$c%3$s%2$c;%1$c%4$c/*%1$c%4$c%4$cO brave new world!%1$c%4$c*/%1$c%4$cprintf(source, 10, 34, source, 9);%1$c%4$creturn (0);%1$c}";
	/*
		O brave new world!
	*/
	printf(source, 10, 34, source, 9);
	return (0);
}