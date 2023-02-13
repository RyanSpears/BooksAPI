module Types
  class BookType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :pages, Integer, null: false
    field :publisher, String, null: false
    field :year, String, null: false
    field :created_at, Integer, null: false
    field :updated_at, Integer, null: false
    field :author, AuthorType, null: false
  end
end
