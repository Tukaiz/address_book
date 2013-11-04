class CreateContactListsUsers < ActiveRecord::Migration
  def change
    create_table :contact_lists_users, :id => false do |t|
      t.integer :contact_list_id
      t.integer :user_id
    end
    add_index(:contact_lists_users, [:contact_list_id, :user_id], :unique => true)
  end
end
