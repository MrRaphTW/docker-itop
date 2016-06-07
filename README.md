# [iTop](http://www.combodo.com/itop) Docker image

This image is built using [phusion/baseimage](https://hub.docker.com/r/phusion/baseimage/) and uses [Ansible](https://www.ansible.com/) to deploy the [iTop](http://www.combodo.com/itop) version you want.


# Identify [iTop](http://www.combodo.com/itop) version and file name

First of all, you'll have to get [iTop](http://www.combodo.com/itop)'s version and file name, you'll find this information in the [iTop's SourceForge project](https://sourceforge.net/projects/itop/files/itop/).

In this example, we'll use the following values :

* ITOP__VERSION : 2.3.0-beta
* ITOP__FILENAME : iTop-2.3.0-beta-2777.zip

# Running the image

    docker run --name=itop \
     -p 8080:80 \
     -e ITOP__VERSION=2.3.0-beta \
     -e ITOP__FILENAME=iTop-2.3.0-beta-2777.zip \
     -it \
     teamworksi/docker-itop

 Ansible will trigger [iTop](http://www.combodo.com/itop) setup at the first run !


 # Mapping [iTop](http://www.combodo.com/itop)'s folder on host

 You'll have to create the directory on host first, then you'll be able to run the image as below :

     docker run --name=itop \
     -p 8080:80 \
     -e ITOP__VERSION=2.3.0-beta \
     -e ITOP__FILENAME=iTop-2.3.0-beta-2777.zip \
     -v </path/to/iTop/on/host>:/var/www/html \
     -it \
     teamworksi/docker-itop

# Setting up iTop's ToolKit

iTop ToolKit is used to edit and validate custom extensions.
[Here's Combodo documention](https://wiki.openitop.org/doku.php?id=2_2_0:customization:start&s[]=toolkit) on this tool.

## During container first run

If you know that you'll need the ToolKit for your iTop instance, then you should run your container like that :

     docker run --name=itop \
      -p 8080:80 \
      -e ITOP__VERSION=2.3.0-beta \
      -e ITOP__FILENAME=iTop-2.3.0-beta-2777.zip \
      -e ITOP__TOOLKIT=YES \
      -it \
      teamworksi/docker-itop

## On a running container

If you didn't install the ToolKit when you created your iTop container, you're still able to install it using the following command :

`docker exec -it <name of iTop container> /tools/setup_toolkit.sh`


# Other cool tools bundled in this image

## Script to turn your configuration file writable

Tired of "chmoding" your config file before re-running iTop's setup ?
We built a tool for that !

Just run the following command, and this will be done !

`docker exec -it <name of iTop container> /tools/prepare_setup.sh`


# Enjoy !

After a few minutes, you'll be able to set up your brand new iTop !
Open [http://localhost:8080](http://localhost:8080) and follow the setup wizzard !
