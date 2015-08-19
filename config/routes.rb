Rails.application.routes.draw do
  get 'reports/subjects'

  resources :students do
    get :subjects
  end

  devise_for :users
end
