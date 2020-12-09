Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :users, only: %i[index show create destroy]
      resources :tables, only: %i[index show create destroy]
      resources :cards, only: %i[create destroy]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
