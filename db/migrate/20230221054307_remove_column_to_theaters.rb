class RemoveColumnToTheaters < ActiveRecord::Migration[7.0]
  def change
    remove_reference :theatres, :movie_ticket, foreign_key: true
    remove_reference :theatres, :show, foreign_key: true    
  end
end
