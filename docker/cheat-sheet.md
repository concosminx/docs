# CheatSheet

* kill all running containers: `docker kill $(docker ps -q)`
* view the logs of running container: `docker logs <container name | id>`
* remove all stopped containers (add `-f` to remove also the running ones): `docker rm $(docker ps -a -q)`
* remove all docker images: `docker rmi $(docker images -q)`
* remove all untagged (dangling) docker images: `docker rmi $(docker images -q -f dangling=true)`
* remove volumes (dangling): `docker volume rm -f $(docker volume ls -f dangling=true -q)`
* bash shell in the running container: `sudo docker exec -it <container name> bash`
* save a running docker container to a image: `docker commit <image name> <name for image>`



## Docker compose

* start a group of containers from `docker-compose.yml` file: `docker-compose up -d`
* fetch the lastest version: `docker-compose up -d – force-recreate`
* or use a group of commands: 
  
```bash
docker-compose stop -t 1
docker-compose rm -f
docker-compose pull
docker-compose build
docker-compose up -d
```
* view logs: `docker-compose logs -f`
