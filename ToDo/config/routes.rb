ToDo::Application.routes.draw do
  resources :items, :except => [:index]
  resources :projects do
    resources :items, :only => [:index]
  end

  resources :teams do
    resources :projects, :only => [:new]
  end
  
  resources :users
end
