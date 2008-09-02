require File.dirname(__FILE__) + '/spec_helper.rb'

describe Jpmobile::Mobile do

  CRAWLERS = [ 'Google', 'Yahoo', 'Livedoor', 'Goo' ]

  it "モバイル用検索クローラオブジェクトを取得できること" do
    Jpmobile::Mobile.crawlers.should == CRAWLERS
    crawlers = Jpmobile::Mobile.careers_with_crawler - Jpmobile::Mobile.careers_without_crawler
    crawlers.should == CRAWLERS
  end

  describe 'モバイル用検索クローラを含むかどうかの指定オプション' do

    before :each do
      @include_crawler = Jpmobile::Mobile.include_crawler
    end

    after :each do
      Jpmobile::Mobile.include_crawler = @include_crawler
    end

    it '含まない(false)場合はcareersに含まれていないこと' do
      Jpmobile::Mobile.include_crawler = false
      diff = Jpmobile::Mobile.careers - Jpmobile::Mobile.careers_without_crawler
      diff.should == []
    end

    it '含む(true)場合はcareersに含まれていること' do
      Jpmobile::Mobile.include_crawler = true
      diff = Jpmobile::Mobile.careers - Jpmobile::Mobile.careers_without_crawler
      diff.should == Jpmobile::Mobile.crawlers
    end

  end

end
