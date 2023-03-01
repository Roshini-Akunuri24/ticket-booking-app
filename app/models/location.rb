class Location < ApplicationRecord
    validates :name, presence: true, uniqueness: true  
    has_many :movie_tickets
end
