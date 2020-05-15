# frozen_string_literal: true

module Mutations
  class CreateComment < BaseMutation
    argument :input, Types::Comments::CreateCommentInput, required: true

    type Types::Comments::CommentType

    def resolve(input:)
      Comment.create!(
        post_id: input.post_id,
        body: input.body
      )
    rescue ActiveRecord::RecordInvalid => e
      {
        errors: e.message.full_messages
      }
    end
  end
end
