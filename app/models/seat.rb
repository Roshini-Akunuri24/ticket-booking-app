class Seat < ApplicationRecord
    validates :number, presence: true ,numericality: { less_than_or_equal_to: 60,  only_integer: true }
    belongs_to :movie_ticket
    has_many :booked_tickets
end
