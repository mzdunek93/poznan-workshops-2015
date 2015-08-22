Rails.application.routes.draw do
  root 'visitors#index'

  get 'reports/subjects', as: :report_subjects
  get 'reports/payments', as: :report_payments
  concern :has_subjects do
    get :subjects
  end
  resources :students, concerns: :has_subjects
  resources :teachers, concerns: :has_subjects

  devise_for :users
end
