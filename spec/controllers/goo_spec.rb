require File.dirname(__FILE__) + '/../spec_helper'

describe "モバイルgoo 携帯検索クローラ からのアクセス" do
  before do
    Jpmobile::Mobile.include_crawler = true
    request.user_agent = "DoCoMo/2.0 P900i(c100;TB;W24H11)(compatible; ichiro/mobile goo; +http://help.goo.ne.jp/door/crawler.html)"
  end
  after do
    Jpmobile::Mobile.include_crawler = false
  end
  controller_name :mobile_spec
  it "request.mobile は Goo のインスタンスであるべき" do
    request.mobile.should be_an_instance_of(Jpmobile::Mobile::Goo)
  end
  it "request.mobile? は true であるべき" do
    request.mobile?.should be_true
  end
end
