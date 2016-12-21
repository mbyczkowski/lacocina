Rails.application.routes.draw do
  get "/scheduling" => redirect("http://ems.lacocinasf.org/virtualEMS/Login.aspx")
  namespace :admin do
    resources :users
    resources :businesses

    root to: "users#index"
  end

  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]
  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  if Clearance.configuration.allow_sign_up?
    get "/sign_up" => "clearance/users#new", as: "sign_up"
  else
    get "/sign_up" => "home#show"
  end
  root 'home#show'

  resource :home, controller: :home
  resources :events, only: [:index, :show]
  resources :newsletters, only: [:create]
  get ':page' => 'pages#show'
end
