all		:
	make -C ./C/Colleen all
	make -C ./C/Grace all
	make -C ./C/Sully all
	make -C ./ASM/Colleen all
	make -C ./ASM/Grace all
	make -C ./ASM/Sully all
	make -C ./RUST/Colleen all
	make -C ./RUST/Grace all

fclean	:
	make -C ./C/Colleen fclean
	make -C ./C/Grace fclean
	make -C ./C/Sully fclean
	make -C ./ASM/Colleen fclean
	make -C ./ASM/Grace fclean
	make -C ./ASM/Sully fclean
	make -C ./RUST/Colleen fclean
	make -C ./RUST/Grace fclean

re		:	fclean all