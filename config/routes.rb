Rails.application.routes.draw do



  root "users#index"
  resources :users do
    resources :shouts
   end
  resources :restaurants do
    resources :rewards
  end
  resources :user_sessions, only: %i(new create destroy)

  get 'login' => "user_sessions#new", :as => :login
  post 'logout' => "user_sessions#destroy", :as => :logout
  delete '/restaurants/:restaurant_id/rewards/:id' => 'rewards#destroy', as: :delete_reward
  get '/my_restaurants' => "users#my_restaurants", as: :my_restaurants
  post '/my_restaurants' => "users#change_redemption_status", as: :redeem_me
  post '/restaurants/:restaurant_id/rewards/:id' => "rewards#toggle_reward", as: :toggle_reward

  post '/redemption' => "users#redeem"

  get '/auth/:provider/callback' => "user_sessions#create"
  get '/auth/:provider' => 'user_sessions#new', as: :twitter_signin
  mount ActionCable.server, at: '/cable'

  post '/users/:id' => "users#show"


  # sorcery external login
  # config/routes.rb
  post "auth/twitter/callback" => "oauths#callback"
  get "auth/twitter/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

end
