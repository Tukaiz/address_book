class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :value
      t.string :kind
      t.integer :address_card_id

      t.timestamps
    end
  end
end
