class RemoveColumnInMovieTickets < ActiveRecord::Migration[7.0]
  def change
    remove_column :movie_tickets, :user_id
  end
end
