Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/shox'
  get 'lists/new'
  get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

# un index de la liste
# une show de chaque produit qui passe par la liste
# un new pour creer une liste
# list :index, :show, :new, :create


# signet : nester a la list pour creer un signet
# signet :new, :create, :destroy

# les notes : nester a la list pour creer une note
# note :new, :create

  root to: 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
