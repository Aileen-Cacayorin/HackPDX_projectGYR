Rails.application.routes.draw do
  devise_for :teachers

  resources :parents do
    resources :students
  end

  resources :teachers, only: [:show] do
    resources :reports, only: [:new, :create]
  end


  root to: "reports#new"

end
