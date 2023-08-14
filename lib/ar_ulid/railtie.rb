# frozen_string_literal: true

require "rails/railtie"
require "active_record"

module ArUlid
  class Railtie < Rails::Railtie
    initializer "ar_ulib.initialize" do
      ActiveSupport.on_load(:active_record) do
        include ArUlid unless include?(ArUlid)
      end
    end
  end
end
