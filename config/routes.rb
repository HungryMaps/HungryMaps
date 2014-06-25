Rails.application.routes.draw do
 
  resources :estados

  resources :ordens

  devise_for :users
  resources :homes

  resources :ubicacions

  resources :tipo_productos

  resources :tipo_comidas

  resources :productos

  resources :restaurantes do
    member do
      post 'upvote'
      post 'dislike'
    end
  end

  get '/restaurantes/:id/menu' => 'restaurantes#restmenu', as: 'rest_menu'  
	
  get '/restaurantes/:id/platillo' => 'restaurantes#platillo', as: 'platillo' 
	
  get '/restaurantes/:id/platillo/edit' => 'restaurantes#platillo_edit', as: 'platillo_edit' 

  get '/restaurantes/:id/carrito' => 'restaurantes#carrito', as: 'carrito'

  post '/restaurantes/:id/carrito' => 'restaurantes#carrito', as: 'ordenes'

  post '/restaurantes/:id/agregar' => 'restaurantes#agregar', as: 'agregar'

  get '/restaurantes/:id/solicitud' => 'restaurantes#solicitud', as: 'solicitudes'

  get '/' => 'homes#index', as: 'indice' 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
