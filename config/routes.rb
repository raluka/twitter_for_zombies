Rails.application.routes.draw do
  resources :tweets
  resources :zombies


=begin
  get '/new_tweet', to: 'tweet#new'
  get '/all', to: 'tweets#index', as: 'all_tweets'
  get '/all', to: redirect('/tweets')
  get '/local_tweets/:zipcode', to: 'tweets#index', as: 'local_tweets'
  get ':name', to: 'tweets#index', as: 'zombie_tweets'
=end


  root to: "tweets#index"


end
