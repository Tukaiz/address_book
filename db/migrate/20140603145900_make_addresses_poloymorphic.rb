class MakeAddressesPoloymorphic < ActiveRecord::Migration

  def up
    add_column "addresses", "addressable_type", :string
    rename_column "addresses", "address_card_id", "addressable_id"
    Address.all.each { |a| a.update(addressable_type: "AddressCard") }
  end

  def down
    remove_column "addresses", "addressable_type", :string
    rename_column "addresses",  "addressable_id", "address_card_id"
  end

end
