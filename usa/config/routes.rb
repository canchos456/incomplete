Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/index' => 'shortened_urls#index'
  get "/:short_url", to: "shortened_url#show"
  get "shortened/:short_url", to: "shortened_urls#shortened", as: :shortened
  post "/shortened_urls/create"
  get "/shortened_urls/fetch_original_url"
end
