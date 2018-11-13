Rails.application.routes.draw do
  resources :exams
  resources :reactives
  resources :subjects
  resources :topics
  devise_for :users

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end