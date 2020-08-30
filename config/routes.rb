Rails.application.routes.draw do
  get 'supplements/index'
  get 'supplements/show'
  get 'supplements/new'
  get 'supplements/edit'
  devise_for :users
  root to: "home#index"
  resources :supplements do
    collection do
      get 'search'
    end
  end
  resources :users
end
