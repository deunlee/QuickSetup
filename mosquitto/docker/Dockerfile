# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:2.0

# TimeZone support
RUN apk add --no-cache tzdata && \
	rm -rf /var/cache/apk/*

# Modify the UID and GID of the default user.
ARG USER=mosquitto
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
