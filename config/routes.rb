Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  namespace :api do
    namespace :v1 do
      post :auth, to: 'authentication#create'
      get  '/auth' => 'authentication#fetch'
      
      get '/quotes/:tag', to: 'quotes#index',as: :quotes
    end
  end
end