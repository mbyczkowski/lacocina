Rails.application.routes.draw do
  root 'home#show'

  resource :home, controller: :home
end
