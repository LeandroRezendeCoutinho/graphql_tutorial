# frozen_string_literal: true

module Types
  class ModelError < Types::BaseObject
    field :message, String, null: false
  end
end
