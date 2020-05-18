# frozen_string_literal: true

module Mutations
  module Posts
    class DeletePost < BaseMutation
      argument :id, ID, required: true

      field :id, String, null: true
      field :title, String, null: true
      field :rating, String, null: true
      field :errors, [Types::ModelError], null: false

      def resolve(id:)
        post = Post.find(id)
        if post.destroy
          {
            id: post.id,
            title: post.title,
            rating: post.rating,
            errors: []
          }
        end
      rescue ActiveRecord::RecordNotFound => e
        { errors: [message: e] }
      end
    end
  end
end
