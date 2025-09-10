# Project Motivation and Goals

## Motivation

The original project has become outdated due to aging dependencies and compatibility issues.  
This new effort aims to **modernize and simplify** the setup, ensuring it works reliably with current versions of Proxmox, Docker, and other essential components.  

In addition to updating the code, this project provides:  
- A detailed installation guide tailored for **Proxmox** environments.  
- A more profound explanation of the setup process, making it easier for advanced users to understand and adapt.  

---

## Goals

1. **Update Dependencies**  
   - Bring the original Git project up to date with newer versions of the used libraries and frameworks.  
   - Eliminate issues caused by outdated or unsupported components.  

2. **Simplify the Architecture**  
   - Use fewer Docker containers (e.g., a single Elasticsearch instance instead of two, fewer privacy proxy instances).  
   - Provide a lightweight, maintainable setup suitable for private usage.  

3. **Provide Installation Documentation**  
   - Deliver step-by-step instructions for installing and configuring the project on a Proxmox server.  
   - Include explanations that go beyond basic commands, helping advanced users understand the rationale behind each step.  

4. **Define the Scope Clearly**  
   - ⚠️ **This project is not a crawler for the Tor network.**  
   - Instead, it scrapes from a well-defined list of links.  
   - While a crawler could technically be built on top of this by modifying the Scrapy component, doing so would create **heavy traffic and storage requirements**. Such an approach is **not part of this project** and should only be considered carefully after evaluating the consequences.  

---

## Requirements and Limitations

- The project requires **basic knowledge** of Proxmox, Docker, Linux, and system administration.  
- ⚠️ If you struggle to understand the instructions provided, it is strongly advised **not to attempt this project**.  

---

## Intended Usage

- Designed for **private usage** and as a **starting point for other users**.  
- Serves as a practical foundation for learning, experimenting, and potentially extending the project in controlled ways.  

---

## Non-Goals

To avoid confusion, here is what this project is **not** intended to do:  

- ❌ It is **not a crawler for the Tor network**.  
- ❌ It is **not a public search engine**.  
- ❌ It is **not designed for large-scale data collection or high-traffic scenarios**.  
- ❌ It is **not intended for users without prior technical knowledge** (Proxmox, Docker, Linux basics).  

---
## Installation

To begin the installation process, follow the step-by-step documentation starting with:  

➡️ [Step 1: Proxmox LXC Installation Guide](./docs/INSTALL-CONTAINER.md)  
➡️ [Step 2: Adjust Proxmox settings for container](./docs/INSTALL-ADJUST-MEMLOCK.md)
➡️ [Step 3: Install and configure Docker in the Container](./docs/INSTALL-DOCKER.md)
➡️ [Step 4: Install and run the Project](./docs/GET-REPOSITORY.md)

