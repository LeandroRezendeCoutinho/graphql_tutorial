# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :post, Types::PostType, null: true do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end
  end
end
