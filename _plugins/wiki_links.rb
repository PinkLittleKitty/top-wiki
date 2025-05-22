# frozen_string_literal: true

module Jekyll
  module WikiLinks
    def self.slugify(text)
      text.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end

    Jekyll::Hooks.register :documents, :pre_render do |document, payload|
      next unless document.collection&.label == 'wiki'

      # Regex to find [[Link Text|Display Text]]
      document.content.gsub!(/\[\[([^|\]]+)\|([^\]]+)\]\]/) do |_match|
        link_target = Regexp.last_match(1)
        display_text = Regexp.last_match(2)
        slug = WikiLinks.slugify(link_target)
        "[#{display_text}]({{ '/wiki/#{slug}/' | relative_url }})"
      end

      # Regex to find [[Page Name]]
      # This runs after the more specific one to avoid conflicts
      document.content.gsub!(/\[\[([^\]]+)\]\]/) do |_match|
        page_name = Regexp.last_match(1)
        slug = WikiLinks.slugify(page_name)
        "[#{page_name}]({{ '/wiki/#{slug}/' | relative_url }})"
      end
    end
  end
end