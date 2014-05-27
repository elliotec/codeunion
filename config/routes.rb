Codeunion::Application.routes.draw do

  resources :comments

  resources :languages

  resources :categories

  resources :resources

  devise_for :users

  root "languages#index"

  get "/upvote", to: "resources#upvote"

  get "/:language/:category", to: "top_voted#index"

  get "/:name", to: "top_voted#route"
end
