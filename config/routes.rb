Rails.application.routes.draw do
  devise_for :teachers

  root to: "home#index"
end
