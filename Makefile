COMPOSE_FILE = srcs/docker-compose.yml

COMPOSE_CMD_F = docker compose -f

UP				= up -d
# START			= start -d

.PHONY: all build ps down

all: up  

build:	
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) build

up:
	# @mkdir -p srcs/db-data
	# @mkdir -p srcs/wp
	
	@mkdir -p /home/namina/db-data
	@mkdir -p /home/namina/wp
	$(COMPOSE_CMD_F) $(COMPOSE_FILE) $(UP)

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
	docker exec -it $$(docker ps -q) /bin/bash

mariadb: 
	docker exec -it mariadb bash

nginx: 
	docker exec -it nginx bash

wp: 
	docker exec -it wordpress bash

clean: down rm  
	docker volume rm -f $$(docker volume ls -q)
	docker system prune -f --volumes
	# rm -rf srcs/db-data
	# rm -rf srcs/wp
	rm -rf /home/namina/wp
	rm -rf /home/namina/db-data

	


fclean: down rm  
	docker volume rm -f $$(docker volume ls -q)
	docker system prune -a --force
	docker system prune -f --volumes
	rm -rf /home/namina/wp
	rm -rf /home/namina/db-data
	


rebuild: down all



# docker system prune - delete all res
