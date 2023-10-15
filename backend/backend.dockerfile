FROM node:lts-alpine

COPY . /app

WORKDIR /app

RUN apk update && apk upgrade

EXPOSE 4000
EXPOSE 4042

USER node
#ENTRYPOINT [ "/bin/sh", "-c", "yarn && yarn add @nestjs/cli &&  yarn run start" ]
ENTRYPOINT [ "/bin/sh", "-c", "sleep infinity" ]

#"/bin/sh", "-c",   