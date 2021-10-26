Rails.application.routes.draw do
  get 'home/index'
  resources :articles
  get 'article/new'
  get 'home/contacts'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
