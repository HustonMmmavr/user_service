Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/user/', to: 'user#index'
  get '/status/', to: 'user#status', :as => :status
  get '/get_user_by_id/:id', to: 'user#get_user_by_id', :as => :get_user_by_id
  get '/get_user_by_name/:userName', to: 'user#get_user_by_name', :as => :get_user_by_name
  post '/create_user/', to: 'user#create_user', :as => :create_user

  get '/login', to: 'user#login_get', :as => :login_get
  post '/login', to: 'user#login_post', :as => :login_post
  post 'login_ui', to: 'user#login', :as => :login_ui

  post 'get_token', to: 'user#get_new_token'

  post '/update_tokens', to: 'user#update_oauth_token'
  post '/check_token', to: 'user#check_oauth_token'
  post '/get_oauth_tokens', to: 'user#get_oauth_tokens'
  post '/get_user_by_token', to: 'user#get_user_by_token'
  # get '/authorize', to: 'user#login'
end
