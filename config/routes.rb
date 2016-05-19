Rails.application.routes.draw do

  # devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root 'gyms#new'

  resources :users, only: [:new, :create, :show, :destroy] do
    resources :trainers, only: [:index, :new, :create, :show, :destroy]
  end

end
