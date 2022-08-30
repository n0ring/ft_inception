
COMPOSE_FILE	= srcs/docker-compose.yml
COMPOSE_CMD_F	= sudo docker compose -f
DOCKER_CMD_F	= sudo docker
UP				= up -d
USER			= namina

.PHONY: all build ps down

all: up  

build:	
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) build

up:
	@sudo mkdir -p /home/$(USER)/data/db-data
	@sudo mkdir -p /home/$(USER)/data/wp
	@sudo mkdir -p /home/$(USER)/data/adminer
	@sudo mkdir -p /home/$(USER)/data/portainer
	@echo "volume dirs was created!"
	@$(COMPOSE_CMD_F) $(COMPOSE_FILE) $(UP)


stop:
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) stop

ps: 
	$(COMPOSE_CMD_F) $(COMPOSE_FILE)  ps -a

down: stop
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) down

im:
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) images

rm: down 
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) rm

in:
	$(DOCKER_CMD_F) exec -it $$($(DOCKER_CMD_F) ps -q) /bin/bash

mariadb: 
	$(DOCKER_CMD_F) exec -it mariadb bash

nginx: 
	$(DOCKER_CMD_F) exec -it nginx bash

wp: 
	$(DOCKER_CMD_F) exec -it wordpress bash

redis:
	$(DOCKER_CMD_F) exec -it redis bash


ftp:
	$(DOCKER_CMD_F) exec -it ftp bash

adm:
	$(DOCKER_CMD_F) exec -it adminer bash

port:
	$(DOCKER_CMD_F) exec -it portainer bash

clean: down rm  
	$(DOCKER_CMD_F) volume rm -f $$($(DOCKER_CMD_F) volume ls -q)
	$(DOCKER_CMD_F) system prune -f --volumes
	sudo rm -rf /home/$(USER)/data/wp
	sudo rm -rf /home/$(USER)/data/db-data
	sudo rm -rf /home/$(USER)/data/adminer
	sudo rm -rf /home/$(USER)/data/portainer

	
fclean: down rm  
	$(DOCKER_CMD_F) volume rm -f $$($(DOCKER_CMD_F) volume ls -q)
	$(DOCKER_CMD_F) system prune -a --force
	$(DOCKER_CMD_F) system prune -f --volumes
	sudo rm -rf /home/$(USER)/data/wp
	sudo rm -rf /home/$(USER)/data/db-data
	sudo rm -rf /home/$(USER)/data/adminer
	sudo rm -rf /home/$(USER)/data/portainer
	


re: down clean build up



# docker system prune - delete all res
