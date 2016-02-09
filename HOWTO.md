# weepee-registry

Weepee pre-build images to use in your projects

### Static Web Server (Alpine linux based with Apache)
source [https://github.com/weepee-org/openshift-static-web]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: static-webserver:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/static-webserver

# Your app here (where index.html resides)
ADD app /app
```
example
[https://github.com/weepee-org/openshift-example-project]

### PHP Web Server (Alpine linux based with Apache & PHP)
source [https://github.com/weepee-org/openshift-php-webserver]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: php-webserver:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/php-webserver

# Your app here (where index.html resides)
ADD app /app
```
example
[https://github.com/weepee-org/openshift-example-project]

### Mojo Web Server (Centos7 linux based with Perl & Mojolicious)
source [https://github.com/weepee-org/openshift-mojolicious]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: mojo-webserver:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/mojo-webserver

# Your app here (where mojo.pl resides)
ADD app /app
```
example
[https://github.com/weepee-org/openshift-example-project]

### HHVM Web Server (debian linux based hhvm)
source [https://github.com/weepee-org/openshift-hhvm]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: hhvm-webserver:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/hhvm-webserver

# Your app here (where index.php resides)
ADD app /app
```
example
[https://github.com/weepee-org/openshift-example-project]

### Proxy Server (Alpine linux based apache proxy)
source [https://github.com/weepee-org/openshift-webproxy]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: proxy-server:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/proxy-server

# Your conf here (where proxy.conf resides)
ADD conf /conf
```
example
[https://github.com/weepee-org/openshift-example-project]

### WordPress PHP App (Alpine linux based apache proxy + wordpress + mysql database)
source [https://github.com/weepee-org/openshift-wordpress-php]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: wordpress-php-app:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/wordpress-php-app

# Your wordpress php tree
ADD wordpress /wordpress
```
example
[https://github.com/weepee-org/openshift-example-project]
