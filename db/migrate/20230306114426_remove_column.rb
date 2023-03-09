class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :seats, :price, :decimal
    remove_column :movie_tickets, :price
  end
end
