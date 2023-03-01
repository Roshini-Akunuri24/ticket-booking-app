class AddColumnInSeats < ActiveRecord::Migration[7.0]
  def change
    add_column :seats, :price, :decimal
  end
end
