# github private deploy key

create an ssh deploy key without passphrase

```sh
ssh-keygen -f weepee-registry
```

```sh
oc secrets new-sshauth weepee-registry --ssh-privatekey=weepee-registry -n weepee-registry
oc secrets add serviceaccount/builder secrets/weepee-registry -n weepee-registry
```
