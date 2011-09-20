Jobboard::Application.routes.draw do
  resources :companies

  match "/signup" => "companies#new", :via => :get

  root :to => "companies#index"
end
