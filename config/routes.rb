# Routes are the entry point to everything 
# that can happen in your application
# for resources, use only routes you will use
# so that when a dev runs 'rake routes'
# they only see what is being used, what can really be done.
# PRUNE YOUR ROUTES

# User will type url into a browser
# sends requests to your server
# ActionDispatch will take url
# and determine what to do
# (typically end up in a controller at an action)

Shouter::Application.routes.draw do
  root to: 'homes#show', via: :get
  # use 'resource singular' for singleton resource
  # (meaning only one instance that is available globally)
  # singleton resource does not have an id
  # url will be: /dashboard (singular)
  # controller will be dashboards_controller (plural)
  resource :dashboard, only: [:show]
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :shouts, only: [:create, :show]
end
