Rails.application.routes.draw do
  root :to => "topics#index"
  resources :users
  resources :topics do
    resources :answers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
