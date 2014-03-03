Codeunion::Application.routes.draw do
  devise_for :users
  resources :ways

  resources :languages
  root "welcome#index"
end
