---
layout: default
title: Plugin Details
---

<div id="loading">Loading plugin details...</div>
<div id="error" style="display: none; color: red;">Plugin not found.</div>

<div id="plugin-content" style="display: none;" class="plugin-details-card">
  <div style="margin-bottom: 1rem;">
    <a href="index.html" style="text-decoration: none; color: var(--text-color);">← Back to List</a>
  </div>
  
  <div style="display: flex; align-items: center; gap: 1rem; margin-bottom: 1rem;">
    <span id="p-type" class="plugin-type-badge"></span>
    <span id="p-price" class="plugin-price-badge" style="padding: 0.2rem 0.6rem; font-size: 0.75rem; border-radius: 20px; font-weight: bold;"></span>
  </div>
  
  <h1 id="p-name" style="margin-bottom: 0.2rem;"></h1>
  <h3 id="p-author" style="margin-top: 0; color: #666; font-weight: normal;"></h3>
  
  <div style="margin: 2rem 0; padding: 1.5rem; background-color: var(--card-bg); border: 1px solid var(--card-border); border-radius: 8px;">
    <h4>Description</h4>
    <p id="p-desc" style="font-size: 1.1rem; line-height: 1.6;"></p>
    
    <h4 style="margin-top: 1.5rem;">Supported OS</h4>
    <ul id="p-os" style="list-style-type: disc; margin-left: 1.5rem;"></ul>
  </div>
  
  <div style="text-align: center; margin-top: 2rem;">
    <a id="p-url" href="#" class="btn-download" target="_blank" rel="noopener noreferrer" style="font-size: 1.2rem; padding: 1rem 2rem;">Get Plugin</a>
  </div>
</div>

<script>
  async function loadPlugin() {
    const params = new URLSearchParams(window.location.search);
    const name = params.get('name');
    
    if (!name) {
      document.getElementById('loading').style.display = 'none';
      document.getElementById('error').style.display = 'block';
      return;
    }

    try {
      const response = await fetch('api/plugins.json');
      const plugins = await response.json();
      const plugin = plugins.find(p => p.name === name);

      if (!plugin) throw new Error('Not found');

      document.getElementById('p-name').textContent = plugin.name;
      document.getElementById('p-author').textContent = 'by ' + plugin.author;
      document.getElementById('p-type').textContent = plugin.type;
      document.getElementById('p-desc').textContent = plugin.description;
      document.getElementById('p-url').href = plugin.url;
      
      const priceBadge = document.getElementById('p-price');
      if (plugin.price) {
        priceBadge.textContent = plugin.price.charAt(0).toUpperCase() + plugin.price.slice(1);
        if (plugin.price.toLowerCase() === 'free') {
           priceBadge.style.backgroundColor = '#28a745';
           priceBadge.style.color = 'white';
        } else {
           priceBadge.style.backgroundColor = '#ffc107';
           priceBadge.style.color = '#333';
        }
      } else {
        priceBadge.style.display = 'none';
      }

      const osList = document.getElementById('p-os');
      if (plugin.os && plugin.os.length > 0) {
        plugin.os.forEach(os => {
          const li = document.createElement('li');
          li.textContent = os;
          osList.appendChild(li);
        });
      } else {
        const li = document.createElement('li');
        li.textContent = 'Not specified';
        osList.appendChild(li);
      }

      document.title = plugin.name + " | Audio Tools Hub";
      document.getElementById('loading').style.display = 'none';
      document.getElementById('plugin-content').style.display = 'block';

    } catch (err) {
      console.error(err);
      document.getElementById('loading').style.display = 'none';
      document.getElementById('error').style.display = 'block';
    }
  }

  document.addEventListener('DOMContentLoaded', loadPlugin);
</script>