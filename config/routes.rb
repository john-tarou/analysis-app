Rails.application.routes.draw do
  devise_for :users
  get 'analyses/index'
  root to: "analyses#index"
  resources :career_anchors, only: [:index, :new, :create, :show, :destroy]
end
