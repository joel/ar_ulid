# frozen_string_literal: true

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :bars, id: false do |t|
    t.string :id, index: { unique: true }, primary_key: true
    t.string :name
    t.timestamps
  end
end

module Hook
  extend ActiveSupport::Concern
  included do
    has_ulid
  end
end

class Bar < ActiveRecord::Base
end

RSpec.describe ArUlid do
  before do
    Bar.include(described_class)
    Bar.include(Hook)
  end

  it "generates an uid" do
    expect(Bar.new.id).to match(/\A\w{26}\z/)
  end
end
