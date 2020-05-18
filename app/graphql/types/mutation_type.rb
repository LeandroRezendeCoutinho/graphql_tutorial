# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # mutation{
    #   createLink(input: {
    #     url: "http://www.example.com",
    #     description: "Mussum Ipsum, cacilds vidis litro abertis."})
    #   {
    #     id
    #     url
    #     description
    #   }
    # }
    field :create_link, mutation: Mutations::Links::CreateLink

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
    field :create_post, mutation: Mutations::Posts::CreatePost

    field :update_post, mutation: Mutations::Posts::UpdatePost

    field :delete_post, mutation: Mutations::Posts::DeletePost

    field :create_comment, mutation: Mutations::CreateComment
  end
end
