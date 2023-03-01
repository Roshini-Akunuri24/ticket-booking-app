class AddColumnTotheAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :name, :string
    add_column :admins, :phone_number, :integer
  end
end
