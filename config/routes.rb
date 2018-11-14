Rails.application.routes.draw do
  resources :exams
  resources :reactives
    resources :subjects
  resources :topics
  devise_for :users
   root 'home#index'
  devise_scope :user do
    delete 'signout', to: 'devise/sessions#destroy', as: :sign_in
  end
end