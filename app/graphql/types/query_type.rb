# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
                               description: 'An example field added by the generator'
    def test_field
      'Hello World!'
    end

    field :books, [Types::BookType], null: false,
                                     description: 'Returns a list of books'

    def books
      Book.all
    end

    field :book, Types::BookType, null: false,
                                  description: 'Returns details for a book' do
      argument :id, Integer, required: true
    end

    def book(id:)
      Book.find(id)
    end

    field :authors, [Types::AuthorType], null: false,
                                         description: 'Returns a list of authors'

    def authors
      Author.all
    end

    field :author, Types::AuthorType, null: false,
                                      description: 'Returns details for a authors' do
      argument :id, Integer, required: true
    end

    def author(id:)
      Author.find(id)
    end
  end
end
