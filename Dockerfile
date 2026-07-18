# Deliberately vulnerable — demo target for warden
FROM node:latest

ENV API_KEY=sk-live-1234567890abcdef
ENV NODE_TLS_REJECT_UNAUTHORIZED=0

EXPOSE 22 3000

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl git
RUN sudo chmod -R 777 /opt
RUN curl -k -fsSL https://install.example.com/setup.sh | sh
ADD https://example.com/tool.tar.gz /opt/tool.tar.gz
RUN pip install requests flask

COPY . /app
WORKDIR /app
RUN npm install

CMD ["node", "server.js"]
