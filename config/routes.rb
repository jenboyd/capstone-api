Rails.application.routes.draw do
  resources :details, except: [:new, :edit]
  resources :item_details, except: [:new, :edit]
  resources :item_instances, except: [:new, :edit]
  resources :items, except: [:new, :edit]
  resources :lists, except: [:new, :edit]
  resources :parties, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
