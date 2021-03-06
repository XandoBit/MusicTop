Rails.application.routes.draw do



  resources :cds


  

#RUTAS usuarios sessions login y logout
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get 'logout'  => 'sessions#destroy'


#pruebas



#RUTAS usuarios

  
  post 'users/create' => 'users#create'
  get '/signup' => 'users#new'
  get 'users/index'
  get 'users/destroy'
  get 'users/show'
  get 'users/edit'=> 'users#edit'
  post 'users/update' => 'users#update'


 

#RUTAS cds

  get 'album/index'
  get 'album/new'
  get 'album/create'
  get 'album/show'
  get 'album/edit'
  get 'album/update'
  get 'album/destroy'

#RUTAS formularios
  get 'formularios/form_get'

  get 'formularios/form_post'
  post 'formularios/form_post'

#RUTAS DE LAS PAGINAS DE MUSICTOP
 get 'bienvenido/index'
 get 'ayuda/help'
 get 'contacto/contacto'
 get 'lista/lista'
 get 'grupos/grupos'
 get 'noticias/noticias'
 get 'conciertos/conciertos'

 


 
#RUTAS DE POST, GET ALBUM
resources :users
resources :usuario_sessions



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root :to => 'bienvenido#index'
  
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
 
end
