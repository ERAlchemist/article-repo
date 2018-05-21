Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/create'
  get 'articles/update'
  get 'articles/destroy'
  root "topics#index"
  resources :topics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

