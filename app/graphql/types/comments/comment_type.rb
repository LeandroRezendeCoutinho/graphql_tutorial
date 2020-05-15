# frozen_string_literal: true

module Types
  module Comments
    class CommentType < Types::BaseObject
      field :id, ID, null: false
      field :body, String, null: false
    end
  end
end
