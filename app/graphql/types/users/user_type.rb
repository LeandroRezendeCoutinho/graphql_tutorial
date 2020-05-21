# frozen_string_literal: true

module Types
  module Users
    class UserType < Types::BaseObject
      field :name, String, null: true
      field :email, String, null: true
    end
  end
end
