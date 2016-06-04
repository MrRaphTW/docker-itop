# [iTop](http://www.combodo.com/itop) Docker image

This image is built using [phusion/baseimage](https://hub.docker.com/r/phusion/baseimage/) and use [Ansible](https://www.ansible.com/) to deploy the [iTop](http://www.combodo.com/itop) version you want.


# Identify [iTop](http://www.combodo.com/itop) version and file name

First of all, you'll have to get [iTop](http://www.combodo.com/itop)'s version and file name, you'll find those informations in the [iTop's SourceForge project](https://sourceforge.net/projects/itop/files/itop/).

In this example, we'll use the following values :

* ITOP__VERSION : 2.3.0-beta
* ITOP__FILENAME : iTop-2.3.0-beta-2777.zip

# Running the image

`docker run --name=itop \
 -p 8080:80 \
 -e ITOP__VERSION=2.3.0-beta \
 -e ITOP__FILENAME=iTop-2.3.0-beta-2777.zip \
 -it \
 teamworksi/docker-itop`
 
 Ansible will trigger [iTop](http://www.combodo.com/itop) setup at the first run !