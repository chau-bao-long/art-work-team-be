Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/api/user', to: 'user#show'
  delete '/api/user/:id', to: 'user#delete'
  post '/api/user', to: 'user#create'
  post '/api/login', to: 'login#create'
end
