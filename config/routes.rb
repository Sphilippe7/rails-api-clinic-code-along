Rails.application.routes.draw do
  resources :appointments, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # Patient routes
  get '/patients', to: 'patients#index'
  get '/patients/:id', to: 'patients#show'
  post '/patients', to: 'patients#create'
  patch '/patients/:id', to: 'patients#update'
  delete '/patients/:id', to: 'patients#destroy'

  resources :doctors, only: [:index]
end
