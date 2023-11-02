SRCS	=	Grace.rs

NAME	=	Grace

all		:
			rustc ${SRCS} -o ${NAME}

clean	:
			rm -f ${NAME}
			rm -f Grace_kid.rs

fclean	:	clean

re		:	fclean all

.PHONY	:	re fclean all clean