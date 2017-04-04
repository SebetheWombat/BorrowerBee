Rails.application.routes.draw do
  resources :books do
  	resources :genres
  end

  root 'home#index'

end
