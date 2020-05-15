# frozen_string_literal: true

module Types
  module Posts
    class PostType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: true
      field :rating, Integer, null: true
      field :comments, [Types::Comments::CommentType], null: true
    end
  end
end
