class AddColumnToPayment < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :total_amount, :decimal 
    remove_column :payments, :total_price
  end
end
