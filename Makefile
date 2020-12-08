build:
	sudo docker build -t code-server .

run:
	sudo docker run -d -p 443:443 -p 8080:8080 -p 8000:8000 -p 3000:3000 -p 80:80  --name code-server-container -v "$$PWD:/home/workspace" -e PASSWORD='ibhubs' code-server:latest

shell:
	sudo docker exec -it code-server-container /bin/bash

ps:
	sudo docker ps

logs:
	sudo docker logs code-server-container

follow-logs:
	sudo docker logs --follow code-server-container

start:
	sudo docker start code-server-container

stop:
	sudo docker stop code-server-container

restart:
	sudo docker restart code-server-container

kill:
	sudo docker kill code-server-container

rm:
	sudo docker rm code-server-container

install:
	sudo apt-get update
	sudo apt install -y docker.io

stopall:
	sudo docker stop `docker ps -aq --no-trunc`

clear:
	sudo docker rmi `docker images --filter 'dangling=true' -q --no-trunc`
