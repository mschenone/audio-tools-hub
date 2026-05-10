---
layout: default
title: Home
---

## Plugins by Type

{% assign plugins_by_type = site.data.plugins | group_by: "type" | sort: "name" %}

{% for type_group in plugins_by_type %}
<h3>{{ type_group.name }}</h3>
<ul>
{% for plugin in type_group.items %}
  <li>
    <strong>{{ plugin.name }}</strong> by {{ plugin.author }}
    <br>
    <a href="{{ plugin.url }}">Download</a>
    <p>{{ plugin.description }}</p>
  </li>
{% endfor %}
</ul>
{% endfor %}
