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
oc start-build php-webserver
```
### add Mojolicious Web Server to the Weepee Registry

```
oc create -f ImageStream-Mojo-Webserver.yaml
oc create -f BuildConfig-Mojo-Webserver.yaml
oc start-build mojo-webserver
```

### add HHVM Web Server to the Weepee Registry

```
oc create -f ImageStream-HHVM-Webserver.yaml
oc create -f BuildConfig-HHVM-Webserver.yaml
oc start-build hhvm-webserver
```

### add Proxy Server to the Weepee Registry

```
oc create -f ImageStream-Proxy-Server.yaml
oc create -f BuildConfig-Proxy-Server.yaml
oc start-build proxy-server
```

### add WordPress PHP APP to the Weepee Registry

```
oc create -f ImageStream-WordPress-PHP-WebApp.yaml
oc create -f BuildConfig-WordPress-PHP-WebApp.yaml
oc start-build wordpress-php-app
```

### add WordPress HHVM APP to the Weepee Registry

```
oc create -f ImageStream-WordPress-HHVM-WebApp.yaml
oc create -f BuildConfig-WordPress-HHVM-WebApp.yaml
oc start-build wordpress-hhvm-app
```

### add memSQL to the Weepee Registry

```
oc create -f ImageStream-memSQL-server.yaml
oc create -f BuildConfig-memSQL-server.yaml
oc start-build memsql-server
```
