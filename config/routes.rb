Rails.application.routes.draw do
  root 'home#show'

  resource :home, controller: :home
  get ':page' => 'pages#show'
end
