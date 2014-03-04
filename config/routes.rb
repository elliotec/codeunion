Codeunion::Application.routes.draw do
  resources :resources

  devise_for :users

  resources :languages do
    resources :ways
  end

  get "languages", to: "languages#index"
  root "welcome#index"
end
