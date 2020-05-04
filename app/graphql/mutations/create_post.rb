# frozen_string_literal: true

module Mutations
  class CreatePost < BaseMutation
    argument :input, Types::CreatePostInput, required: true

    type Types::PostType

    def resolve(input:)
      Post.create!(
        title: input.title,
        rating: input.rating
        # comments: [input.comment]
      )
    rescue ActiveRecord::RecordInvalid => e
      {
        errors: e.message.full_messages
      }
    end
  end
end
