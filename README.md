# Nexvision search engine for Proxmox

This fork solves some compatibility issues of the original repo during installation 
and descibes the installation within an existing [Proxmox](https://www.proxmox.com/en/) server within a LXC container.

The installation instructions are intended for a basic installation and not for a complex production environment.

For more information see the [original repository from Nexvision](https://github.com/NexvisionLab/Darkweb-search-engine)

## Prerequisites

* good base knowledge of Linux, not every step will be explained in deep
* a running Prosmox server to install Docker and the search engine.

# Proxmox LXC installation

As base for the docker installation an Alma Linux LXC container will be used.
Therefore download an actual Alma LXC template within the Proxmox GUI

<p align="center">
  <img width="800" alt="download alma template" src="https://i.imgur.com/2zTD3ZK.png" />
</p>

## Create a new Proxmox CT

Create the container:

<p align="center">
  <img width="160" alt="download alma template" src="https://i.imgur.com/Q1HWlLy.png" />
</p>

For this installation use (for later reference, choices of course up to you):
* Name: "example"
* ID: 777
* Template: Alma 9 (s. above)
* Local Storage - up to you, if you untend to use it heavily with the ELK Stack and der scrappers this should't be too small, for the example: 24GB
* CPU with the use of the scrappers this shouldn't be too small too, for example: 8
* Menory/swap - again with ELK this shouldn't be too small: 24 GB (24576 MB)
* network - keep it simple here for example: DHCP, depends on your environment, **but** we need to know the NIC device name, assume **eth0** here

Summary: 
<p align="center">
  <img width="800" alt="create alma container" src="https://i.imgur.com/ZZmI95W.png" />
</p>

## Change CT settings on the Proxmox Server

For the ELK stack a manual change must be made in the containers configuration file.
Therefore open shell on the Hostsystem, i.e. the machine running Proxmox and apply:

    echo "lxc.prlimit.memlock: unlimited" >> /etc/pve/lxc/777.conf

Change the file name "777.conf" with your choice for the id (s. above).
 as root
Now configuration is done, and the container can be started.

# Working in the container

Login to the console of the container as root.
First check ulimit for memlock, this is needed for ELK stack:

    [root@example ~]# ulimit -l

this should return

    unlimited

This should be the normal behaviour, if there is some other output like "8192", check wether the change of the conf file for
the container (s. above) was correctly made (correct file name? correct key-value pair?).

**Remark:** using short syntax for shell from here on (only '> ').

## Optional: create another user to work with, instead of root user direct

Create user "docker" with group "wheel" (=sudo rights) and ser password

    > adduser docker -g wheel
    > passwd docker

## The usual installations and necessary software

Login as new created user "docker" and do the usual updates and install some software we need later and the typical tools.

    > sudo dnf --refresh update
    > sudo dnf -y install curl nano git net-tools dnf-plugins-core

## Install Docker and docker-compose

First add the docker repository and then install docker (for more see [here](https://docs.docker.com/engine/install/rhel/)): 

    > sudo dnf config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo
    > sudo dnf -y install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Then start docker and enable docker on system start:

    > sudo systemctl start docker
    > sudo systemctl enable docker

Get docker-compose (you might want to change download to latest version of docker-compose) and make it executable

    > sudo curl -L "https://github.com/docker/compose/releases/download/v2.39.2/docker-compose-linux-x86_64" -o /usr/bin/docker-compose
    > sudo chmod +x /usr/bin/docker-compose

## Get the repo for the Darkweb-search-engine

Clone repository

    > git clone https://github.com/sdierkes/Darkweb-search-engine-proxmox.git

Go to directory and build everything

    > cd cd Darkweb-search-engine-proxmox/
    > sudo /usr/local/bin/docker-compose build

There shouldn't be any errors, so now bring up the search engine

    > sudo /usr/local/bin/docker-compose up -d

Now you should be able to connect to search engine Web-GUI and kibana within your local network. 
To get the ip address of your server/container you might use (assuming during container installation you choose eth0 as nic)

    > ipconfig -a eth0

In the output you should see the ip adress of your server and you might now point your browser to

* for Web-Gui: http://IP-Adress:7000/
* for Kibane: http://IP-Adress:5601/

... of course replce "IP-Adress" with the correct value for your server.
The Web-GUI shoild look like

**TODO**

**REMARK:** There is no data in there now. We need to set up Crwalers now

## Run Crawlers

    > sudo docker build --tag scraper_crawler ./




