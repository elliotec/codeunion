Codeunion::Application.routes.draw do

  resources :languages

  resources :categories

  resources :resources

  get 'tags/:tag', to: 'top_voted#index', as: :tag

  devise_for :users
  root "welcome#index"

  get "/upvote", to: "resources#upvote"

  get "/:language/:category", to: "top_voted#index"

  get "/:name", to: "top_voted#route"
end
