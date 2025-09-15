# 🚀 Strapi CMS Setup – Project Content Type

This project demonstrates a basic Strapi setup with a custom content type called `Project`. It includes schema creation, sample data entry, and troubleshooting—all completed locally as part of a hands-on learning task.

---

## 🛠️ Setup Instructions

1. Installed **Node.js v18.17.0**
2. Created Strapi project using:
   ```bash
   npx create-strapi-app my-strapi-project


- Installed dependencies:
npm install
- Started the development server:
npm run develop
- Accessed the admin panel at:
http://localhost:1337/admin
🧱 Content Type: ProjectCreated using Strapi's Content-Type Builder with the following field:- isActive → Boolean (TRUE/FALSE toggle)
📝 Sample Entry- Added via Content Manager
- Set isActive to TRUE
- Entry saved successfully
🐞 Troubleshooting NotesEncountered the following issue during setup:- Error: “Whoops! Something went wrong” in Content Manager
- Solution:
- Added a new field to the content type
- Saved and redeployed schema
- Restarted the Strapi server
🚀 How to Run LocallyTo run the project locally:cd my-strapi-project
npm install
npm run develop
🔗 API AccessLocal API endpoint for the Project content type:http://localhost:1337/api/projects
📌 Notes- This setup was created as part of a hands-on learning task
- Demonstrates basic Strapi CLI usage and schema editing
- Includes real-time debugging and persistence through errors
- Feel free to fork, clone, or build on top of this setup
- Built with ❤️ for learning and growth