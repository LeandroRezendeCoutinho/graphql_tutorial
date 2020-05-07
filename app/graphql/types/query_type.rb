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

    # query {
    #   all_links {
    #     id
    #     url
    #     description
    #   }
    # }
    def posts
      Post.all
    end

    # field :comments, [Types::CommentType], null: false

    # def comments(post_id:)
    #   Comment.where(post_id: post_id)
    # end

    field :all_links, [Types::LinkType], null: false

    def all_links
      Link.all
    end
  end
end
