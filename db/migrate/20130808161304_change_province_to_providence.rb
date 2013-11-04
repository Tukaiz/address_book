class ChangeProvinceToProvidence < ActiveRecord::Migration
  def change
    rename_column :addresses, :province, :providence
  end
end
