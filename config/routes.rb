Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index', as: :cocktails
  # get 'cocktails/new', to: 'cocktails#new', as: :cocktails_new
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # post 'cocktails', to: 'cocktails#edit'

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  root 'cocktails#index'
end
