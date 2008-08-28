# = googleモバイルクローラ

module Jpmobile::Mobile
  # == googleモバイルクローラ
  class Google < AbstractMobile
    autoload :IP_ADDRESSES, 'jpmobile/mobile/z_ip_addresses_google'

    # 対応するUser-Agentの正規表現
    USER_AGENT_REGEXP = /Googlebot-Mobile/
  end
end
