Rails.application.routes.draw do
  devise_for :teachers

  resources :teachers do
    resources :students
  end

  resources :students do
    resources :reports
  end

  root to: "home#index"
end
