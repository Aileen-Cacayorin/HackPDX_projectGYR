Rails.application.routes.draw do
  devise_for :teachers

  resources :parents do
    resources :students
  end

  resources :students do
    resources :reports
  end

  root to: "reports#new"

end
