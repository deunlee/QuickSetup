# https://hub.docker.com/_/mariadb

FROM mariadb:10.11.2-jammy

# Add the main user with specific UID
ARG USER=mysql
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
