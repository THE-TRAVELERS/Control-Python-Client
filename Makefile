.PHONY: install start stop restart clean logs bash update

install:
	@echo "Building and installing the project..."
	docker compose build

start:
	@echo "Running the project..."
	docker compose up -d

stop:
	@echo "Stopping the project..."
	docker compose down

restart:
	@echo "Restarting the project..."
	docker compose down
	docker compose up -d

clean:
	@echo "Cleaning up the project..."
	docker compose down --volumes --remove-orphans

logs:
	@echo "Displaying logs..."
	docker compose logs -f

bash:
	@echo "Opening a bash shell in the container..."
	docker compose exec app bash

update:
	@echo "Updating the project..."
	git pull
	docker compose pull
	docker compose build