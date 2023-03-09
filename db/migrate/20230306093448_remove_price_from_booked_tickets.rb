class RemovePriceFromBookedTickets < ActiveRecord::Migration[7.0]
  def change
        remove_column :booked_tickets, :price_per_ticket
        remove_column  :booked_tickets, :number_of_tickets    
  end
end
