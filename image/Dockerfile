FROM node:14-buster


RUN curl -fOL https://github.com/cdr/code-server/releases/download/v3.7.2/code-server_3.7.2_amd64.deb \
 && dpkg -i code-server_3.7.2_amd64.deb \
 && rm code-server_3.7.2_amd64.deb

RUN apt-get update && apt-get install -y curl vim

EXPOSE 443 8080 8000 3000 80

RUN mkdir -p /home/workspace

WORKDIR /home/workspace

ENTRYPOINT ["/bin/bash", "-c"]

CMD ["code-server --cert --bind-addr 0.0.0.0:443 ."]