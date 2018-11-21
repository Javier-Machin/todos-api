Rails.application.routes.draw do

  # new versions have to be defined above the default version since Rails will cycle 
  # through all routes from top to bottom searching for one that matches(till method matches? resolves to true).

  # namespace the controllers without affecting th URI

  # dummy v2
  scope module: :v2, constraints: ApiVersion.new('v2') do
    resources :todos, only: :index
  end

  # set v1 as default
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  # expose login route
  post 'auth/login', to: 'authentication#authenticate'
  
  # expose sign up route
  post 'signup', to: 'users#create' 
end
