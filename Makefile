all		:
	@make -C ./C all
	@make -C ./ASM all
fclean	:
	@make -C ./ASM fclean
	@make -C ./C fclean

check	:	all
	printf "\nTESTS:\n"
	@./C/Colleen/Colleen | diff - ./C/Colleen/Colleen.c && printf "Colleen C is right\n"
	@./ASM/Colleen/Colleen | diff - ./ASM/Colleen/Colleen.s && printf "Colleen ASM is right\n"