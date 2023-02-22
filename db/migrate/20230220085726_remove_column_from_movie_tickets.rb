class RemoveColumnFromMovieTickets < ActiveRecord::Migration[7.0]
  def change
    remove_column :movie_tickets, :from, :string
    remove_column :movie_tickets, :to, :string
    remove_column :movie_tickets, :place, :string
  end
end
