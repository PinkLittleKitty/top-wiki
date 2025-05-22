# TØP LORE WIKI ||-//

Welcome to the TØP Lore Wiki, a fan-curated digital encyclopedia dedicated to unraveling the intricate and ever-expanding universe of Twenty One Pilots.

**Live Site:** [justneki.com/top-wiki](https://www.justneki.com/top-wiki/)

## About This Project

This wiki serves as a comprehensive guide to the characters, places, concepts, events, and theories that make up the rich narrative woven through Twenty One Pilots' music, videos, and cryptic online presence. From the oppressive city of Dema and the rebellious Banditos to the mysterious Neds and the symbolic journey of Clancy, we aim to document it all.

The lore is deep, and this wiki is an attempt to bring it all together in an accessible and organized way for fellow fans and curious newcomers alike.

## ✨ Features

*   **Comprehensive Lore Entries:** Detailed pages on characters, locations, concepts, timeline events, and more.
*   **Thematic Design:** A dark, immersive theme inspired by the TØP aesthetic (Dema, Trench, Clancy).
*   **Easy Navigation:**
    *   Dedicated Lyrics section with songs grouped by album.
    *   Homepage with featured articles and recent updates.
    *   Browse by category.
    *   "All Pages" view with alphabetical sorting.
    *   Functional search within the wiki.
*   **Responsive Layout:** Accessible on desktop, tablet, and mobile devices.
*   **Dynamic Table of Contents:** For longer articles, making navigation within a page easier.
*   **Favicon:** Custom `||-//` site icon.

## 🛠️ Built With

*   **Jekyll:** A simple, blog-aware, static site generator.
*   **SCSS:** For maintainable and organized stylesheets.
*   **Markdown:** For writing wiki content.
*   **GitHub Pages:** Hosted directly from this repository.

## 🚀 Getting Started

To run this project locally:

### Prerequisites

*   **Ruby:** Install Ruby (version 2.5.0 or higher recommended).
*   **Bundler:** Install Bundler: `gem install bundler`
*   **Jekyll:** Install Jekyll: `gem install jekyll` (or it will be installed via Bundler).

### Installation & Running Locally

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/PinkLittleKitty/top-wiki.git
    cd top-wiki
    ```

2.  **Install dependencies:**
    ```bash
    bundle install
    ```

3.  **Serve the site:**
    ```bash
    bundle exec jekyll serve --baseurl ""
    ```

4.  Open your browser and navigate to `http://localhost:4000`.

## 🤝 Contributing

Contributions are welcome! Whether it's adding new lore, correcting information, improving styling, or fixing bugs, your help is appreciated.

### Adding/Editing Lore:

1.  Wiki pages are located in the `_wiki` directory.
2.  Content is written in Markdown (`.md` files).
3.  Ensure you add appropriate `front matter` to each new page (e.g., `layout: wiki`, `title`, `categories`).
4.  To feature a page on the homepage or wiki homepage, add `featured: true` to its front matter.
5.  Fork the repository, make your changes, and submit a pull request!

### Adding/Editing Lyrics:
1.  Lyric pages are located in the `_lyrics` directory.
2.  Content is written in Markdown (`.md` files).
3.  Ensure you add appropriate `front matter` to each new song: `layout: lyric`, `title` (song title), `album`, and optionally `track_number`.
    Example: `title: "Stressed Out"`, `album: "Blurryface"`, `track_number: 2`

### Style & Code:

*   Styles are managed in `assets/css/style.scss` (general site) and `assets/css/wiki.css` (wiki-specific).
*   Layouts are in the `_layouts` directory.
*   Includes (reusable components) are in the `_includes` directory.

## 📝 License

The Twenty One Pilots lore, names, characters, and related media are property of Twenty One Pilots and their respective rights holders. This wiki is a fan-made project for informational and entertainment purposes.

---

*Stay Alive.*

||-//