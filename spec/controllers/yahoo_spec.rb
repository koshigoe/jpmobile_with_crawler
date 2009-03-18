# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + '/../spec_helper'

describe "モバイル版Yahoo!検索の検索エンジン用ロボット からのアクセス" do
  controller_name :mobile_spec
  it "request.mobile は Yahoo のインスタンスであるべき" do
    %w(Y!J-SRD/1.0 Y!J-MBS/1.0).each do |user_agent|
      request.user_agent = user_agent
      request.mobile.should be_an_instance_of(Jpmobile::Mobile::Yahoo)
    end
  end
  it "request.mobile? は true であるべき" do
    %w(Y!J-SRD/1.0 Y!J-MBS/1.0).each do |user_agent|
      request.user_agent = user_agent
      request.mobile?.should be_true
    end
  end
end
