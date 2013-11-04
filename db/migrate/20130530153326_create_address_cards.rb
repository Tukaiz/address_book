class CreateAddressCards < ActiveRecord::Migration
  def change
    create_table :address_cards do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
