# frozen_string_literal: true

require_relative "../../lib/ar_ulid/railtie"

module ArUlid
  RSpec.describe Railtie do
    context "when Rails is not defined" do
      describe "initializer" do
        it "includes ArUlid" do
          expect(ActiveRecord::Base.included_modules).not_to include(ArUlid)
        end
      end
    end

    context "when Rails is defined" do
      before do
        described_class.initializers.each(&:run)
      end

      describe "initializer" do
        it "includes ArUlid" do
          expect(ActiveRecord::Base.included_modules).to include(ArUlid)
        end
      end
    end
  end
end
