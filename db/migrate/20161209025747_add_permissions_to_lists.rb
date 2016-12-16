class AddPermissionsToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :permissions, :string
  end
end
