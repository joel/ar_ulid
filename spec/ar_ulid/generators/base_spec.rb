# frozen_string_literal: true

module ArUlid
  module Generators
    RSpec.describe Base do
      context "when generator is not implemented" do
        let(:generator) do
          Class.new(described_class)
        end

        it "raises error" do
          expect { generator.generate_id }.to raise_error(NotImplementedError)
        end
      end
    end
  end
end
