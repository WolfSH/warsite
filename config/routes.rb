Rails.application.routes.draw do
  post 'question/create', as: 'ask_question'

  # get 'question/update'

  # get 'question/destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'about_us#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'left_menu/educational_and_support'
  get 'left_menu/learning_process'
  get 'left_menu/useful_links'

  get 'about_us/advertisement'
  get 'about_us/news'
  get 'contacts', to: 'about_us#contacts', as: 'contacts'
  get 'history', to: 'about_us#history_of_faculty', as: 'history'
  get 'management-team', to: 'about_us#management_team', as: 'management_team'

  get 'about_us/download/:file', to: 'about_us#download', as: 'download'

  get 'chair/combat-use-of-weapons-of-anti-air-forces', to: 'chair#combat_use_of_weapons_of_anti_air_forces', as: 'chair_combat_use_of_weapons_of_anti_air_forces'
  get 'chair/combat-use-of-weapons-of-air-forces', to: 'chair#combat_use_of_weapons_of_air_forces', as: 'chair_combat_use_of_weapons_of_air_forces'
  get 'chair/total-military-discipline', to: 'chair#total_military_discipline', as: 'chair_total_military_discipline'
  get 'chair/tactics'

  get 'for-listener/payment', to: 'for_listener#payment', as: 'for_listener_payment'
  get 'for-listener/medical-examination-certificate', to: 'for_listener#medical_examination_certificate', as: 'for_listener_medical_examination_certificate'
  get 'for-listener/specialties', to: 'for_listener#specialties', as: 'for_listener_specialties'
  get 'for-listener/law-on-military-duty', to: 'for_listener#law_on_military_duty', as: 'for_listener_law_on_military_duty'
  get 'for-listener/conditions-of-entry', to: 'for_listener#conditions_of_entry', as: 'for_listener_conditions_of_entry'
  get 'faq', to: 'for_listener#faq', as: 'for_listener_faq'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  resources :questions

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
