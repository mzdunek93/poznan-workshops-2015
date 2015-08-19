Rails.application.routes.draw do
  root 'visitors#index'

  get 'reports/subjects'
  resources :students do
    get :subjects
  end
  resources :teachers

  devise_for :users
end
