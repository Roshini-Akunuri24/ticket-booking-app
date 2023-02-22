class AddShowToMovieTicket < ActiveRecord::Migration[7.0]
  def change
    add_reference :movie_tickets, :show, foreign_key: true
  end
end
