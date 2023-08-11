# frozen_string_literal: true

require "rails/railtie"
require "active_record"

require "ar_ulid"

module ArUlid
  class Railtie < Rails::Railtie
    initializer "ar_ulib.initialize" do
      ActiveSupport.on_load(:active_record) do
        ActiveRecord::Base.include(ArUlid)
      end
    end
  end
end
