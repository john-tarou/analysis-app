Rails.application.routes.draw do
  get 'analyses/index'
  root to: "analyses#index"
end
