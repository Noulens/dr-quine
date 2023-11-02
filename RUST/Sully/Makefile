SRCS	=	Sully.rs

NAME	=	Sully

all		:
			rustc ${SRCS} -o ${NAME}

clean	:
			rm -f ${NAME}
			rm -f Sully_*.rs

fclean	:	clean

re		:	fclean all

.PHONY	:	re fclean all clean