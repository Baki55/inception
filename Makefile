# IF you have docker-compose down, why would you need docker container rm ?

all:
	mkdir -p /Users/baki/Desktop/bkhatib/data/wordpress
	mkdir -p /Users/baki/Desktop/bkhatib/data/mariadb
	docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean:
	docker container stop $$(docker container ls -aq);\
	docker container rm $$(docker container ls -aq);\
	docker rmi $$(docker images -a -q);\
	docker system prune -a --volumes;\
	docker volume rm $$(docker volume ls -q);