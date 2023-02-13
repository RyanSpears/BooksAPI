# frozen_string_literal: true

Rails.application.routes.draw do
  Rails.application.routes.draw do
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql' if Rails.env.development?
    post '/graphql', to: 'graphql#execute'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :authors
  resources :books
end
