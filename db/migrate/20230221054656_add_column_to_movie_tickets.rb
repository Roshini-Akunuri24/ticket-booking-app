class AddColumnToMovieTickets < ActiveRecord::Migration[7.0]
  def change
    add_reference :movie_tickets, :theatre, foreign_key: true
  end
end
