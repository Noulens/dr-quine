SRCS	=	Colleen.s 

NAME	=	Colleen

FLAG	=	-Wall -Wextra -Werror

OBJS	=	${SRCS:.s=.o}

all		:	${NAME}
	
%.o		:	%.s
			nasm -f elf64 -F DWARF -g $< -o $@

${NAME}	:	${OBJS}
			gcc ${FLAG} $< -o $@ -g

clean	:
			rm -f ${OBJS}

fclean	:	clean
			rm -f ${NAME}
			rm -f *.lst
			rm -f *.out
			rm -f *.o

re		:	fclean all

.PHONY	:	re fclean all clean

