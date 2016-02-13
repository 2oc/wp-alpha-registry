#!/bin/bash

#openssl rand 60 -base64 | tr -cd '[[:alnum:]]' | head -c 33 |cb

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
oc delete -f ImageStream-WordPressoc login --token=vXLfgh_hs2adL91aPxvD-j35t8CVOtcb4GNyqMtxgjE --server=https://alpha.openshift.weepee.net:8443
on-Webserver.yaml
oc delete -f BuildConfig-PHP-Phalcon-Webserver.yaml
oc delete -f ImageStream-memSQL-Master-server.yaml
oc delete -f BuildConfig-memSQL-Master-server.yaml
oc delete -f ImageStream-memSQL-Node-server.yaml
oc delete -f BuildConfig-memSQL-Node-server.yaml


# Install
oc create -f ImageStream-Static-Webserver.yaml
oc create -f BuildConfig-Static-Webserver.yaml
oc create -f ImageStream-PHP-Webserver.yaml
oc create -f BuildConfig-PHP-Webserver.yaml
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
oc create -f ImageStream-memSQL-Master-server.yaml
oc create -f BuildConfig-memSQL-Master-server.yaml
oc create -f ImageStream-memSQL-Node-server.yaml
oc create -f BuildConfig-memSQL-Node-server.yaml
