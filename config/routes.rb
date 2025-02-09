Rails.application.routes.draw do
  root 'static_pages#top'

  get 'search', to: 'search#search', as: 'search'

  resources :users, only: %i[new create show  edit update]
  resources :road_stations do
    resources :stamp_images, only: [:create, :show, :edit, :update, :destroy]
  end



  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
