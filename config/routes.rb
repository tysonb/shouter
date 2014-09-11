Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  # use 'resource singular' for singleton resource
  # (meaning only one instance that is available globally)
  # singleton resource does not have an id
  # url will be: /dashboard (singular)
  # controller will be dashboards_controller (plural)
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
