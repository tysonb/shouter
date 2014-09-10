Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  # use 'resource singular' for singleton resource
  # (meaning only one instance that is available globally)
  # singleton resource does not have an id
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
end
