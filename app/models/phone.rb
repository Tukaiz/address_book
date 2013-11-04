class Phone < ActiveRecord::Base
  belongs_to :address_card
  validates :value, :kind, presence: true
end
