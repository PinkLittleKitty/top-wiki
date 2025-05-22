# frozen_string_literal: true

module Jekyll
  module CustomFilters
    def slugify(input)
      input.to_s.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    end
  end
end
Liquid::Template.register_filter(Jekyll::CustomFilters)