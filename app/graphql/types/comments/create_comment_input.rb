# frozen_string_literal: true

module Types
  module Comments
    class CreateCommentInput < Types::BaseInputObject
      argument :post_id, ID, required: false
      argument :body, String, required: true
    end
  end
end
