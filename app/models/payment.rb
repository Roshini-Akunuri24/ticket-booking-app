class Payment < ApplicationRecord 
  belongs_to :user
  belongs_to :movie_ticket    
  belongs_to :seat

  # def process 
  # end
end
