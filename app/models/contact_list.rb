class ContactList < ActiveRecord::Base
  has_and_belongs_to_many :address_cards
  has_many :contact_list_associations
  has_many :users, through: :contact_list_associations, source: :contact_listable, source_type: User
  has_many :sites, through: :contact_list_associations, source: :contact_listable, source_type: Site
end
