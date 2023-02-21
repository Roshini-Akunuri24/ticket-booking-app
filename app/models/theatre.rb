class Theatre < ApplicationRecord
  belongs_to :location
  has_many :movie_tickets, through: :locations 
  has_many :shows
end
