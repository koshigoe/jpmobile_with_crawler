# = gooモバイルクローラ

module Jpmobile::Mobile
  # == gooモバイルクローラ
  class Goo < AbstractMobile
    autoload :IP_ADDRESSES, 'jpmobile_with_crawler/mobile/z_ip_addresses_goo'

    # 対応するUser-Agentの正規表現
    USER_AGENT_REGEXP = /ichiro\/mobile goo/
  end
end
