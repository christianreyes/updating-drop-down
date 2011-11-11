Dropdown::Application.routes.draw do
  get "home/index"
  
  # needed for loading the characters drop-down. will automatically call characters_in_movie in home_controller
  get "home/characters_in_movie"

  root :to => 'home#index'
end
