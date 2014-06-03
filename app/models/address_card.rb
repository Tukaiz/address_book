class AddressCard < ActiveRecord::Base
  has_many :emails
  has_many :addresses, as: :addressable
  has_many :phones
  has_and_belongs_to_many :contact_lists
  accepts_nested_attributes_for :emails, :allow_destroy => true
  accepts_nested_attributes_for :addresses, :allow_destroy => true
  accepts_nested_attributes_for :phones, :allow_destroy => true
  has_one :user

  attr_accessor :contact_list_id

  def display_name
    last_name + ', ' + first_name if first_name && last_name
  end

  def full_name
    first_name + " " + last_name  if first_name && last_name
  end
end
