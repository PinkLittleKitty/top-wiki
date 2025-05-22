---
layout: page
title: Song Lyrics
permalink: /lyrics/
---

<div class="content-container">
  <main class="main-content lyrics-listing">
    <h1>Song Lyrics</h1>

    {% assign songs_by_album = site.lyrics | group_by: "album" %}
    {% assign sorted_album_groups = songs_by_album | sort: "name" %}

    {% if site.lyrics.size > 0 %}
      {% for album_group in sorted_album_groups %}
        <section class="album-section">
          <h2>
            {% if album_group.name == "" or album_group.name == nil %}
              Singles & Other Tracks
            {% else %}
              {{ album_group.name }} <span class="album-label">(Album)</span>
            {% endif %}
          </h2>
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