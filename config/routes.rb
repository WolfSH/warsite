Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'top_menu#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'top_menu/index'
  get 'top_menu/main' => 'top_menu#index'
  get 'top_menu' => 'top_menu#index'
  get 'top_menu/advertisement'
  get 'top_menu/news'
  get 'top_menu/contacts'

  get 'left_menu/history_of_faculty'
  get 'left_menu/management_team'
  get 'left_menu/educational_and_support'
  get 'left_menu/conditions_of_entry'
  get 'left_menu/learning_process'
  get 'left_menu/faq'
  get 'left_menu/useful_links'
  get 'chair/number41'
  get 'chair/number42'
  get 'chair/number43'
  get 'chair/number44'
  get 'chair/number45'
  get 'chair/number46'

  get 'right_menu/payment'
  get 'right_menu/medical_examination_certificate'
  get 'right_menu/specialties'
  get 'right_menu/law_on_military_duty'

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
