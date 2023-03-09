class RemoveColumnFromPayment < ActiveRecord::Migration[7.0]
  def change
    rename_column :payments, :payment_details, :total_price
    remove_column :payments, :status
    remove_column :payments, :amount_cents
  end
end
