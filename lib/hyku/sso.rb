# frozen_string_literal: true
require "Hyku/sso/engine"
require "Hyku/sso/configuration"

module Hyku
  module Sso
    class << self
      attr_writer :configuration
    end

    # Note Hyku::Sso::Config is set in the rails engine initializer
    # Usage
    # Assumming you want to access storage_type
    # You can either use
    # Hyku::Sso.configuration.storage_type
    #
    # ======   or use ========
    #
    # config = Rails.application.config.Hyku_Sso
    # config.storage_type
    #
    def self.configuration
      @configuration = Rails.application.config.Hyku_Sso
    end

    # Resets to using defaults value
    def self.reset
      Rails.application.config.Hyku_Sso = Configuration.new
    end

    #  Exposes Hyku Autopopulaton configuration
    # @yield [Hyku::Sso::Configuration] if a block is passed
    #
    #  Usage
    #  Hyku::Sso.configure do |config|
    #    config.is_Hyku_orcid_installed = true
    #  end
    #
    # Note Hyku::Sso::Config is set in the rails engine initializer
    #
    def self.configure
      yield(Rails.application.config.Hyku_Sso)
    end
  end
end
