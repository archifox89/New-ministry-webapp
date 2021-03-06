Rails.application.routes.draw do
  
  get 'project_documents/predesign'

  get 'project_documents/design'

  get 'project_documents/tendering'

  get 'project_documents/construction'

  get "predesign" => "project_documents#predesign"

  resources :announcements

  resources :exterior_reports
  resources :messages
  resources :interior_circulars
  resources :circulars
  resources :reports
  resources :interior_reports
  resources :admin_circulars
  resources :admin_reports
  resources :ministry_reports


  resources :projects do
    resources :pictures
    resources :teams
    resources :months
    resources :statuses
  end
  
  

  resources :vacations

  resources :experiences

  resources :profiles

  devise_for :users

  devise_scope :user do
   root :to => 'devise/sessions#new'
end

  get "main" => "pages#main"
  get "projects" => "pages#projects"
  get "project_docs" => "pages#project_docs"
  get "search" => "pages#search"
  get "reports" => "pages#reports"
  get "feedback" => "pages#feedback"
  get "project_documents" => "pages#project_documents"

 

  get "tasks" => "subpages#tasks"
  get "vacations" => "subpages#vacations"
  get "active" => "subpages#active"
  get "presignature" => "subpages#presignature"
  get "develop" => "subpages#develop" 
  get "proposed" => "subpages#proposed" 
  get "archive" => "subpages#archive" 
  get "monthly_template" => "subpages#monthly_template" 
  get "development2" => "subpages#development2" 
  get "phase1" => "subpages#phase1" 
  get "phase2" => "subpages#phase2"  
  get "phase3" => "subpages#phase3" 
  get "phase4" => "subpages#phase4" 
  get "proposed2" => "subpages#proposed2" 

get '/tasks', :to => redirect('/tasks.html')

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
