# frozen_string_literal: true

require "zeitwerk"
loader = Zeitwerk::Loader.for_gem
loader.setup

require "active_support"

module ArUlid
  extend ActiveSupport::Autoload

  extend Configure

  autoload :Base

  extend ActiveSupport::Concern

  class_methods do
    def has_ulid
      include Base
    end
  end
end
