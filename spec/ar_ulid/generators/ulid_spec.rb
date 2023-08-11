# frozen_string_literal: true

module ArUlid
  module Generators
    RSpec.describe Ulid do
      it "returns an uid" do
        expect(described_class.generate_id).to match(/\A\w{26}\z/)
      end
    end
  end
end
