class RemoveColumnFromMovieTickets < ActiveRecord::Migration[7.0]
  def change
    remove_reference :movie_tickets, :location, index: true, foreign_key: true
  end
end
