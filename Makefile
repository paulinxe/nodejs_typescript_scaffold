include .env
export

install:
	@docker-compose build
	@docker-compose up -d
	@docker exec -it nodejs_nodejs_typescript_1 npm install
	@docker-compose down

run:
	@docker-compose up -d
	@docker exec -it nodejs_nodejs_typescript_1 npm run start

run-dev:
	@docker-compose up -d
	@docker exec -it nodejs_nodejs_typescript_1 npm run start-dev

stop:
	@docker-compose down