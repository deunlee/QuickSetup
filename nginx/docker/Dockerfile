# https://hub.docker.com/_/nginx

FROM nginx:1.25-alpine

RUN apk add --no-cache \
		bash \
		openssl

# Add certificate generation script for HTTPS.
# (It creates a 10-year self-signed certificate if there is no default certificate in the nginx/config/private/.)
COPY generate_cert.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/*.sh

# Modify the UID and GID of the default user.
ARG USER=nginx
ARG UID=1000
RUN sed -i -e "s/^\($USER:[^:]\):[0-9]*:[0-9]*:/\1:$UID:$UID:/" /etc/passwd && \
	sed -i -e "s/^\($USER:[^:]\):[0-9]*:/\1:$UID:/" /etc/group
