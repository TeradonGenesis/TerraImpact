Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, :controllers => { registrations: 'registrations', sessions: "sessions"} 
  resources :impacts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root "impacts#index"
  resources :users, except: :create
    post 'create_user' => 'users#create', as: :create_user   
end
