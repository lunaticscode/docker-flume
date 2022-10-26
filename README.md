# Docker-Flume

## Docker build image

```bash
$ docker build -t hw_flume .
```

## Docker start container

```bash
$ docker run -it -d --name hw_flume_container hw_flume
```

## Access to Flume container

```bash
$ docker exec -it ${container-id} /bin/bash
```

## Test

```bash

```
