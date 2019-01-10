Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users,
    controllers: { registrations: 'registrations' }
  root 'pages#home'
  resources :users, only: %i(show)

  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)
  end

end
