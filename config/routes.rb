Rails.application.routes.draw do
  resources :consulta
  resources :medicos
  resources :enderecos
  resources :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
