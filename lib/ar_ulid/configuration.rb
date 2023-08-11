# frozen_string_literal: true

module ArUlid
  class Configuration
    attr_accessor :generator

    def initialize
      self.generator = Generators::Ulid
    end
  end
end
