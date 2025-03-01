Rails.application.routes.draw do
  root 'tile_collections#index'

  devise_for :admins

  # resources :tile_collections, only: [:index, :show]
  get 'tile_collections/:tile_collection_id/plates', to: 'plates#index', as: 'tile_collection_plates'

  # resources :invoices, only: [:new, :create]

  namespace :admin do
    root 'dashboard#index'
    resources :tile_collections do
      resources :plates
    end
    resources :invoices, only: [:index, :show, :new, :create]
  end
end
