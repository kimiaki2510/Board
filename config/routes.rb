Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tables/index'
      get 'tables/show'
      get 'tables/create'
      get 'tables/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'users/index'
      get 'users/show'
      get 'users/create'
      get 'users/destroy'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
