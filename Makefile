FRONT_END_BINARY=frontApp
BROKER_BINARY=brokerApp

## up: starts all containers in the background without forcing build
up:
	@echo "Starting Docker images..."
	@echo "Build image no cache"
	docker-compose build --no-cache
	@echo "Run Image"
	docker-compose up -d --force-recreate
	@echo "Docker images started!"

## down: stop docker compose
down:
	@echo "Stopping docker compose..."
	docker-compose down
	@echo "Done!"
	
download-source:
	@echo "Download Auth Service"
	git clone https://github.com/directoryxx/auth-service.git 
	git checkout v1
	@echo "Download File Service"
	git clone https://github.com/directoryxx/file-service.git 
	git checkout v1

migrate-db:
	@echo "Migrate Database Auth"
	docker exec go-micro_auth-service_1 migrate -path /migration/migrations -database "postgresql://postgres:password@db-file:5432/auth?sslmode=disable" -verbose up
	@echo "Migrate Database File"
	docker exec go-micro_file-service_1 migrate -path /migration/migrations -database "postgresql://postgres:password@db-file:5432/file?sslmode=disable" -verbose up
	@echo "Done!"