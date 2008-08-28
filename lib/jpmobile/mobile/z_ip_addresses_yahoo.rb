# 手動更新
# = IPアドレス帯域テーブル(手動更新分)
# == Yahoo
# http://help.yahoo.co.jp/help/jp/search/indexing/indexing-27.html
# 2008/08現在
Jpmobile::Mobile::Yahoo::IP_ADDRESSES = %w(
124.83.159.146/31
124.83.159.148/30
124.83.159.152/29
124.83.159.160/28
124.83.159.176/29
124.83.159.184/31
124.83.159.224/28
124.83.159.240/29
).map {|ip| IPAddr.new(ip) }
