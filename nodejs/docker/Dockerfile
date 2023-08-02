# https://hub.docker.com/_/node

FROM node:20.5-alpine3.17

RUN apk add --no-cache \
		bash

# Add the main user with specific UID
ARG USER=nodejs
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
