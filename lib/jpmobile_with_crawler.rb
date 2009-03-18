$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
gem 'jpmobile', '0.0.4'
require 'jpmobile'

module Jpmobile
  module Mobile
    def self.crawlers
      [ 'Google', 'Yahoo', 'Livedoor', 'Goo' ]
    end

    def self.carriers_exclude_crawlers
      constants - crawlers
    end

    def self.carriers_include_crawlers
      crawlers + carriers_exclude_crawlers
    end

    self.crawlers.each do |crawler_name|
      autoload crawler_name.capitalize.to_sym, "jpmobile_with_crawler/mobile/#{crawler_name.downcase}"
    end

    # Adjust matching order
    self.carriers = carriers_include_crawlers
  end
end
