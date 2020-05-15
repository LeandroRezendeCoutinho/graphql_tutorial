# frozen_string_literal: true

module Types
  module Links
    class LinkType < Types::BaseObject
      field :id, ID, null: false
      field :url, String, null: false
      field :description, String, null: false
    end
  end
end
