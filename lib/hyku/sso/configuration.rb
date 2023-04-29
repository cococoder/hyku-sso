# frozen_string_literal: true

# Leverages ActiveSupport Configurable
# Usage
# ======= Acesss ======
# Access attributes eg storage_type with class methods
# Hyrax::Sso::Configuration.storage_type
#
# Access attributes eg storage_type with instance methods
# maded possible by adding config_acessor(:storage_type)
# Hyrax::Sso::Configuration.new.storage_type
#
# ===== Settting  ======
# Hyrax::Sso::Configuration.storage_type = "activerecord"
#  Or
# Hyrax::Sso::Configuration.new.storage_type = "activerecord"
#
module Hyrax
  module Sso
    class Configuration
      include ActiveSupport::Configurable

      def active_record?
        storage_type == "activerecord"
      end
    end
  end
end
