# Install Docker

- install docker from https://hub.docker.com/editions/community/docker-ce-desktop-windows/
- When the installation finishes, Docker starts automatically. The whale in the notification area indicates that Docker is running, and accessible from a terminal
- open cmd and and try out some Docker commands!
- Run docker version to check the version.
- Run docker run hello-world to verify that Docker can pull and run images
- If any problem, restart docker by right-click on docker icon in notification panel and selecting restart

# Install Docker Compose

- install docker-compose using commands below
```
python -m pip install --upgrade pip
pip install docker-compose
```

# Enabling File Sharing in Docker

- click on whale icon in notification area and you can see docker application.
- click on seetings icon in the top bar of application > Resources > File sharing, Browse and add code-server repo we cloned in file sharing

# Start Docker Compose

- cd into windows directory in code-server repo and Run our docker application in cmd 
```
docker-compose up -d
```

# Stop Docker Compose

- cd into windows directory in code-server and stop docker-compose in cmd
```
docker-compose down
```


# Access from browser
- On browser use https://127.0.0.1 (or) 127.0.0.1:443
- Accept the risk and continue
- Enter password  `ibhubs`


# Note
- Make sure 80 8080 443 3000 8080 are free without any server running
- Kill default ubuntu apache server on 80 if problem: `sudo apachectl stop`.
- To have your repo/directory inside code-server in browser, copy the repo/directory into the code-server windows directory you cloned.