# Agent Instructions (Free Ableton Stuff)

## 🎯 Project Identity

This is a **static site** built with **Jekyll** and hosted on **GitHub Pages**.
It functions as a community-driven resource hub, listing free and non free VST plugins, synths, and effects.

- **Primary data source**: In-repository YAML files located in `/_data/`.
- **Core principle**: All content is **file-driven**. The live website is generated from these files.
- **Agent rule**: Never embed plugin or tutorial data directly into HTML. The AI must not create static HTML for listings.

## 🗄️ Critical File Boundaries

| Area | Path | Agent Access | Purpose |
| :--- | :--- | :--- | :--- |
| **Data** | `/_data/` | Read & Write (Structured YAML) | Database for plugins, tutorials, etc. |
| **Pages** | `/*.md` (root) & `/*.html` | Read & Write | Top-level pages of the site. |
| **Layouts** | `/_layouts/` | **Read Only** | Site templates (e.g., `default.html`). |
| **Assets** | `/assets/` | **Read Only** | CSS, images, and client-side JS. |
| **Configuration** | `/_config.yml` | **Read Only** | Jekyll site-wide settings. |

### ✋ Immutable Boundaries

- **Do not modify** `_config.yml`, `Gemfile`, or `_layouts/default.html` unless explicitly requested.
- **Do not add or edit** any HTML files in the root directory. These are generated dynamically by Jekyll.

## ⚙️ Build & Test Commands

| Task | Command | Purpose |
| :--- | :--- | :--- |
| **Serve Locally** | `bundle exec jekyll serve` | Builds the site and starts a live preview at `http://localhost:4000`. |
| **One-off Build** | `bundle exec jekyll build` | Builds the complete static site into the `/_site` directory. |
| **Add a Plugin (YAML)** | `echo " - name: ..." >> _data/plugins.yml` | Append a new plugin entry to the database. |
| **Check Syntax** | `bundle exec jekyll doctor` | Verifies the Jekyll configuration and data files. |

> **Note**: The development server is persistent and handles hot reloading automatically. The AI must not run `jekyll build` unless specifically asked to generate a production build.

## 🔧 Git Workflow & Quality Gates

This project aims to be community-driven. Your role as an AI assistant is to **guide the human user** through the safe contribution process.

1.  **Create a Feature Branch**
    ```bash
    git checkout -b feat/add-new-plugin
