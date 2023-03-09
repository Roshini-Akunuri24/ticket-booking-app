class AddColumnToThePayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :seat_id, :integer
  end
end
