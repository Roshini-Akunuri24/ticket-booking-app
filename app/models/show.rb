class Show < ApplicationRecord
    validates :time, presence: true, uniqueness: true  
    has_many :movie_tickets
    has_many :booked_tickets
end
