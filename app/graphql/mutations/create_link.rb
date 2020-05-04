# frozen_string_literal: true

module Mutations
  class CreateLink < BaseMutation
    # # arguments passed to the `resolve` method
    # argument :description, String, required: true
    # argument :url, String, required: true

    argument :input, Types::CreateLinkInput, required: true

    # return type from the mutation
    type Types::LinkType

    def resolve(input:)
      Link.create!(
        description: input.description,
        url: input.url
      )
    end
  end
end
