# frozen_string_literal: true

module Mutations
  module Links
    class CreateLink < BaseMutation
      argument :input, Types::Links::CreateLinkInput, required: true

      # return type from the mutation
      type Types::Links::LinkType

      def resolve(input:)
        Link.create!(
          description: input.description,
          url: input.url
        )
      rescue ActiveRecord::RecordInvalid => e
        {
          errors: e.message
        }
      end
    end
  end
end
