# = IPアドレス帯域テーブル(手動更新分)
# == Livedoor
# http://helpguide.livedoor.com/help/search/qa/grp627
# 2008/08現在
Jpmobile::Mobile::Livedoor::IP_ADDRESSES = %w(
203.104.254.0/24
).map {|ip| IPAddr.new(ip) }
