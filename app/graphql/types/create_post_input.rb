# frozen_string_literal: true

module Types
  class CreatePostInput < Types::BaseInputObject
    argument :title, String, required: true
    argument :rating, Integer, required: true
    # argument :comments, [Types::CommentType], required: false
  end
end
