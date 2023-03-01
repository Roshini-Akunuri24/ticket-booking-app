class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.integer :number
      t.integer :show_id
      t.boolean :booked

      t.timestamps
    end
  end
end
