Acmeca::Application.routes.draw do

  resources :albums, :only => [:index, :show]
  resources :services, :only => [:index, :show]
  resources :products, :only => [:index, :show]

  namespace "manage" do
    resources :albums
    resources :services
    resources :products
  end

  devise_for :users

  get "pages/installation"
  get "pages/warranty"
  get "pages/contact"
  get "manage/services/show"
  get "manage/services/new"
  get "albums/view"
  get "albums/show"
  get "manage/albums/show"
  get "manage/albums/new"
  get "manage/products/show"
  get "manage/products/new"
  
  root :to => 'pages#home'

  post 'pages/contact', :controller => 'pages', :action => 'send_mail'

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
