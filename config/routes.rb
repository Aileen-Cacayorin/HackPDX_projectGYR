Rails.application.routes.draw do
  devise_for :teachers

  resources :teachers do
    resources :students
  end

  resources :teachers, only: [:show] do
    resources :reports, only: [:index, :new, :create]
  end


  root to: "reports#new"

end
