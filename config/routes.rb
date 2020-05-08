Rails.application.routes.draw do
  namespace :api do 
    resources :watch_lists
    resources :products
    resources :purveyors
    resources :restaurants
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
