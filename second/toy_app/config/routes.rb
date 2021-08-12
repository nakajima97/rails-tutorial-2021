Rails.application.routes.draw do
  resources :microposts
  resources :users
  # 作成されたURL
  # GET /users
  # GET /users/1
  # GET /users/new
  # POST /users
  # GET /users/1/edit
  # PATCH /users/1
  # DELETE /users/1
  root 'users#index'
end
