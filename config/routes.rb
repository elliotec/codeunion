Codeunion::Application.routes.draw do
  resources :languages
  root "languages#index"
end
