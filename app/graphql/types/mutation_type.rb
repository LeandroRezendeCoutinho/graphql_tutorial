# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_link, mutation: Mutations::CreateLink

    # mutation{
    #   createPost(input: {title: "Some title", rating: 10 })
    #   {
    #     id
    #     rating
    #     title
    #   }
    # }

    # mutation{
    #   createPost(input: {title: "Some title", rating: 10, comments: ["what is yout name?", "WTF!"] })
    #   {
    #     id
    #     rating
    #     title
    #     comments {
    #       id
    #       body
    #     }
    #   }
    # }
    field :create_post, mutation: Mutations::CreatePost

    field :create_comment, mutation: Mutations::CreateComment
  end
end
