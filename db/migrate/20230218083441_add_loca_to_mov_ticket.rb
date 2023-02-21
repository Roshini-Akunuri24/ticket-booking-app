class AddLocaToMovTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :movie_tickets, :location, foreign_key: true
  end
end
