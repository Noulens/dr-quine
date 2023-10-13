all:
	@make -C ./C/Colleen all
	@make -C ./ASM/Colleen all
fclean:
	@make -C ./ASM/Colleen fclean
	@make -C ./C/Colleen fclean