# Audio Tools Hub 🎛️

A community-driven, open-source directory of the best free audio plugins, VSTs, synthesizers, and effects.

## 🤝 Contributing
We love community contributions! If you know of a great free plugin that's missing from the list, or if you spotted a broken link, please help us out.

Please see our [CONTRIBUTING.md](CONTRIBUTING.md) file for detailed, step-by-step instructions on how to add plugins and test the site locally.

### Quick Start for Adding a Plugin
Just append your plugin data to `_data/plugins.yml` like this:
```yaml
- name: Plugin Name
  author: Developer/Company Name
  type: Synth
  url: https://link-to-plugin.com
  description: A short, 1-2 sentence description.
  os:
    - Windows
    - macOS
```
Then submit a Pull Request!

## 💻 Running Locally

To run the site locally for development:

1. Ensure you have Ruby and Bundler installed.
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Start the Jekyll server:
   ```bash
   bundle exec jekyll serve
   ```
4. Visit `http://localhost:4000` in your browser.
