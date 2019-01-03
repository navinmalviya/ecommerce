Rails.application.routes.draw do
  root 'welcome#index'
  resources :product_categories

  get "/filter" => "product_categories#get_products" 
  resources :products
end
