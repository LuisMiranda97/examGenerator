Rails.application.routes.draw do
  resources :exams do
    get :create_pdf, on: :member
  end
  resources :reactives
    resources :subjects
  resources :topics
  devise_for :users
   root 'home#index'
  devise_scope :user do
    delete 'signout', to: 'devise/sessions#destroy', as: :sign_in
  end
end