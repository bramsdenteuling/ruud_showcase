RuudShowcase::Application.routes.draw do
  resources :users
  
  devise_for :users
  devise_scope :user do
      get "login", :to => "devise/sessions#new"
      get "logout", :to => "devise/sessions#destroy"
  end

  root :to => "imageloader#index"
  
  match 'contact/send', :to => 'home#create'
  get "contact", :to => "fancybox#contact"
  get "info", :to => "infobox#index"
  get "info/edit", :to => "infobox#edit"
  #get "info/update", :to => "infobox#update"
  put "info/update", :to => "infobox#update"

  get "photoset/edit", :to => "photoset#edit"
  put "photoset/update", :to => "photoset#update"

  get "home/index"
 end
