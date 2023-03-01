class RemoveColumnFromTheatres < ActiveRecord::Migration[7.0]
  def change
    remove_column :theatres, :timings
  end
end
