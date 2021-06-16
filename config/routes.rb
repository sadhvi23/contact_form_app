Rails.application.routes.draw do
  # Contact routes
  get '/contacts/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'

  root to: 'contacts#new'

  # Handle random route redirection
  get '*all', to: 'application#index', constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
end
