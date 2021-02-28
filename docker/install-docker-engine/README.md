docker engine installation on centos 7/8
========================================

see [original source here](https://docs.docker.com/engine/install/centos/)

1. install prerequisites

`yum install dos2unix curl -y` - install dos2unix and curl

2. download, convert and run the script

`curl ...install_docker_engine.sh | dos2unix | sh` 

3. install docker compose [see here](https://docs.docker.com/compose/install/)