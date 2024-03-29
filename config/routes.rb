Crm::Application.routes.draw do

  scope "/admin" do
    resources :property_images, :tenancy_agreements, :property_styles, :place_of_works,
    :contact_details, :landlords, :tenants, :properties, :estate_agents, :addresses,
    :users, :estate_agents_images
    devise_for :users, :path_prefix => 'admin/login'
  end

    get '/admin', to: 'dashboard#index', as: '/admin'
  #
  
  #authenticated :user do
    #root :to => redirect("/admin")
  #end
   # The priority is based upon order of creation:
  # first created -> highest priority.
  #resources :front_end
  #resources :front_ends
  match '/:id' => 'front_ends#show'
  match '/:id/:controller/new' => 'searches#new'
  
  match "/:id/:id2" => 'front_ends#details'
  #resources :searches
  root :to => 'front_ends#index'

  #resources :tweet, :controller => "tweet"
  
  #match 'tweet' => 'tweet#index'
  
  #root :to => 'application'
  
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
