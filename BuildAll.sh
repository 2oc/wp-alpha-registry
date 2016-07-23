#!/bin/bash

#openssl rand 60 -base64 | tr -cd '[[:alnum:]]' | head -c 33 |cb

oc new-project weepee-registry \
    --description="Weepee docker registry" \
    --display-name="[weepee] Registry"

# run on master
oc policy add-role-to-group \
    system:image-puller system:serviceaccounts \
    --namespace=weepee-registry

# Install from quay
oc create -f asterisk/is.yaml
oc create -f asterisk/bc.yaml

# Legacy needs to move to quay
oc create -f ImageStream-Static-Webserver.yaml
oc create -f BuildConfig-Static-Webserver.yaml
oc create -f ImageStream-PHP-Webserver.yaml
oc create -f BuildConfig-PHP-Webserver.yaml
oc create -f ImageStream-PHP7-Webserver.yaml
oc create -f BuildConfig-PHP7-Webserver.yaml
oc create -f ImageStream-Mojo-Webserver.yaml
oc create -f BuildConfig-Mojo-Webserver.yaml
# oc create -f ImageStream-HHVM-Webserver.yaml
# oc create -f BuildConfig-HHVM-Webserver.yaml
oc create -f ImageStream-Proxy-Server.yaml
oc create -f BuildConfig-Proxy-Server.yaml
oc create -f ImageStream-WordPress-PHP-WebApp.yaml
oc create -f BuildConfig-WordPress-PHP-WebApp.yaml
# oc create -f ImageStream-WordPress-HHVM-WebApp.yaml
# oc create -f BuildConfig-WordPress-HHVM-WebApp.yaml
# oc create -f BuildConfig-PHP-Phalcon-Webserver.yaml
# oc create -f ImageStream-PHP-Phalcon-Webserver.yaml
# oc create -f ImageStream-memSQL-server.yaml
# oc create -f BuildConfig-memSQL-server.yaml
oc create -f ImageStream-phpPgAdmin-WebApp.yaml
oc create -f BuildConfig-phpPgAdmin-WebApp.yaml
oc create -f ImageStream-Redis.yaml
oc create -f BuildConfig-Redis.yaml
oc create -f ImageStream-Elasticsearch.yaml
oc create -f BuildConfig-Elasticsearch.yaml
oc create -f ImageStream-Letsencrypt-Injector.yaml
oc create -f BuildConfig-Letsencrypt-Injector.yaml
oc create -f ImageStream-DNS-Injector.yaml
oc create -f BuildConfig-DNS-Injector.yaml
