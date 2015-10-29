Rails.application.routes.draw do
  devise_for :ussers
  root :to => 'cities#index'
  
  resources :cities do
    resources :rentals
  end
end
