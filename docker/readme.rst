Check version
=============

- `docker version <https://docs.docker.com/engine/reference/commandline/version/>`__ shows Docker version

Containers
==========

Lifecycle
---------

- `docker create <https://docs.docker.com/engine/reference/commandline/create/>`__ creates a container (without starting it)
- `docker rename <https://docs.docker.com/engine/reference/commandline/rename/>`__ allows the container to be renamed
- `docker run <https://docs.docker.com/engine/reference/commandline/run/>`__ creates ant starts a container 
- `docker rm <https://docs.docker.com/engine/reference/commandline/rm/>`__ deletes a container 
- `docker update <https://docs.docker.com/engine/reference/commandline/update/>`__ update a container's resource limits 

Keep container running ``docker run -td continer_id`` (``-t`` will alocate a pseudo-TTY session and ``-d`` will detach automatically the container (run container in background and print condainer id)

Transient container: ``docker run --rm`` will remove the container after it stops 

If you want to map a directory on the host to a docker container use: ``docker run -v $HOSTDIR:$DOCKERDIR`` (volumes)

If you want to remove also the volumes associated with the container: ``docker rm -v``

Another useful option is ``docker run --name yourname docker_image`` - this will allow you to start and stop a container by calling it with the name the you specified when you created it

Starting and Stopping
---------------------

- `docker start <https://docs.docker.com/engine/reference/commandline/start/>`__ starts a container 
- `docker stop <https://docs.docker.com/engine/reference/commandline/stop/>`__ stops a running container 
- `docker restart <https://docs.docker.com/engine/reference/commandline/restart/>`__ stops and starts a container 
- `docker pause <https://docs.docker.com/engine/reference/commandline/pause/>`__ pauses a running container 
- `docker unpause <https://docs.docker.com/engine/reference/commandline/unpause/>`__ will unpause a running container 
- `docker wait <https://docs.docker.com/engine/reference/commandline/wait/>`__ blocks until running container stops 
- `docker kill <https://docs.docker.com/engine/reference/commandline/kill/>`__ sends a SIGKILL to a running container 
- `docker attach <https://docs.docker.com/engine/reference/commandline/attach/>`__ connect to a running container 

If you want to detach use: ``Ctrl + P, Ctrl + Q``  

Info 
----

- `docker ps <https://docs.docker.com/engine/reference/commandline/ps>`__ shows running containers 
- `docker logs <https://docs.docker.com/engine/reference/commandline/logs>`__ gets logs from container
- `docker inspect <https://docs.docker.com/engine/reference/commandline/inspect>`__ looks at all the info on a container (including IP address)
- `docker events <https://docs.docker.com/engine/reference/commandline/events>`__ gets events from container
- `docker port <https://docs.docker.com/engine/reference/commandline/port>`__ shows public facing port of container
- `docker top <https://docs.docker.com/engine/reference/commandline/top>`__ shows running processes in container
- `docker stats <https://docs.docker.com/engine/reference/commandline/stats>`__ shows containers' resource usage statistics
- `docker diff <https://docs.docker.com/engine/reference/commandline/diff>`__ shows changed files in the container's FS

``docker ps -a`` shows running and stopped containers.

``docker stats --all`` shows a list of all containers, default shows just running.

Import / Export
---------------

- `docker cp <https://docs.docker.com/engine/reference/commandline/cp>`__ copies files or folders between a container and the local filesystem
- `docker export <https://docs.docker.com/engine/reference/commandline/export>`__ turns container filesystem into tarball archive stream to STDOUT

Executing Commands
---------------

- `docker exec <https://docs.docker.com/engine/reference/commandline/exec>`__ to execute a command in container

To enter a running container, attach a new shell process to a running container called foo, use: ``docker exec -it foo /bin/bash``.

Images 
======

Lifecycle
---------

- `docker images <https://docs.docker.com/engine/reference/commandline/images>`__ shows all images
- `docker import <https://docs.docker.com/engine/reference/commandline/import>`__ creates an image from a tarball
- `docker build <https://docs.docker.com/engine/reference/commandline/build>`__ creates image from Dockerfile
- `docker commit <https://docs.docker.com/engine/reference/commandline/commit>`__ creates image from a container, pausing it temporarily if it is running
- `docker rmi <https://docs.docker.com/engine/reference/commandline/rmi>`__ removes an image
- `docker load <https://docs.docker.com/engine/reference/commandline/load>`__ loads an image from a tar archive as STDIN, including images and tags 
- `docker save <https://docs.docker.com/engine/reference/commandline/save>`__ saves an image to a tar archive stream to STDOUT with all parent layers, tags & versions 

Info
----

- `docker history <https://docs.docker.com/engine/reference/commandline/history>`__ shows history of image
- `docker tag <https://docs.docker.com/engine/reference/commandline/tag>`__ tags an image to a name (local or registry)

Cleaning up
-----------

``docker rmi`` command to remove specific images

Networks
========

Docker has a `networks <https://docs.docker.com/engine/userguide/networking/>`__ feature. 

Lifecycle
---------

- `docker network create <https://docs.docker.com/engine/reference/commandline/network_create/>`__
- `docker network rm <https://docs.docker.com/engine/reference/commandline/network_rm/>`__

Info
----

- `docker network ls <https://docs.docker.com/engine/reference/commandline/network_ls/>`__
- `docker network inspect <https://docs.docker.com/engine/reference/commandline/network_inspect/>`__

Connection
----------

- `docker network connect <https://docs.docker.com/engine/reference/commandline/network_connect/>`__
- `docker network disconnect <https://docs.docker.com/engine/reference/commandline/network_disconnect/>`__

Registry & Repository
=====================

- `docker login <https://docs.docker.com/engine/reference/commandline/login>`__ to login to a registry
- `docker logout <https://docs.docker.com/engine/reference/commandline/logout>`__ to logout from a registry
- `docker search <https://docs.docker.com/engine/reference/commandline/search>`__ searches registry for image
- `docker pull <https://docs.docker.com/engine/reference/commandline/pull>`__ pulls an image from registry to local machine
- `docker push <https://docs.docker.com/engine/reference/commandline/push>`__ pushes an image to the registry from local machine

Dockerfile
==========

`The configuration file <https://docs.docker.com/engine/reference/builder/>`__ sets up a Docker container when you run ``docker build`` on it

Instructions
------------

- `.dockerignore <https://docs.docker.com/engine/reference/builder/#dockerignore-file>`__
- `FROM <https://docs.docker.com/engine/reference/builder/#from>`__ Sets the Base Image for subsequent instructions.
- `MAINTAINER (deprecated - use LABEL instead) <https://docs.docker.com/engine/reference/builder/#maintainer-deprecated>`__ Set the Author field of the generated images.
- `RUN <https://docs.docker.com/engine/reference/builder/#run>`__ execute any commands in a new layer on top of the current image and commit the results.
- `CMD <https://docs.docker.com/engine/reference/builder/#cmd>`__ provide defaults for an executing container.
- `EXPOSE <https://docs.docker.com/engine/reference/builder/#expose>`__ informs Docker that the container listens on the specified network ports at runtime.  NOTE: does not actually make ports accessible.
- `ENV <https://docs.docker.com/engine/reference/builder/#env>`__ sets environment variable.
- `ADD <https://docs.docker.com/engine/reference/builder/#add>`__ copies new files, directories or remote file to container.  Invalidates caches. Avoid `ADD` and use `COPY` instead.
- `COPY <https://docs.docker.com/engine/reference/builder/#copy>`__ copies new files or directories to container.  By default this copies as root regardless of the USER/WORKDIR settings.  Use `--chown=<user>:<group>` to give ownership to another user/group.  (Same for `ADD`.)
- `ENTRYPOINT <https://docs.docker.com/engine/reference/builder/#entrypoint>`__ configures a container that will run as an executable.
- `VOLUME <https://docs.docker.com/engine/reference/builder/#volume>`__ creates a mount point for externally mounted volumes or other containers.
- `USER <https://docs.docker.com/engine/reference/builder/#user>`__ sets the user name for following RUN / CMD / ENTRYPOINT commands.
- `WORKDIR <https://docs.docker.com/engine/reference/builder/#workdir>`__ sets the working directory.
- `ARG <https://docs.docker.com/engine/reference/builder/#arg>`__ defines a build-time variable.
- `ONBUILD <https://docs.docker.com/engine/reference/builder/#onbuild>`__ adds a trigger instruction when the image is used as the base for another build.
- `STOPSIGNAL <https://docs.docker.com/engine/reference/builder/#stopsignal>`__ sets the system call signal that will be sent to the container to exit.
- `LABEL <https://docs.docker.com/config/labels-custom-metadata/>`__ apply key/value metadata to your images, containers, or daemons.


Volumes
=======

Docker volumes are `free-floating filesystems <https://docs.docker.com/engine/tutorials/dockervolumes/>`__ They don't have to be connected to a particular container.

Lifecycle
---------

- `docker volume create <https://docs.docker.com/engine/reference/commandline/volume_create/>`__
- `docker volume rm <https://docs.docker.com/engine/reference/commandline/volume_rm/>`__

Info
----

- `docker volume ls <https://docs.docker.com/engine/reference/commandline/volume_ls/>`__
- `docker volume inspect <https://docs.docker.com/engine/reference/commandline/volume_inspect/>`__

Volumes are useful in situations where you can't use links (which are TCP/IP only). For instance, if you need to have two docker instances communicate by leaving stuff on the filesystem.

You can mount them in several docker containers at once, using ``docker run --volumes-from``.


Exposing ports
==============

Exposing incoming ports through the host container is `doable <https://docs.docker.com/engine/reference/run/#expose-incoming-ports>`__

This is done by mapping the container port to the host port (only using localhost interface) using ``-p``:

``docker run -p 127.0.0.1:$HOSTPORT:$CONTAINERPORT --name CONTAINER -t someimage``

You can tell Docker that the container listens on the specified network ports at runtime by using `EXPOSE <https://docs.docker.com/engine/reference/builder/#expose>`__

``EXPOSE <CONTAINERPORT>``

Note that EXPOSE does not expose the port itself -- only `-p` will do that. To expose the container's port on your localhost's port:

`` iptables -t nat -A DOCKER -p tcp --dport <LOCALHOSTPORT> -j DNAT --to-destination <CONTAINERIP>:<PORT> ``

If you forget what you mapped the port to on the host container, use ``docker port`` to show it:

``docker port CONTAINER $CONTAINERPORT``

Prune
=====

- docker system prune
- docker volume prune
- docker network prune
- docker container prune
- docker image prune

Powershell (windows)
====================

Remove all containers: ``docker ps -a -q | % { docker rm $_ }``
Remove all images: ``docker images -q | % { docker rmi $_ }``

From bash (linux)
=================

Remove all containers: ``docker rm $(docker ps -a -q)``
Remove all images: ``docker rmi $(docker images -q)``
Remove all volumes:  ``docker volume rm $(docker volume ls -f dangling=true -q)``





Examples
=====

Example of a docker file 
------------------------

- nginx wih static html example

.. code-block:: php

 # Use an official nginx image as a parent image
 FROM nginx:1.14

 # Copy the test html over the default nginx welcome page
 COPY hWorld.html /usr/share/nginx/html/index.html

 # Document the availability of the http port 80
 EXPOSE 80

- build the image: ``docker build -t hWorld .``

- running a image: ``docker run -p 9999:80 nginx``

- executing commands: 

	- ``docker exec -t <containerid/name> ls -lah /`` - prints the root directory of the container in a list form
	- ``docker exec -it <containerid/name> bash`` - ``-it`` enables an interactive mode
  

  





