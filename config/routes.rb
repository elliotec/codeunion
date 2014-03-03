Codeunion::Application.routes.draw do
  devise_for :users
  resources :ways

  resources :languages
  root "welcome#index"
  get "test", to: "welcome#test"
end
