# frozen_string_literal: true

require "ulid"
require "securerandom"

module ArUlid
  module Generators
    class Ulid < Base
      class << self
        def generate_id
          time = Time.now
          an_event_identifier = SecureRandom.uuid
          ULID.generate(time, suffix: an_event_identifier)
        end
      end
    end
  end
end
