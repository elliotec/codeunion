Codeunion::Application.routes.draw do
  resources :ways

  resources :languages
  root "welcome#index"
end
