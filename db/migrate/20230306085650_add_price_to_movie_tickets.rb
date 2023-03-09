class AddPriceToMovieTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :movie_tickets, :price, :decimal
  end 
end
