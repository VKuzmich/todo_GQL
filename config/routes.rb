Rails.application.routes.draw do

  post "/graphql", to: "graphql#execute"
  # if Rails.env.development?
  #   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/your/endpoint"
  # end
  resource :graphql, only: :create
end
