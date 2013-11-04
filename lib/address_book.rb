require "address_book/engine"
require "feature_system"

module AddressBook
  class AddressBookFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      [{can: true, action: :manage, resource: 'Address'},
      {can: true, action: :create, resource: 'Address'},
      {can: true, action: :read, resource: 'Address'},
      {can: true, action: :update, resource: 'Address'},
      {can: true, action: :delete, resource: 'Address'},
      {can: true, action: :foo, resource: 'Bar'}
      ]
    end
  end
end
