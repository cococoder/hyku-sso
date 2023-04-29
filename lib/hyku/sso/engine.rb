# frozen_string_literal: true

module Hyku
  module Sso
    class Engine < ::Rails::Engine
      isolate_namespace Hyku::Sso

    end
  end
end
