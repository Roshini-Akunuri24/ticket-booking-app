class Seat < ApplicationRecord
    validates :number, presence: true ,numericality: { only_integer: true }
    belongs_to :movie_ticket
    has_many :booked_tickets
    has_many :seats
end
