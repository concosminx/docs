@echo off
FOR /f "tokens=*" %%i IN ('docker ps -aq') DO docker rm %%i
FOR /f "tokens=*" %%i IN ('docker images --format "{{.ID}}"') DO docker rmi %%i


rem FOR /f "tokens=*" %i IN ('docker ps -a -q') DO docker rm -f %i
rem FOR /f "tokens=*" %i IN ('docker images  -q') DO docker rmi %i
rem docker container prune -f
rem docker system prune -f
