class Email < ActiveRecord::Base
  belongs_to :address_card
  validates :value, :kind, presence: true
  validates :value, :format => { :with =>  /\A([\w\!\#\z\%\&amp;\'\*\+\-\/\=\?\^\`{\|\}\~]+\.)*[\w\!\#$\%\&amp;\'\*\+\-\/\=\?\^\`{\|\}\~]+@((((([a-z0-9]{1}[a-z0-9\-]{0,62}[a-z0-9]{1})|[a-z])\.)+[a-z]{2,6})|(\d{1,3}\.){3}\d{1,3}(\:\d{1,5})?)\z/i }
end
