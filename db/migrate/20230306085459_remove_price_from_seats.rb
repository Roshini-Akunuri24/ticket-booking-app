class RemovePriceFromSeats < ActiveRecord::Migration[7.0]
  def change
    remove_column :seats, :price
  end
end
