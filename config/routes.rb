Rails.application.routes.draw do
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  devise_for :users
  root to: 'super_heros#index'
  resources :super_heros, except: [:index]
  namespace :my do
    resources :bookings, only: [:index, :show, :edit, :destroy, :update]
    resources :super_heros, only: [] do
      resources :bookings, only: [:create]
    end
  end
end
