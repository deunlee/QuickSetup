# https://hub.docker.com/_/nginx

FROM nginx:1.25-alpine

RUN apk add --no-cache \
		bash \
		openssl

# Modify the UID and GID of the default user.
ARG USER=nginx
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
