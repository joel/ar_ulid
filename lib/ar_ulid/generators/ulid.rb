# frozen_string_literal: true

require "ulid"
require "securerandom"

module ArUlid
  module Generators
    class Ulid < Base
      class << self
        def generate_id
          time = ArUlid.configuration.time_method.call
          an_event_identifier = ArUlid.configuration.an_event_identifier.call
          ULID.generate(time, suffix: an_event_identifier)
        end
      end
    end
  end
end
