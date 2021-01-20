Rails.application.routes.draw do
  get 'home/index'
  devise_for :employees
  resources :companies
  resources :holidays
  resources :designations
  resources :departments
  resources :roles
  devise_scope :employee do  
    get '/employees/sign_out', to: 'devise/sessions#destroy'  
  end
 
  root to: 'home#index'
  get '/employee' , to: 'home#coming'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
