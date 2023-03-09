class BookedTicket < ApplicationRecord
    belongs_to :movie_ticket
    belongs_to :show
    belongs_to :seat
    belongs_to :user 

    # before_save :calculate_total_price

#   def calculate_total_price
#     self.total_price = movie_ticket.price * quantity
#   end

end
