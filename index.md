---
layout: default
title: Free Audio Plugins Directory
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
    <div class="plugin-card" data-search-text="{{ plugin.name | downcase }} {{ plugin.author | downcase }} {{ plugin.description | downcase }} {{ type_group.name | downcase }}">
      <div class="plugin-type-badge">{{ type_group.name }}</div>
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
