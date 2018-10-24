Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/generateExam'

  get 'static_pages/addQuestion'

  get 'static_pages/modifyQuestion'

  get 'static_pages/myExams'

  resources :users
	root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
