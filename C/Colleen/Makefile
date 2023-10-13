SRCS	=	Colleen.c

NAME	=	Colleen

FLAG	=	-Wall -Wextra -Werror

OBJS	=	${SRCS:.c=.o}

all		:	${NAME}

%.o		:	%.c
			gcc ${FLAG} -c $< -o $@

${NAME}	:	${OBJS}
			gcc ${FLAG} -g $< -o $@

clean	:
			rm -f ${OBJS}

fclean	:	clean
			rm -f ${NAME}
			rm -f *.out
			rm -f *.o

re		:	fclean all

.PHONY	:	re fclean all clean
