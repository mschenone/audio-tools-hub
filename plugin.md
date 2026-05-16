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
    <span id="p-price" class="plugin-price-badge" style="padding: 0.2rem 0.5rem; font-size: 0.7rem; border-radius: 2px; font-weight: bold;"></span>
  </div>
  
  <h1 id="p-name" style="margin-bottom: 0.2rem; text-transform: none;"></h1>
  <h3 id="p-author" style="margin-top: 0; color: #888; font-weight: normal; font-family: monospace; text-transform: uppercase;"></h3>
  
  <div style="margin: 2rem 0; padding: 1.5rem; background-color: var(--card-bg); border: 1px solid var(--card-border); border-radius: 4px; box-shadow: inset 0 1px 0 rgba(255,255,255,0.05), 0 4px 6px rgba(0,0,0,0.4);">
    <h4 style="color: #999; text-transform: uppercase; border-bottom: 1px solid #444; padding-bottom: 0.5rem;">Description</h4>
    <p id="p-desc" style="font-size: 1.1rem; line-height: 1.6;"></p>
    
<<<<<<< Updated upstream
    <h4 style="margin-top: 1.5rem;">Supported OS</h4>
    <ul id="p-os" style="list-style-type: disc; margin-left: 1.5rem;"></ul>
=======
    <div id="p-detailed-desc-container" style="margin-top: 1rem; padding-top: 1rem; border-top: 1px dashed #444;">
      <p id="p-detailed-desc" style="line-height: 1.6; color: #ccc;"></p>
    </div>
    
    <h4 style="margin-top: 1.5rem; color: #999; text-transform: uppercase; border-bottom: 1px solid #444; padding-bottom: 0.5rem;">Supported OS</h4>
    <div id="p-os" style="margin-top: 1rem; font-size: 1.2rem; display: flex; gap: 1rem;"></div>
>>>>>>> Stashed changes
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
        priceBadge.textContent = plugin.price.toUpperCase();
        if (plugin.price.toLowerCase() === 'free') {
           priceBadge.style.backgroundColor = '#28a745';
           priceBadge.style.color = 'white';
        } else {
           priceBadge.style.backgroundColor = '#ffc107';
           priceBadge.style.color = '#111';
        }
      } else {
        priceBadge.style.display = 'none';
      }

      const osList = document.getElementById('p-os');
      osList.innerHTML = '';
      if (plugin.os && plugin.os.length > 0) {
        plugin.os.forEach(os => {
          const span = document.createElement('span');
          span.textContent = os;
          span.style.backgroundColor = '#111';
          span.style.padding = '4px 8px';
          span.style.borderRadius = '2px';
          span.style.border = '1px solid #333';
          span.style.fontSize = '0.9rem';
          span.style.fontFamily = 'monospace';
          span.style.textTransform = 'uppercase';
          osList.appendChild(span);
        });
      } else {
        osList.textContent = 'Not specified';
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