require File.dirname(__FILE__) + '/../spec_helper'

describe "Livedoor モバイルサイト検索用のクローラー からのアクセス" do
  before do
    Jpmobile::Mobile.include_crawler = true
    request.user_agent = "DoCoMo/1.0/N505i/c20/TB/W20H10 (compatible; LD_mobile_bot; +http://helpguide.livedoor.com/help/search/qa/grp627)"
  end
  after do
    Jpmobile::Mobile.include_crawler = false
  end
  controller_name :mobile_spec
  it "request.mobile は Livedoor のインスタンスであるべき" do
    request.mobile.should be_an_instance_of(Jpmobile::Mobile::Livedoor)
  end
  it "request.mobile? は true であるべき" do
    request.mobile?.should be_true
  end
end
