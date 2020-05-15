# frozen_string_literal: true

module Types
  module Posts
    class CreatePostInput < Types::BaseInputObject
      argument :title, String, required: true
      argument :rating, Integer, required: true
      argument :comments, [String], required: false
    end
  end
end
