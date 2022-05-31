# FOR MOBILE DEVS!!!!
run-local-server:
	docker-compose -f docker-compose-local.yml up -d
stop-local-server:
	docker-compose -f docker-compose-local.yml down
migrate:
	docker exec --tty $$(docker-compose -f docker-compose-local.yml ps -q api) python manage.py migrate
