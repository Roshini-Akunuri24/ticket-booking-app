class CreateBookedTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :booked_tickets do |t|
      t.integer :movie_ticket_id
      t.integer :show_id
      t.decimal :price_per_ticket
      t.integer :number_of_tickets
      t.integer :user_id
      t.integer :seat_id
      
      t.timestamps
    end
  end
end
