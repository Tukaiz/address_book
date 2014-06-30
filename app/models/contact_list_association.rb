class ContactListAssociation < ActiveRecord::Base
  belongs_to :contact_list
  belongs_to :contact_listable, polymorphic: true
end
