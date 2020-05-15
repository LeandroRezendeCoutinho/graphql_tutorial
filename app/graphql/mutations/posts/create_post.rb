# frozen_string_literal: true

module Mutations
  module Posts
    class CreatePost < BaseMutation
      argument :input, Types::Posts::CreatePostInput, required: true

      type Types::Posts::PostType

      def resolve(input:)
        comments = []
        if input.comments
          comments = input.comments.map { |comment| Comment.new(body: comment) }
        end
        Post.create!(
          title: input.title,
          rating: input.rating,
          comments: comments
        )
      rescue ActiveRecord::RecordInvalid => e
        {
          errors: e.message.full_messages
        }
      end
    end
  end
end
