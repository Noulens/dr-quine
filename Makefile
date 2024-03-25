all		:
	make -C ./C/Colleen all
	make -C ./C/Grace all
	make -C ./C/Sully all
	make -C ./ASM/Colleen all
	make -C ./ASM/Grace all
	make -C ./ASM/Sully all
	docker-compose -f ./Docker/docker-compose.yml up --build -d
	docker exec -it rust fish

fclean	:
	make -C ./C/Colleen fclean
	make -C ./C/Grace fclean
	make -C ./C/Sully fclean
	make -C ./ASM/Colleen fclean
	make -C ./ASM/Grace fclean
	make -C ./ASM/Sully fclean
	docker-compose -f ./Docker/docker-compose.yml down
	docker system prune -af

re		:	fclean all