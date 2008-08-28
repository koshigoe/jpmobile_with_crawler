$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))

require 'jpmobile'

# == Configure
# ex) config/environment.rb (Rails)
#
# Jpmobile::Mobile.include_crawler = true
#

module Jpmobile
  module Mobile
    autoload :Google,    'jpmobile/mobile/google'
    autoload :Yahoo,     'jpmobile/mobile/yahoo'
    autoload :Livedoor,  'jpmobile/mobile/livedoor'
    autoload :Goo,       'jpmobile/mobile/goo'

    def self.include_crawler= value
      @@include_crawler = value
    end

    def self.include_crawler
      @@include_crawler ||= false
    end

    def self.crawlers
      [ :Google, :Yahoo, :Livedoor, :Goo ]
    end

    def self.careers_without_crawler
      constants - crawlers
    end

    def self.careers_with_crawler
      crawlers + careers_without_crawler
    end

    def self.careers
      @careers ||= include_crawler ? careers_with_crawler : careers_without_crawler
    end

    def self.careers= ary
      @careers = ary
    end
  end

  module RequestWithMobile
    # via: version 0.0.3
    # * constants -> careers
    def mobile
      return @__mobile if @__mobile

      Jpmobile::Mobile.careers.each do |const|
        c = Jpmobile::Mobile.const_get(const)
        return @__mobile = c.new(self) if c::USER_AGENT_REGEXP && user_agent =~ c::USER_AGENT_REGEXP
      end
      nil
    end
  end
end

