NAME = inception

all : 
	docker-compose -f srcs/docker-compose.yml up -d --build

up :
	docker-compose -f srcs/docker-compose.yml up -d

stop : 
	docker-compose -f srcs/docker-compose.yml stop

clean : 
	docker-compose -f srcs/docker-compose.yml down

fclean: clean
	docker system prune -af

re : fclean
	make all

.PHONY: all up stop clean fclean re
