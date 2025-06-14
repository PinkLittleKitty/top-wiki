---
layout: page
title: Song Lyrics
permalink: /lyrics/
---

<div class="content-container">
  <main class="main-content lyrics-listing">
    <div class="lyrics-listing-header">
      <h1>{{ page.title }}</h1>
    </div>

    {% assign songs_by_album = site.lyrics | group_by: "album" %}
    {% assign sorted_album_groups = songs_by_album | sort_natural: "name" %}
    {% assign final_sorted_albums = "" | split: "" %}

    {% for album_group in sorted_album_groups %}
      {% assign album_lookup_name = album_group.name %}
      {% if album_group.name == "" or album_group.name == nil %}
        {% assign album_lookup_name = "Singles & Other Tracks" %}
      {% endif %}
      {% assign album_data = site.data.albums | where: "name", album_lookup_name | first %}
      {% assign album_group_with_date = album_group | assign: "release_date", album_data.release_date %}
      {% assign final_sorted_albums = final_sorted_albums | push: album_group_with_date %}
    {% endfor %}

    {% assign final_sorted_albums = final_sorted_albums | sort: "release_date" %}

    {% if site.lyrics.size > 0 %}
      {% for album_group in final_sorted_albums %}
        {% assign current_album_display_name = album_group.name %}
        {% assign album_lookup_name = album_group.name %}

        {% if album_group.name == "" or album_group.name == nil %}
          {% assign current_album_display_name = "Singles & Other Tracks" %}
          {% assign album_lookup_name = "Singles & Other Tracks" %}
        {% endif %}

        {% assign album_data = site.data.albums | where: "name", album_lookup_name | first %}

        <section class="album-section">
          <div class="album-header">
            {% if album_data.image %}
              <img src="{{ album_data.image | relative_url }}" alt="{{ current_album_display_name }} album art" class="album-art">
            {% else %}
              <div class="album-art-placeholder"></div>
            {% endif %}
            <div class="album-title-container">
              <h2>
                {{ current_album_display_name }}
                {% if album_group.name != "" and album_group.name != nil %}
                  <span class="album-label">(Album)</span>
                {% endif %}
              </h2>
            </div>
          </div>
          <ul class="song-list">
            {% assign items_to_sort = album_group.items %}
            {% if album_group.name == "" or album_group.name == nil %}
              {% assign sorted_songs = items_to_sort | sort: "title" %}
            {% else %}
              {% assign sorted_songs = items_to_sort | sort: "track_number" %}
            {% endif %}

            {% for song in sorted_songs %}
              <li><a href="{{ song.url | relative_url }}">{{ song.title }}</a></li>
            {% endfor %}
          </ul>
        </section>
      {% endfor %}
    {% else %}
      <p>No lyrics have been added yet. Stay tuned, Bandito!</p>
    {% endif %}
  </main>
</div>
