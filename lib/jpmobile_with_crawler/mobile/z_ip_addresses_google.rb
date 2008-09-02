# = IPアドレス帯域テーブル(手動更新分)
# == Google
# http://googlejapan.blogspot.com/2008/05/google.html
# 2008/08現在
Jpmobile::Mobile::Google::IP_ADDRESSES = %w(
72.14.199.0/25
209.85.238.0/25
).map {|ip| IPAddr.new(ip) }
