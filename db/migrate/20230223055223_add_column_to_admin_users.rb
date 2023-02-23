class AddColumnToAdminUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :admin_users, :email, :string
    add_column :admin_users, :password, :string
  end
end
