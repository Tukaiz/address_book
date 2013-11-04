class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.integer :address_card_id

      t.timestamps
    end
  end
end
