# frozen_string_literal: true

module Jekyll
  # Helper class to create a Page instance for each category
  class CategoryPage < Page
    def initialize(site, base, dir_prefix, category_slug, category_name)
      @site = site
      @base = base
      @dir  = File.join(dir_prefix, category_slug) # e.g., wiki/category/places
      @name = 'index.html'                         # results in wiki/category/places/index.html

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'category.html')
      self.data['category'] = category_name # Original category name for display and filtering
      self.data['title'] = "Category: #{category_name}"
      # The permalink will be implicitly determined by the dir and name
    end
  end

  # Generator class to create category pages
  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      return unless site.layouts.key? 'category'

      unique_categories = Set.new
      site.collections['wiki']&.docs&.each do |doc|
        doc.data['categories']&.each { |cat| unique_categories.add(cat) }
      end

      dir_prefix = site.config['wiki_category_dir'] || 'wiki/category'
      unique_categories.each do |category_name|
        category_slug = category_name.to_s.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
        site.pages << CategoryPage.new(site, site.source, dir_prefix, category_slug, category_name)
      end
    end
  end
end