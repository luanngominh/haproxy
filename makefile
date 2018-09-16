.PHONY: up down

DOCKER_BUILD=${PWD}

up:
	@docker-compose up -d --build --force-recreate

down:
	@docker-compose down