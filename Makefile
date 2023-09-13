NAME = inception
SRC_DIR = srcs

all: up

dir:
	mkdir -p /Users/baki/Desktop/bkhatib/data/wordpress
	mkdir -p /Users/baki/Desktop/bkhatib/data/mariadb

up: dir
	docker-compose -p $(NAME) --project-directory $(SRC_DIR) up -d

build: dir
	docker-compose -p $(NAME) --project-directory $(SRC_DIR) up -d --build

down:
	docker-compose -p $(NAME) --project-directory $(SRC_DIR) down

re: down build
