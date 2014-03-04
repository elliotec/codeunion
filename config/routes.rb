Codeunion::Application.routes.draw do
  devise_for :users

  resources :languages do
    resources :ways 
  end

  root "welcome#index"
end
