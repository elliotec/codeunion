Codeunion::Application.routes.draw do
  resources :languages

  resources :categories

  resources :resources

  devise_for :users
  root "welcome#index"

  get '/:language/:category', to: "top_voted#index"
  get '/:language', to: "top_voted#language"
end
