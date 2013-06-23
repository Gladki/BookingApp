BookingApp::Application.routes.draw do
  


  root :to => "rezerwacjas#index"
  resources :roles


  devise_for :users
  resources :users
  #PRZYSTANEK
  match 'przystanki' => "przystaneks#index", :as => 'przystaneks_index'
  match 'przystanek/nowy' => "przystaneks#new", :as => 'new_przystanek'
  match 'przystanek/create' => "przystaneks#create", :as => 'przystaneks'
  match 'przystanek/:id/edytuj' => "przystaneks#edit", :as => 'przystanek_edytuj'
  match 'przystanek/:id' => 'przystaneks#show', :as => 'przystanek' 
  #WYCIECZKA
  match 'wycieczki' => "wycieczkas#index", :as => 'wycieczkas_index'
  match 'wycieczka/nowa' => "wycieczkas#new", :as => 'new_wycieczka'
  match 'wycieczka/create' => "wycieczkas#create", :as => 'wycieczkas'
  match 'wycieczka/:id/lista' => "wycieczkas#lista", :as => 'lista_rezerwacji'
  match 'wycieczka/:id' => 'wycieczkas#show', :as => 'wycieczka'
  match 'wycieczka/:id/edytuj' => 'wycieczkas#edit', :as => 'edit_wycieczka'
  #REZERWACJA
  match 'rezerwacje' => "rezerwacjas#index", :as => 'rezerwacjas_index'
  match 'rezerwacja/nowa' => "rezerwacjas#new", :as => 'new_rezerwacja'
  match 'rezerwacja/create' => "rezerwacjas#create", :as => 'rezerwacjas'
  match 'rezerwacja/wycieczka/:id' => "rezerwacjas#new_const", :as => 'dodatkowa_rezerwacja'
  match 'rezerwacja/:id/nowa/osoba' => "rezerwacjas#new_person", :as => 'nowa_osoba'
  match 'rezerwacja/:id' => "rezerwacjas#show", :as => 'rezerwacja_pokaz'
  match 'rezerwacja/:id/edytuj' => "rezerwacjas#edit", :as => 'rezerwacja_edytuj'
  
  #LOGOWANIE
  devise_scope :user do get "/wyloguj" => "devise/sessions#destroy" end
  devise_scope :user do get "/zaloguj" => "devise/sessions#new" ,:as => 'zaloguj' end
  match "/zarejestruj" => "users#new" ,:as => 'zarejestruj' 
resources :wycieczkas


  resources :przystaneks


  resources :rezerwacjas


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
