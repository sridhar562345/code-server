build:
	docker build -t $(name) .

run:
	docker run -d -p 443:443 -p 8080:8080 -p 8000:8000 -p 3000:3000 -p 80:80  --name $(name) -v "$PWD:/home/coder/project" -e PASSWORD='ibhubs' code-server:latest

shell:
	docker exec -it $(name) /bin/bash

ps:
	docker ps

logs:
	docker logs $(name)

follow-logs:
	docker logs --follow $(name)

start:
	docker start $(name)

stop:
	docker stop $(name)

restart:
	docker restart $(name)

kill:
	docker kill $(name)

rm:
	docker rm $(name)

install:
	sudo apt-get update
	sudo apt install -y docker.io

stopall:
	sudo docker stop `docker ps -aq --no-trunc`

clear:
	sudo docker rmi `docker images --filter 'dangling=true' -q --no-trunc`
