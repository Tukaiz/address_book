class CreateAddressCardsContactLists < ActiveRecord::Migration
  def change
    create_table :address_cards_contact_lists, :id => false do |t|
      t.integer :address_card_id
      t.integer :contact_list_id
    end
    add_index :address_cards_contact_lists, [:address_card_id, :contact_list_id], :unique => true, :name => 'index_accl_address_card_id_contact_list_id'
  end
end
