# frozen_string_literal: true

module Types
  class CreateLinkInput < Types::BaseInputObject
    argument :description, String, required: true
    argument :url, String, required: true
  end
end
