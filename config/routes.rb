Rails.application.routes.draw do
  resources :coupons 
  get '/index', to: 'coupons#index'
end
