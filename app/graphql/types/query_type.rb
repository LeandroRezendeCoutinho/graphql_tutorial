# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # query {
    #   post(id: 1) {
    #     id
    #     title
    #     rating
    #   }
    # }
    field :post, Types::PostType, null: true do
      argument :id, ID, required: true
    end

    # query {
    #   posts {
    #     id
    #     title
    #     rating
    #   }
    # }
    field :posts, [Types::PostType], null: false

    def post(id:)
      Post.find(id)
    end

    def posts
      Post.all
    end
  end
end
