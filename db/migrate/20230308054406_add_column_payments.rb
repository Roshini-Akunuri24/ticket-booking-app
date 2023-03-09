class AddColumnPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :code, :string
  end
end
