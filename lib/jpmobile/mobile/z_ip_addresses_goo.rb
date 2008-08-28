# = IPアドレス帯域テーブル(手動更新分)
# == Goo
# http://help.goo.ne.jp/help/article/1142/
# 2008/08現在
Jpmobile::Mobile::Goo::IP_ADDRESSES = %w(
210.150.10.32/27
).map {|ip| IPAddr.new(ip) }
