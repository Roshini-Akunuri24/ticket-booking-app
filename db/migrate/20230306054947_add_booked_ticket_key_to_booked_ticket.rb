class AddBookedTicketKeyToBookedTicket < ActiveRecord::Migration[7.0]
  def change
    add_column :booked_tickets, :booked_ticket_key, :string
  end
end
