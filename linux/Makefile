run:
	sudo docker-compose up -d

shell:
	sudo docker exec -it code-server-container /bin/bash

ps:
	sudo docker ps

logs:
	sudo docker logs code-server-container

follow-logs:
	sudo docker logs --follow code-server-container


stop:
	sudo docker-compose down

install:
	sudo apt-get update
	sudo apt install -y docker.io
	python3 -m pip install --upgrade pip
	pip3 install docker-compose

stopall:
	sudo docker stop `docker ps -aq --no-trunc`

clear:
	sudo docker rmi `docker images --filter 'dangling=true' -q --no-trunc`
