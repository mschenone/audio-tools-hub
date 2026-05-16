---
layout: default
title: Audio Tools Hub
---

<div class="search-container">
  <input type="text" id="searchInput" placeholder="> SEARCH PLUGINS...">
</div>

<div class="filter-controls">
  <button class="filter-btn active" data-filter="all">All</button>
  <button class="filter-btn" data-filter="synth">Synth</button>
  <button class="filter-btn" data-filter="effects">Effects</button>
  <button class="filter-btn" data-filter="bundle">Bundle</button>
  <button class="filter-btn" data-filter="samples">Samples</button>
  <a href="faq.html" class="filter-btn" style="text-decoration: none; display: inline-block; background-color: #442200; color: #ffaa00; border-color: #663300;">FAQ/HELP</a>
</div>

<div id="pluginsContainer">
{% assign plugins_by_type = site.data.plugins | group_by: "type" | sort: "name" %}

{% for type_group in plugins_by_type %}
<div class="plugin-section" data-type="{{ type_group.name | downcase }}">
  <h3>{{ type_group.name }}</h3>
  <div class="plugin-grid">
  {% for plugin in type_group.items %}
    <div class="plugin-card" data-type-filter="{{ type_group.name | downcase }}" data-search-text="{{ plugin.name | downcase }} {{ plugin.author | downcase }} {{ plugin.description | downcase }} {{ type_group.name | downcase }} {{ plugin.price | downcase }}">
      <div style="display: flex; justify-content: space-between; align-items: flex-start;">
        <span class="plugin-type-badge">{{ type_group.name }}</span>
        {% if plugin.price %}
          <span class="plugin-price-badge" style="display: inline-block; padding: 0.2rem 0.5rem; font-size: 0.7rem; border-radius: 2px; font-weight: bold; background-color: {% if plugin.price == 'free' %}#28a745{% else %}#ffc107{% endif %}; color: {% if plugin.price == 'free' %}white{% else %}#111{% endif %};">{{ plugin.price }}</span>
        {% endif %}
      </div>
      <div class="plugin-title">{{ plugin.name }}</div>
      <div class="plugin-author">{{ plugin.author }}</div>
      
      <div class="os-icons" style="font-family: monospace; font-size: 0.8rem; letter-spacing: 0.5px;">
        {% for os in plugin.os %}
          <span style="background: #111; padding: 2px 6px; border: 1px solid #333; border-radius: 2px; margin-right: 4px;">{{ os }}</span>
        {% endfor %}
      </div>

      <p class="plugin-desc">{{ plugin.description }}</p>
      <a href="plugin.html?name={{ plugin.name | url_encode }}" class="btn-download">View Plugin</a>
    </div>
  {% endfor %}
  </div>
</div>
{% endfor %}
</div>

<div class="contribute-section" style="margin-top: 3rem; padding: 1.5rem; background-color: var(--card-bg); border: 1px solid var(--card-border); border-radius: 8px; text-align: center;">
  <h3>🤝 Help Us Grow</h3>
  <p>Notice a broken link or know of a great free plugin that's missing from the list?</p>
  <p>Contributions are extremely welcome! You can help keep this directory up-to-date by submitting a Pull Request or opening an Issue on our GitHub repository to add new plugins or fix URLs.</p>
  <a href="https://github.com/mschenone/audio-tools-hub" class="btn-download" target="_blank" rel="noopener noreferrer" style="background-color: #333;">Contribute on GitHub</a>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
  const searchInput = document.getElementById('searchInput');
  const filterBtns = document.querySelectorAll('.filter-btn');
  const cards = document.querySelectorAll('.plugin-card');
  const sections = document.querySelectorAll('.plugin-section');
  let currentFilter = 'all';

  function filterPlugins() {
    const searchTerm = searchInput.value.toLowerCase();

    cards.forEach(card => {
      const text = card.getAttribute('data-search-text');
      const type = card.getAttribute('data-type-filter');
      
      const matchesSearch = text.includes(searchTerm);
      const matchesFilter = currentFilter === 'all' || type === currentFilter;

      if (matchesSearch && matchesFilter) {
        card.style.display = 'flex';
      } else {
        card.style.display = 'none';
      }
    });

    // Hide sections if they have no visible cards
    sections.forEach(section => {
      const visibleCards = section.querySelectorAll('.plugin-card[style="display: flex;"], .plugin-card:not([style*="display: none"])');
      if (visibleCards.length === 0) {
        section.style.display = 'none';
      } else {
        section.style.display = 'block';
      }
    });
  }

  searchInput.addEventListener('input', filterPlugins);

  filterBtns.forEach(btn => {
    btn.addEventListener('click', function() {
      // Update active state
      filterBtns.forEach(b => b.classList.remove('active'));
      this.classList.add('active');
      
      currentFilter = this.getAttribute('data-filter');
      filterPlugins();
    });
  });
});
</script>
