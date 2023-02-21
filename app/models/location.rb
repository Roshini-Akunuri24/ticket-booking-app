class Location < ApplicationRecord
    # has_many :movie_tickets, dependent: :destroy
    has_many :theatres
    belongs_to :movie_tickets
end
