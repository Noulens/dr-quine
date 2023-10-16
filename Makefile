all		:
	@make -C ./C all
	@make -C ./ASM all
fclean	:
	@make -C ./ASM fclean
	@make -C ./C fclean
	rm -rf Grace_kid.s Grace_kid.c

check	:	all
	printf "\nTESTS:\n"
	@./C/Colleen/Colleen | diff - ./C/Colleen/Colleen.c && printf "Colleen C is right\n"
	@./ASM/Colleen/Colleen | diff - ./ASM/Colleen/Colleen.s && printf "Colleen ASM is right\n"
	@./C/Grace/Grace | diff ./Grace_kid.c ./C/Grace/Grace.c && printf "Grace C is right\n"
	@./ASM/Grace/Grace | diff ./Grace_kid.s ./ASM/Grace/Grace.s && printf "Grace C is right\n"