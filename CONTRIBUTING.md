# Contributing to Audio Tools Hub

First off, thank you for considering contributing to the Audio Tools Hub! This directory is community-driven, and we welcome all submissions for new free plugins, tools, or updates to existing links.

## How to Contribute

The entire plugin directory is generated statically from a simple YAML database. You **do not** need to edit any HTML to add a plugin!

### 1. Adding a New Plugin

All plugins are stored in `_data/plugins.yml`. To add a new plugin:

1. **Fork the repository** and create a new feature branch:
   ```bash
   git checkout -b feat/add-plugin-name
   ```
2. **Edit the database:** Open `_data/plugins.yml` and append your plugin using the following structure:

   ```yaml
   - name: Plugin Name
     author: Developer/Company Name
     type: Synth # (e.g., Synth, Effects, Bundle, Samples)
     price: free # (use "free" for 0 cost)
     url: https://link-to-plugin.com
     description: A short, 1-2 sentence description of what the plugin does.
     os:
       - Windows
       - macOS
       - Linux
       - iOS
   ```
   *(Only include the operating systems that the plugin actually supports)*

3. **Commit your changes:**
   ```bash
   git commit -m "Add [Plugin Name] by [Author]"
   ```
4. **Push to your fork** and submit a **Pull Request**.

### 2. Fixing Broken Links

If you find a broken link or outdated information, simply find the corresponding entry in `_data/plugins.yml`, update the `url` or details, and submit a Pull Request following the same steps above.

## Testing Locally (Optional)

If you'd like to test your changes locally before submitting a PR, you'll need [Ruby and Bundler](https://jekyllrb.com/docs/installation/) installed.

1. Install the dependencies:
   ```bash
   bundle install
   ```
2. Run the local development server:
   ```bash
   bundle exec jekyll serve
   ```
3. Open your browser and navigate to `http://localhost:4000` to preview the site.

Thank you for helping us keep this resource free and up-to-date!
