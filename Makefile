help: 
	@echo "Up or Down?"

up:
	@make -C ./CoreFramework build
	@docker-compose up -d
	@docker-compose scale elasticsearch=3

activate:
	@docker cp Config/license.json coreframework_elasticsearch_1:/license.json
	@docker cp Scripts/activate-xpack.sh coreframework_elasticsearch_1:/activate-xpack.sh
	@docker exec -it coreframework_elasticsearch_1 bash /activate-xpack.sh

ci:
	@make -C ./CoreFramework build
	@docker-compose up

test:
	@/bin/bash ./Scripts/test.sh

down:
	@docker-compose down
	@docker rmi coreframework_haproxy
	@docker rmi coreframework_coreframework
