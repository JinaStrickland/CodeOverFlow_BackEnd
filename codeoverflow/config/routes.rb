Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :users
  resources :companies

  post '/login', to: 'login#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
