# Changelog

## Release Summary

This release brings a complete modernization of the original project, addressing technical debt and providing a clear, structured installation process tailored for **Proxmox + Docker** environments.

The original project had become outdated, with aging dependencies and internal issues. These have now been **resolved and updated**, making the project easier to install, run, and extend.

In addition, this release includes **step-by-step documentation** for setting up the project on a Proxmox server using Docker. The installation instructions have been completely rewritten for clarity, covering every step from creating the container to building and running the scraper.

---

## What’s New

- ✅ **Updated Dependencies**  
  - Outdated libraries and components replaced with current versions.  
  - Improved compatibility and reduced risk of errors.  

- ✅ **Simplified Architecture**  
  - Uses fewer Docker containers (e.g., one Elasticsearch instance instead of two, fewer privacy proxy instances).  
  - Lightweight design optimized for private usage.  

- ✅ **Comprehensive Installation Documentation**  
  - [Proxmox LXC Installation Guide](./INSTALL-CONTAINER.md)  
  - [Adjusting Memory Lock Settings](./INSTALL-ADJUST-MEMLOCK.md)  
  - [Installing Docker & Docker Compose](./INSTALL-DOCKER.md)  
  - [Cloning the Repository and Running Services](./GET-REPOSITORY.md)  

- ✅ **Clear Project Scope**  
  - ⚠️ **Not** a crawler for the Tor network.  
  - Focuses on scraping a predefined list of `.onion` links.  
  - A crawler could be built on top of this project, but due to traffic and storage requirements, this is **out of scope** for now.  

---

## Usage Notes

- Requires **basic knowledge** of Proxmox, Docker, and Linux administration.  
- If you struggle with the installation steps, it’s recommended **not to attempt this project**.  
- Intended for **private use** and as a **starting point for further exploration**.  

---

## Next Steps

- Future updates may include additional hints and usage examples.  
