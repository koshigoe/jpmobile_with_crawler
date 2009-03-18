# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/../spec_helper'

describe "Google モバイルウェブクローラー からのアクセス" do
  before do
    request.user_agent = "DoCoMo/1.0/N505i/c20/TB/W20H10 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html)"
  end
  controller_name :mobile_spec
  it "request.mobile は Google のインスタンスであるべき" do
    request.mobile.should be_an_instance_of(Jpmobile::Mobile::Google)
  end
  it "request.mobile? は true であるべき" do
    request.mobile?.should be_true
  end
end
