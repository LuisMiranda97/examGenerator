Rails.application.routes.draw do
  resources :exams
  resources :reactives
  devise_for :users,
    controllers: {
      sessions: "users/sessions",
      confirmations: "users/confirmations",
      registrations: "users/registrations",
    }

  devise_scope :user do
      root 'devise/sessions#new'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end