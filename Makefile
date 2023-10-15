NAME = ft_transcendance
SHELL = /bin/bash
COMPOSE = ./docker-compose.yml
USER = tmatias

inception:all

all: build

build: up
			

up: 
	@sudo docker compose -f $(COMPOSE) up -d --build


down:
	sudo docker compose down;

clean: down
	@sudo docker system prune -fa
	
	@sudo docker volume rm $$(sudo docker volume ls -q);
	@sudo rm -rf test

fclean: clean
	

re:fclean all

.PHONY: all down up clean fclean re 