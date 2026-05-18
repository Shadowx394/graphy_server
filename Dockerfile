FROM node:26.1.0-trixie-slim
COPY graphserver.js .
COPY package.json .
COPY UScities.json .
RUN apt-get update && \
    apt-get upgrade -y && \
    npm install && \
    rm -rf /var/lib/apt/lists/*
EXPOSE  4000
CMD node graphserver.js
