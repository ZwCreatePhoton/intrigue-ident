module Intrigue
  module Ident
    module TelnetCheck
      class Generic < Intrigue::Ident::TelnetCheck::Base
        # 220 1.1.1.1 FTP server ready
        def generate_checks
          [
            {
              type: 'fingerprint',
              category: 'application',
              tags: ['TelnetServer'],
              vendor: 'Generic',
              product: 'Telnet',
              references: [],
              version: nil,
              match_type: :content_banner,
              match_content: /.*/i,
              description: 'banner',
              hide: false,
              inference: true
            }
          ]
        end
      end
    end
  end
end
