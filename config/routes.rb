Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      post '/users/login', to: 'users#login'
      resources :users, only: %i[index show create destroy]
      resources :tables, only: %i[index show create destroy]
      resources :cards, only: %i[create destroy]
      resources :lists, only: %i[create destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
