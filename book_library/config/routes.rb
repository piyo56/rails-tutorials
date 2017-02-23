Rails.application.routes.draw do
  resources :books
  resources :users, only: %i(index new create)
end
