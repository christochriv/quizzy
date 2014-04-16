Quiz::Application.routes.draw do
	
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy' 
    
    authenticated :user do
      root :to => 'challenges#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'devise/registrations#new', as: :unauthenticated_root
    end
  end


  resources :challenges do
    resources :challenge_steps
  end
  
  # resources :questions do
  #   resources :answers_sets
  # end

  get '/profile' => 'users#show'
  get '/challenge/score(.:format)' => 'challenges#create', as: :score



end