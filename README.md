# docker-edusoho
EduSoho Dockerfile

#### Usage

##### Command Lines

First install docker-engine
```
Ubuntu: https://docs.docker.com/engine/installation/linux/ubuntulinux/
Mac: https://docs.docker.com/engine/installation/mac/
Windows: https://docs.docker.com/engine/installation/windows/
```

Step.1

```
docker build . edusoho
```

Step.2

```
docker run --name edusoho -tid \
        -p {host_port}:80 \
        edusoho
```

Step.3

```
visit http://{your_domain}:{host_port}
```

##### Parameters

* {host_port}: specify the http port, usually as `80`

##### Example

```
docker run --name edusoho -tid \
        -p 49189:80 \
        edusoho
```

visit http://dest.st.edusoho.cn:49189

#### How to build from github source

Respo: https://github.com/starshiptroopers/docker-edusoho

1. change EDUSOHO_VERSION in Dockerfile
2. exec `docker build -t edusoho/edusoho:{version} .`

>**NOTICE**: {version} is according to EDUSOHO_VERSION
