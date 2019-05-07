Rails.application.routes.draw do

  get 'cards/show'
  resources :products

  resources :shops, only:[:index, :show]
  resources :order_items
  resources :cards, only:[:show]

  root'shops#index'
end
