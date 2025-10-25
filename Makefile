.PHONY: up down logs build

COMPOSE_DIR=infra/docker

up:
    docker compose -f $(COMPOSE_DIR)/docker-compose.yml --profile traefik --profile php --profile db up -d --build

down:
    docker compose -f $(COMPOSE_DIR)/docker-compose.yml down -v

logs:
    docker compose -f $(COMPOSE_DIR)/docker-compose.yml logs -f

build:
    docker compose -f $(COMPOSE_DIR)/docker-compose.yml build
