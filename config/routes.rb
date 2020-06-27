Rails.application.routes.draw do
  resources :ware_houses
  root to: "public#main"
end
