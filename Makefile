# bin/sh
CONTAINER_NAME=V2RAY

run:
	docker-compose up --build --force-recreate -d
stop:
	docker-compose down
log:
	docker exec -t $(CONTAINER_NAME) sh -c "tail -f -n 10000 /var/log/v2ray/access.log"
