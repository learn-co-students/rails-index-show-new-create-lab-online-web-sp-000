Rails.application.routes.draw do

  resources :coupons, only: [:new, :create, :index]
  get '/coupon/:id', to: 'coupons#show', as: 'coupon'

end
