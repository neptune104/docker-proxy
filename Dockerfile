FROM marvambass/nginx-ssl-secure
MAINTAINER YEOM

COPY docker-registry.conf /etc/nginx/conf.d/docker-registry.conf
COPY private.key /etc/nginx/external/private.key
COPY bundle_chained.crt /etc/nginx/external/bundle_chained.crt
COPY docker-registry.htpasswd /etc/nginx/external/docker-registry.htpasswd
