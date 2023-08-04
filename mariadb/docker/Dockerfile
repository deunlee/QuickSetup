# https://hub.docker.com/_/mariadb

FROM mariadb:11.0-jammy

# Modify the UID and GID of the default user.
ARG USER=mysql
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
