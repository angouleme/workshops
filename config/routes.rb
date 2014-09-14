Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  get 'users/profile/:id', to: 'users#profile', :as => 'user_profile'

  root to: 'categories#index'
end
