# 🚀 Script-Smiths Strapi Backend

This repository contains a Dockerized version of the Strapi backend for the Script-Smiths project. The image is built and published to Docker Hub for easy deployment on any container-ready environment.

---

## 🐳 Docker Image

- **Image Name**: `preeti926/script-smiths-strapi:latest`
- **Platform**: Node.js + Strapi
- **Port**: `1337`

---

## 📦 How to Run Locally

Make sure Docker is installed and running.

```bash
docker run -d -p 1337:1337 preeti926/script-smiths-strapi:latest

http://localhost:1337

📤 How to Push to Docker Hub
docker login
docker push preeti926/script-smiths-strapi:latest


📁 Files Included
- Dockerfile: Defines the build steps for the Strapi app
- .dockerignore: Optional, to exclude unnecessary files
- README.md: This documentation

✅ Task Status
-  Dockerfile created
-  Image built and tested locally
-  Image pushed to Docker Hub
-  Loom walkthrough recorded

👩‍💻 Author
Preeti Gopal Gawande
Intern @ Script-Smiths
GitHub: preeti926
Docker Hub: preeti926


