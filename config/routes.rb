Rails.application.routes.draw do
  root 'visitors#index'

  get 'reports/subjects', as: :report_subjects
  resources :students do
    get :subjects
  end
  resources :teachers do
    get :subjects
  end

  devise_for :users
end
