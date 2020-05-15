# frozen_string_literal: true

module Types
  module Posts
    class UpdatePostInput < Types::BaseInputObject
      argument :id, ID, required: true
      argument :title, String, required: false
      argument :rating, Integer, required: false
    end
  end
end
