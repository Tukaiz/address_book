# We don't namespace within the engine
# because engine would need to be mounted
# and routes would become /wherever-mounted/the-routes
# We want these routes to be in the main namespace
# AddressBook::Engine.routes.draw do

Rails.application.routes.draw do

  #constraints FeatureConstraint.new(:address_book) do
    resources :users, only: :none do
      resources :contact_lists
      resources :address_cards
    end
  #end
  resources :addresses, only: [:show, :edit, :update]
  resources :emails, only: [:show, :edit, :update]
  resources :phones, only: [:show, :edit, :update]
end
