Rails.application.routes.draw do
  root 'home#show'

  resource :home, controller: :home
  resources :events, only: [:index, :show]
  get ':page' => 'pages#show'
end
