Jobboard::Application.routes.draw do
  resources :companies

  match "/signup" => "companies#new", :via => :get
  match "/login" => "sessions#new", :via => :get
  match "/login" => "sessions#create", :via => :post
  match "/logout" => "sessions#destroy", :via => :get

  resource :dashboard, :only => :show do
    resources :job_offers, :controller => "dashboards/job_offers"
  end

  root :to => "companies#index"
end
