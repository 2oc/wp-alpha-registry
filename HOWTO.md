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
source [https://github.com/weepee-org/openshift-apache-php]

add to your BuildConfig:
```yaml
spec:
  strategy:
    dockerStrategy:
      from:
        kind: ImageStreamTag
        name: apache-php:latest
        namespace: weepee-registry
    type: Docker
```
add a small Dockerfile
```dockerfile
FROM weepee-registry/apache-php

# Your app here (where index.html resides)
ADD app /app
```
example
[https://github.com/weepee-org/openshift-example-project]
