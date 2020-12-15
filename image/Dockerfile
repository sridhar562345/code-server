FROM node:14-buster


RUN curl -fOL https://github.com/cdr/code-server/releases/download/v3.7.2/code-server_3.7.2_amd64.deb \
 && dpkg -i code-server_3.7.2_amd64.deb \
 && rm code-server_3.7.2_amd64.deb

RUN apt-get update && \
  apt-get install -y \
  	libgtk2.0-0 \
  	libgtk-3-0 \
  	libgbm-dev \
  	libnotify-dev \
  	libgconf-2-4 \
  	libnss3 \
  	libxss1 \
  	libasound2 \
  	libxtst6 \
  	xauth \
  	xvfb \
    curl \
    vim && \
    rm -rf /var/lib/apt/lists/*

RUN npm install cypress@6.1.0

EXPOSE 443 8080 8000 3000 80

RUN mkdir -p /home/workspace

WORKDIR /home/workspace

ENTRYPOINT ["/bin/bash", "-c"]

CMD ["code-server --cert --bind-addr 0.0.0.0:443 ."]