Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  namespace :api do
    namespace :v1 do
      post :auth, to: 'authentication#create'
      get  '/auth' => 'authentication#fetch'
      
      get 'post/index'
    end
    namespace :v2 do
      # Things yet to come
    end
  end
end