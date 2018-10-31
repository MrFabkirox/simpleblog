Rails.application.routes.draw do
  # http://guides.rubyonrails.org/routing.html
  root 'posts#index'

  get 'about' => 'pages#about'

  resources :posts
  
end
