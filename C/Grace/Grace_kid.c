#define B(x)int main(){FILE *fp = fopen("Grace_kid.c", "w+");fprintf(fp, "#define B(x)"x"\n#define X(s)S(s)\n#define S(s)#s\nB(X(B(x)))");fclose(fp);return(0);}
#define X(s)S(s)
#define S(s)#s
B(X(B(x)))