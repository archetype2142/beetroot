Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homepage#index'

  resources :contact_form, only: [:create]
  get '/en', to: 'language_switch#en'
  get '/pl', to: 'language_switch#pl'

  get '/preproduction', to: 'pages#pre'
  get '/postproduction', to: 'pages#post'
  get '/work', to: 'pages#work'
  get '/onset', to: 'pages#onset'
  get '/crew', to: 'pages#crew'
end
