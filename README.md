# 🚀 Strapi Project Demo – Custom Content Type: Project

A beginner-friendly Strapi CMS setup featuring a custom content type called `Project`, built as part of a hands-on learning task. This project demonstrates schema creation, API access, and real-time troubleshooting—all completed locally using Node.js and CMD.

---

## 📑 Table of Contents
- [Setup Instructions](#setup-instructions)
- [Content Type](#content-type-project)
- [Sample Entry](#sample-entry)
- [Troubleshooting Notes](#troubleshooting-notes)
- [How to Run Locally](#how-to-run-locally)
- [API Access](#api-access)
- [Notes](#notes)
- [Loom Walkthrough](#loom-walkthrough)
- [About Me](#about-me)

---

## 🛠️ Setup Instructions

- Installed **Node.js v18.17.0**
- Created Strapi project using:
  ```bash
  npx create-strapi-app my-strapi-project
  ```
- Installed dependencies:
  ```bash
  npm install
  ```
- Started the development server:
  ```bash
  npm run develop
  ```
- Accessed the admin panel at:  
  [http://localhost:1337/admin](http://localhost:1337/admin)

---

## 🧱 Content Type: `Project`

Created using Strapi's Content-Type Builder with the following field:

- `isActive` → Boolean (TRUE/FALSE toggle)

---

## 📝 Sample Entry

- Added via Content Manager
- Set `isActive` to `TRUE`
- Entry saved successfully

---

## 🐞 Troubleshooting Notes

Encountered the following issue during setup:

> **Error:** “Whoops! Something went wrong” in Content Manager

**Solution:**
- Added a new field to the content type
- Saved and redeployed schema
- Restarted the Strapi server

---

## 🚀 How to Run Locally

```bash
cd my-strapi-project
npm install
npm run develop
```

---

## 🔗 API Access

Local API endpoint for the `Project` content type:

```
http://localhost:1337/api/projects
```

---

## 📌 Notes

- Created as part of a hands-on learning task
- Demonstrates basic Strapi CLI usage and schema editing
- Includes real-time debugging and persistence through errors
- Feel free to fork, clone, or build on top of this setup
- Built with ❤️ for learning and growth

---

## 🎥 Loom Walkthrough

Watch the full demo here: [Loom Video](https://www.loom.com/share/your-video-id)  
*(Replace with your actual Loom link once recorded)*

---

## 🙋‍♀️ About Me

I’m **Preeti Gawande**, an aspiring cloud and DevOps engineer. This project is part of my practical learning journey, and I’m excited to keep building and exploring new tools.

---

```
