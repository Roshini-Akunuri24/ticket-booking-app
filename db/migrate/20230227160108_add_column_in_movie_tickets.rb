class AddColumnInMovieTickets < ActiveRecord::Migration[7.0]
  def change
    add_column :movie_tickets, :user_id, :integer
  end
end
