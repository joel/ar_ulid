# frozen_string_literal: true

module ArUlid
  module Generators
    class Base
      class << self
        def generate_id
          raise NotImplementedError
        end
      end
    end
  end
end
