# = yahooモバイルクローラ

module Jpmobile::Mobile
  # == yahooモバイルクローラ
  class Yahoo < AbstractMobile
    autoload :IP_ADDRESSES, 'jpmobile_with_crawler/mobile/z_ip_addresses_yahoo'

    # 対応するUser-Agentの正規表現
    USER_AGENT_REGEXP = /^Y!J-(SRD|MBS)\/[0-9]+\.[0-9]+$/
  end
end
