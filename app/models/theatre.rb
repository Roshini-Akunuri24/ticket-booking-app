class Theatre < ApplicationRecord
  validates :name, presence: true 
  has_many :movie_tickets
end
