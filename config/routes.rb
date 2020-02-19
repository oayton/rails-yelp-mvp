Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/edit'
  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:new, :create, :index]
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
