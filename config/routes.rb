Codeunion::Application.routes.draw do
  resources :resources

  devise_for :users
  get "languages", to: "languages#index"
  root "welcome#index"
end
