# frozen_string_literal: true

require "ulid"
require "securerandom"

module ArUlid
  module Generators
    class Ulid < Base
      class << self
        def generate_id
          time = ArUlid.configuration.time_method.call
          ULID.generate(time, suffix: SecureRandom.uuid)
        end
      end
    end
  end
end
