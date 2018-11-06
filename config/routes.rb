Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    resources :milestones
    resources :tasks
    resources :notes
    resources :teams
    resources :departments
    resources :positions
    resources :employees
    # your routes go here
  end

  post "/api/graphql", to: "graphql#execute"
  get "/api/graphql_schema", to: "graphql#show_schema"
end
