Codeunion::Application.routes.draw do
  resources :resources

  devise_for :users
  root "welcome#index"
end
