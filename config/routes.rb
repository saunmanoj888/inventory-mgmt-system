Rails.application.routes.draw do
  post '/threshold/increment', to: "stocks#increment_threshold", as: :increment_threshold
  post '/threshold/decrement', to: "stocks#decrement_threshold", as: :decrement_threshold
  post '/item/increment', to: "stocks#increment_item", as: :increment_item
  post '/item/decrement', to: "stocks#decrement_item", as: :decrement_item
  resources :products, only: :edit
  resources :ware_houses
  root to: "public#main"
end
