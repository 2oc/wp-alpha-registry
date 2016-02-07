# openshift-weepee-registry

Weepee pre-build images registry

### Installation

You need oc (https://github.com/openshift/origin/releases) locally installed:

create a new project

```sh
> oc new-project weepee-registry \
    --description="Weepee Registry" \
    --display-name="Weepee Registry"
```

### add Static Web Server to the Weepee Registry

```
oc create -f ImageStream-Static-Webserver.yaml
oc create -f BuildConfig-Static-Webserver.yaml
oc start-build static-webserver
```

### add PHP Web Server to the Weepee Registry

```
oc create -f ImageStream-PHP-Webserver.yaml
oc create -f BuildConfig-PHP-Webserver.yaml
oc start-build apache-php
```
