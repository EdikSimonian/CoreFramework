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

test:
	@curl --verbose -H 'Host: example.com' 'http://127.0.0.1:80/'
	@curl --verbose -H 'Host: kibana.example.com' 'http://127.0.0.1:80/'

down:
	@docker-compose down
	@rm ./Nginx/conf.d/default.conf