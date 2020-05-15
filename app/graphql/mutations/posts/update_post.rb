# frozen_string_literal: true

module Mutations
  module Posts
    class UpdatePost < BaseMutation
      argument :input, Types::Posts::UpdatePostInput, required: true

      type Types::Posts::PostType

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
end
