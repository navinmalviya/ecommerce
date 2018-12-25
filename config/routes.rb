Rails.application.routes.draw do
  root 'welcome#index'
  resources :product_categories do
    resources :pictures
  end
  
  resources :products do
    resources :pictures
  end
  
end
