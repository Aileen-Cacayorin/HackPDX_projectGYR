Rails.application.routes.draw do
  devise_for :teachers

  resources :teachers do
    resources :class_groups
  end

  resources :class_groups do
    resources :daily_summaries
    resources :students
  end

  resources :students do
    resources :reports
  end

  root to: "class_groups#index"
end
