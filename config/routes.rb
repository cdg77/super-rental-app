Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: 'login', sign_out: 'logout'}

  root :to => 'cities#index'

  resources :cities do
    resources :rentals
  end
end
