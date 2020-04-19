Rails.application.routes.draw do
  get 'welcome/index' # map requests to /welcome/index to welcome controller's 'index' action
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles
  
  root 'welcome#index' # map requests to *app route* to the welcome controller's 'index' action
end
