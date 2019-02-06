Rails.application.routes.draw do
  root to: 'home#index'
  post '/save', to: 'home#save'
end
