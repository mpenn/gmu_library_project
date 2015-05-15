Rails.application.routes.draw do

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get "/books" => "books#index", as: 'books'
  get "/books/new" => "books#new", as: 'new_book'
  get "/books/overdue" => "books#overdue", as: 'overdue'
  get "/books/search" => "books#search", as: 'search'
  get "/books/:id" => "books#show", as: 'book'
  post "/books" => "books#create"
  get "books/:id/edit" => "books#edit", as: 'edit_book'


  get "/users" => "users#index", as: 'users'
  #get "/users/new" => "users#new", as: 'new_user'

  get "/authors" => "authors#index", as: 'authors'
  get "/authors/:id" => "authors#show", as: 'author'
  #get "/authors/new" => "authors#new", as: 'new_author'

  get "/reservations" => "reservations#index", as: 'reservations'


  resources :books do
      get 'page/:page', :action => :index, :on => :collection
  end

  root 'sessions#new'

end
