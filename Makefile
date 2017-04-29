PORT =$(shell chmod +x ./Scripts/getESPort.sh && ./Scripts/getESPort.sh)

help: 
	@echo "Up or Down?"

up:
	@docker-compose up -d
	@docker-compose scale elasticsearch=3

activate:
	@chmod +x Scripts/activate-xpack.sh
	@./Scripts/activate-xpack.sh

down:
	@docker-compose down