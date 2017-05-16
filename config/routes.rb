Rails.application.routes.draw do
  devise_for :accounts
  get '/' => "home#top"
  get '/login_check' => "home#login_check"
  get '/creation' => "home#creation"
  get '/talk' => "home#talk"
  get '/add_friend' => "home#add_friend"
  get '/serch_friend' => "home#serch_friend"
  get '/find' => "home#find"
  post '/find' => "home#find"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
