Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index' => 'home#index'
  get '/write' => 'home#write'
  post '/create' => 'home#create'
  get '/del/:post_id' => 'home#del'
  get '/write2' => 'home#write2'
  post '/create2' => 'home#create2'
  get '/:id' => "shortener/shortened_urls#show"

end
