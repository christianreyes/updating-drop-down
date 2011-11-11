Dropdown::Application.routes.draw do
  get "home/index"
  
  get "home/characters_in_movie"

  root :to => 'home#index'
end
