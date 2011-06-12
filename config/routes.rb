Landkurier::Application.routes.draw do

  scope "(:locale)", :locale => /en|de|fr|it/ do
    # devise_for :users
    # See http://stackoverflow.com/questions/5180295/how-to-change-the-login-and-signup-urls-in-devise-plugin-rails3
    devise_for :users, :controllers => {:sessions => 'devise/sessions'}, :skip => [:sessions] do
      get 'login' => 'devise/sessions#new', :as => :new_user_session
      post 'login' => 'devise/sessions#create', :as => :user_session
      get 'logout' => 'devise/sessions#destroy', :as => :destroy_user_session
      get 'register' => 'devise/registrations#new', :as => :new_user_registration
    end
    match "/login" => "devise/sessions#new"
    match "/logout" => "devise/sessions#destroy"
    match "/register" => "devise/registrations#new"

    resources :apps

  end
  
  # See http://www.nicolaracco.com/en/articles/customize-rails-routes-root
  match '/(:locale)' => 'apps#index', :as => :root
end
