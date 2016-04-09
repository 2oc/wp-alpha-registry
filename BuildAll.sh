#!/bin/bash

#openssl rand 60 -base64 | tr -cd '[[:alnum:]]' | head -c 33 |cb

oc new-project weepee-registry \
    --description="Weepee docker registry" \
    --display-name="Weepee Registry"


# Cleanup
oc delete -f ImageStream-Static-Webserver.yaml
oc delete -f BuildConfig-Static-Webserver.yaml
oc delete -f ImageStream-PHP-Webserver.yaml
oc delete -f BuildConfig-PHP-Webserver.yaml
oc delete -f ImageStream-Mojo-Webserver.yaml
oc delete -f BuildConfig-Mojo-Webserver.yaml
oc delete -f ImageStream-HHVM-Webserver.yaml
oc delete -f BuildConfig-HHVM-Webserver.yaml
oc delete -f ImageStream-Proxy-Server.yaml
oc delete -f BuildConfig-Proxy-Server.yaml
oc delete -f ImageStream-WordPress-PHP-WebApp.yaml
oc delete -f BuildConfig-WordPress-PHP-WebApp.yaml
oc delete -f ImageStream-PHP-Phalcon-Webserver.yaml
oc delete -f BuildConfig-PHP-Phalcon-Webserver.yaml
oc delete -f ImageStream-memSQL-server.yaml
oc delete -f BuildConfig-memSQL-server.yaml
oc delete -f ImageStream-phpPgAdmin-WebApp.yaml
oc delete -f BuildConfig-phpPgAdmin-WebApp.yaml


# Install
oc create -f ImageStream-Static-Webserver.yaml
oc create -f BuildConfig-Static-Webserver.yaml
oc create -f ImageStream-PHP-Webserver.yaml
oc create -f BuildConfig-PHP-Webserver.yaml
oc create -f ImageStream-PHP7-Webserver.yaml
oc create -f BuildConfig-PHP7-Webserver.yaml
oc create -f ImageStream-Mojo-Webserver.yaml
oc create -f BuildConfig-Mojo-Webserver.yaml
oc create -f ImageStream-HHVM-Webserver.yaml
oc create -f BuildConfig-HHVM-Webserver.yaml
oc create -f ImageStream-Proxy-Server.yaml
oc create -f BuildConfig-Proxy-Server.yaml
oc create -f ImageStream-WordPress-PHP-WebApp.yaml
oc create -f BuildConfig-WordPress-PHP-WebApp.yaml
oc create -f ImageStream-WordPress-HHVM-WebApp.yaml
oc create -f BuildConfig-WordPress-HHVM-WebApp.yaml
oc create -f ImageStream-PHP-Phalcon-Webserver.yaml
oc create -f BuildConfig-PHP-Phalcon-Webserver.yaml
oc create -f ImageStream-memSQL-server.yaml
oc create -f BuildConfig-memSQL-server.yaml
oc create -f ImageStream-phpPgAdmin-WebApp.yaml
oc create -f BuildConfig-phpPgAdmin-WebApp.yaml
oc create -f ImageStream-Asterisk.yaml
oc create -f BuildConfig-Asterisk.yaml
