class AddColumnTotheSeats < ActiveRecord::Migration[7.0]
  def change
    add_column :seats, :movie_ticket_id, :integer
    remove_column :seats, :show_id, :integer
  end
end
