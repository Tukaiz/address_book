class AddAddressCardIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :address_card_id, :integer
  end
end
