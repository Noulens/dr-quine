SRCS1	=	Colleen.c

NAME1	=	Colleen

FLAG	=	-Wall -Wextra -Werror

OBJS1	=	${SRCS1:.c=.o}

all		:	${NAME1}

%.o		:	%.c
			gcc ${FLAG} -c $< -o $@

${NAME1}	:	${OBJS1}
			gcc ${FLAG} -g $< -o $@

clean	:
			rm -f ${OBJS}

fclean	:	clean
			rm -f ${NAME}
			rm -f *.out
			rm -f *.o

re		:	fclean all

.PHONY	:	re fclean all clean
