
COMPOSE_FILE	= srcs/docker-compose.yml
COMPOSE_CMD_F	= docker compose -f
DOCKER_CMD_F	= docker
UP				= up -d
USER			= aleksandr

DATA_PATH		= ./srcs/data

.PHONY: all build ps down

all: up  

build:	
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) build

up:
	@mkdir -p $(DATA_PATH)/db-data
	@mkdir -p $(DATA_PATH)/wp
	@mkdir -p $(DATA_PATH)/adminer
	@mkdir -p $(DATA_PATH)/portainer
	@echo "volume dirs was created!"
	@$(COMPOSE_CMD_F) $(COMPOSE_FILE) $(UP) --build


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

net:
	$(DOCKER_CMD_F) network inspect srcs_app


clean: 
	$(DOCKER_CMD_F) volume rm -f $$($(DOCKER_CMD_F) volume ls -q)
	$(DOCKER_CMD_F) system prune -f --volumes
	rm -rf $(DATA_PATH)
	rm -rf  $(DATA_PATH)/wp
	rm -rf  $(DATA_PATH)/db-data
	rm -rf  $(DATA_PATH)/adminer
	rm -rf  $(DATA_PATH)/portainer

	
fclean: 
	$(DOCKER_CMD_F) volume rm -f $$($(DOCKER_CMD_F) volume ls -q)
	$(DOCKER_CMD_F) system prune -a --force
	$(DOCKER_CMD_F) system prune -f --volumes
	rm -rf  $(DATA_PATH)/wp
	rm -rf  $(DATA_PATH)/db-data
	rm -rf  $(DATA_PATH)/adminer
	rm -rf  $(DATA_PATH)/portainer
	rm -rf $(DATA_PATH)
	


re: down clean build up



# docker system prune - delete all res
