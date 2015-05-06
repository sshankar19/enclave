Rails.application.routes.draw do
  devise_for :members
  resources :members, only: [:index, :show]

  unauthenticated :member do
    devise_scope :member do
      root to: 'devise/sessions#new'
    end
  end

  authenticated :member do
    root to: 'frontpage#index', as: 'authenticated_root'
  end
end
