Rails.application.routes.draw do
  root to: 'top#index'

  devise_for :users
  resources :dashboard,        only: %w( index )
  resources :servers,          only: %w( index )
  resources :web_applications, only: %w( index )

  namespace :admin do
    resources :users,            only:   %w( index )
    resources :servers,           except: %w( show )
    resources :web_applications, except: %w( show )
  end
  get 'admin/users/:id/admin'             => 'admin/users#admin',             as: :admin_admin_user
  get 'admin/users/:id/unadmin'           => 'admin/users#unadmin',           as: :unadmin_admin_user
  get 'admin/servers/:id/delete'          => 'admin/servers#delete',          as: :delete_admin_server
  get 'admin/web_applications/:id/delete' => 'admin/web_applications#delete', as: :delete_admin_web_application

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
