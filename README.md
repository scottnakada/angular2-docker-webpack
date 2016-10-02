# angular2-docker-hello-world
This git repository contains an Angular 2 Sample Hello World application.
It can be started within a docker container.

Docker creates a virtual machine running a debian linux environment with a
web server.  You can download docker for Mac, Windows or Linux from:
https://www.docker.com/products/docker

To clone this repository:

	git clone https://github.com/scottnakada/angular2-docker-hello-world.git
	
To build this docker container:

	cd angular2-docker-hello-world // cd to the cloned directory, containing the Dockerfile
	docker build -t angular2-hello .

To start the docker container, use:

	docker run -it -p 3000:3000 -p 3001:3001 --name angular2-hello angular2-hello

To view the web-page, open your browser at http://localhost:3000

To connect to the docker container to edit files, use:

	docker exec -it angular2-hello bash

The files for editing are located in /quickstart
# angular2-docker-webpack
