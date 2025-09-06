# Proxmox LXC Installation Guide

This guide explains how to create an **AlmaLinux LXC container** in Proxmox as the base for a Docker installation.  

---

## Step 1: Download the AlmaLinux Template

Download the latest AlmaLinux LXC template via the **Proxmox GUI**.  

<p align="center">
  <img width="800" alt="download alma template" src="https://i.imgur.com/2zTD3ZK.png" />
</p>

---

## Step 2: Create a New Proxmox Container (CT)

When creating the container, configure the following settings (examples are provided; adjust as needed):  

- **Name:** `dwse`  
- **ID:** `555`  

<p align="center">
  <img width="600" alt="general settings" src="./images/ct_install_general.png" />
</p>

- **Template:** AlmaLinux 9  

<p align="center">
  <img width="600" alt="template selection" src="./images/ct_install_template.png" />
</p>

- **Local Storage:** Choose based on expected workload.  
  - For heavy use with **ELK Stack** and scrapers, allocate sufficient space.  
  - Example: `24 GB`  

<p align="center">
  <img width="600" alt="disk settings" src="./images/ct_install_disk.png" />
</p>

- **CPU Cores:** Scrapers require processing power.  
  - Example: `8` cores  

<p align="center">
  <img width="600" alt="CPU settings" src="./images/ct_install_cpu.png" />
</p>

- **Memory / Swap:** ELK is memory intensive.  
  - Minimum: `8 GB`  
  - Recommended: `16 GB`  

<p align="center">
  <img width="600" alt="memory settings" src="./images/ct_install_memory.png" />
</p>

- **Network:**  
  - Example: **DHCP** (depending on your environment)  
  - ⚠️ You must know the NIC device name (assume `eth0` in this example).  
  - Optional static IP: `192.168.178.55`  

<p align="center">
  <img width="600" alt="network settings" src="./images/ct_install_network.png" />
</p>

---

## Step 3: Review the Summary

<p align="center">
  <img width="800" alt="container summary" src="./images/ct_install_confirm.png" />
</p>

---

## ⚠️ Important Notice

Before starting the container, you must **update the Proxmox host configuration** for this CT.  

👉 Continue with the next step: [Adjust Memory Lock Settings](INSTALL-ADJUST-MEMLOCK.md)  
