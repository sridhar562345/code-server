build:
	docker build -t code-server .

run:
	docker run -d -p 443:443 -p 8080:8080 -p 8000:8000 -p 3000:3000 -p 80:80  --name code-server-container -v "$PWD:/home/coder/project" -e PASSWORD='ibhubs' code-server:latest

shell:
	docker exec -it code-server-container /bin/bash

ps:
	docker ps

logs:
	docker logs code-server-container

follow-logs:
	docker logs --follow code-server-container

start:
	docker start code-server-container

stop:
	docker stop code-server-container

restart:
	docker restart code-server-container

kill:
	docker kill code-server-container

rm:
	docker rm code-server-container

install:
	sudo apt-get update
	sudo apt install -y docker.io

stopall:
	sudo docker stop `docker ps -aq --no-trunc`

clear:
	sudo docker rmi `docker images --filter 'dangling=true' -q --no-trunc`
