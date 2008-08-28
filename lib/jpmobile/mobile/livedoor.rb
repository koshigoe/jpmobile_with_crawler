# = livedoorモバイルクローラ

module Jpmobile::Mobile
  # == livedoorモバイルクローラ
  class Livedoor < AbstractMobile
    autoload :IP_ADDRESSES, 'jpmobile/mobile/z_ip_addresses_livedoor'

    # 対応するUser-Agentの正規表現
    USER_AGENT_REGEXP = /LD_mobile_bot/
  end
end
