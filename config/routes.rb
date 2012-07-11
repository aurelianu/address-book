AddressBook::Application.routes.draw do

  resources :addresses do
    get 'search', :on => :collection
  end


  resources :addresses do
    get 'search_by_letter', :on => :collection
  end

  get "home/index"


  root :to => "home#index"


  match ':controller(/:action(/:id(.:format)))'
end
