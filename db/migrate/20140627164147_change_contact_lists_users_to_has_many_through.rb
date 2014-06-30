class ChangeContactListsUsersToHasManyThrough < ActiveRecord::Migration
  def up
    rename_table :contact_lists_users, :contact_list_associations
    add_column :contact_list_associations, :id, :primary_key, first: true
    remove_index :contact_list_associations, [:contact_list_id, :user_id]
    rename_column :contact_list_associations, :user_id, :contact_listable_id
    add_column :contact_list_associations, :contact_listable_type, :string
    add_index :contact_list_associations, :contact_list_id
    add_index :contact_list_associations, :contact_listable_id

    change_table :contact_list_associations do |t|
      t.timestamps
    end

    ContactListAssociation.all.each do |cla|
      cla.update(contact_listable_type: "User", created_at: Time.now, updated_at: Time.now)
    end
  end

  def down
    remove_column :contact_list_associations, :updated_at
    remove_column :contact_list_associations, :created_at
    remove_index :contact_list_associations, :contact_listable_id
    remove_index :contact_list_associations, :contact_list_id
    remove_column :contact_list_associations, :contact_listable_type
    rename_column :contact_list_associations, :contact_listable_id, :user_id
    add_index :contact_list_associations, [:contact_list_id, :user_id]
    remove_column :contact_list_associations, :id
    rename_table :contact_list_associations, :contact_lists_users
  end
end
