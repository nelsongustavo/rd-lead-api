Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/users/:id/', to: 'welcome#show'

  #api
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :update, :destroy] do
        resources :tracks, only: [:index, :create, :show, :update, :destroy]
      end
    end
  end
end
