# https://hub.docker.com/r/certbot/certbot/

FROM certbot/certbot

# Add the entry point script
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]
