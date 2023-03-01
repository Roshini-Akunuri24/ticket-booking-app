class AddColumnToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :role, :integer, default: 0
    remove_column :users, :role, :integer, default: 0
  end
end
