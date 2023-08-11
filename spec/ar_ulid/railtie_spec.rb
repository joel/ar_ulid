# frozen_string_literal: true

require_relative "../../lib/ar_ulid/railtie"

module ArUlid
  RSpec.describe Railtie do
    describe "initializer" do
      context "when Rails is not defined" do
        it "does not include ArUlid" do
          expect(ActiveRecord::Base.included_modules).not_to include(ArUlid)
        end
      end

      context "when Rails is defined" do
        before { described_class.initializers.each(&:run) }

        it "does include ArUlid" do
          expect(ActiveRecord::Base.included_modules).to include(ArUlid)
        end
      end
    end
  end
end
