# frozen_string_literal: true

module Mutations
  class UpdatePost < BaseMutation
    argument :input, Types::UpdatePostInput, required: true

    type Types::PostType

    def resolve(input:)
      post = Post.find(input.id)
      post.update!(input.to_h)
      post
    rescue ActiveRecord::RecordInvalid => e
      {
        errors: e.message.full_messages
      }
    end
  end
end
