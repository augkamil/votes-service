VotesService::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  #VoteService::Application.routes.draw do |map|
    scope "/api/ratings" do
      constraints(:accept => "application/vnd.pauldix.voteservice-v1+json") do
        put "/entries/:entry_id/users/:user_id/vote", :to => "create"  
        get "/users/:user_id/up", :to => "entry_ids_voted_up_for_user"
        get "/users/:user_id/down", :to => "entry_ids_voted_down_for_user"
        get "/entries/totals", :to => "totals_for_entries"
        get "/users/:user_id/votes", :to => "votes_for_users"
        get "/users/:user_id/totals", :to => "totals_for_users  "        
      end
    end
  end

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
