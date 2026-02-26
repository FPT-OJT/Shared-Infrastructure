# Makefile - Sạch sẽ, hoàn toàn vắng bóng các lệnh xử lý hạ tầng thủ công
up:
	podman compose -f podman-compose.yaml --env-file .env up -d

down:
	podman compose -f podman-compose.yaml --env-file .env down

up-b:
	podman compose -f podman-compose.yaml --env-file .env up -d --build

down-v:
	podman compose -f podman-compose.yaml --env-file .env down -v

logs:
	podman compose -f podman-compose.yaml --env-file .env logs -f

logs-s:
	podman compose -f podman-compose.yaml --env-file .env logs -f --tail=100

.PHONY: up down up-b down-v logs logs-s