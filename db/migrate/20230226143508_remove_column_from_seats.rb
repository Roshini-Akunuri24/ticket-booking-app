class RemoveColumnFromSeats < ActiveRecord::Migration[7.0]
  def change
    remove_column :seats, :movie_ticket_id, :integer
  end
end
