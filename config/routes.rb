TodaysCampus::Application.routes.draw do

  

  #get "dashboard/index"

  match 'all_search' => 'search#all_search'

  match 'jobs' => 'static#jobs'
  match 'job_detail' => 'static#job_detail'
  match 'afterlogin_myaccount' => 'static#afterlogin_myaccount'
  match 'afterlogin_jobs' => 'static#afterlogin_jobs'
  match 'afterlogin_checkout' => 'static#afterlogin_checkout'
  match 'afterlogin_advancesearch' => 'static#afterlogin_advancesearch'
  match 'afterlogin_postjob' => 'static#afterlogin_postjob'
  match 'beforelogin_checkout' => 'static#beforelogin_checkout'
  match 'featuredemployers_details' => 'static#featuredemployers_details'
  match 'featuredemployers_search' => 'static#featuredemployers_search'
  match 'registeremployer' => 'static#registeremployer'
  match 'resumedetail' => 'static#resumedetail'
  match 'resumesearch' => 'static#resumesearch'
  match 'shoppingcart' => 'static#shoppingcart'
  match 'termsconditions' => 'static#termsconditions'
  match 'webinars' => 'static#webinars'
  #match 'events' => 'static#events'
  match 'jobs_home' => 'static#jobs_home'
   
  match 'dash' => 'home#dash'
  
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  match 'feed/topics' => 'articles#feed_list'
  match 'article_search' => 'articles#search'
  match 'feed/topic/:id' => 'articles#feed', :as => :feed_topic, :defaults => { :format => 'atom' }
  resources :articles
  resources :topics
  resources :events, :only =>[:index]
  
  #Jobseeker routes
  namespace :jobseekers do
    resources :dashboard, :only => [:index]
  end
  
  #Employers routes
  namespace :employers, :as => :employers do
    
    resources :dashboard, :only => [:index]
    resources :employer_details, :only => [:edit, :update, :show] do
      member do 
        post 'update_organisation'
      end
    end
    
    resources :post_jobs do
      collection do 
        get 'job_location_state_select'
        get 'job_state_select'
        get 'job_category_select'
      end
    end
    
  end

  devise_for :users

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
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id))(.:format)'
end
