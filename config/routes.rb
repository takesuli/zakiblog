Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root 'zakiblogs#index'
  get 'zakiblog' => 'zakiblogs#index'
  get 'zakiblog/new' => 'zakiblogs#new'
  post 'zakiblog/new' => 'zakiblogs#create'
  get   'users/:id'   =>  'users#show'
end
