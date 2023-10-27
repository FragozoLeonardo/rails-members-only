# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations' # Controlador de registros personalizado
  }

  # Defina suas outras rotas de aplicação aqui

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Pode ser usado por balanceadores de carga e monitores de disponibilidade para verificar que o aplicativo está em execução.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Define a rota raiz ("/")
  # root "posts#index"
end
