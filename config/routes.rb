Rails.application.routes.draw do
  root 'home#show'

  resource :home, controller: :home
  resources :events, only: [:index, :show]
  get ':name.:ext', to: redirect('/assets/%{name}.%{ext}'), constraints: { name: /.+/, ext: /(jpg|png|gif)/}
  get ':page' => 'pages#show'
end
