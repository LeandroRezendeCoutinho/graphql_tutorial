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
    field :post, Types::Posts::PostType, null: true do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    # query {
    #   posts {
    #     id
    #     title
    #     rating
    #   }
    # }
    field :posts, [Types::Posts::PostType], null: false

    # query {
    #   all_links {
    #     id
    #     url
    #     description
    #   }
    # }
    def posts
      Post.includes(:comments).all
    end

    # field :comments, [Types::Comments::CommentType], null: false

    # def comments(post_id:)
    #   Comment.where(post_id: post_id)
    # end

    field :all_links, [Types::Links::LinkType], null: false

    def all_links
      Link.all
    end
  end
end
