# Proxmox LXC installation

As base for the docker installation an Alma Linux LXC container will be used.
Therefore download an actual Alma LXC template within the Proxmox GUI

<p align="center">
  <img width="800" alt="download alma template" src="https://i.imgur.com/2zTD3ZK.png" />
</p>

## Create a new Proxmox CT

Create the container, for this installation use (for later reference, choices of course up to you):
* Name: "dwse"
* ID: 555

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_general.png" />
</p>

* Template: Alma 9 (s. above)

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_template.png" />
</p>

* Local Storage - up to you, if you untend to use it heavily with the ELK Stack and der scrappers this should't be too small, for the example: 24GB

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_disk.png" />
</p>

* CPU with the use of the scrappers this shouldn't be too small too, for example: 8

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_cpu.png" />
</p>

* Menory/swap - again with ELK this shouldn't be too small: 8 GB, better 16 GB

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_memory.png" />
</p>

* network - keep it simple here for example: DHCP, depends on your environment, **but** we need to know the NIC device name, assume **eth0** here (and static adress: 192.168.178.55)

<p align="center">
  <img width="600" alt="download alma template" src="./images/ct_install_network.png" />
</p>

Summary: 
<p align="center">
  <img width="800" alt="create alma container" src="./images/ct_install_confirm.png" />
</p>

__IMPORTANT__ before starting the container there must be made some changes in the proxmox host configuration for this container.

[netx step](INSTALL-ADJUST-MEMLOCK.md)


