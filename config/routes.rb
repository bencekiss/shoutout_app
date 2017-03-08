Rails.application.routes.draw do
  get 'oauths/oauth'
  get 'oauths/callback'
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback" # for use with Github, Facebook
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
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
  post '/users/:id' => "users#show"
<<<<<<< HEAD
=======
  get '/auth/:provider/callback' => "user_sessions#create"
  get '/auth/:provider' => 'user_sessions#new', as: :twitter_signin
>>>>>>> 0658913191102303d06212b664f2526941e39dca

end
