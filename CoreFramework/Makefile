all: clean build run logs

build:
	@dotnet restore
	@dotnet build
	@dotnet publish -c Release -o Publish
	@docker build -t coreframework .

run:
	@docker run -dit -p 80:80 --name coreframework coreframework 

logs:
	@docker logs coreframework

inspect:
	@docker inspect coreframework

test:
	@echo 'Not implimented yet!'

clean: 
	@docker rm -f coreframework || true
	@docker rmi coreframework || true
	@rm -rf Publish
