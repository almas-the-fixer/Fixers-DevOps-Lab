# GitHub Pages Deployment Workflow

This project demonstrates how to use **GitHub Actions** to automatically deploy a static website to **GitHub Pages** whenever specific files change.

---

##  Project Overview

The workflow is designed to:
- Deploy the website only when changes are made to `index.html`.
- Automatically configure GitHub Pages.
- Upload and publish the latest version of the site.

Once configured, your site will be live at:

https://<username>.github.io/gh-deployment-workflow/

yaml
Copy code

---

##  Repository Structure

gh-deployment-workflow/
├── index.html # The main web page (deployed to GitHub Pages)
├── README.md # Documentation for this project
└── .github/
└── workflows/
└── deploy.yml # GitHub Actions workflow for deployment

yaml
Copy code

---

##  Workflow Details

The workflow file (`deploy.yml`) includes the following steps:

| Step | Description |
|------|--------------|
| **Checkout Code** | Fetches the repository content. |
| **Configure Pages** | Sets up the GitHub Pages environment and permissions. |
| **Upload Artifact** | Packages website files into a deployable artifact. |
| **Deploy to GitHub Pages** | Publishes the website live at the GitHub Pages URL. |

The workflow triggers on:
```yaml
on:
  push:
    branches: ["main"]
    paths:
      - "index.html"
This ensures the workflow runs only when index.html is changed on the main branch.

## Learning Objectives
This project demonstrates core CI/CD concepts:

Automating deployments with GitHub Actions.

Using workflow triggers (on.push.paths).

Understanding jobs, steps, and action versions.

Managing permissions securely for GitHub Pages.

*Author*
Fixer
Aspiring DevOps Engineer
Learning, building, and automating one workflow at a time.