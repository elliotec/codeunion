Codeunion::Application.routes.draw do
  resources :languages

  resources :categories

  resources :resources

  devise_for :users
  root "welcome#index"

  get '/:language/:category', to: "top_voted#index"

  Language.all.each do |language|
    get "#{language.name}", to: "top_voted#language", :language => language.name
  end
  Category.all.each do |category|
    get "#{category.name}", to: "top_voted#category", :category => category.name
  end
end
