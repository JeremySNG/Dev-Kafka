# build docker images
build:
	docker compose build zookeeper broker

# start all containers and run all services locally
run-dev: build
	docker compose up zookeeper broker