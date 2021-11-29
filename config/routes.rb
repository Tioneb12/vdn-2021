Rails.application.routes.draw do
  root to: 'home#index'
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"

  post 'uploader/image', to: 'uploader#image'
  resources :themes, only: [:show]

  resources :posts, only: [:show] do
    resources :comments, only: %i[new create]
  end

  scope 'back', module: 'back', as: 'admin' do
    get '', to: 'dashboard#index', as: '/'

    resources :themes, except: [:show]

    resources :users do
      resources :posts, except: [:show]
    end
  end


  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
