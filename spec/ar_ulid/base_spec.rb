# frozen_string_literal: true

ActiveRecord::Schema.define do
  self.verbose = false

  create_table :foos, id: false do |t|
    t.string :id, index: { unique: true }, primary_key: true
    t.string :name
    t.timestamps
  end
end

module ArUlid
  class Foo < ActiveRecord::Base
    include Base
  end

  RSpec.describe Base do
    subject(:instance) { Foo.new }

    it "includes ArUlid" do
      expect(instance.id).to match(/\A\w{26}\z/)
    end

    it "generates an id" do
      expect do
        instance.save!
      end.not_to change(instance, :id)
    end
  end
end
