# frozen_string_literal: true

module ArUlid
  module Generators
    RSpec.describe Base do
      let(:generator) do
        Class.new(described_class)
      end

      it "raises error" do
        expect { generator.generate_id }.to raise_error(NotImplementedError)
      end
    end
  end
end
