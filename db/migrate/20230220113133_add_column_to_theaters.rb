class AddColumnToTheaters < ActiveRecord::Migration[7.0]
  def change
    remove_column :theatres, :capacity, :integer
    add_reference :theatres, :location, foreign_key: true
    add_reference :theatres, :movie_ticket, foreign_key: true
    add_reference :theatres, :show, foreign_key: true
    add_column :theatres, :timings, :string
  end
end
