Rails.application.routes.draw do
  get 'home/index'

  resource :contacts, only: [:new, :create]

  resources :articles do
    resources :comments
  end

  get 'article/new'

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
