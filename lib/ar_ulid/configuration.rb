# frozen_string_literal: true

module ArUlid
  class Configuration
    attr_accessor :generator, :time_method, :an_event_identifier

    def initialize
      self.generator = Generators::Ulid
      self.time_method = -> { Time.now }
      self.an_event_identifier = -> { SecureRandom.uuid }
    end
  end
end
