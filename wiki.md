---
layout: page
title: TØP Lore Wiki Home
permalink: /wiki/
---

<div class="wiki-container">
  <aside class="wiki-sidebar">
    {% include wiki/search.html %}
    
    <div class="sidebar-nav">
      <h3>Wiki Navigation</h3>
      <ul>
        <li><a href="{{ '/wiki/' | relative_url }}">Wiki Home</a></li>
        <li><a href="{{ '/wiki/all/' | relative_url }}">All Pages</a></li>
      </ul>
      
      <h3>Wiki Pages</h3>
      <ul>
        {% assign wiki_pages = site.wiki | sort: 'title' %}
        {% for page in wiki_pages %}
          <li>
            <a href="{{ page.url | relative_url }}">{{ page.title }}</a>
          </li>
        {% endfor %}
      </ul>
    </div>
  </aside>

  <main class="wiki-content">
    <h1>Welcome to the Depths of the Lore</h1>
    
    <div class="wiki-welcome">
      <p>This is the central hub for all Twenty One Pilots lore. Explore characters, places, concepts, and the timeline of this intricate universe. Use the navigation to find specific topics or browse all pages.</p>
    </div>
    
    <div class="wiki-featured">
      <h2>Featured Articles</h2>
      <div class="featured-grid">
        {% assign featured_pages = site.wiki | where: "featured", true | sort: 'title' %}
        {% if featured_pages.size > 0 %}
          {% for page in featured_pages limit:3 %}
            <div class="featured-item">
              <h3><a href="{{ page.url | relative_url }}">{{ page.title }}</a></h3>
              {% if page.excerpt %}
                <p>{{ page.excerpt }}</p>
              {% endif %}
            </div>
          {% endfor %}
        {% else %}
          <div class="featured-item">
            <h3><a href="{{ '/wiki/dema/' | relative_url }}">Start with Dema</a></h3>
            <p>Learn about the foundational city in the TØPverse.</p>
          </div>
        {% endif %}
      </div>
    </div>
    
    <h2>Recent Updates</h2>
    <ul class="wiki-list">
      {% assign recent_pages = site.wiki | sort: 'date' | reverse %}
      {% for page in recent_pages limit:5 %}
        <li>
          <a href="{{ page.url | relative_url }}">{{ page.title }}</a>
          <span class="date">- {{ page.date | date: "%B %d, %Y" }}</span>
        </li>
      {% endfor %}
    </ul>
    
    <h2>Categories</h2>
    <div class="wiki-categories-list">
      {% assign all_categories = "" | split: "" %}
      {% for page in site.wiki %}
        {% if page.categories %}
          {% assign all_categories = all_categories | concat: page.categories %}
        {% endif %}
      {% endfor %}
      
      {% assign unique_categories = all_categories | uniq | sort %}
      {% for category in unique_categories %}
        <a href="{{ '/wiki/category/' | append: category | relative_url }}" class="category-tag">{{ category }}</a>
      {% endfor %}
    </div>
  </main>
</div>