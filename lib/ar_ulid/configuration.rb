# frozen_string_literal: true

module ArUlid
  class Configuration
    attr_accessor :generator, :time_method

    def initialize
      self.generator = Generators::Ulid
      self.time_method = -> { Time.now }
    end
  end
end
