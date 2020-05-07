# frozen_string_literal: true

module Mutations
  class CreatePost < BaseMutation
    argument :input, Types::CreatePostInput, required: true

    type Types::PostType

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
