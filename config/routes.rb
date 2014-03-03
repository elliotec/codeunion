Codeunion::Application.routes.draw do
  resources :ways

  resources :languages
  root "languages#index"
end
