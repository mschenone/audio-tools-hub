---
layout: default
title: Audio Tools Hub
---

<div class="search-container">
  <input type="text" id="searchInput" placeholder="Search for plugins, authors, or keywords...">
</div>

<div id="pluginsContainer">
{% assign plugins_by_type = site.data.plugins | group_by: "type" | sort: "name" %}

{% for type_group in plugins_by_type %}
<div class="plugin-section" data-type="{{ type_group.name | downcase }}">
  <h3>{{ type_group.name }}</h3>
  <div class="plugin-grid">
  {% for plugin in type_group.items %}
    <div class="plugin-card" data-search-text="{{ plugin.name | downcase }} {{ plugin.author | downcase }} {{ plugin.description | downcase }} {{ type_group.name | downcase }} {{ plugin.price | downcase }}">
      <div>
        <span class="plugin-type-badge">{{ type_group.name }}</span>
        {% if plugin.price %}
          <span class="plugin-price-badge" style="display: inline-block; padding: 0.2rem 0.6rem; font-size: 0.75rem; border-radius: 20px; font-weight: bold; background-color: {% if plugin.price == 'free' %}#28a745{% else %}#ffc107{% endif %}; color: {% if plugin.price == 'free' %}white{% else %}#333{% endif %}; margin-left: 0.5rem; margin-bottom: 0.5rem;">{{ plugin.price | capitalize }}</span>
        {% endif %}
      </div>
      <div class="plugin-title">{{ plugin.name }}</div>
      <div class="plugin-author">by {{ plugin.author }}</div>
      <p class="plugin-desc">{{ plugin.description }}</p>
      <a href="{{ plugin.url }}" class="btn-download" target="_blank" rel="noopener noreferrer">View Plugin</a>
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
document.getElementById('searchInput').addEventListener('input', function(e) {
  const searchTerm = e.target.value.toLowerCase();
  const cards = document.querySelectorAll('.plugin-card');
  const sections = document.querySelectorAll('.plugin-section');

  // Filter cards
  cards.forEach(card => {
    const text = card.getAttribute('data-search-text');
    if (text.includes(searchTerm)) {
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
});
</script>
