init:
	mkdir -p container-data/pg-data
	mkdir -p container-data/statics
	docker network create postgres-network
	docker network create vending-machine-network

clean:
	rm -rf container-data
	docker network remove postgres-network
	docker network remove vending-machine-network

db-start:
	docker-compose -f database-compose.yml up -d
	docker ps

db-stop:
	docker-compose -f database-compose.yml down --rmi all
	
start:
	docker-compose -f app-compose.yml down --rmi all
	docker-compose -f app-compose.yml up -d
	docker ps

stop:
	docker-compose -f app-compose.yml down --rmi all
