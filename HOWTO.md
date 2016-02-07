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
