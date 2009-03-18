# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/spec_helper.rb'

describe Jpmobile::Mobile do

  it "モバイル用検索クローラオブジェクトを取得できること" do
    expected_crawlers = [ 'Google', 'Yahoo', 'Livedoor', 'Goo' ]
    Jpmobile::Mobile.crawlers.should == expected_crawlers
    crawlers = Jpmobile::Mobile.carriers_include_crawlers - Jpmobile::Mobile.carriers_exclude_crawlers
    crawlers.should == expected_crawlers
  end

end
