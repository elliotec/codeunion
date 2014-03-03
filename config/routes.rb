Codeunion::Application.routes.draw do
  devise_for :users
  resources :ways

  resources :languages
  root "languages#index"
end
