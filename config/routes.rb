Rails.application.routes.draw do
  get 'reports/subjects'

  resources :students do
    get :subjects
  end
  resources :teachers

  devise_for :users
end
