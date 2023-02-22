class RemoveColumnFromTheatre < ActiveRecord::Migration[7.0]
  def change
    remove_reference :theatres, :location, foreign_key: true 
  end
end
