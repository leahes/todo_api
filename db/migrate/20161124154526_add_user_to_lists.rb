class AddUserToLists < ActiveRecord::Migration[5.0]
  def change
    add_column :lists, :email
  end
end
