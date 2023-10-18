all		:
	make -C ./C/Colleen all
	make -C ./C/Grace all
	make -C ./C/Sully all
	make -C ./ASM/Colleen all
	make -C ./ASM/Grace all
	make -C ./ASM/Sully all
fclean	:
	make -C ./C/Colleen fclean
	make -C ./C/Grace fclean
	make -C ./C/Sully fclean
	make -C ./ASM/Colleen fclean
	make -C ./ASM/Grace fclean
	make -C ./ASM/Sully fclean
	rm -rf Grace_kid.s Grace_kid.c

check	:	all
	printf "\nTESTS:\n"
	@./C/Colleen/Colleen | diff - ./C/Colleen/Colleen.c && printf "Colleen C is right\n"
	@./ASM/Colleen/Colleen | diff - ./ASM/Colleen/Colleen.s && printf "Colleen ASM is right\n"
	@./C/Grace/Grace | diff ./Grace_kid.c ./C/Grace/Grace.c && printf "Grace C is right\n"
	@./ASM/Grace/Grace | diff ./Grace_kid.s ./ASM/Grace/Grace.s && printf "Grace C is right\n"