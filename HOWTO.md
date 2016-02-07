# weepee-registry

Weepee pre-build images to use in your projects

### Static Web Server (Alpine linux based with Apache)
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
[https://github.com/weepee-org/openshift-my-static-site]
