# https://hub.docker.com/_/eclipse-mosquitto

FROM eclipse-mosquitto:2.0-openssl

# Add the main user with specific UID
ARG USER=mosquitto
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
