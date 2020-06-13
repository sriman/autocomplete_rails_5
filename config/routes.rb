Rails.application.routes.draw do
  resources :schools do
    collection do
      get 'search(/:text)', to: 'schools#search'
    end
  end
  root :to => "schools#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
