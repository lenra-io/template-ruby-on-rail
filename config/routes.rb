Rails.application.routes.draw do
  get '/health_check', to: 'health_check#show'
  post '/health_check', to: 'health_check#show'
end