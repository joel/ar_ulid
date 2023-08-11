# frozen_string_literal: true

module ArUlid
  module Base
    extend ActiveSupport::Concern

    included do
      after_initialize :set_uniq_identifier
    end

    protected

    def set_uniq_identifier
      send("#{internal_primary_key}=", ArUlid.configuration.generator.generate_id) if send(internal_primary_key).blank?
    end

    def internal_primary_key
      :id
    end
  end
end
