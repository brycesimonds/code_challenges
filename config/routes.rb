Rails.application.routes.draw do
  root to: "codes#index"
  
  resources :codes
end
