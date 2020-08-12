Rails.application.routes.draw do
  resources :buildings, only: [:index, :show, :edit, :update]
  resources :companies, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :employees, only: [:show, :destroy]
end
