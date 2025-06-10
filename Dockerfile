FROM node:20

WORKDIR /workspace

RUN npm install -g typescript

CMD [ "bash" ]
