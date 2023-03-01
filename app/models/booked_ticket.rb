class BookedTicket < ApplicationRecord
    belongs_to :movie_ticket
    belongs_to :show
    belongs_to :seat
    belongs_to :user 
end
