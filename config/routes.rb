Rails.application.routes.draw do

  # if new versions are added, they would have to be defined above the default version since Rails will cycle 
  # through all routes from top to bottom searching for one that matches(till method matches? resolves to true).

  # namespace the controllers without affecting th URI; set v1 as default
  scope module: :v1, constraints: ApiVersion.new('v1', true) do
    resources :todos do
      resources :items
    end
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create' 
end
