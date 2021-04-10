Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  autenticated :user do
    root "docs#index", as: "authenticated_root"
  end

  resources :docs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
